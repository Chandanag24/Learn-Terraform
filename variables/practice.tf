variable "emp_name" {
  default = "chandana"
}

output "emp_name" {
  value = var.emp_name
}
#List
variable "emp_details" {
  default = [
   "chandana",
    "chandu"
  ]
}

#Map variable
variable "emp_performance" {
  default = {
    chandana = 100
    chandrika = 90
  }
}

#map of map
variable "emp_id_with_performance" {
  default = {
    id_s = {
      c_id=48
      ch_id=78
    }
    performance={
      chandana=100
      chandrika=90
    }

  }
}

#Access list var, index values
output "emp_details" {
  value = var.emp_details[0]
}