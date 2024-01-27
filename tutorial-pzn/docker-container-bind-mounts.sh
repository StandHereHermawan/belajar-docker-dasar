# Menambah parameter saat pembuatan container untuk melakukan bind mounting

# Parameter Mount
# type: Tipe mounting, antara tipe mounting bind atau volume
# source: Lokasi file atau folder di sistem host
# destination: Lokasi file atau folder di container
# readonly: Jika ada, maka file atau folder hanya bisa dibaca di container, tidak bisa ditulis

# Melakukan mounting
# Untuk melakukan mounting,
# kita bisa menggunakan perintah berikut:
# docker container create
#     --name < namacontainer >
#     --mount “type=bind,
#              source=folder,
#              destination=folder,
#              readonly"
#     < image >:< tag >

# Contoh Command membuat container dengan bind mount
!docker container create \
--name mongoData \
--mount "type=bind,source=/home/arief-karditya/Project-Belajar-In-Linux/Tools-For-Developing/Docker/belajar-docker-dasar/mongo-data,destination=/data/db" \
--publish 27018:27017 \
--env MONGO_INITDB_ROOT_USERNAME=root \
--env MONGO_INITDB_ROOT_PASSWORD=example \
--memory 500m \
--cpus 1.0 mongo:latest