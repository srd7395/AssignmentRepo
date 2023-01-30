variable "organization" {

    type = string
}
variable "environment" {
   type = string
}
variable "app" {
    type = string
}

variable "tagging" {
    type = object ({ 
        Env= string
        Createdby = string
    })
}
variable "rgname" {
    
    type = string
    description = "resource group name"
}
variable "rglocation" {
   
    type = string
    description = "location"
}
variable "satype" {
    
    type = string
    description = "storage account type"
}
variable "diskname1" {
    type = string
    description = "disk name"
}
variable "diskname2" {
    type = string
    description = "disk name"
}
variable "diskname3" {
    type = string
    description = "disk name"
}
variable "diskname4" {
    type = string
    description = "disk name"
}
variable "disksize1" {
    type = number
    description = "disk size"
}
variable "disksize2" {
    type = number
    description = "data disk size"
}
variable "disksize3" {
    type = number
    description = "log disk size"
}
variable "disksize4" {
    type = number
    description = "os disk size"
}
