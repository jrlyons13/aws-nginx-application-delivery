# AWS NGINX Application Delivery Lab

## 📌 Overview

This project demonstrates a cloud-native application delivery architecture in AWS using Terraform and NGINX.

A public-facing NGINX reverse proxy is configured to securely route and load balance traffic to backend web servers hosted in private subnets. The lab implements multiple security controls including TLS termination, security headers, and rate limiting.

---

## 🎯 Objectives

- Deploy AWS infrastructure using Terraform
- Design a VPC with public and private subnets
- Configure a reverse proxy using NGINX
- Implement load balancing across backend servers
- Enable HTTPS with TLS termination
- Enforce HTTP → HTTPS redirection
- Apply security headers at the edge
- Implement rate limiting to protect backend services

---

## 🏗️ Architecture

Internet
↓
NGINX Reverse Proxy (Public Subnet)
↓
Backend Server 1 (Private Subnet)
Backend Server 2 (Private Subnet)


- NAT Gateway enables outbound internet access for private instances
- Security Groups restrict traffic between tiers
- Backend servers are not publicly accessible

---

## 🛠️ Technologies Used

- AWS (EC2, VPC, Subnets, NAT Gateway)
- Terraform
- NGINX
- Amazon Linux 2023
- OpenSSL

---

## 🔐 Security Features

- Private subnets for backend isolation
- Security Groups for controlled access
- HTTPS/TLS termination at NGINX
- HTTP to HTTPS redirection
- Security headers:
  - X-Content-Type-Options
  - X-Frame-Options
  - X-XSS-Protection
  - Referrer-Policy
- Rate limiting to mitigate abuse and excessive requests

---

## ⚙️ Deployment Steps

1. Clone the repository
2. Navigate to Terraform directory
3. Configure `terraform.tfvars`
4. Run:
terraform init
terraform plan
terraform apply


5. SSH into frontend instance
6. Configure NGINX
7. Test application via browser

---

## 🧪 Validation

- Load balancing verified via alternating backend responses
- HTTPS tested using browser and curl
- Security headers verified with:
- 
curl -I https://<frontend>
- Rate limiting validated using burst request testing

---

## 📸 Screenshots

(Add screenshots here showing:)
- Terraform apply
- Load balancing responses
- HTTPS working
- Security headers
- Rate limiting results

---

## 📚 Lessons Learned

- Importance of NAT Gateway for private subnet package installs
- Reverse proxy configuration and troubleshooting
- Secure architecture design using public/private subnet separation
- Implementing security controls at the application edge
- Managing Git repositories and handling large file issues

---

## 🚀 Future Enhancements

- Use AWS ACM for managed TLS certificates
- Integrate AWS WAF for additional protection
- Implement content-based routing
- Automate NGINX configuration via Terraform or user data

---

## 👨‍💻 Author

James Lyons  
Cloud Security | Network Engineering | Application Security



- 
