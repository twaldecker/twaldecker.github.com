---
layout: default
title: Using KDE Wallet to store ssh key passphrases
---

There is a short how-to in the archwiki which describes the process to get KDE Wallet to store your ssh passphrases.

[https://wiki.archlinux.org/index.php/KDE_Wallet](https://wiki.archlinux.org/index.php/KDE_Wallet)

Adapted to fedora you just have to

{% highlight sh %}
echo "#!/bin/sh
export SSH_ASKPASS=/usr/bin/ksshaskpass
ssh-add </dev/null" > ~/.kde/Autostart/ssh-add.sh
chmod +x ~/.kde/Autostart/ssh-add.sh
~/.kde/Autostart/ssh-add.sh
{% endhighlight %}

Then provide your passphrases and tick the "Remember" option.
