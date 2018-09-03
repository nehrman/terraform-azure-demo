#!/bin/bash

cat > index.html <<EOF
<h1>Hello, World.</h1>
<p>Thanks to terraform for giving me life</p>
EOF

nohup busybox httpd -f -p "80" &
