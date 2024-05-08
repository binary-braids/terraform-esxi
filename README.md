[![Host 01 Production CI](https://github.com/binary-braids/terraform-esxi/actions/workflows/host_01_production.yml/badge.svg)](https://github.com/binary-braids/terraform-esxi/actions/workflows/host_01_production.yml)
[![Host 02 Production CI](https://github.com/binary-braids/terraform-esxi/actions/workflows/host_02_production.yml/badge.svg)](https://github.com/binary-braids/terraform-esxi/actions/workflows/host_02_production.yml)
[![Run validation against Terraform code](https://github.com/binary-braids/terraform-esxi/actions/workflows/validation.yml/badge.svg)](https://github.com/binary-braids/terraform-esxi/actions/workflows/validation.yml)

[![terraform](https://img.shields.io/badge/Terraform-purple?style=for-the-badge&logo=terraform)](https://www.terraform.io/)
[![renovate](https://img.shields.io/badge/renovate-enabled-brightgreen?style=for-the-badge&logo=renovatebot)](https://github.com/renovatebot/renovate)
[![HitCount](https://hits.dwyl.com/binary-braids/terraform-esxi.svg?style=for-the-badge&show=unique)](http://hits.dwyl.com/binary-braids/terraform-esxi)

# Terraform ESXI

This repository contains the Terraform modules for my ESXI homelab. The [registry.terraform.io/josenk/esxi](https://github.com/josenk/terraform-provider-esxi) provider is being used.

The `terraform.tfvars` for the modules are present within this repository which is generall bad advice however I am using the [cschleiden/replace-tokens](https://github.com/cschleiden/replace-tokens) GitHub Action to replace entries in the files with GitHub secret values.

## 📂 Repository structure

The Git repository contains the following directories:

```
📁 root
├─📁 .github
└─📁 production
  ├─📁 host_01
  └─📁 host_02
```

