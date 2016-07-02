PREFIX        ?=  /usr
RM            ?=  rm -f
INSTALL_DIR   ?=  install -m755 -d
INSTALL_PROG  ?=  install -m755
INSTALL_FILE  ?=  install -m644

all:
	@echo Run \'make install\' to install neet.

install:
	$(INSTALL_DIR) $(DESTDIR)$(PREFIX)/bin
	$(INSTALL_DIR) $(DESTDIR)$(PREFIX)/share/neet
	$(INSTALL_DIR) $(DESTDIR)$(PREFIX)/share/fish/completions
	$(INSTALL_PROG) neet $(DESTDIR)$(PREFIX)/bin/neet
	$(INSTALL_FILE) config/config $(DESTDIR)$(PREFIX)/share/neet/config
	$(INSTALL_FILE) completions/neet.fish $(DESTDIR)$(PREFIX)/share/fish/completions/neet.fish

uninstall:
	$(RM) $(DESTDIR)$(PREFIX)/bin/neet
	$(RM) -r $(DESTDIR)$(PREFIX)/share/neet
	$(RM) $(DESTDIR)$(PREFIX)/share/fish/completions/neet.fish
