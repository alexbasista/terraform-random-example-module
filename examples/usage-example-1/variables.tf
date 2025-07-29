variable "pet_length" {
  type        = number
  description = "The length (in words) of the pet name."
  default     = 2
}

variable "pet_prefix" {
  type        = string
  description = "A string to prefix the pet name with."
  default     = null
}

variable "pet_separator" {
  type        = string
  description = "The character to separate words in the pet name with."
  default     = "-"
}

variable "trigger_change" {
  type        = string
  description = "A value that will trigger recreation of the resource when changed."
  default     = null
}