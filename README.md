# blissrom for legion Y70 (L71091)
device tree for BlissROM(voyager)<br>
prebuilt kernelsu version android13-5.10.218_2024-08<br>
<br>
device spec<br>
SOC SM8475 (Snapdragon 8+ Gen1)<br>
RAM 12GB<br>
<br>
building on Manjaro Linux need packages.<br>
rsync zip unzip inetutils<br>
<br>
# mka variants
mka superimage<br>
create full super partition image.<br>
mka superimage_empty<br>
create empty super partition iamge.<br>
<br>
# mount Stock ROM images
mount -o ro -t ext4 vendor.img mnt
# coder KNTO-GionYuki<br>
