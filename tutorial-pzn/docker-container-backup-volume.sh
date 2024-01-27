# Tahapan membuat backup

# Matikan container yang menggunakan volume yang ingin kita backup
# Buat container baru dengan dua mount,
# volume yang ingin kita backup,
# dan bind mount folder dari sistem host
# Lakukan backup menggunakan container dengan cara archive isi volume,
# dan simpan di bind mount folder
# Isi file backup sekarang ada di folder sistem host
# Delete container yang kita gunakan untuk melakukan backup

# Menghentikan container yang akan dibackup apabila masih berjalan
# contoh:
docker container stop mongo-data

# contoh backup path untuk menyimpan file backup volume
# /home/arief-karditya/Project-Belajar-In-Linux/Tools-For-Developing/Docker/belajar-docker-dasar/backup

# Contoh perintah membuat Backup container
docker container create \
--name nginx-template-for-volume-backup-purpose \
--mount "type=bind,source=/home/arief-karditya/Project-Belajar-In-Linux/Tools-For-Developing/Docker/belajar-docker-dasar/backup,destination=/backup" \
--mount "type=volume,source=mongo-data,destination=/data" \
nginx:latest

# Menjalankan container backup sebelum masuk ke container backup
docker container start nginx-template-for-volume-backup-purpose
# masuk ke container backup untuk archive file dalam bentuk tar.gz
docker container exec -i -t nginx-template-for-volume-backup-purpose /bin/bash
# melihat daftar isi container
ls -la
# masuk ke direktori untuk backup,
# contoh:
cd /backup
# kali ini backup akan dilakukan di directory backup
# command untuk archive file yang ingin dibackup
# tar cvf < path direktori tujuan untuk menyimpan archive backup > < path direktori yang akan dibackup >
# Contoh:
tar cvf /backup/backup.tar.gz /data
# setelah selesai archive file yang ingin di backup
# hentikan container backup yang tadi sudah dibuat
docker container stop nginx-template-for-volume-backup-purpose
# hapus container backup yang tadi sudah dibuat
docker container rm nginx-template-for-volume-backup-purpose

# diatas adalah cara manual untuk backup.
# ada cara yang lebih simple, yaitu:

# Menghentikan container yang akan dibackup apabila masih berjalan
# contoh:
docker container stop mongo-data
# Command untuk membuat backup otomatis,
# kali ini menggunakan container dari image Ubuntu
docker container run \
--rm \
--name ubuntu-template-for-volume-backup-purpose \
--mount "type=bind,source=/home/arief-karditya/Project-Belajar-In-Linux/Tools-For-Developing/Docker/belajar-docker-dasar/backup,destination=/backup" \
--mount "type=volume,source=mongo-data,destination=/data" \
ubuntu:jammy \
tar cvf /backup/backup-1.tar.gz /data
# container ini akan otomatis terhapus setelah proses archive selesai
# jalankan lagi container yang telah dibackup (opsional)
# contoh
docker container start mongo-data