---
layout: default
---
Install zsh:

{% highlight sh %}
sudo yum install zsh
{% endhighlight %}

Grab grml's zshrc and save it to `/etc/zshrc`.
{% highlight sh %}
sudo wget -O /etc/zshrc "http://git.grml.org/?p=grml-etc-core.git;a=blob_plain;f=etc/zsh/zshrc;hb=HEAD"
{% endhighlight %}

Edit `/etc/passwd` and choose `/etc/zsh` as your shell:

{% highlight sh %}
vi /etc/passwd
{% endhighlight %}

Change the line containing your Username:

    user:x:1000:1000:name:/home/thomas:/bin/zsh

Execute ``zsh``.
