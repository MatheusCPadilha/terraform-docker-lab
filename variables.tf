variable "container_name" {
  description = "Nome do container"
  type        = string
  default     = "nginx-terraform"
}

variable "external_port" {
  description = "Porta exposta no host"
  type        = number
  default     = 8080
}

variable "image_name" {
  description = "Imagem Docker a ser usada"
  type        = string
  default     = "nginx:latest"
}
