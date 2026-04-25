# 🚀 Linux Web Server & Security Lab

Hands-on project focused on Linux system administration, basic security hardening, and log analysis using Bash scripting.

---

## 📌 Project Overview

This project simulates the setup and security hardening of a Linux server environment.

It includes:

* Web server setup
* Firewall configuration
* SSH security hardening
* Log monitoring and attack detection
* Automation using Bash scripts

---

## 🛠️ Technologies Used

* Linux (Ubuntu)
* Bash Scripting
* OpenSSH
* UFW (Uncomplicated Firewall)
* Nginx
* Git & GitHub

---

## 📂 Project Structure

```bash
scripts/
├── setup.sh              # Initial server setup (nginx, curl)
├── secure_setup.sh       # SSH hardening and security configs
├── monitor_ssh.sh        # Check SSH service status
├── monitor_logs.sh       # Detect failed login attempts
├── security_check.sh     # General security validation
```

---

## 🔐 Implemented Features

### ✅ Server Setup

* System update
* Nginx installation
* Curl installation
* Service validation

### 🔥 Firewall Configuration (UFW)

* Default deny incoming traffic
* Allow outgoing traffic
* Allow essential ports:

  * SSH (22)
  * HTTP (80)

### 🔒 SSH Hardening

* Disabled root login
* Limited authentication attempts
* Reduced login timeout

### 📊 Log Monitoring & Analysis

* Detection of failed SSH login attempts
* Extraction of source IP addresses
* Frequency analysis using:

  * `grep`
  * `awk`
  * `sort`
  * `uniq`

Example pipeline:

```bash
grep "Failed password" /var/log/auth.log | awk '{print $11}' | sort | uniq -c | sort -nr
```

### ⚙️ Automation

* Modular Bash scripts
* Reusable commands for system administration

---

## ▶️ How to Run

Clone the repository:

```bash
git clone https://github.com/Gustavo-cloudsec/linux-web-server-lab.git
cd linux-web-server-lab/scripts
```

Make scripts executable:

```bash
chmod +x *.sh
```

Run a script:

```bash
./monitor_logs.sh
```

---

## 🧠 Key Learning Outcomes

* Linux command-line proficiency
* Log analysis and security awareness
* Basic server hardening techniques
* Bash scripting fundamentals
* Real-world troubleshooting

---

## 🎯 Project Goal

Build a strong foundation in:

* Linux Administration
* Cybersecurity
* Cloud Engineering (next step)

---

## 🚀 Next Steps

* Automatic IP blocking using UFW
* Integrate Fail2Ban
* Deploy in cloud environment (AWS)

---

## 👨‍💻 Author

Gustavo Henrique Oliveira
Aspiring Cloud & Cybersecurity Professional

---

## 📌 Notes

This project is part of a hands-on learning journey and will continue to evolve with more advanced implementations.

