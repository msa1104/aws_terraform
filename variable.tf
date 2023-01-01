
variable "dashboard_list" {
  type = map(object({ name = string, filelocation = string }))
  default = {
    "map1" = {
      filelocation = "/file/dashboardbody1.json"
      name         = "dashboard1"
    },
    "map2" = {
      filelocation = "/file/dashboardbody1.json"
      name         = "dashboard2a"
    }
  }
}