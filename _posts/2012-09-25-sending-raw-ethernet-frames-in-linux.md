---
layout: default
title: Sending raw ethernet frames in linux
---

I needed to send raw ethernet frames in linux and found a [C program from Austin Marton](http://austinmarton.wordpress.com/2011/09/14/sending-raw-ethernet-packets-from-a-specific-interface-in-c-on-linux/)

However it was not possible to specify the target MAC address, so I added this feature in a gist fork:

<script src="https://gist.github.com/3765522.js?file=sendRawEth.c"></script>
