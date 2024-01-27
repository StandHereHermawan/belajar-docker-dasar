# Saat kita membuat container, 
# aplikasi yang terdapat di dalam container hanya bisa diakses dari dalam container.
# Oleh karena itu, 
# kadang kita perlu masuk ke dalam container nya itu sendiri.
# Untuk masuk ke dalam container, 
# kita bisa menggunakan fitur Container Exec, 
# dimana digunakan untuk mengeksekusi kode program yang terdapat di dalam container.

# Command untuk masuk kedalam Container untuk Menjalankan Aplikasi didalam Container
# docker container exec -i -t < Nama container atau containerID > < kode program yang terdapat di dalam container > 

# Contoh Command masuk kedalam Container untuk Menjalankan Aplikasi Redis di OS Linux
docker container exec -i -t contohRedis /bin/bash

# saat sudah masuk ke dalam container tinggal eksekusi perintah
redis-cli -h localhost -p 6379
# untuk masuk ke aplikasi redis client dalam kasus ini

# saat selesai menggunakan container bisa menggunakan command
exit