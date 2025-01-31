# Elastic SIEM Lab - Home Lab Setup

## Overview
This project sets up an **Elastic SIEM (Security Information and Event Management) Lab** using **Elastic Cloud** and a **Kali Linux VM**. You will:
- Install and configure **Elastic Agent** on Kali Linux.
- Generate security events using **Nmap**.
- Query logs and analyze security data in **Elastic SIEM**.
- Create dashboards to visualize security events.
- Set up alerts to detect suspicious activities.

---

## Prerequisites
Before getting started, ensure you have:
- **Elastic Cloud Account** ([Sign up for free](https://cloud.elastic.co/registration))
- **Virtualization Software** (VirtualBox or VMware)
- **Basic Linux Knowledge**

---

## Project Structure
```
SIEM-Lab/
├── README.md                # Project overview and setup instructions
├── config/
│   ├── elastic-agent-installation.md  # Guide for installing Elastic Agent on Kali Linux
│   ├── elastic-agent-configuration.md # Configuration details for Elastic Agent
├── scripts/
│   ├── generate_security_events.sh    # Script to generate security events using Nmap
├── docs/
│   ├── elastic-account-setup.md       # Steps to create and configure an Elastic Cloud account
│   ├── kali-vm-setup.md               # Instructions for setting up Kali Linux VM
│   ├── log-analysis.md                # Guide on querying and analyzing logs in Elastic SIEM
│   ├── dashboard-creation.md          # Steps to create dashboards for visualizing security events
│   ├── alert-setup.md                 # Instructions to set up alerts for security events
├── sample-logs/
│   ├── nmap_scan.log                  # Sample log file from an Nmap scan
```

---

## Setup Instructions
### 1️⃣ Set Up an Elastic Cloud Instance
1. **Sign up** for a free trial on **Elastic Cloud** ([Click here](https://cloud.elastic.co/)).
2. Click **Create Deployment**, select **Elasticsearch**, and follow the setup wizard.
3. Note down your **Cloud ID** and **Elasticsearch credentials**.

### 2️⃣ Set Up Kali Linux VM
1. Download **Kali Linux** from [Official Site](https://www.kali.org/get-kali/#kali-virtual-machines).
2. Install it in **VirtualBox** or **VMware**.
3. Log in using default credentials: `kali/kali`.

### 3️⃣ Install & Configure Elastic Agent
1. Log in to **Elastic Cloud** → Go to **Integrations** → Search for **Elastic Defend**.
2. Install the integration and copy the **installation command**.
3. Run the command in your Kali VM terminal:
   ```bash
   sudo ./elastic-agent install --url=<YOUR_ELASTIC_URL> --enrollment-token=<YOUR_TOKEN>
   ```
4. Verify installation:
   ```bash
   sudo systemctl status elastic-agent.service
   ```

### 4️⃣ Generate Security Events with Nmap
1. Open a **Terminal** in Kali Linux.
2. Run an **Nmap scan** on your host machine:
   ```bash
   sudo nmap -sS -p 22,80,443,3389 <TARGET-IP>
   ```
3. This will generate logs in **Elastic SIEM**.

### 5️⃣ Query Logs in Elastic SIEM
1. Go to **Elastic Cloud → Kibana → Logs**.
2. Use this query to filter Nmap scan events:
   ```
   event.action: "nmap_scan"
   ```
3. View and analyze logs for security insights.

### 6️⃣ Create Dashboards & Alerts
- **Create Dashboards:** Visualize security events in Kibana.
- **Set Up Alerts:** Configure detection rules to notify security incidents.

---

## Acknowledgement
This project is inspired by the guide [A Simple Elastic SIEM Lab](https://medium.com/@aali23/a-simple-elastic-siem-lab-6765159ee2b2) by Abdullahi Ali on Medium. Many thanks to the author for providing a detailed walkthrough on setting up an Elastic SIEM home lab.

