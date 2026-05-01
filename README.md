# 🚀 GravityScanTools

**by Gravityzone (Arjelicc)**

---

## 📘 Description (EN)

GravityScanTools is a lightweight CDN / SNI scanner to find clean and stable endpoints.

### ✨ Features

* CDN whitelist (Arvan + Cloudflare)
* SNI / TLS testing
* Clean IP filtering
* Web UI (GitHub Pages)

---

## 📗 توضیحات (FA)

این ابزار برای اسکن CDN و SNI طراحی شده تا آی‌پی‌های تمیز و پایدار را پیدا کند.

### ✨ امکانات

* لیست آماده IP و دامنه
* تست TLS و SNI
* فیلتر آی‌پی‌های سالم
* رابط کاربری تحت وب

---

# ⚙️ Installation & Usage

## 🔧 Step 1: Clone project

```bash
git clone https://github.com/aryaderangi/GravityScanTools.git
cd GravityScanTools
```

## 🔧 Step 2: Make script executable

```bash
chmod +x scanner.sh
```

## 🔧 Step 3: Run scanner

```bash
./scanner.sh
```

---

# 📂 Input File

Edit:

```bash
targets.txt
```

Example:

```txt
104.19.229.21
google.com
cloudflare.com
```

---

# 📤 Output

Example result:

```txt
[OK] google.com -> 104.x.x.x
[FAIL] 1.1.1.1
```

---

# 🌐 Web UI

https://aryaderangi.github.io/GravityScanTools/

---

# 🤖 Telegram

* Topic: @gravityyzone
* Channel: @jeliccray
* Developer: Aria Derangi (@Arjellicc)

---

# ⚠️ Notes

* Best results on VPS outside Iran
* For research and testing purposes

---

# 💡 Tip

Use clean IPs for:

* Xray / Reality
* CDN tunneling
* Network testing
