# Log Analysis in Elastic SIEM

## Overview
This guide explains how to query and analyze logs in **Elastic SIEM** using the **Kibana** interface. By following these steps, you can efficiently filter security-related events and gain insights into system activity.

---

## Step 1: Accessing the Logs
1. **Log in** to your **Elastic Cloud** instance.
2. Click on the **Menu (☰) icon** at the top-left corner.
3. Under **Observability**, select **Logs** to view ingested log data.

---

## Step 2: Querying Logs
To search for specific logs, use the **search bar** at the top of the Logs interface.

### Common Queries
- **Find all Nmap scan events:**
  ```
  event.action: "nmap_scan"
  ```
- **Find all logs related to the sudo command:**
  ```
  process.args: "sudo"
  ```
- **Find authentication failures:**
  ```
  event.category: "authentication" AND event.outcome: "failure"
  ```

**Tip:** Use **wildcards (`*`)** for partial matches and **logical operators (`AND`, `OR`)** for advanced searches.

---

## Step 3: Filtering Logs
Use the filtering options in Kibana:
- **Time Range Selector**: Set a custom time frame.
- **Field Selection**: Click on fields in the log table to add filters.
- **Drill-Down Analysis**: Click on an event to explore its details.

---

## Step 4: Visualizing Log Data
To analyze log patterns over time, create **visualizations** in Kibana:
1. Navigate to **Analytics → Discover**.
2. Apply necessary **filters** and **queries**.
3. Click **Save** to reuse your searches.
4. Export data or use it for dashboard creation.

---

## Step 5: Exporting Logs
To export logs for external analysis:
1. In **Discover**, click **Share**.
2. Select **Export to CSV**.
3. Download the log file.

---

## Conclusion
By leveraging Elastic SIEM’s log analysis features, you can efficiently monitor and investigate security-related events. Consistently refining your queries and creating dashboards will help enhance your security monitoring capabilities.
