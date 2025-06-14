# 🐳 Install Docker on RHEL

![RHEL](https://img.shields.io/badge/RHEL-7%2F8%2F9-red?logo=redhat&logoColor=white)
![Tested](https://img.shields.io/badge/Tested-Yes-brightgreen)
![Shell](https://img.shields.io/badge/Shell-Bash-lightgrey)
![License](https://img.shields.io/github/license/Emslyyy/install-docker-on-rhel)

A simple Bash script to install Docker CE on RHEL-based systems like RHEL 8/9, Rocky Linux, and CentOS 7. Ideal for setting up containerized environments in home labs or lightweight server deployments.

---

## 📂 Included Script

### 🐧 `install-docker-on-rhel.sh`
Installs the latest Docker Engine Community Edition using Docker’s official repository.

**Features:**
- Supports **RHEL**, **Rocky Linux**, and **CentOS**
- Automatically sets up Docker’s repo and installs dependencies
- Enables and starts Docker service
- Adds current user to the `docker` group (optional, non-root access)

---

## ⚙️ How It Works

1. Detects your Linux distribution and version
2. Configures the appropriate Docker CE repository
3. Installs Docker using `dnf` or `yum`
4. Starts and enables the Docker service
5. Optionally lets you run Docker without `sudo`

---

## 📦 Supported Versions

| OS            | Version(s)       |
|---------------|------------------|
| RHEL          | 7, 8, 9          |
| Rocky Linux   | 8, 9             |
| CentOS        | 7 (uses vault)   |

---

## 🚀 Usage

```bash
chmod +x install-docker-on-rhel.sh
./install-docker-on-rhel.sh
```
---

## 📘 License

MIT License. Use freely, modify, and share — but no warranty is provided.

---

## 🙋‍♂️ Author

Built by Emslyyy — crafted for Red Hat RHCSA prep and containerized home lab experiments.
