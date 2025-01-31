# Setting Up Alerts in Elastic SIEM

## Overview
This guide provides step-by-step instructions for creating alerts in **Elastic SIEM** to detect security threats such as **Nmap scans, failed logins, and system compromises**.

---

## Step 1: Accessing the Alerting Feature
1. Log in to your **Elastic Cloud** instance.
2. Click on the **Menu (☰) icon** at the top-left corner.
3. Under **Security**, select **Alerts**.
4. Click on **Manage Rules** at the top-right corner.

---

## Step 2: Creating a New Rule
1. Click on **Create new rule**.
2. Select **Custom query** under "Define rule".
3. Enter a **rule name** (e.g., `Nmap Scan Detection`).
4. Set the **query conditions**:
   ```
   event.action: "nmap_scan"
   ```
5. Click **Continue**.

---

## Step 3: Configuring Rule Details
1. Provide a **description** for the rule (e.g., *Detects Nmap scans and potential reconnaissance activity*).
2. Set **Severity Level** (e.g., `Medium`, `High`, or `Critical`).
3. Define **rule schedule** (e.g., run every `5 minutes`).
4. Click **Continue**.

---

## Step 4: Defining Alert Actions
1. Select the **notification method** (e.g., Email, Slack, Webhook).
2. Configure the **action settings**:
   - **For Email Alerts:** Add recipient email addresses.
   - **For Slack Alerts:** Provide the Slack Webhook URL.
   - **For Webhooks:** Enter the endpoint URL and payload format.
3. Click **Create and enable rule**.

---

## Step 5: Monitoring and Managing Alerts
1. Go to the **Alerts** section under **Security**.
2. Review triggered alerts and analyze event details.
3. Take necessary actions based on alert findings.

---

## Conclusion
By setting up **automated alerts**, Elastic SIEM helps security teams quickly detect and respond to threats in real time. Regularly review and fine-tune rules for optimal security monitoring.
