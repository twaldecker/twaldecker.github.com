---
layout: default
---

I created a little shell helper to create a new markdown file for a blogpost.

File: newPost.sh:
{% highlight sh %}
#!/bin/sh
touch _posts/`date +%Y-%m-%d`-$1.md
{% endhighlight %}
