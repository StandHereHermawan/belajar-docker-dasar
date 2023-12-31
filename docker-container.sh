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