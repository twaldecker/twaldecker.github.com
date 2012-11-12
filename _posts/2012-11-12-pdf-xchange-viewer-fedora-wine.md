---
layout: default
title: Scrolling in PDF-XChange Viewer in wine in fedora linux
---

There simply isn't a nice PDF Viewer with all the needed features natively available for linux.

The PDF-XChange Viewer works nicely. All the annotation features are present and it works in wine quite well.

One bug that has bothered me since long time was the display artefacts after scrolling the pages with the scrollwheel.

In the great ubuntuusers.de wiki there is a solution to this problem.

Just go to: Edit > Preferences > Performance and select the option "Use synchronous mode of page rendering (may slow the application if used)"

Source: [http://wiki.ubuntuusers.de/PDF_XChange_Viewer](http://wiki.ubuntuusers.de/PDF_XChange_Viewer)
