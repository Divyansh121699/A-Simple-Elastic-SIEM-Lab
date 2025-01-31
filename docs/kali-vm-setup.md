# Kali Linux VM Setup Guide

## Prerequisites
Before setting up the Kali Linux virtual machine (VM), ensure you have the following:
- **VirtualBox** installed on your system.
- A system with at least **8GB RAM** and **50GB free disk space** for optimal performance.
- A stable internet connection for downloading the Kali Linux VM image.

---

## Step 1: Download the Kali Linux VM Image
1. Visit the **official Kali Linux website**: [Kali Linux VM Download](https://www.kali.org/get-kali/#kali-virtual-machines)
2. Select the **VirtualBox Image** (.ova).
3. Download the VM image and verify its integrity using the provided SHA256 checksum.

---

## Step 2: Import the Kali Linux VM into VirtualBox
1. **Open VirtualBox**.
2. Click on **File > Import Appliance**.
3. Browse to the downloaded **Kali Linux .ova file** and select it.
4. Click **Next**, then **Import**.
5. Once the import is complete, select the VM and click **Start**.
6. Log in using the default credentials:
   - **Username:** kali
   - **Password:** kali

---

## Step 3: Configure the Kali VM Network
To ensure proper connectivity, configure the network settings:
1. Open **VirtualBox**.
2. Select the Kali Linux VM and go to **Settings > Network**.
3. Choose **Bridged Adapter** to assign an IP address from your local network.
4. Save the settings and restart the VM.
5. Verify internet connectivity by opening a terminal and running:
   ```bash
   ping -c 4 google.com
   ```

---

## Step 4: Update and Upgrade Kali Linux
Once the VM is running, update the system packages:
```bash
sudo apt update && sudo apt upgrade -y
```
This ensures that you have the latest security updates and software installed.

---

## Troubleshooting
- **VM won’t start:** Ensure your system supports virtualization (VT-x/AMD-V enabled in BIOS).
- **No network connection:** Check VirtualBox network settings and set the adapter to "Bridged" or "NAT".
- **Slow performance:** Increase the allocated RAM (minimum 4GB) and CPU cores (at least 2) in VM settings.
