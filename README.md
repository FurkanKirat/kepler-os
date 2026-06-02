# KeplerOS

A hobby operating system kernel written in C.

## 🛠️ Setup and Development Environment Preparation

To build and compile the project on your local machine, please follow the steps below in order.

### 1. Prerequisites
1. Ensure **Docker Desktop** is installed on your machine. ([Download Docker Desktop](https://www.docker.com/products/docker-desktop/))
2. Hardware **Virtualization** must be enabled in your BIOS settings.
   * *To verify:* Open Task Manager (`Ctrl + Shift + Esc`) -> Go to the Performance tab -> Select CPU, and ensure it says "Virtualization: Enabled".

> ⚠️ **WSL Error Troubleshooting:** If Docker Desktop fails to start due to virtualization or WSL2 errors despite it being enabled in BIOS, open PowerShell **as Administrator** and run the following command, then restart your computer:
> ```powershell
> wsl.exe --install --no-distribution
> ```

---

## 🚀 Running the Environment (Compiler Container)

Make sure Docker Desktop is **running (green)** in the background, then open a terminal (PowerShell / CMD) in the root directory of the project and execute the following commands:

### 1. Spin Up the Container (Builds the toolchain on the first run)
```bash
docker compose up -d --build

```

### 2. Enter the Development/Compilation Environment

To compile your code and access tools like `gcc`, `nasm`, or `qemu`, connect to the isolated Linux container:

```bash
docker compose exec compiler bash

```

Once executed, your terminal prompt will change to `root@...:/kepler-os#`. The entire OS development toolchain is now at your disposal.

### 3. Exit the Container

When you are done compiling and want to return to your host machine's native terminal, simply type:

```bash
exit

```

### 4. Shut Down the System

To stop and remove the background containers completely when you are done working for the day:

```bash
docker compose down

```

---

## 💻 Workflow

1. Write your code (`.asm`, `.c`, `.h`) on your host machine (Windows/Mac) using your preferred text editor (e.g., **VS Code**) and save your changes.
2. Your local files are instantly synced with the Docker container in real-time.
3. Inside the Docker container environment (`docker compose exec compiler bash`), execute your build commands.
4. The generated output binaries or images (such as `.bin`, `.elf`, or `.iso` files) will instantly appear back in your local directory.

## Features (planned)

- CPU Scheduling
- Memory Management
- Disk I/O
- System Calls

## Team

- Hidayet Başer
- Furkan Kırat


