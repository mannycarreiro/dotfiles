# About Me (Manny)

## Quick Overview
IT/DevOps engineer based in **Canada** with deep expertise in enterprise Java, infrastructure automation, containerization, and self-hosted Kubernetes. 
I run a homelab with Proxmox, Ceph, and Kubernetes, and manage a short-term rental property in the Azores.

---

## Professional Skills & Tech Stack

### Primary Technologies
- **Languages**: Java (Spring Boot), Python, Bash/Shell, Jinja2
- **Enterprise Java**: Spring Boot, JBoss/WildFly, Maven, classloading troubleshooting
- **Infrastructure & Orchestration**: Ansible (AAP), Kubernetes (Talos), Proxmox, Ceph
- **CI/CD & DevOps**: GitHub Actions, custom runners via ARC, Maven orchestration, repository dispatch patterns
- **Cloud & Containerization**: Docker, Podman, multi-arch builds, Kustomize overlays
- **Networking & Security**: UniFi UCG Ultra, Tailscale, Cloudflare Zero Trust, YubiKey GPG/SSH
- **Data & Databases**: PostgreSQL (CloudNativePG), Spring Cloud Config, Vault
- **Monitoring & Observability**: Prometheus, Grafana, Vector, OpenObserve, Loki, syslog ingestion
- **API & Message Tools**: GitHub CLI, GitHub custom properties, webhook integration, EDA (Event-Driven Ansible)

### Deep Expertise Areas
- **Ansible Automation Platform (AAP)**: Custom modules, execution environments, surveys, workflows, dynamic inventories, Jinja2 filters, role/task variable scoping, Vault integration
- **Kubernetes**: Gateway API, Istio service mesh, MetalLB, Cilium CNI, Rook/Ceph, SOPS secrets management, GitOps workflows
- **Ceph**: Multi-node cluster (HDD/SSD pools), RADOS Gateway (RGW/S3), NFS-Ganesha, CRUSH rules, RBD block storage, CephFS
- **Spring Boot & Java**: Config servers (Vault + Git backends), embedded Tomcat, classloading issues, service discovery, LDAP integration
- **CI/CD**: Cross-repository Maven builds, topological sorting, GitHub Actions workflows, self-hosted runners
- **Secrets Management**: HashiCorp Vault (Agent Injector, auth methods), SOPS, Ansible Vault, YubiKey integration

---

## Homelab Infrastructure

### Core Architecture
- **Hypervisor Cluster**: 8-node Proxmox cluster (`sousaca-pve`)
  - Nodes: `pve-iceland`, `pve-porto` (ThinkPad X1 Carbon), `pve-gaia` (ThinkCentre), Zima-based nodes
  - Storage: Proxmox Ceph cluster (HDD + SSD OSDs, hybrid pools)
  - S3 Gateway: Ceph RGW at `s3.sousaca.com` (Caddy reverse proxy)

- **Kubernetes Cluster**: `sousaca-k8s`
  - OS: Talos Linux
  - CNI: Cilium
  - Service Mesh: Istio (Gateway API with `gatewayClassName: istio`)
  - Storage: Rook/Ceph for RBD and CephFS
  - Database: CloudNativePG (`sousaca-pg-cluster`)
  - Ingress: MetalLB for LoadBalancer services
  - External: Cloudflare Tunnel for private access
  - CI/CD: GitHub Actions self-hosted runners via ARC

### Key Services & Applications
- **Forgejo**: Self-hosted Git with PostgreSQL (CNPG), HTTP→HTTPS redirect via HTTPRoute
- **Ghost CMS**: Self-hosted blogging platform
- **DNS & Network**: Pi-hole (conditional forwarding), Cloudflare Zero Trust private routing, Tailscale subnet routing
- **Observability**: Vector, OpenObserve, or Loki + Grafana (PLG stack with Promtail/Alloy)
- **Secrets**: Vault with Agent Injector, SOPS for GitOps
- **Dotfiles**: chezmoi with YubiKey-backed GPG encryption

### Domain
`sousaca.com` (homelab domain)

---

## Personal Context

### Location & Business
- **Based**: Portugal
- **Short-Term Rental**: Alojamento Local property in the Azores named Casa Borda da Rocha
- **Tax/Compliance**: Portuguese IVA, Modelo 30 filings

### Technical Interests & Tools
- **Hardware**: Mac primary workstation, iTerm2 + Oh My Zsh
- **Security**: YubiKey-backed GPG setup for commit signing, SSH, file encryption
  - Fingerprint: `23B66188964A28DAC854BCF4D517C744B3C5DA7F`
---

## Current Focus Areas (As of June 2026)

### Recent Technical Work
- Linux sysadmin: exFAT formatting, CIFS credentials, USB drive management, Unraid integration
- Container/Image Work: Multi-arch images, ISO writing via `dd`
- Networking: UniFi VLANs, TP-Link switch configuration, Tailscale routing, Cloudflare Zero Trust
- Java/Spring Boot: Classloading issues (Netty/`jdk.net.Sockets`), Config Server patterns, LDAP/Active Directory
- Observability: Graylog vs. Loki evaluation, syslog ingestion, Vector configuration

---

## Systems & Operating Systems
- **Primary OS**: macOS (workstation)
- **Infrastructure OS**: RHEL/Rocky Linux, Debian/Ubuntu, Proxmox, Talos Linux
- **Automation**: Bash, Python, Jinja2 templating

---

## Work Environment
- **Enterprise Context**: Large-scale Ansible deployments, AAP integration, GitHub Enterprise
- **Self-Hosted**: Custom infrastructure, Git (Forgejo), CI/CD runners, monitoring stacks
- **Cloud Tooling**: HashiCorp Vault, Nexus repository manager, Active Directory integration
- **Continuous Learning**: Evaluating new tools, building custom modules, infrastructure patterns

---

