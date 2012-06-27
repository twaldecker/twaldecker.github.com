---
layout: default
title: Copying the Fedora rootfs for raspberry pi with Fedora on the SD Card
---

I had a few difficulties copying the fedora raspberry pi rootfs on the SD card.

{% highlight sh %}
thomas@thinky ~/Downloads % sudo xzcat f17arm-latest-arm-rpi-xfce-mmcblk0.img.xz > /dev/mmcblk0
zsh: permission denied: /dev/mmcblk0
{% endhighlight %}

The solution is to use a pipe and dd with sudo instead.

{% highlight sh %}thomas@thinky ~/Downloads % sudo xzcat f17arm-latest-arm-rpi-xfce-mmcblk0.img.xz | sudo dd of=/dev/mmcblk0
{% endhighlight %}
