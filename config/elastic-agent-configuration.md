# Elastic Agent Configuration

## Overview
Elastic Agent is responsible for collecting and forwarding security-related logs to Elastic SIEM. This guide outlines the configuration steps required to ensure seamless data ingestion from a Kali Linux VM to Elastic Cloud.

## Prerequisites
Before configuring Elastic Agent, ensure the following:
- An Elastic Cloud account is set up.
- Elastic Agent is installed on the Kali Linux VM.
- The VM has internet access to communicate with Elastic Cloud.

## Configuration Steps

### Step 1: Retrieve Fleet Enrollment Token
1. Log in to your **Elastic Cloud** account.
2. Navigate to **Fleet** under **Security → Integrations**.
3. Click **Add Agent** and select **Linux** as the platform.
4. Copy the provided **Fleet Enrollment Token**.

### Step 2: Configure Elastic Agent on Kali VM
1. Open a terminal on your Kali VM.
2. Run the following command to enroll the agent:
   ```bash
   sudo elastic-agent enroll <Elastic_Cloud_URL> <Fleet_Enrollment_Token>
   ```
3. After successful enrollment, start the agent with:
   ```bash
   sudo systemctl start elastic-agent
   ```
4. Verify that the agent is running:
   ```bash
   sudo systemctl status elastic-agent
   ```
### Step 3:  Enable Security Logs Collection
1. Open the Fleet settings in Elastic Cloud.
2. Under **Integrations**, search for **Elastic Defend**.
3. Click **Install Integration** and attach it to the enrolled agent.
4. Confirm logs are being forwarded by navigating to **Security → Events** in Kibana.

### Troubleshooting
- If the agent fails to enroll, check for network connectivity issues.
- Restart the agent if logs do not appear in Elastic Cloud:
  ```bash
  sudo systemctl restart elastic-agent
  ```
- Re-enroll the agent if necessary by running the enrollment command again.
