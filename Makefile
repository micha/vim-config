all:
	rm -rf .vim .vimrc
	cp -pR ~/.vim .
	cp -pR ~/.vimrc .
	git commit -a -m "update"
	git push origin master

install:
	git pull origin master
	rm -rf ~/.vim ~/.vimrc
	cp -pR .vim ~
	cp -pR .vimrc ~
