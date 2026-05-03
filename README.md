# Linux Security Labs

This repository documents my hands-on journey through Linux system administration and basic security practices.
Each lab builds upon the previous one, evolving from simple automation scripts to practical security mechanisms.

---

## 📌 Project Overview

The main goal of this project is to simulate real-world Linux administration tasks, focusing on:

* System automation
* Log analysis
* Basic security hardening
* Firewall management
* Incident response fundamentals

---

## 🔐 Automated SSH Brute-Force Protection

The latest lab implements a simple intrusion prevention mechanism inspired by tools like Fail2Ban.

### How it works

* Monitors authentication logs for failed SSH login attempts
* Identifies IP addresses exceeding a defined threshold
* Automatically blocks malicious IPs using UFW (Uncomplicated Firewall)
* Maintains a whitelist to prevent accidental lockout
* Logs all actions for traceability

---

## ⚙️ Technologies Used

* Bash scripting
* Linux (Ubuntu)
* UFW (firewall)
* Cron (task automation)
* Log analysis with `grep`, `awk`, `sort`, and `uniq`

---

## 📂 Project Structure

```bash
scripts/
 ├── auto_block.sh
 ├── update_system.sh
 └── ...
```

---

## 🧪 Example Workflow

1. Failed SSH attempts are recorded in system logs
2. Script parses logs and counts occurrences per IP
3. If threshold is exceeded:

   * IP is checked against whitelist
   * If not trusted → firewall rule is applied
4. Action is logged for auditing

---

## 📈 Skills Demonstrated

* Shell scripting and automation
* Log parsing and data extraction
* Basic intrusion detection logic
* Firewall rule management
* Troubleshooting and debugging

---

## 🚀 Future Improvements

* Automatic unblocking after a time period
* Integration with `journalctl`
* Email or alert notifications
* More advanced pattern detection

---

## 📎 Notes

This project is part of a continuous learning process.
The focus is not only on functionality, but also on understanding how each component works internally.

---

## 👤 Author

Gustavo Henrique
