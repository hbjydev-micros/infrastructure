resource "scaleway_rdb_instance" "db01" {
  name = "prod-datadeck-db01"
  node_type = "db-dev-s"
  engine = "PostgreSQL-11"
  is_ha_cluster = false
  disable_backup = false
}

resource "scaleway_rdb_user" "datadeck-prod-mono" {
  name = "datadeck-prod-mono"
  password = "ThisIsNotMyPassword1!"
  instance_id = scaleway_rdb_instance.db01.id
}

resource "scaleway_rdb_user" "datadeck-test-mono" {
  name = "datadeck-test-mono"
  password = "ThisIsNotMyPassword1!"
  instance_id = scaleway_rdb_instance.db01.id
}

resource "scaleway_rdb_user" "datadeck-prod-iam" {
  name = "datadeck-prod-iam"
  password = "ThisIsNotMyPassword1!"
  instance_id = scaleway_rdb_instance.db01.id
}

resource "scaleway_rdb_user" "datadeck-test-iam" {
  name = "datadeck-test-iam"
  password = "ThisIsNotMyPassword1!"
  instance_id = scaleway_rdb_instance.db01.id
}
