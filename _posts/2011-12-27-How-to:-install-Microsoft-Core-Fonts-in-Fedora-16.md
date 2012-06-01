First follow this guide:
<a href="http://corefonts.sourceforge.net/">http://corefonts.sourceforge.net/</a></p>

install xfs:

    sudo yum install xfs

then install chkfontpath from centos i386 architecture:

    sudo rpm -ivh http://mirror.centos.org/centos/5/os/i386/CentOS/chkfontpath-1.10.1-1.1.i386.rpm

after that the command

    sudo rpm -ivh $HOME/rpmbuild/RPMS/noarch/msttcorefonts-2.0-1.noarch.rpm
    error: Failed dependencies:
        /src/sbin/chkfontpath is needed by msttcorefonts-2.0-1.noarch

should work
