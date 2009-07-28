FILES = .vim .vimrc .screenrc .bash_aliases

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
