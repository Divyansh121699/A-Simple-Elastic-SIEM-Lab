# Elastic Agent Installation on Kali Linux

## Overview
This guide walks you through the steps to install the Elastic Agent on a **Kali Linux VM** and connect it to **Elastic SIEM** for log collection and security event monitoring.

## Prerequisites
Before installing the Elastic Agent, ensure the following:
- A running **Kali Linux VM** (installed via VirtualBox or VMware)
- A valid **Elastic Cloud account** ([Sign up here](https://cloud.elastic.co/registration))
- Internet access on the Kali VM

## Step 1: Login to Elastic SIEM
1. Open your browser and go to **[Elastic Cloud](https://cloud.elastic.co/)**.
2. Log in with your credentials.
3. Navigate to **Kibana** → **Integrations**.
4. Search for **Elastic Defend** and click on it.
5. Click on **Install Elastic Defend**.

## Step 2: Install Elastic Agent
1. Once in the **Elastic Defend** integration page, select **Linux** as the platform.
2. Copy the **installation command** provided by Elastic Cloud.
3. Open a terminal in your **Kali Linux VM** and paste the command:
   ```bash
   sudo mkdir /etc/elastic-agent && cd /etc/elastic-agent
   curl -L -O https://artifacts.elastic.co/downloads/beats/elastic-agent/elastic-agent-8.x.x-linux-x86_64.tar.gz
   tar xzvf elastic-agent-8.x.x-linux-x86_64.tar.gz
   cd elastic-agent-8.x.x-linux-x86_64
   sudo ./elastic-agent install --url=<ELASTIC_AGENT_URL> --enrollment-token=<YOUR_ENROLLMENT_TOKEN>
   ```

## Step 3: Verify Installation
1. After installation, check if the Elastic Agent is running by executing:
   ```bash
   sudo systemctl status elastic-agent.service
   ```
   Expected output:
   ```yaml
   ● elastic-agent.service - Elastic Agent
     Loaded: loaded (/etc/systemd/system/elastic-agent.service; enabled; vendor preset: enabled)
     Active: active (running) since...
   ```
2. If the agent is not running, restart it with:
   ```bash
   sudo systemctl restart elastic-agent
   ```

## Step 4: Confirm Data Flow in Elastic SIEM
1. In **Elastic Cloud**, navigate to **Kibana → Observability → Logs**.
2. Look for logs from your Kali VM under `agent.name:"kali-linux"`.
3. If logs are appearing, your agent is successfully forwarding data.

