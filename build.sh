#!/bin/sh
# RTPS Markdown Document Build Tool
# REQUIRES: pandoc
#           sudo apt-get install pandoc

#markdown naup.md > naup.html
#html2text naup.html > naup.txt

pandoc naup.md -f markdown -t plain -s -o doc/naup.txt
pandoc naup.md -f markdown -t plain -s --no-wrap -o doc/naup-nowrap.txt
pandoc naup.md -f markdown -t rtf -s -o doc/naup.rtf
pandoc naup.md -f markdown -t html5 -s -T "RTPS NAUP" -H html-head.html -A html-foot.html -c style.css -o doc/naup.html
pandoc naup.md -f markdown -t docx -s -o doc/naup.docx
pandoc naup.md -f markdown -t odt -s -o doc/naup.odt

echo "If no error messages printed, you may now deploy the document using standard git tools."
