docker cp \
'<file_source_path_in_host_system>' \
'<container_name_or_id>':'<destination_path_in_container_directory>'
# copy file From host system to specific docker container directory

docker cp \
'<container_name_or_id>':'<file_source_path_in_container_directory>' \
'<destination_path_in_container_directory_in_host_system>'
# copy file From docker container to specific host system directory