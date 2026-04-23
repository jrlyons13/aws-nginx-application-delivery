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
