ZIP=zip -r --exclude=meta.json

all: prepare zips/japanese.zip zips/quickcolours.zip zips/cardstats.zip zips/print.zip zips/localizemedia.zip zips/removehistory.zip zips/lockdebug.zip zips/mergechilddecks.zip zips/changecreationtimes.zip zips/fixinvalidhtml.zip

zips/japanese.zip: $(shell find japanese -type f | grep -v pycache)
	(cd japanese && $(ZIP) ../zips/japanese.zip *)

zips/quickcolours.zip: quickcolours/__init__.py
	(cd quickcolours && $(ZIP) ../zips/quickcolours.zip *)	

zips/cardstats.zip: cardstats/__init__.py
	(cd cardstats && $(ZIP) ../zips/cardstats.zip *)	

zips/print.zip: print/__init__.py
	(cd print && $(ZIP) ../zips/print.zip *)	

zips/localizemedia.zip: localizemedia/__init__.py
	(cd localizemedia && $(ZIP) ../zips/localizemedia.zip *)	

zips/removehistory.zip: removehistory/__init__.py
	(cd removehistory && $(ZIP) ../zips/removehistory.zip *)	

zips/lockdebug.zip: lockdebug/__init__.py
	(cd lockdebug && $(ZIP) ../zips/lockdebug.zip *)	

zips/mergechilddecks.zip: mergechilddecks/__init__.py
	(cd mergechilddecks && $(ZIP) ../zips/mergechilddecks.zip *)	

zips/changecreationtimes.zip: changecreationtimes/__init__.py
	(cd changecreationtimes && $(ZIP) ../zips/changecreationtimes.zip *)	

zips/fixinvalidhtml.zip: fixinvalidhtml/__init__.py
	(cd fixinvalidhtml && $(ZIP) ../zips/fixinvalidhtml.zip *)	

prepare:
	find . -name '*.pyc' -delete
	find . -name __pycache__ -delete
	test -d zips || mkdir zips

clean:
	rm -rf zips
