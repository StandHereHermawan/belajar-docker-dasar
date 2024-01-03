# Mengambil Image MongoDB untuk Keperluan Praktek
docker image pull mongo:latest

# menambah environment variable, kita bisa menggunakan perintah --env atau -e, 
# misal :
# docker container create 
    # --name < namacontainer > 
    # --env < KEY >=< ”value” > 
    # --env < KEY2 >=< ”value” > 
    # < image >:< tag >

# Contoh Command untuk menambah environment variable Docker Container mongoDB
docker container create --name contohMongo --publish 27017:27017 --env MONGO_INITDB_ROOT_USERNAME=root --env MONGO_INITDB_ROOT_PASSWORD=example mongo:latest