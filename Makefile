# TODO copyright statement
#
# This file is a part of tmuxer.
#
# Tmuxer is a rewrite of tmux-sessionsizer
#
# TODO add a disclaimer

SCRIPT_NAME = tmuxer


SCRIPT_FILE = $(SCRIPT_NAME)
DEST_DIR ?= ~/.local/scripts

.PHONY: all install uninstall clean

all: $(SCRIPT_FILE)

install:
	install -m 0755 $(SCRIPT_FILE) $(DEST_DIR)/$(SCRIPT_NAME)
	@echo "$(SCRIPT_NAME) installed to $(DEST_DIR)"

uninstall:
	# Remove the installed script
	rm -f $(DEST_DIR)/$(SCRIPT_NAME)
	@echo "$(SCRIPT_NAME) uninstalled from $(DEST_DIR)"

clean:
	@echo "No cleaning necessary for this example."
