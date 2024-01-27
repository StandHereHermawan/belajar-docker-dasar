# Saat membuat container,
# kita bisa menentukan jumlah memory yang bisa digunakan oleh container ini,
# dengan menggunakan perintah
--memory
# diikuti dengan angka memory yang diperbolehkan untuk digunakan
# Kita bisa menambahkan ukuran dalam
# bentuk b (bytes), k (kilo bytes), m (mega bytes), atau g (giga bytes),
# misal 100m artinya 100 mega bytes
# contoh:
--memory 100m

# Selain mengatur Memory,
# kita juga bisa menentukan berapa jumlah CPU
# yang bisa digunakan oleh container
# dengan parameter:
--cpus
# Jika misal kita set dengan nilai 1.5,
# artinya container bisa menggunakan satu dan setengah CPU core

# contoh:
--cpus 2.5

# command membuat Docker container dengan tambahan resource limit yang diport forwarding
# docker container create
#     --name < namacontainer >
#     --publish < porthost >:< portcontainer >
#     --memory < ukuran memory + huruf b/k/m/g >
#     --cpus < jumlah thread cpu yang diizinkan >
#     < image >:< tag >

# contoh command membuat Docker container Nginx dengan tambahan resource limit yang diport forwarding
docker container create \
--name smallNginx \
--publish 8081:80 \
--memory 100m \
--cpus 1.0 \
nginx:latest