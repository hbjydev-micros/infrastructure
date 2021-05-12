# Datadeck Infrastructure

This repository holds the infrastructure for the Datadeck project. It is
deployed to [Scaleway](https://scaleway.com), using Kubernetes and PostgreSQL.

The resources used in Scaleway, where possible, are created & controlled with
[Terraform](https://terraform.io) using the official provider for Scaleway.

The resources & configurations I currently _cannot_ maintain in Terraform are:

- Kubernetes / Deploy an ingress controller (not possible through TF provider)
- Managed PostgreSQL -> Databases (not possible through TF provider)

The required environment variables to bootstrap the infrastructure for this
project's deployment are:

- `SCW_ACCESS_KEY`: The Scaleway access key, generated in the _Credentials_
  page on the Scaleway control panel.
- `SCW_SECRET_KEY`: The Scaleway secret key, generated in the _Credentials_
  page on the Scaleway control panel.
- `TF_VAR_project_id`: The Scaleway project UUID to deploy the resources to,
  found on the _Credentials_ page on the Scaleway control panel.

Once these environment variables are loaded, you can run `terraform apply` to
deploy the infrastructure needed, but you will need to create the required
databases as described in [MANUAL.md](./MANUAL.md).

Altogether, the stack for this application costs about €0.05941/hr. which is
roughly equivalent to £37.22/mo.
