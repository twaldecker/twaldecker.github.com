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

EDIT:
I extended the snippet a little bit:
{% highlight sh %}
#!/bin/sh
FILENAME="_posts/`date +%Y-%m-%d`-$1.md"
echo "---
layout: default
---" > $FILENAME && $EDITOR $FILENAME
{% endhighlight %}
Now the default layout is added to the file and the fileeditor $EDITOR is launched.
