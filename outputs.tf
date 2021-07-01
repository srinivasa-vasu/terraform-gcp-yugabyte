output "ui" {
  sensitive = false
  value     = "http://${google_compute_instance.yugabyte_node.0.network_interface.0.access_config.0.nat_ip}:7000"
}
output "ssh_user" {
  sensitive = false
  value = "${var.ssh_user}"
}
output "ssh_key" {
  sensitive = false
  value     = "${var.ssh_private_key}"
}

output "JDBC" {
  sensitive =false
  value     = "postgresql://yugabyte@${module.lb.address}:5433"
}

output "YSQL"{
  sensitive = false
  value     = "ysqlsh -U yugabyte -h ${module.lb.address} -p 5433"
}

output "YCQL"{
  sensitive = false
  value     = "ycqlsh ${module.lb.address} 9042"
}

output "YEDIS"{
  sensitive = false
  value     = "redis-cli -h ${module.lb.address} -p 6379"
}

output "network" {
  value = "${module.infra.network}"
}

output "network_name" {
  value = "${module.infra.network_name}"
}

output "subnet" {
  value = "${module.infra.subnet}"
}

output "subnet_cidr_range" {
  value = "${module.infra.subnet_cidr_range}"
}

output "subnet_gateway" {
  value = "${module.infra.subnet_gateway}"
}

output "subnet_name" {
  value = "${module.infra.subnet_name}"
}

output "lb_name" {
  value = "${module.lb.name}"
}

output "lb_address" {
  value = "${module.lb.address}"
}