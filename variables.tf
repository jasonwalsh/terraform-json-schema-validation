variable "instance" {
  description = "A piece of JSON data which is to be described by a schema."
  type        = string
}

variable "schema" {
  description = "A document, written according to the proscribed structure of the JSON Schema specification, which can be used to describe instances."
  type        = string
}
