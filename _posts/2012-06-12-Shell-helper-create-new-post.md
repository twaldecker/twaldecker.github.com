---
layout: default
---

I created a little shell helper to create a new markdown file for a blogpost.

File: newPost.sh:
{% highlight sh %}
#!/bin/sh
touch _posts/`date +%Y-%m-%d`-$1.md
{% endhighlight %}

With this scipt i can do

{% highlight sh %}
thomas@thinky ~/dev/pages (git)-[master] % ./newPost.sh Shell-helper-create-new-post
{% endhighlight %}
