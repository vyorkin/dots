.PHONY: install, uninstall

install:
	brew tap thoughtbot/formulae
	brew install rcm
	rcup -v -d ~/.dots
	brew tap Homebrew/brewdler
	brew brewdle
	rake install:all

uninstall:
	rake uninstall:all
	rcdn -v
