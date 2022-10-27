<!-- prettier-ignore-start -->
<!-- BEGIN_TF_DOCS -->

This module is intended to validate a JSON document against a [JSON schema](https://json-schema.org/). This module
uses the [http](https://registry.terraform.io/providers/hashicorp/http/latest/docs) provider to issue a `POST`
request to a [JSON Schema Validator HTTP API](https://assertible.com/json-schema-validation). If the status code of
the response is not 200 OK, then Terraform raises an error.

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

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_instance"></a> [instance](#input\_instance) | A piece of JSON data which is to be described by a schema. | `string` | n/a | yes |
| <a name="input_schema"></a> [schema](#input\_schema) | A document, written according to the proscribed structure of the JSON Schema specification, which can be used to describe instances. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
<!-- prettier-ignore-end -->
