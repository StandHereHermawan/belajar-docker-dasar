# Saat kita membuat container,
# dimanakah data di dalam container itu disimpan,
# secara default semua data container disimpan di dalam volume
# Jika kita coba melihat docker volume,
# kita akan lihat bahwa ada banyak volume yang sudah terbuat,
# walaupun kita belum pernah membuatnya sama sekali
# Kita bisa gunakan perintah berikut untuk melihat daftar volume :
docker volume ls

# Untuk membuat volume kita bisa menggunakan perintah
# docker volume create < nama volume >

# contoh Command membuat docker volume
docker volume create mongoVolume

# Untuk menghapus volume kita bisa menggunakan perintah
# docker volume create < nama volume >

# contoh command menghapus docker volume
docker volume rm mongoVolume