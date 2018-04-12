
#!/bin/bash -e

POSTGRES_VERSION=10.3
echo "================= Installing Postgres $POSTGRES_VERSION ==================="
apt-get install -y postgresql-"$POSTGRES_VERSION" postgresql-server-dev-"$POSTGRES_VERSION" postgis

echo "================= Adding PostgreSQL cnf ==================="
cp -rf /u16all/pg_hba.cnf /etc/postgresql/"$POSTGRES_VERSION"/main/pg_hba.conf

mkdir /etc/ssl/private-copy
mv /etc/ssl/private/* /etc/ssl/private-copy/
rm -r /etc/ssl/private
mv /etc/ssl/private-copy /etc/ssl/private
chmod -R 0700 /etc/ssl/private
chown -R postgres /etc/ssl/private

