# 🏥 KMH System - Hospital Management System

## 📌 Project Overview

KMH System is a **Hospital Management System** built using:

* **Frontend:** HTML, CSS, JavaScript
* **Backend:** PHP
* **Database:** MySQL

The system has **3 main panels**:

* 👤 Patient Panel
* 👨‍⚕️ Doctor Panel
* 🛠️ Admin Panel

---

## 🚀 Features

### 👤 Patient Panel

* Register & Login
* Book Appointment
* View Doctors
* View Prescriptions

### 👨‍⚕️ Doctor Panel

* Login
* View Appointments
* Add Prescription
* Manage Patients

### 🛠️ Admin Panel

* Manage Doctors
* Manage Patients
* Manage Appointments
* View Reports

---

## 🧱 Project Structure

```
hospital/
│
├── frontend/
│   ├── css/
│   ├── js/
│   ├── images/
│   ├── index.html
│   └── login.html
│
├── backend/
│   ├── config/
│   │   └── db.php
│   ├── patient/
│   ├── doctor/
│   └── admin/
│
├── database/
│   └── hms.sql
│
└── README.md
```

---

## ⚙️ Requirements

Make sure you have installed:

* XAMPP / WAMP / LAMP
* PHP (>= 7.x)
* MySQL
* Web Browser

---

## 🛠️ Setup Instructions

### 1️⃣ Clone Repository

```
git clone https://github.com/barkatkhan87/hms.git
```

---

### 2️⃣ Move Project to Server Directory

Move project folder to:

```
C:/xampp/htdocs/
```

Final path:

```
C:/xampp/htdocs/hospital
```

---

### 3️⃣ Start Server

Open XAMPP and start:

* Apache ✅
* MySQL ✅

---

### 4️⃣ Setup Database

1. Open browser:

```
http://localhost/phpmyadmin
```

2. Create database:

```
hms
```

3. Import file:

```
database/hms.sql
```

---

### 5️⃣ Configure Database Connection

Open file:

```
backend/config/db.php
```

Update if needed:

```php
$conn = new mysqli("localhost", "root", "", "hms");
```

---

## ▶️ Run Project

Open browser and go to:

```
http://localhost/hospital/frontend/index.html
```

---

## 🔐 Default Login (if implemented)

| Role    | Email                                         | Password |
| ------- | --------------------------------------------- | -------- |
| Admin   | [admin@gmail.com](mailto:admin@gmail.com)     | 1234     |
| Doctor  | [doctor@gmail.com](mailto:doctor@gmail.com)   | 1234     |
| Patient | [patient@gmail.com](mailto:patient@gmail.com) | 1234     |

---

## 📸 Screenshots

(Add screenshots here if needed)

---

## 👨‍💻 Author

**Barkat Khan**

---

## 📌 Notes

* Make sure Apache & MySQL are running
* Check database connection if errors occur
* Use proper folder structure

---

## ⭐ Future Improvements

* Add API integration
* Improve UI/UX
* Add online payment system
* Add notifications

---
