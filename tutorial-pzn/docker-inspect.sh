# Menggubakan fitur Docker Inspect

# Untuk melihat detail dari image,
# gunakan :
# docker image inspect namaimage:tagimage
# contoh :
docker image inspect mongo-express:latest

# Untuk melihat detail dari container,
# gunakan :
# docker container inspect namacontainer
# contoh :
docker container inspect mongo-restore

# Untuk melihat detail dari volume,
# gunakan :
# docker volume inspect namavolume
# contoh :
docker volume inspect mongo-restore

# Untuk melihat detail dari network,
# gunakan :
# docker network inspect namanetwork
# contoh :
docker network inspect mongonetwork