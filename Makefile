
REDMINE_DIR=$(DESTDIR)/usr/share/redmine
PLUGIN_NAME=redmine_better_gantt_chart
PLUGIN_DIR=$(REDMINE_DIR)/vendor/plugins/$(PLUGIN_NAME)

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
	@mkdir -p $(PLUGIN_DIR) $(REDMINE_DIR)/public/plugin_assets
	@for i in $(INSTALL_FILES) ; do cp -R --preserve $$i $(PLUGIN_DIR) ; done
	@( cd $(REDMINE_DIR)/public/plugin_assets && ln -sf ../../vendor/plugins/$(PLUGIN_NAME)/assets $(PLUGIN_NAME) )
