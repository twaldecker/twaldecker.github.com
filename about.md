---
layout: default
title: about
---

## about me
Thomas Waldecker<br />
email: [thomas.waldecker@googlemail.com](mailto:thomas.waldecker@googlemail.com)

find and add me in social networks:

<ul id="profiles">
{% for i in site.profiles %}
  <li><a href="{{ i.url }}"><img src="/assets/icon/32/{{ i.name }}.png" alt="{{ i.name }} icon" /></a></li>
{% endfor %}
</ul>
<div style="clear:left;"></div>


## Credits
Icons:<br />
* xda icon: <a href="http://arrioch.deviantart.com/gallery/24417142#/d3fwg7z">http://arrioch.deviantart.com/gallery/24417142#/d3fwg7z</a>
* icons: <a href="http://icondock.com/free/vector-social-media-icons">http://icondock.com/free/vector-social-media-icons</a>
* osm icon: <a href="http://wiki.openstreetmap.org/wiki/File:Public-images-osm_logo.svg">http://wiki.openstreetmap.org/wiki/File:Public-images-osm_logo.svg</a>


Website:<br />
Hosted on GitHub pages with jekyll engine. The source is available on <a href="https://github.com/twaldecker/twaldecker.github.com">GitHub</a>.
