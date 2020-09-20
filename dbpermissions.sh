# Grant permissions to database for Apache based on base_dir of
# /var/www/html/CloudProject/CloudCA/Web-App-CA3
# May be a better way to do this.

sudo chmod +664 /var/www/html/db/db.sqlite3
sudo chown www-data:www-data /var/www/html/db/db.sqlite3
sudo chown www-data:www-data /var/www/html/db

