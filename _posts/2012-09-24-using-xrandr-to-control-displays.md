---
layout: default
title: Using xrandr to control displays
---

At home i have an external monitor connected via HDMI to my laptop. Before disconnecting you have to disable the output, or KDE will go crazy and display windows out ouf the visible desktop.

I don't like the mouse intensive way of going to the menu, start the settings and click to the display configuration.

There is a simpler way to configure the display from the commandline with xrandr. I just created two scripts, one to enable the HDMI output and set it right of the LVDS output, and one to disable the HDMI output.

{% highlight sh %}
cat ~/bin/hdmi-off.sh
xrandr --output HDMI1 --off
cat ~/bin/hdmi-on.sh
xrandr --output HDMI1 --auto --right-of LVDS1
{% endhighlight %}
