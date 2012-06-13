#!/bin/sh
FILENAME="_posts/`date +%Y-%m-%d`-$1.md"
echo "---
layout: default
---" > $FILENAME && $EDITOR $FILENAME
