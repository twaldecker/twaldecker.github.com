---
layout: default
title: Repository setup for fresh Fedora 17 installation
---

With this short snippet you can install the free and nonfree repositories from rpmfusion and the livna repository.

{% highlight sh %}
su -c 'yum localinstall --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-stable.noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-stable.noarch.rpm http://rpm.livna.org/livna-release.rpm'
{% endhighlight %}

More information:
 * http://rpmfusion.org
 * http://rpm.livna.org
