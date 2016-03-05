#!/bin/bash
grep '^trap' ~/.bashrc > /dev/null
if [ $? -ne 0 ]; then
cat << EOF >> ~/.bashrc
trap ': stop; sleep 3; exit 0' TERM
EOF
fi

cd ~
git clone https://github.com/yuji-k64613/selenium.git
cd selenium/seleniumProject
exec mvn test
