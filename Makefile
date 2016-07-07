PREFIX       ?= /usr
INSTALL_DIR  ?= install -d -m 755
INSTALL_PROG ?= install -m 755
INSTALL_FILE ?= install -m 644
RM           ?= rm -f

all:
	@echo Run \'make install\' to install neet.

install:
	@echo "Installing binaries."
	$(INSTALL_DIR) $(DESTDIR)$(PREFIX)/bin
	$(INSTALL_PROG) neet $(DESTDIR)$(PREFIX)/bin/neet
	@echo "Installing configs."
	$(INSTALL_DIR) $(DESTDIR)$(PREFIX)/share/neet
	$(INSTALL_FILE) configs/config $(DESTDIR)$(PREFIX)/share/neet/config
	$(INSTALL_FILE) configs/list $(DESTDIR)$(PREFIX)/share/neet/list
	@echo "Installing completions."
	$(INSTALL_DIR) $(DESTDIR)$(PREFIX)/share/fish/completions
	$(INSTALL_FILE) completions/neet.fish $(DESTDIR)$(PREFIX)/share/fish/completions/neet.fish
	@echo "Installing functions."
	$(INSTALL_DIR) $(DESTDIR)$(PREFIX)/share/fish/functions
	$(INSTALL_FILE) functions/cdv.fish $(DESTDIR)$(PREFIX)/share/fish/functions/cdv.fish

uninstall:
	@echo "Uninstalling binaries."
	$(RM) $(DESTDIR)$(PREFIX)/bin/neet
	@echo "Uninstalling configs."
	$(RM) -r $(DESTDIR)$(PREFIX)/share/neet
	@echo "Uninstalling completions."
	$(RM) $(DESTDIR)$(PREFIX)/share/fish/completions/neet.fish
	@echo "Uninstalling functions."
	$(RM) $(DESTDIR)$(PREFIX)/share/fish/functions/cdv.fish

