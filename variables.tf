variable "firefly_access_key" {
  type        = string
  description = "Tu clave de acceso de autenticación. Ejemplo: 'mi_access_key'"
}

variable "firefly_secret_key" {
  type        = string
  description = "Tu clave secreta de autenticación. Ejemplo: 'mi_secret_key'"
}

variable "project_id" {
  type        = string
  description = "El ID del proyecto al que conectar. Ejemplo: 'mi-proyecto-id'"
}

variable "name" {
  type        = string
  description = "Nombre de la integración en Firefly. Ejemplo: 'mi-integracion'"
}

variable "firefly_endpoint" {
  type        = string
  description = "El endpoint de Firefly para registrar la gestión de cuentas. Ejemplo: 'https://prodapi.firefly.ai/api'"
  default     = "https://prodapi.firefly.ai/api"
}

variable "resource_prefix" {
  type        = string
  description = "Prefijo opcional para los nombres de recursos del módulo. Ejemplo: 'prefix_'"
  default     = ""
}

variable "enable_event_driven" {
  type        = bool
  description = "Indica si crear la integración como event-driven o no. Ejemplo: true"
  default     = true
}

variable "enable_iac_auto_discover" {
  type        = bool
  description = "Indica si crear la integración con descubrimiento automático de IaC (busca archivos de estado en buckets de GCS). Ejemplo: true"
  default     = true
}

variable "is_prod" {
  type        = bool
  default     = false
  description = "¿Es producción? Ejemplo: false"
}

variable "exclude_projects_discovery_regex" {
  type        = list(string)
  default     = []
  description = "Expresiones regulares para excluir proyectos del descubrimiento. Si está vacío, todos los proyectos encontrados serán descubiertos y añadidos como integración a Firefly. Ejemplo: ['regex1', 'regex2']"
}
