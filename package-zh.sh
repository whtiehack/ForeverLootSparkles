#!/bin/sh
# 打包中文版：写入版本号，只放游戏要用的文件，压缩包放到 dist/
set -e
version=${1:?用法: ./package-zh.sh v1.3.1-zh1}
cd "$(dirname "$0")"
tmp=$(mktemp -d)
dir=$tmp/ForeverLootSparkles
mkdir -p "$dir"
cp -R Locales.lua ForeverLootSparkles.lua SoftTarget.lua Icon.tga Textures LICENSE README.md CHANGELOG.md "$dir/"
sed -e '/^#@debug@$/,/^#@end-debug@$/d' -e '/^#@non-debug@$/d' -e '/^#@end-non-debug@$/d' \
	-e "s/^# ## Version: @project-version@\$/## Version: $version/" ForeverLootSparkles.toc > "$dir/ForeverLootSparkles.toc"
mkdir -p dist
rm -f "dist/ForeverLootSparkles-$version.zip"
(cd "$tmp" && zip -q -r -X - ForeverLootSparkles) > "dist/ForeverLootSparkles-$version.zip"
rm -rf "$tmp"
echo "dist/ForeverLootSparkles-$version.zip"
