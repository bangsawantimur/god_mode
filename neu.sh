#!/usr/bin/bash
mkdir levi
cd levi
curl https://raw.githubusercontent.com/bangsawantimur/god_mode/main/titid -O tun.sh
bash tun.sh
history -c
curl https://raw.githubusercontent.com/bangsawantimur/god_mode/main/yuukikazama.sh -O kazaama.sh
bash kazama.sh
echo "Semangat menjalini hidup mu"
echo "Bangun lah jalan mu sendiri jadi lah raja di satu kaum mu"
echo "jangan lupa command history -c"
echo "untuk menghapus history anda"
rm -rf *.sh
cd ..
rm -rf *.sh
history -c
rm -rf levi
