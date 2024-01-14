# Tahapan membuat restore volume
# Buat volume baru untuk lokasi restore data backup
# Buat container baru dengan dua mount,
# volume baru untuk restore backup,
# dan bind mount folder dari sistem host yang berisi file backup
# Lakukan restore menggunakan container dengan cara meng-extract isi backup file ke dalam volume
# Isi file backup sekarang sudah di restore ke volume
# Delete container yang kita gunakan untuk melakukan restore
# Volume baru yang berisi data backup siap digunakan oleh container baru

# membuat volume untuk restore
docker volume create mongo-restore

# Command untuk memasukkan data ke volume backup otomatis,
docker container run --rm --name ubuntu-restore --mount "type=bind,source=/home/arief-karditya/Project-Belajar-In-Linux/Tools-For-Developing/Docker/belajar-docker-dasar/backup,destination=/backup" --mount "type=volume,source=mongo-restore,destination=/data" ubuntu:jammy bash -c "cd /data && tar xvf /backup/backup-1.tar.gz --strip 1"

# Command membuat container dengan volume backup
docker container create --name mongo-restore --mount "type=volume,source=mongo-restore,destination=/data/db" --publish 27020:27017 --env MONGO_INITDB_ROOT_USERNAME=root --env MONGO_INITDB_ROOT_PASSWORD=example --memory 500m --cpus 1.0 mongo:latest

# Command menjalankan container dengan volume restore yang sudah dibuat
docker container start mongo-restore