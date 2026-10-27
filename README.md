<div align="center">

# 🏗️ Terraform Enterprise Architecture & Modular IaC Library
### Production-Grade Azure Infrastructure as Code Modules & Deployment Blueprints

[![IaC](https://img.shields.io/badge/IaC-HashiCorp_Terraform-7B2CBF?style=for-the-badge&logo=terraform&logoColor=white)](https://terraform.io)
[![Cloud](https://img.shields.io/badge/Cloud-Microsoft_Azure-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=white)](https://azure.microsoft.com)
[![Validation](https://img.shields.io/badge/Linting-TFLint_%26_Checkov-00FF66?style=for-the-badge&logo=bridgecrew&logoColor=0B0813)](#-linting--compliance-standards)
[![Architecture](https://img.shields.io/badge/Architecture-Modular_Enterprise-00E5FF?style=for-the-badge&logo=azureartifacts&logoColor=0B0813)](#-modular-taxonomy)

**Engineered by [Mihir Maurya](https://github.com/MihirMaurya-dev) · Enterprise Cloud Architect & DevSecOps**

</div>

---

## 🏛️ Architectural Overview

This repository represents a structured, enterprise-grade **Terraform Infrastructure as Code (IaC) Library** for Microsoft Azure. Designed around modularity, immutability, and DRY (Don't Repeat Yourself) design patterns, each blueprint encapsulates security baselines, parameter validation, and resource isolation.

```mermaid
graph TD
    subgraph Root["🧩 Reusable Terraform Modules"]
        M_NET["🌐 Virtual Networking & Subnets"]
        M_LB["⚖️ Azure Load Balancer & Probes"]
        M_SEC["🛡️ Network Security Groups (NSGs)"]
        M_STOR["🗄️ Storage Accounts & Private Endpoints"]
        M_VM["💻 Compute & Virtual Machines"]
    end

    subgraph Governance["📋 Policy & Verification"]
        TFLINT["🔬 TFLint Rules"]
        CHECKOV["🔐 Checkov CIS Gate"]
        FMT["🎨 Terraform Fmt & Validate"]
    end

    subgraph Target["🚀 Cloud Deployments"]
        AZ_DEMO["🧪 Demo & Staging Platforms"]
        AZ_LB["⚖️ High-Availability Workloads"]
        AZ_ENT["🏢 Enterprise Production Landing Zones"]
    end

    Root --> Governance
    Governance --> Target

    classDef modStyle fill:#1d0738,stroke:#9d4edd,stroke-width:2px,color:#fff;
    classDef govStyle fill:#2d1900,stroke:#f59e0b,stroke-width:2px,color:#fff;
    classDef targetStyle fill:#032111,stroke:#00ff66,stroke-width:2px,color:#fff;

    class M_NET,M_LB,M_SEC,M_STOR,M_VM modStyle;
    class TFLINT,CHECKOV,FMT govStyle;
    class AZ_DEMO,AZ_LB,AZ_ENT targetStyle;
```

---

## 📂 Modular Taxonomy & Architecture Blueprints

| Component / Module | Scope & Architecture Pattern | Key Features |
|:---|:---|:---|
| ⚖️ **`terraform-loadbalancer-lab`** | High-Availability Ingress Architecture | Public/Internal Azure Standard Load Balancer, Frontend IP configurations, Backend Pools, TCP Health Probes, and Load Balancing Rules. |
| 🌐 **`terraform-azure-demo`** | Automated PR Deployment Blueprint | Includes GitHub Actions / Azure DevOps PR verification pipeline (`azure-pipelines-pr.yml`), automated plan generation, and remote backend integration. |
| 🛡️ **`resource-group`** | Core Governance & Metadata Foundation | Enterprise tagging taxonomy, regional deployment constraints, and CAF naming conventions. |
| 📦 **Enterprise Modules** | Core Foundation Components | Reusable modules for Virtual Networks, Subnet slicing, Network Security Group priority rules, and Managed Identities. |

---

## 🔒 Linting & Compliance Standards

All Terraform blueprints in this suite enforce:

1. **Strict Type Constraints & Input Validations**:
   Variables utilize custom validation blocks to prevent illegal CIDR blocks or non-standard naming schemes.
2. **State Concurrency & Lease Locking**:
   Configured for Azure Blob Storage remote backends with blob lease locking to prevent race conditions.
3. **Shift-Left Static Analysis**:
   Pre-merge linting using **TFLint** and security scanning via **Checkov** to enforce CIS Azure Benchmark standards.

---

## 🚀 Execution & Quickstart

```bash
# 1. Initialize Terraform provider plugins & remote state
terraform init

# 2. Enforce code formatting and structural validation
terraform fmt -check
terraform validate

# 3. Generate predictive execution plan
terraform plan -out=main.tfplan

# 4. Apply approved plan (immutable execution)
terraform apply main.tfplan
```

---

<div align="center">

**[Explore Portfolio](https://b18g119.online)** · **[Connect on LinkedIn](https://linkedin.com/in/mihirmauryaa)** · **[DevOps Knowledge Vault](https://github.com/MihirMaurya-dev/DevOps-Notes)**

</div>
