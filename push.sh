#!/bin/bash

# Ambil pesan commit
message=${1:-"update sanzekai"}

echo "🚀 Menyiapkan repo..."
git init > /dev/null 2>&1
git remote add origin https://github.com/ihsnzyan/sanzekai.git > /dev/null 2>&1

echo "📦 Menambah file..."
git add .

echo "💾 Membuat commit..."
git commit -m "$message"

echo "⬆️ Memulai push ke branch main..."
# Kita paksa buat branch main dan push
git branch -M main
git push -u origin main --force

echo "✅ Selesai! Cek di: https://github.com/ihsnzyan/sanzekai"
