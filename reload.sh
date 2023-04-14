php /var/www/pterodactyl/artisan down
cd /var/www/pterodactyl
npx update-browserslist-db@latest
yarn install
yarn build:production
#clear
chown -R www-data:www-data /var/www/pterodactyl/*
php artisan view:clear
php artisan config:clear
#clear
php /var/www/pterodactyl/artisan up
