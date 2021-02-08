all: .env

.env:
	echo -n > $@
	echo "UID=$(shell id -u)" >> $@
	echo "GID=$(shell id -g)" >> $@
	echo -n "TZ=" >> $@
	timedatectl | grep 'Time zone' | sed -E 's/ *Time zone: (.*) \(.*\)/\1/' >> $@
