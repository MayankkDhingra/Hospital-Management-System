# MediCare HMS - Hospital Management System

A full-stack Hospital Management System built with the MERN stack (MongoDB, Express.js, React.js, Node.js) with an integrated AI service layer.

## 🏥 Architecture

```
┌─────────────────────────────────────────────────┐
│              FRONTEND (React + Vite)             │
│  Patients | Doctors | Appointments | EMR | ...  │
└────────────────────┬────────────────────────────┘
                     │ REST API
┌────────────────────┴────────────────────────────┐
│           API LAYER (Express.js)                 │
│        JWT Auth + Role-Based Access Control       │
└────────────────────┬────────────────────────────┘
                     │
┌────────────────────┴────────────────────────────┐
│         BUSINESS LOGIC LAYER                     │
│  12 Modules: Patients, Appointments, Doctors,    │
│  EMR, Pharmacy, Lab, Billing, Inpatient,         │
│  Emergency, Notifications, Reports, AI Services  │
└────────────────────┬────────────────────────────┘
                     │
┌────────────────────┴────────────────────────────┐
│            DATABASE (MongoDB)                     │
│  9 Collections: Users, Patients, Doctors,        │
│  Appointments, MedicalRecords, Prescriptions,    │
│  Billing, LabReports, Inpatient, Emergency       │
└─────────────────────────────────────────────────┘

AI SERVICES:
├── AI Symptom Analyzer (15+ symptom patterns)
├── AI Medical Record Summarizer
├── AI Prescription Explanation Bot (10+ drug profiles)
├── AI Appointment Assistant (slot optimization)
└── AI Operations Dashboard (health scoring)
```

## 🚀 Quick Start

### Prerequisites
- **Node.js** v18+
- **MongoDB** running locally on port 27017
- **npm** or yarn

### Backend Setup

```bash
cd backend
npm install
npm run seed    # Seed database with demo data
npm run dev     # Start on http://localhost:5000
```

### Frontend Setup

```bash
cd frontend
npm install
npm run dev     # Start on http://localhost:5173
```

## 👤 Demo Accounts

All passwords: `password123`

| Role | Email |
|------|-------|
| Admin | admin@hospital.com |
| Doctor | rajesh.kumar@hospital.com |
| Doctor | priya.sharma@hospital.com |
| Patient | ramesh@patient.com |
| Pharmacist | ravi@hospital.com |
| Lab Technician | anjali@hospital.com |

## 📂 Project Structure

```
hospital-management-system/
├── backend/
│   ├── src/
│   │   ├── config/          # DB connection, env config
│   │   ├── middleware/       # JWT auth, RBAC, error handler
│   │   ├── models/          # 9 MongoDB models
│   │   ├── controllers/     # 13 controller files
│   │   ├── routes/          # 13 route files
│   │   ├── services/ai/     # 5 AI service modules
│   │   └── utils/           # Seed data, helpers
│   ├── server.js            # Entry point
│   └── package.json
├── frontend/
│   ├── src/
│   │   ├── components/      # Layout, Sidebar, Header
│   │   ├── contexts/        # Auth context
│   │   ├── pages/           # 13 page components
│   │   └── services/        # Axios API client
│   ├── vite.config.js
│   └── package.json
└── README.md
```

## 🔐 User Roles

| Role | Access |
|------|--------|
| **Admin** | Full system access, reports, user management |
| **Doctor** | Patients, appointments, EMR, prescriptions, AI tools |
| **Nurse** | Patients, vitals, inpatient monitoring |
| **Receptionist** | Patient registration, appointments, billing |
| **Pharmacist** | Prescription dispensing, inventory |
| **Lab Technician** | Lab reports, test results |
| **Patient** | Own records, appointments, prescriptions |

## 🤖 AI Features

1. **Symptom Analyzer** - Enter symptoms to get probable conditions, risk assessment, and specialist recommendations
2. **Record Summarizer** - AI-generated patient history summaries with risk scoring
3. **Prescription Bot** - Explains medications, side effects, drug interactions, and adherence tips
4. **Appointment Assistant** - Smart slot suggestions based on doctor availability and patient needs
5. **Operations Dashboard** - Hospital health scoring, bottleneck detection, revenue predictions

## 🛠 Tech Stack

- **Frontend**: React 18, Vite, Tailwind CSS, Recharts, Lucide Icons, React Router
- **Backend**: Node.js, Express.js, JWT, bcryptjs, Mongoose
- **Database**: MongoDB
- **AI Layer**: Pattern-matching engine with medical knowledge base

## 📊 API Endpoints

Base URL: `http://localhost:5000/api`

- `POST /api/auth/login` - User authentication
- `GET /api/patients` - List patients
- `GET /api/doctors` - List doctors
- `POST /api/appointments` - Schedule appointment
- `GET /api/medical-records` - Medical records
- `POST /api/ai/analyze-symptoms` - AI symptom analysis
- `GET /api/ai/operations-insights` - AI operations insights
- `GET /api/reports/dashboard` - Dashboard statistics

---

Built by **Mayank Dhingra** — Internship Project
