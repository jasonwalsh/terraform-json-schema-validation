data "http" "this" {
  url    = "https://assertible.com/json"
  method = "POST"

  request_body = jsonencode({
    json   = jsondecode(var.instance)
    schema = jsondecode(var.schema)
  })

  request_headers = {
    Content-Type = "application/json"
  }

  lifecycle {
    postcondition {
      condition     = contains([200], self.status_code)
      error_message = join(", ", jsondecode(self.response_body)["errors"])
    }
  }
}
