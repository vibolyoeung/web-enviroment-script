# Web Environment Installation Script
## How To Install Linux, Apache, MySQL, PHP (LAMP) stack on Ubuntu

Please read and check this Readme from times to times so that
to not waste time later wondering how to do things which are
already explained here

if something is wrong or missing: report me, if you don't tell me
I have no way to improve it =)

## To run it:
```
cd yourDirectoryWhichFileLocated
sh ./install-webenv.sh
```
## To test it work?
```
sudo nano /var/www/html/info.php
```
###Add the following line
```
<?php
   phpinfo();
?>
```
### Restart apache
```
sudo service apache2 restart
```
### Type the url like bellow in the browser bar
```
http://locahost/info.php
```
