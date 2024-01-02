# Command membuat Docker Container
# docker container create --name < namaContainer > < namaImage >:< tagImage >

# Contoh membuat Docker Container Redis
docker container create --name contohRedis redis:latest

# Command menjalankan Docker Container
# docker container start < Nama container atau containerID >

# Contoh menjalankan Docker Container Redis
docker container start contohRedis

# Command Melihat Log Docker Container sekali
# docker container logs < Nama container atau containerID >

# Contoh melihat log Docker Container Redis
docker container logs contohRedis

