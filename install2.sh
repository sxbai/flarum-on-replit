echo "Flarum论坛一键搭建脚本"
echo "脚本作者：舒夏"
echo "GitHub开源地址：https://github.com/sxbai/flarum-on-replit"
nix-env -iA nixpkgs.wget
mkdir build
cd build
wget -O .replit https://github.com/sxbai/flarum-on-replit/raw/master/.replit
wget -O replit.nix https://github.com/sxbai/flarum-on-replit/raw/master/replit.nix
cd ..
wget -O a.zip https://github.com/sxbai/flarum-on-replit/raw/master/a.zip
nix-env -iA nixpkgs.unzip
unzip a.zip
cp -r a/.cache .cache
nix-env -iA nixpkgs.php82Packages.composer
composer create-project flarum/flarum .
composer require flarum-lang/chinese-simplified
cp -r build/.replit . && cp -r build/replit.nix .
rm -rf build/ && rm -r a/
echo "Flarum论坛一键搭建脚本"
echo "脚本作者：舒夏"
echo "GitHub开源地址：https://github.com/sxbai/flarum-on-replit"
echo "恭喜搭建完成"
echo "点击Run立即运行项目"
rm -rf a.zip && rm -rf README.md
