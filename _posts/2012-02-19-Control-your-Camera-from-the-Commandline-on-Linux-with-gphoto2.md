---
layout: default
---
Using gPhoto and libgphoto2 you can control your Camera with your Linux PC and the Commandline. I'm using fedora16 and a Nikon D5000. With this setup you can easily shoot and download pictures using the USB cable. It is used as control and after the capture downloads the picture to your local folder.

To install gphoto2 on fedora use following command:

    sudo yum install gphoto2

Connect your Camera to your PC or Laptop. Run following command to capture and download a Image:

    gphoto2 --capture-and-download
