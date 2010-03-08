FILES = .vim .vimrc .screenrc .bash_aliases .gitconfig .git-completion
APPS  = bin

none:
	@for i in $(FILES); do echo $$i; done
	@for i in $(APPS); do \
		for j in $$i/*; do \
			echo $$j; \
		done; \
	done

diff:
	@for i in $(FILES); do \
		diff -qr ~/$$i ./$$i; \
	done
	@for i in $(APPS); do \
		for j in $$i/*; do \
			diff -qr ~/$$j ./$$j; \
		done; \
	done

save:
	for i in $(FILES); do \
		rm -rf ./$$i; \
		cp -pR ~/$$i .; \
	done
	for i in $(APPS); do \
		for j in $$i/*; do \
			rm -f ./$$j; \
			cp -p ~/$$j ./$$j; \
		done; \
	done

install:
	for i in $(FILES); do \
		rm -rf ~/$$i; \
		cp -pR ./$$i ~; \
	done
	for i in $(APPS); do \
		cp -pR ./$$i ~; \
	done
