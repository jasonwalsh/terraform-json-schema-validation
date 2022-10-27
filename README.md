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

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_instance"></a> [instance](#input\_instance) | A piece of JSON data which is to be described by a schema. | `string` | n/a | yes |
| <a name="input_schema"></a> [schema](#input\_schema) | A document, written according to the proscribed structure of the JSON Schema specification, which can be used to describe instances. | `string` | n/a | yes |

## Outputs

No outputs.
```
<!-- END_TF_DOCS -->
<!-- prettier-ignore-end -->
