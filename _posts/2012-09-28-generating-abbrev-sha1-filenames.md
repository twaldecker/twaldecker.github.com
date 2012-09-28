---
layout: default
title: Generating abbreviated sha1 filenames
---

For a small slide show I wanted to randomize the filenames. I first thought
about random numbers but I realized that there can be collisions. Then I came
over the idea to use a hashing algorithm. The first few characters should be
sufficient (like in git).

Here is a short snippet. It's quick and dirty but it works. Maybe it would be nice to specify file extensions, too.

{% highlight sh %}
for f in *.png
do
echo $f
sha1sum $f
mv $f $(echo $f | md5sum | cut -b1-10).png
done
{% endhighlight %}
