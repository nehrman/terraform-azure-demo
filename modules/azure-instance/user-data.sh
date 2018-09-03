#!/bin/bash

cat > index.html <<EOF
<h1>Hello, World.</h1>
<h1>Thanks to terraform for giving me life</h1>
EOF

<<<<<<< HEAD
nohup busybox httpd -f -p "80" &
=======
nohup busybox httpd -f -p "80" &
>>>>>>> d56101b87f97169140bb79d7f2c9e9dfbba43efd
