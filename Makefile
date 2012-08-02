
PLUGIN_NAME=better-gantt-chart
PLUGIN_DIR=$(DESTDIR)/usr/share/redmine/vendor/plugins/$(PLUGIN_NAME)

INSTALL_FILES=\
	app		\
	assets		\
	config		\
	Gemfile		\
	init.rb		\
	lang		\
	lib		\
	Rakefile	\
	README.rdoc	\
	spec

all:

install:
	@rm -Rf $(PLUGIN_DIR)
	@mkdir -p $(PLUGIN_DIR)
	@for i in $(INSTALL_FILES) ; do cp -R --preserve $$i $(PLUGIN_DIR) ; done
