# 🔐 Linux Security Lab – SSH Brute Force Detection & Auto Blocking

## 📌 Overview

This project demonstrates a basic **security automation workflow** on Linux by simulating a brute-force attack and automatically blocking the attacker IP using firewall rules.

It covers essential concepts used in **Cybersecurity, Cloud Security, and Blue Team operations**.

---

## 🎯 Objectives

* Simulate SSH brute-force attacks
* Analyze authentication logs
* Detect repeated failed login attempts
* Automatically block malicious IPs using firewall (UFW)
* Understand basic Incident Detection and Response (IDR)

---

## 🛠️ Technologies Used

* Linux (Ubuntu)
* Bash scripting
* SSH
* UFW (Uncomplicated Firewall)
* System logs (`/var/log/auth.log`)

---

## ⚙️ How It Works

1. Multiple failed SSH login attempts are generated.
2. The script scans authentication logs.
3. It counts failed login attempts per IP.
4. If the number exceeds a defined threshold:

   * The IP is automatically blocked using UFW.

---

## 📜 Script Example

```bash
#!/bin/bash

LOG_FILE="/var/log/auth.log"
THRESHOLD=3

echo "Checking failed login attempts..."

grep "Failed password" $LOG_FILE | awk '{print $(NF-3)}' | sort | uniq -c | while read count ip
do
  if [ "$count" -gt "$THRESHOLD" ]; then
    echo "Blocking IP: $ip (Attempts: $count)"
    sudo ufw deny from $ip
  fi
done
```

---

## 🧪 Test Performed

* Simulated brute-force attack using:

  ```bash
  ssh usuario@localhost
  ```
* Multiple failed login attempts triggered detection.
* Script successfully blocked:

  ```
  127.0.0.1
  ```

---

## 🔥 Firewall Result

```bash
sudo ufw status
```

Output:

```
Anywhere DENY 127.0.0.1
```

---

## 🧠 Key Concepts Learned

* Log analysis
* Intrusion detection
* Security automation
* Incident response basics
* Firewall rule management

---

## 🚀 Possible Improvements

* Run script automatically using cron
* Add email or log alerts
* Implement IP whitelist
* Add time-based detection (rate limiting)
* Store blocked IPs in a separate log file

---

## 📈 Real-World Relevance

This project simulates real-world tools and concepts such as:

* Fail2Ban
* SIEM systems
* Security monitoring
* Cloud security automation

---

## 👨‍💻 Author

Gustavo Henrique Oliveira

---

## ⭐ Final Notes

This lab is part of a hands-on journey into **Linux, Cloud, and Cybersecurity**, focusing on practical skills used in real-world environments.
