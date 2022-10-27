/**
 *
 * This module is intended to validate a JSON document against a [JSON schema](https://json-schema.org/). This module
 * uses the [http](https://registry.terraform.io/providers/hashicorp/http/latest/docs) provider to issue a `POST`
 * request to a [JSON Schema Validator HTTP API](https://assertible.com/json-schema-validation). If the status code of
 * the response is not 200 OK, then Terraform raises an error.
 *
 */
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
