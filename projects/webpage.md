---
layout: default
title: Webpage
---

Webpages can be built in different ways. If you want a coderfriendly page you surely go in the direction of dynamical webpages with some sort of scripting language. Main players here are PHP, Perl and Ruby. The downside of these languages are the need for a special webhoster and security issues. If you use some ready-to-use software like joomla! or wordpress you are going deep in the upgrade hell. You have to watch the security mailing list and continuously do upgrades. You also need to backup your system and your content.

To avoid the update issue you can use a hosted service like wordpress.com, blogger or tumblr. That are nice services but come with a sort of "doesn't belong to me" feeling. You submit your content to a webapplication.

Statical webpages are nice. You just need some trivial webspace. But manage statical webpages with dynamic content i.e. a blog is a pain. Also different pages with similar structure (menu, header, footer ...) are repeating work.

This is the gap jekyll fills. You can build your site with a predefined direcotry structure, specific tags and directives which are processed one-time with a parsing engine and produce simple html files.

Most time when using static html files you are using a webhoster with a FTP account. You need to copy and paste your files from and to the server and keep a separate backup. A error prone task. Thats where github and git joins the game. Git is a distributed version control system and github is a social network for coders which is hosting git repositories.

With github pages it offers a service to host your website for free which you can control with git and process with jekyll.

This is a very programmerfriendly way to create easy to manage webpages.

To simplify the css stylesheets with inheritance I used sass. I tried to keep the code of the "application" as simple as possible. 

The LOC (lines of code) of the static parts of the website is 105 (as of Jun 9, 2012):

{% highlight sh %}
thomas@thinky ~/dev/pages (git)-[master] % cat about.md _config.yml index.html projects.md _layouts/default.html _includes/menu.html | wc -l 
105
{% endhighlight %}


