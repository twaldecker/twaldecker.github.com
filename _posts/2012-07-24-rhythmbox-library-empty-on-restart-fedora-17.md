---
layout: default
title: Rhythmbox 2.97 library empty after restart on Fedora 17
---

I had this annoying bug that the library of Rhythmbox was empty after I restarted it.

After a bit searching I discovered that it is caused by moving your library from temporary storage to your harddisk.

This can be from a SD-card and symlinked to your home directory or from an encrypted partition symlinked to your home directory.

You can get some more information at [this blog post](http://qulogic.blogspot.de/2012/06/missing-library-in-rhythmbox-on-f17.html) or the [bug database](https://bugzilla.gnome.org/show_bug.cgi?id=635041).

I didn't care much about my entrys in the database so I just deleted it:

{% highlight sh %}
thomas@thinky ~ % rm ~/.local/share/rhythmbox/rhythmdb.xml                     
{% endhighlight %}

After that Rhythmbox builds your database new and should find all your music files.
