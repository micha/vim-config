FILES = .vim .vimrc .screenrc .bash_aliases
APPS  = bin

none:
	for i in $(FILES); do echo $$i; done

save:
	for i in $(FILES); do \
		rm -rf ./$$i; \
		cp -pR ~/$$i .; \
	done
	git commit -a -m "update"
	git push origin master

install:
	git pull origin master
	for i in $(FILES); do \
		rm -rf ~/$$i; \
		cp -pR ./$$i ~; \
	done
	for i in $(APPS); do \
		cp -pR ./$$i ~; \
	done
