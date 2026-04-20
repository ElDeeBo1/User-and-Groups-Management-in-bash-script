# 📌 Linux User & Group Management System (Whiptail GUI)

## 📝 Description
This project is a **Linux System Administration tool** built using **Bash scripting and Whiptail TUI** to manage users and groups through an interactive menu-driven interface.

It provides a simple yet powerful **terminal-based control panel** for performing common system administration tasks without manually typing Linux commands.

---

## 🚀 Features

### 👤 User Management
- Add new users  
- Modify existing users  
- Delete users  
- Change user passwords  
- Disable / Enable user accounts  
- List all system users  

### 👥 Group Management
- Add new groups  
- Modify group names  
- Delete groups  
- List all groups  

### 🎨 Interface
- Interactive menu using **Whiptail**  
- Easy navigation (no command memorization needed)  
- Modular structure (separate scripts for users and groups)  

---

## 🏗️ Project Structure
<img width="218" height="462" alt="image" src="https://github.com/user-attachments/assets/d07fda4d-b252-450d-8a9d-729436a760c2" />


---

## ⚙️ Technologies Used
- Bash Scripting  
- Linux Commands (`useradd`, `usermod`, `groupadd`, etc.)  
- Whiptail (TUI interface)  
- GNU/Linux System Administration  

---

## 🎯 Purpose
This project is designed for:
- Linux system administration practice  
- RHCSA preparation  
- Automating user/group management tasks  
- Learning modular Bash scripting  

---

## ▶️ How to Run

```bash
chmod +x main.sh
chmod +x users/*.sh
chmod +x groups/*.sh

./main.sh
