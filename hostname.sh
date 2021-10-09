#!/bin/sh

HOSTNAME=`hostname`
VERSION=${VERSION:-v1}
cat > /usr/share/nginx/html/index.html <<EOF
<HTML>
<HEAD>
<TITLE>This page is on $HOSTNAME and is version $VERSION</TITLE>
</HEAD><BODY>
<H1>THIS IS HOST $HOSTNAME</H1>
<H2>And we're running version: $VERSION</H2>
</BODY>
</HTML>
EOF

nginx -g "daemon off;"
