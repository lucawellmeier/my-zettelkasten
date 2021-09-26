all:
	find docs/ -type f -name "*.mmd" | xargs -L 1 python -m mmd
	rsync -ar --exclude '*.mmd' docs/ root@server:~/www

