<!-- prettier-ignore-start -->
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_http"></a> [http](#requirement\_http) | ~> 3.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_http"></a> [http](#provider\_http) | ~> 3.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [http_http.this](https://registry.terraform.io/providers/hashicorp/http/latest/docs/data-sources/http) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_instance"></a> [instance](#input\_instance) | A piece of JSON data which is to be described by a schema. | `string` | n/a | yes |
| <a name="input_schema"></a> [schema](#input\_schema) | A document, written according to the proscribed structure of the JSON Schema specification, which can be used to describe instances. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
<!-- prettier-ignore-end -->
