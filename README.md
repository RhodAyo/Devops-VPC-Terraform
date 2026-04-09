
Submission: A single document (PDF, Word, or Google Doc) link containing Parts A, plus your Terraform code files for Part B (as a GitHub repo link)
What You’ll Learn: VPC design thinking, subnet planning, and how to use Terraform modules to automate infrastructure


This assignment has 2 parts. Part A tests your understanding of VPC design from class. Part B uses a subnet calculator to verify your design. Part C introduces you to Terraform modules, a new concept you’ll learn on your own using the resources provided.


The Scenario

You have been hired as a DevOps Engineer at ShopNaija, a Nigerian e-commerce startup expanding to serve customers across West Africa. The company needs you to design and automate the AWS network infrastructure for their new platform.
The platform consists of:
- A public-facing website and API (customers access this from the internet)
- Backend application servers (process orders, manage inventory, should NOT be directly accessible from the internet)
- A database layer (stores customer data, orders,  must be highly secured and isolated)
- The DevOps team needs SSH access to private instances for maintenance
The infrastructure must be highly available (survive if one data centre goes down) and cost-effective for a startup.

