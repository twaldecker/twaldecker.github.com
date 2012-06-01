---
layout: default
---
Install zsh:

    sudo yum install zsh

Grab grml`s zshrc and save it to ``/etc/zshrc``.

    sudo wget -O /etc/zshrc "http://git.grml.org/?p=grml-etc-core.git;a=blob_plain;f=etc/zsh/zshrc;hb=HEAD"

Edit ``/etc/passwd`` and choose ``/etc/zsh`` as your shell:

    vi /etc/passwd

Change the line containing your Username:

    user:x:1000:1000:name:/home/thomas:/bin/zsh

Execute ``zsh``.
