# 🔐 Linux Security Lab – SSH Hardening & Monitoring

## 📌 Overview

This project demonstrates the implementation of basic Linux security practices focused on SSH hardening, firewall configuration, and monitoring.

The goal is to simulate real-world server protection scenarios using simple and effective tools.

---

## 🚀 Technologies Used

* Linux (Ubuntu Server)
* SSH
* UFW (Uncomplicated Firewall)
* Bash scripting
* Git & GitHub

---

## 🔧 Implementations

### 🔐 SSH Security

* Disabled root login
* Configured SSH service
* Verified active connections

### 🔥 Firewall Configuration (UFW)

* Enabled firewall
* Allowed SSH (port 22)
* Denied unnecessary ports

### 📜 Automation Scripts

Located in `/scripts`:

* `secure_setup.sh` → Initial server hardening
* `monitor_ssh.sh` → Monitor active SSH connections
* `security_check.sh` → General security status check

---

## 🧪 How to Run

```bash
chmod +x scripts/*.sh
./scripts/secure_setup.sh
./scripts/monitor_ssh.sh
./scripts/security_check.sh
```

---

## 📊 Skills Demonstrated

* Linux system administration
* Basic cybersecurity practices
* Shell scripting automation
* Firewall management
* Git workflow (commit, push, versioning)

---

## 📁 Project Structure

```
linux-web-server-lab/
├── scripts/
│   ├── secure_setup.sh
│   ├── monitor_ssh.sh
│   └── security_check.sh
└── README.md
```

---

## 🎯 Next Steps

* Implement log analysis
* Add intrusion detection (Fail2Ban)
* Automate backups
* Deploy on cloud (AWS)

---

## 👨‍💻 Author

Gustavo Henrique Oliveira

---

## ⭐ Notes

This lab is part of a hands-on learning journey in Linux, Cloud, and Cybersecurity.
