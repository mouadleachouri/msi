# msi - minimalist frontend for BeardOverflow/msi-ec

PREFIX = /usr/local

install:
	cp ./msi.sh ${PREFIX}/bin/msi
	chmod +x ${PREFIX}/bin/msi

uninstall:
	rm ${PREFIX}/bin/msi
