resource "scaleway_k8s_cluster" "k8s01" {
  name = "k8s01"
  version = "1.21.0"
  cni = "calico"

  tags = [ "prod", "test" ]
}

resource "scaleway_k8s_pool" "k8s01-pool01" {
  name = "k8s01-pool01"
  min_size = 1
  size = 1
  max_size = 2
  autoscaling = true
  autohealing = true
  cluster_id = scaleway_k8s_cluster.k8s01.id
  node_type = "dev1-m"
}
