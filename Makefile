####
####
####

M3LOC ?= http://localhost:6800

.PHONY: assemble-app
assemble-app:
	cp ./js/bbop-mme-context.js static/
	cp ./js/bbop-mme-edit.js static/
	cp ./js/bbop-mme-manager.js static/
	cp ./js/bbop-mme-widgets.js static/
	cp ../bbop-js/staging/bbop.js static/

##
.PHONY: start-app
start-app: assemble-app
	M3LOC=$(M3LOC) node server.js