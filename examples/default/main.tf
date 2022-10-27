module "validate" {
  source = "../.."

  instance = jsonencode({
    firstName = "John"
    lastName  = "Doe"
    age       = 21
  })

  schema = file("${path.module}/schema.json")
}
