FILES = .vim .vimrc .screenrc .bash_aliases .gitconfig .git-completion
APPS  = bin jar

usage:
	@echo "usage: make {usage|list|diff|save|install}"

list:
	@for i in $(FILES); do echo "$$i"; done
	@for i in $(APPS); do \
		for j in "$$i"/*; do \
			echo "$$j"; \
		done; \
	done

diff:
	@for i in $(FILES); do \
		diff -qr "$$HOME/$$i" "./$$i"; \
	done
	@for i in $(APPS); do \
		for j in "$$i"/*; do \
			[ -e "$$j" ] && diff -qr "$$HOME/$$j" "./$$j"; \
		done; \
	done

save:
	for i in $(FILES); do \
		rm -rf "./$$i"; \
		cp -pR "$$HOME/$$i" .; \
	done
	for i in $(APPS); do \
		for j in "$$i"/*; do \
			if [ -e "$$j" ]; then \
				rm -f "./$$j"; \
				cp -p "$$HOME/$$j" "./$$j"; \
			fi; \
		done; \
	done

install:
	for i in $(FILES); do \
		rm -rf "$$HOME/$$i"; \
		cp -pR "./$$i" $$HOME; \
	done
	for i in $(APPS); do \
		cp -pR "./$$i" $$HOME; \
	done
