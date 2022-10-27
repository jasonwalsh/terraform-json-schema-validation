<!-- prettier-ignore-start -->
<!-- BEGIN_TF_DOCS -->
```hcl
module "validate" {
  source = "../.."

  instance = jsonencode({
    firstName = "John"
    lastName  = "Doe"
    age       = 21
  })

  schema = file("${path.module}/schema.json")
}
```

```json
{
  "$id": "https://example.com/person.schema.json",
  "$schema": "https://json-schema.org/draft/2020-12/schema",
  "properties": {
    "age": {
      "description": "Age in years which must be equal to or greater than zero.",
      "minimum": 0,
      "type": "integer"
    },
    "firstName": {
      "description": "The person's first name.",
      "type": "string"
    },
    "lastName": {
      "description": "The person's last name.",
      "type": "string"
    }
  },
  "title": "Person",
  "type": "object"
}
```
<!-- END_TF_DOCS -->
<!-- prettier-ignore-end -->
