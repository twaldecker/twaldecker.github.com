---
layout: default
title: Fedora17: creating a swap file
---

create the virtual swap disk:

    thomas@thinky /usr/local/etc % sudo dd if=/dev/zero of=swapfile bs=1M count=1k

make it a swap space and enable it:

    thomas@thinky /usr/local/etc % sudo mkswap swapfile
    thomas@thinky /usr/local/etc % sudo swapon swapfile

to store it permanently add it to /etc/fstab:

thomas@thinky /usr/local/etc % sudo -s
root@thinky /usr/local/etc # echo "/usr/local/etc/swapfile swap swap defaults 0 0" >> /etc/fstab

source:
http://docs.fedoraproject.org/en-US/Fedora/14/html/Storage_Administration_Guide/s2-swap-creating-file.html
