# Core System API & Data Architecture

## 📖 Overview
This project serves as the foundational backend architecture and API core for a scalable inventory and transaction management system. It emphasizes clean data modeling, robust entity relationships, and cloud deployment readiness. The system is designed to handle user profile management, inventory tracking, and transaction logging securely and efficiently.

## 🚀 Tech Stack
- **Backend Environment:** Node.js, Express.js
- **Database Architecture:** MongoDB (Atlas), Mongoose ORM
- **Frontend / Admin Dashboard:** HTML5, CSS3, Tailwind CSS, Vanilla JavaScript
- **Documentation:** Entity Analysis and Entity Relationship matrices provided in PDF format.

## 📂 Project Structure
```text
├── /config             # Environment variables and database configuration
├── /controllers        # Logic for handling API requests
├── /models             # MongoDB schemas (User, Item, Transaction)
├── /routes             # API endpoints routing
├── /public             # Static assets for the frontend UI
├── /docs               # Project architecture documentation (PDFs)
├── server.js           # Entry point for the Node.js application
└── README.md           # Project overview and setup instructions
```

## 🛠️ Installation & Local Setup

1. **Clone the repository:**
   ```bash
   git clone <repository-url>
   cd <project-directory>
   ```

2. **Install dependencies:**
   ```bash
   npm install
   ```

3. **Configure Environment Variables:**
   Create a `.env` file in the root directory and add the following:
   ```env
   PORT=3000
   MONGO_URI=your_mongodb_atlas_connection_string
   JWT_SECRET=your_secret_key
   ```

4. **Start the Development Server:**
   ```bash
   npm run dev
   ```
   *The server will start on http://localhost:3000*

## 📚 Documentation Reference
For an in-depth understanding of the database structure, refer to the generated PDF reports in the `/docs` directory:
- `Entity_Analysis_Report.pdf`: Details core entities, attributes, and data types.
- `Entity_Relationship_Analysis.pdf`: Explains M:N and 1:N relational mappings and document embedding strategies.

## 👨‍💻 Author
**Maria Antony Selvam S (Alan)**
*BCA Student at Kamaraj College | Aspiring Full-Stack Developer*
