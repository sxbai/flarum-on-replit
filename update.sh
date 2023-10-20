echo "正在更新Flarum最新版本"
cd public
composer update --prefer-dist --no-plugins --no-dev -a --with-all-dependencies
php flarum migrate
php flarum cache:clear
cd ..
echo "更新完成！"
