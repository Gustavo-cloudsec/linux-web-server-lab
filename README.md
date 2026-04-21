# Linux Web Server Lab

## 📌 Objective

Build a basic Linux web server and apply initial security configurations using nginx, UFW firewall, and bash scripting.

---

## 🛠️ Technologies Used

* Linux (Ubuntu)
* Nginx (web server)
* UFW (Uncomplicated Firewall)
* Bash scripting
* Curl

---

## ⚙️ What was done

### 1. System Update

* Updated package lists using apt

### 2. Nginx Installation

* Installed nginx web server
* Verified service status using systemctl

### 3. Curl Installation

* Installed curl for HTTP request testing
* Used curl to validate local server response

### 4. Firewall Configuration (UFW)

* Installed and enabled UFW
* Configured default rules:

  * Deny all incoming traffic
  * Allow all outgoing traffic
* Allowed only essential ports:

  * SSH (22)
  * HTTP (80)

---

## 🔐 Security Implementation

* Minimal exposure approach
* Only required services are accessible
* Basic firewall hardening applied

---

## 🧪 Testing

### Check nginx status

```
systemctl status nginx
```

### Test HTTP response

```
curl localhost
```

Expected output:

```
Welcome to nginx!
```

---

## 📂 Project Structure

* setup.sh → automation script for server setup
* README.md → project documentation

---

## 🚀 How to Run

```
chmod +x setup.sh
./setup.sh
```

---

## 📈 What I Learned

* Linux package management with apt
* Service management with systemctl
* Firewall configuration with UFW
* Bash scripting basics
* HTTP request testing using curl
* Git version control and commits

---

## 🔜 Next Steps

* Log analysis (nginx access logs)
* System hardening
* User management
* Fail2ban implementation
