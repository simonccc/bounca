## Install instructions ( on a minimal Centos 7 ) 

```
sudo yum install -y gcc
sudo rpm -ivh https://download.postgresql.org/pub/repos/yum/reporpms/EL-7-ppc64le/pgdg-redhat-repo-latest.noarch.rpm
sudo yum update -y 
sudo yum install postgresql96-server -y 
sudo yum install postgresql96-devel.x86_64 -y
sudo ln -s /usr/pgsql-9.6/bin/pg_config /usr/bin/
virtualenv-3.6 env -p python3.6
. env/bin/activate
pip install -r requirements.txt
```
### Database

Create user and database for Postgres
```
sudo su - postgres
createuser bounca
createdb --owner=bounca bounca --encoding=UTF8 --template=template0
psql -c 'alter user bounca with createdb' postgres  # this is needed for automated tests
```

Optionally, set a password for the `bounca` user.
