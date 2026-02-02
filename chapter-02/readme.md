.
├── main.tf                 # Root Orchestrator
├── compute.tf              # Multi-ENI & Instance logic
├── variables.tf            # Root input declarations
├── terraform.tfvars        # Your actual values (The only file you edit)
├── outputs.tf              # root outputs for the user
└── modules/
    └── networking/
        ├── main.tf         # The 4-Tier VPC Logic
        ├── variables.tf    # Module inputs
        └── outputs.tf      # Essential exports (Subnet IDs, etc.)