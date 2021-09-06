# docker-laravel-simple_setting
###### Konfigurasi docker untuk laravel

## Cara Install
1. Letakkan dua file yang ada di repo kedalam root directory laravel
2. Buka file ```docker-compose.yml``` dan kemudian sesuaikan dengan kebutuhan anda:
   - **Line 12 :** 8001 merupakan port yang akan digunakan di sistem aktual, dan 8000 merupakan port yang digunakan di docker
   - **Line 13 :** 9000 merupakan port untuk PHP
   - **Line 29 - 34 :** Sesuaikan konfigurasi MySql Docker dengan konfigurasi MySql laravel pada file .env
   - **Line 38 :** Jika port 8080 digunakan pada sistem aktual, ganti dengan port yang kosong
