# Elastic Account Setup

## Step 1: Create an Elastic Cloud Account
To use Elastic SIEM, you need to create a free Elastic Cloud account.

1. Open your web browser and go to [Elastic Cloud](https://cloud.elastic.co/registration).
2. Click on **Sign up for free** and fill in your details (email, password, etc.).
3. Verify your email address by clicking the confirmation link sent to your email.

## Step 2: Deploy an Elasticsearch Instance
Once your account is created, you need to set up an Elasticsearch deployment.

1. Log in to your Elastic Cloud account at [Elastic Cloud Console](https://cloud.elastic.co/).
2. Click on **Start your free trial** (if applicable).
3. Click on **Create Deployment**.
4. Choose **Elasticsearch** as the deployment type.
5. Select a **region** that is closest to your location for optimal performance.
6. Select the deployment size (for a free trial, choose the default settings).
7. Click **Create Deployment**.
8. Wait for the setup to complete. Once it's ready, click **Continue**.

## Step 3: Get Your Cloud ID and Credentials
After your deployment is created, you will need the **Cloud ID** and credentials to configure log forwarding.

1. In your Elastic Cloud dashboard, go to **Deployments**.
2. Click on your newly created deployment.
3. Find the **Cloud ID** under the "Manage Deployment" section.
4. Copy and save the **Cloud ID** and **Elastic user password** securely. You will need them for further setup.

## Step 4: Access Kibana
Kibana is the web interface for querying and visualizing logs.

1. In the Elastic Cloud console, navigate to **Deployments**.
2. Click on your deployment name.
3. Click on **Open Kibana**.
4. Log in using the credentials you saved earlier.

## Next Steps
After setting up your Elastic Cloud account, you can proceed to:
- **Install Elastic Agent** to forward logs from your VM.
- **Generate security events** on your Kali Linux VM.
- **Query and analyze logs** in Elastic SIEM.
