# Mobile Device E-Commerce OMS

## Overview
This repository contains the architecture, business logic, and documentation for the Mobile Device E-Commerce Order Management System (OMS). Designed specifically for the retail of high-value electronics and smartphones, this system prioritizes strict serial number tracking, security, and fraud prevention throughout the order lifecycle.

## Key Features
* **High-Value Inventory Management:** Tracks every individual unit via IMEI and Serial Numbers. Supports dynamic bundling (e.g., deducting a smartphone, case, and screen protector simultaneously).
* **Order Processing & Fraud Prevention:** Integrates with 3rd-party fraud detection APIs to flag high-risk transactions. Enforces purchase limits on high-demand SKUs to prevent scalping.
* **Secure Fulfillment:** Mandates "Signature Required" and insurance for high-value orders. Enforces mandatory IMEI barcode scans before generating final shipping labels.
* **Electronics Reverse Logistics:** Automated workflows prompt customers to remove activation locks (e.g., iCloud, Google Account) prior to generating an RMA. Requires multi-point warehouse damage inspections before refund processing.

## Tech Stack & System Requirements
* **Backend Core:** Node.js
* **Database:** MongoDB Atlas
* **Frontend UI Integration:** HTML5, Tailwind CSS, Vanilla JavaScript
* **External APIs:** Major Telecom carriers (webhook integrations), Fraud Detection services, and Primary Shipping Carriers (UPS, FedEx).

## Installation & Setup
1. Clone the repository to your local environment.
2. Install the necessary dependencies:
   ```bash
   npm install
   ```
3. Configure your `.env` file with your MongoDB Atlas connection string and external API keys.
4. Start the backend server:
   ```bash
   npm run start
   ```

## Documentation
For comprehensive business and functional requirements, refer to the generated PDF specification document included in the project assets.

---
**Author:** Maria Antony Selvam S (Alan)
