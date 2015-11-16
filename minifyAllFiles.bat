@ECHO OFF
set igniteDesktop=%~dp0

CLS
echo 10%% completed ..
echo admin.js processing ...
java -jar %igniteDesktop%\yuicompressor-2.4.2.jar --nomunge %igniteDesktop%\src\main\webapp\javascript\admin\admin.js -o %igniteDesktop%\src\main\webapp\javascript\admin\admin.min.js

CLS
ECHO 80%% completed ..
echo adminStyles.css processing ...
java -jar %igniteDesktop%\yuicompressor-2.4.2.jar %igniteDesktop%\src\main\webapp\css\admin\adminStyles.css -o %igniteDesktop%\src\main\webapp\css\admin\adminStyles.min.css

CLS
ECHO JS and CSS minify completed
