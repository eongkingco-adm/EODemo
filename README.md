# EODemo
This is a small sample of work I have contributed to drafting or applying while at Kore Wireless. Samples range from IaC deployments to past architecture drawings discussions.
All information has been sanitizied for privacy purposes.


# GKE Migration Blueprint: On-Prem to GCP

This repository serves as a strategic roadmap and technical foundation for migrating legacy on-premise Kubernetes workloads to a Google Cloud (GKE) environment.

## High-Level Architecture
```mermaid
graph LR
    subgraph On_Prem["On-Premise Data Center"]
    A[Legacy K8s Cluster] --> B[Existing Services]
    end

    subgraph GCP_Foundations["GCP Shared VPC"]
    C[Cloud Interconnect/VPN] --> D[Identity Federation]
    D --> E[Cloud DNS / IAM]
    end

    subgraph Target_GKE["Production GKE Platform"]
    F[GKE Private Cluster] --> G[Cloud Armor WAF]
    G --> H[Managed Service Mesh]
    end

    B -.->|Phase 2: Data Sync| C
    E --> F


gantt
    title GKE Migration Roadmap
    dateFormat  YYYY-MM-DD
    section Foundation
    Shared VPC & IAM          :a1, 2026-01-01, 30d
    Interconnect Setup        :after a1, 20d
    section Migration
    Pilot (Tier 3)            :2026-02-15, 20d
    Production (Tier 1 & 2)   :2026-03-10, 45d
    section Optimization
    Post-Migration Cleanup    :2026-05-01, 15d