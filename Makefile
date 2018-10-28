PREFIX  ?= /usr/local
DESTDIR ?= $(PREFIX)/share/icons/Suru++

SUBDIRS = actions animations apps devices emblems emotes intl mimetypes panel places status stock stock/io
EXTRAWORK = apps2 devices2 emotes2 intl2 mimetypes2 places2 stock2 stock/io2
MISC = categories scalable-max-32

install: $(SUBDIRS) $(EXTRAWORK) $(MISC)

clean:
	rm -fr $(DESTDIR)

destdir:
	install -d $(DESTDIR)
	install -m644 index.theme $(DESTDIR)/

### Main icon variants
actions: variants = 16 22 24 symbolic
actions: links = 16 22 24
animations: variants = 22 24
apps: variants = 16 64 symbolic
apps: links = 64
devices: variants = 16 64 symbolic
devices: links = 16 64
emblems: variants = 16 22 24 32 48 symbolic
emblems: links = 16 22 24 32 48
emotes: variants = 48 symbolic
emotes: links = 48
intl: variants = 64
intl: links = 64
mimetypes: variants = 16 64
mimetypes: links = 16 64
panel: variants = 16 22 24
panel: links = 16 22 24
places: variants = 16 64 symbolic
places: links = 16 64
status: variants = 16 22 24 32 48 symbolic
status: links = 16 22 24 32 48
stock: variants = 16
stock/io: variants = 16

$(SUBDIRS): destdir
	install -d $(DESTDIR)/$@
	for variant in $(variants); do \
		install -d $(DESTDIR)/$@/$$variant; \
		install -m644 $@/$$variant/* $(DESTDIR)/$@/$$variant; \
	done
	for variant in $(links); do \
		ln -sf $$variant $(DESTDIR)/$@/$${variant}@2x; \
	done

### Subdirectories with a mix of symlinks which need extra work
apps2: linksup = 22 22@2x 24 24@2x 32 32@2x 48 48@2x
apps2: targetup = 64
apps2: apps
devices2: linksdown = 22 22@2x
devices2: linksup = 24 24@2x 32 32@2x 48 48@2x
devices2: targetdown = 16
devices2: targetup = 64
devices2: devices
mimetypes2 places2: linksdown = 22 22@2x 24 24@2x
mimetypes2 places2: linksup = 32 32@2x 48 48@2x
mimetypes2 places2: targetdown = 16
mimetypes2 places2: targetup = 64
mimetypes2: mimetypes
places2: places
emotes2: linksup = 16 16@2x 22 22@2x 24 24@2x 32 32@2x
emotes2: targetup = 48
emotes2: emotes
intl2: linksup = 16 16@2x 22 22@2x 24 24@2x 32 32@2x 48 48@2x
intl2: targetup = 64
intl2: intl
stock2: linksdown = 22 24 32 48 64 96 scalable
stock2: targetdown = 16
stock2: stock
stock/io2: linksdown = 22 24 32 scalable
stock/io2: targetdown = 16
stock/io2: stock/io

$(EXTRAWORK):
	for subdir in $+; do \
		for variant in $(linksdown); do \
			ln -sf $(targetdown) $(DESTDIR)/$$subdir/$$variant; \
		done; \
		for variant in $(linksup); do \
			ln -sf $(targetup) $(DESTDIR)/$$subdir/$$variant; \
		done; \
	done

### Miscellaneous things which don't fit the same patterns
categories: destdir
	ln -sf apps $(DESTDIR)/$@

scalable-max-32: destdir
	install -d $(DESTDIR)/$@/status
	install -m644 $@/status/* $(DESTDIR)/$@/status/

