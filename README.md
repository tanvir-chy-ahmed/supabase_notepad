# 📝 Supabase Realtime Notes App

A simple and modern **Note-Taking App** powered by **Supabase Realtime Database**. Supports **Live Syncing, Search, and Color-Coding** for better note organization.

---

## 🚀 Features

✅ Realtime Database with Supabase  
✅ Create, Edit, Delete Notes  
✅ Color Tagging for Better Visual Organization  
✅ Search Notes by Keyword  
✅ Clean and Minimal UI  
✅ Instant Sync across Devices

---

## 📸 Screenshots

| Notes List | Color-coded Notes | Search Feature |
|------------|-------------------|----------------|
| ![Notes List](your-screenshot-url) | ![Color Notes](your-screenshot-url) | ![Search](your-screenshot-url) |

---

## 🛠️ Built With

- **Flutter** 
- **Supabase** (Realtime Postgres DB)
- **State Management**: remember / State / Riverpod (depending on your tech stack)

---

## 🔑 Setup

1️⃣ Create a **Supabase Project** at [supabase.com](https://supabase.com)  
2️⃣ Set up a `notes` table with columns:
```sql
id: uuid (primary key)  
title: text  
description: text  
created_at: timestamp  
```

3️⃣ Grab your `API URL` and `Anon Key` from Supabase Dashboard.

4️⃣ Add these to your project’s config:
```kotlin
val supabaseUrl = "YOUR_SUPABASE_URL"
val supabaseKey = "YOUR_SUPABASE_ANON_KEY"
```

---

## 📂 Folder Structure (Example)

```
/lib
 ┣ /screens
 ┃ ┗ NotesScreen
 ┣ /models
 ┃ ┗ NoteModel
 ┣ /services
 ┃ ┗ SupabaseService
 ┣ main.dart / MainActivity.kt
```

---

## 📌 Usage

- **Create Note** ➔ Pick color ➔ Save
- **Edit / Delete** ➔ Long press / swipe
- **Search** ➔ Instant filter by title or content
- **Colors** ➔ Easily recognize note categories visually


---

## 💡 Why Supabase?
- Open Source
- Realtime via Postgres
- Scalable & Developer-Friendly

---

## 📧 Contact

For queries, feel free to reach me:  
✉️ [tanvirchy269@gmail.com]  
🔗 [https://github.com/tanvir-chy-ahmed]

---

## ⭐️ Show Support
If this project helped you, kindly give it a ⭐️ on GitHub!
