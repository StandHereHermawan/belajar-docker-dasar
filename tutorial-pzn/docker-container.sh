# Command melihat semua Docker container 
# baik yang berjalan ataupun tidak berjalan
# di Docker Daemon
docker container ls -a

# Command melihat semua Docker container
# hanya yang berjalan saja
docker container ls

# Command membuat Docker Container
# docker container create --name < namaContainer > < namaImage >:< tagImage >

# Contoh membuat Docker Container Redis
docker container create --name contohRedis redis:latest

# Command menjalankan Docker Container
# docker container start < Nama container atau containerID >

# Conton menjalankan Docker Container Redis
docker container start contohRedis

# Command menghentikan Docker Container
# docker container stop < Nama container atau containerID >

# Conton menghentikan Docker Container Redis
docker container stop contohRedis

# Command menghapus Docker Container
# docker container rm < Nama container atau containerID >

# Contoh menghapus Docker Container Redis
docker container rm contohRedis
