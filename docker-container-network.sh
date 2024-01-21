# Membuat container dengan network
# Untuk menambahkan container ke network, kita bisa menambahkan perintah --network ketika membuat container, misal:
# docker container create --name < namacontainer > --network < namanetwork > image:tag

# membuat network terlebih dahulu
docker network create --driver bridge mongonetwork

# Contoh perintah membuat container mongodb dengan network
docker container create \
--name mongo \
--network mongonetwork \
--env MONGO_INITDB_ROOT_USERNAME=arief \
--env MONGO_INITDB_ROOT_PASSWORD=arief \
mongo:latest

# mengambil image mongo-express untuk keperluan praktek
docker image pull mongo-express:latest

# membuat container mongo-express
docker container create \
--name mongodbexpress \
--network mongonetwork \
--publish 8081:8081 \
--env ME_CONFIG_BASICAUTH_USERNAME=arief \
--env ME_CONFIG_BASICAUTH_PASSWORD=arief \
--env ME_CONFIG_MONGODB_URL="mongodb://arief:arief@mongo:27017/" \
mongo-express:latest
# penjelasan URL "mongodb://< usernameDatabaseMongo >:< passwordDatabaseMongo >@< namaContainerDatabase >:<portcontainer>/"
# Contoh:
# ME_CONFIG_MONGODB_URL="mongodb://root:example@mongoDb:27017/"
# --env ME_CONFIG_BASICAUTH_USERNAME=< usernameUntukMasukMongo-Express > \
 #--env ME_CONFIG_BASICAUTH_PASSWORD=< passwordUntukMasukMongo-Express > \

# menjalankan container mongo-db
docker container start mongodb

# menjalankan container mongo-db-express
docker container start mongodbexpress

# membuat agar container tidak bisa mengakses network
# docker network disconnect < nama-network > < nama-container >
# contoh command:
docker network disconnect mongonetwork mongo

# membuat agar container bisa mengakses network
# docker network connect < nama-network > < nama-container >
# contoh command:
docker network connect mongonetwork mongo