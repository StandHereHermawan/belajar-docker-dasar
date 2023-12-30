# Command Melihat Docker Image
docker image ls

# Command Download Docker Image dari Docker Registry
# docker image pull < tag nama software image > : < tag versi software image >

# Contoh pull Docker Image redis:
docker image pull redis:latest

# Contoh pull Docker Image mysql:
docker image pull mysql:latest

# Tag ":latest" akan mengunduh Docker Image dengan 
# versi software paling baru dari Docker Registry
# Tag bisa diubah sesuai dengan Tag di halaman dokumentasi
# Docker Image Terkait