# Volume yang sudah kita buat,
# bisa kita gunakan di container
# Keuntungan menggunakan volume adalah,
# jika container kita hapus, data akan tetap aman di volume
# Cara menggunakan volume di container sama dengan menggunakan bind mount,
# kita bisa menggunakan parameter --mount,
# namun dengan menggunakan type volume dan source nama volume

# Untuk melakukan mounting volume ke countainer,
# kita bisa menggunakan perintah berikut:
# docker container create
#     --name < namacontainer >
#     --mount “type=volume,
#              source=< nama volume yang sudah dibuat >,
#              destination=folder,
#              readonly" // Read only jika container hanya bisa dibaca, tidak bisa diubah
#     < image >:< tag >

# menyiapkan Volume untuk dimounting saat pembuatan container
docker volume create mongo-data
# Contoh command membuat container den mounting ke docker volume dengan limited resource
docker container create --name mongo-data --mount "type=volume,source=mongo-data,destination=/data/db" --publish 27019:27017 --env MONGO_INITDB_ROOT_USERNAME=root --env MONGO_INITDB_ROOT_PASSWORD=example --memory 500m --cpus 1.0 mongo:latest