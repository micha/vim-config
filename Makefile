FILES = .vim .vimrc .screenrc .bash_aliases .gitconfig .git-completion
APPS  = bin

none:
	for i in $(FILES); do echo $$i; done

save:
	for i in $(FILES); do \
		rm -rf ./$$i; \
		cp -pR ~/$$i .; \
	done

install:
	for i in $(FILES); do \
		rm -rf ~/$$i; \
		cp -pR ./$$i ~; \
	done
	for i in $(APPS); do \
		cp -pR ./$$i ~; \
	done
