#!/bin/bash

cat > index.html <<EOF
<h1>Hello, World.</h1>
<h1>Thanks to terraform for giving me life</h1>
EOF

nohup busybox httpd -f -p "80" &