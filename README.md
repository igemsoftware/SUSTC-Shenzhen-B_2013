Circuit+
=======
This is the project of igem 2013 by SUSTC-Shenzhen-B_2013.

### Overview

Circuit+, an online registry of standard genetic circuits, aims to fill the vacancy of genetic circuits’ database and sharing platform. In the database behind, we design several tables to record all kinds of information to comprehensively describe a genetic circuit. All the information we record and require in Create is based on our standard of RFC 97 and RFC 101. Users can retrieve circuits, browse information, share by exporting information in SBOL and submit new circuits. As for sharing platform, we call for users to submit their own genetic circuits and post their comment of other circuits. Furthermore, even average people are allowed and encouraged to upload their crazy ideas to Mindmap. Thus, Circuit+ is a good place for exchanging genetic circuits and obtaining a better understanding about synthetic biology.

### Software Requirment
Apache
php5
html5
git
Mysql
Chrome, Firefox,IE10, safary is recommand

### Directory structure
		-Clotho      #Clotho app TTEC
		-js          #Library code
		--Code       #Core updating of TTEC
		-comments    #Server side for comments
		-css         #Style
		-css1        #Style for the main part
		-img         #Pictures used
		-bootstrap


### Software Running
If you just want to use our software, we recommend you to vist our website:[http://circuitplus.org](http://circuitplus.org)(Strongly suggest)<br/>

If you want to run the software locally and edit it,please download  all files in the registry first , then you need to start your Mysql and Apache,
then please import "db_bacteria2.sql" to your database,after that ,you need to edit interface of servers,change it to your servers.If you finish all steps above,run "index.html"


### More information
If you have any question, connect us freely!<br/>
[http://2013.igem.org/Team:SUSTC-Shenzhen-B](http://2013.igem.org/Team:SUSTC-Shenzhen-B)<br/>
igem2013@sustc.edu.cn
