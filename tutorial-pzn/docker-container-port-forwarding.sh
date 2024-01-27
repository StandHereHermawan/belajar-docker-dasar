# Mengambil Image Nginx untuk Keperluan Praktek
docker image pull nginx:latest

# Untuk melakukan port forwarding, 
# kita bisa menggunakan perintah berikut ketika membuat container nya :
# docker container create --name < namacontainer > --publish < porthost >:< portcontainer > < image >:< tag >
# Jika kita ingin melakukan port forwarding lebih dari satu, 
# kita bisa tambahkan dua kali parameter --publish

# Contoh Command untuk port forwarding Docker Container nginx
docker container create \
--name contohNginx \
--publish 8080:80 \
nginx:latest

# menjalankan Docker Container Nginx yang sudah di port forward
docker container start contohNginx