set user=admin
set password=admin
set volumename=mariadb
set containername=py-wallet-mariadb
set port=8080

podman volume create %volumename%

podman run --detach --name %containername% --env MARIADB_USER=%user% --env MARIADB_PASSWORD=%password% --env MARIADB_ROOT_PASSWORD=%password% -v %volumename%:/var/lib/mysql -p %port%:3306 docker.io/mariadb:latest