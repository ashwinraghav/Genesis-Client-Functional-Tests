#all these configurations can be passed in at runtime

#the user should be changed to what you wish it to be
USER_NAME = "ashwinraghav"

#these configs need not be changed/passed in.
#Should work out of the box
MOUNT_DIR = "$(PWD)/mount_point"
MOUNTED_HOME = "$(MOUNT_DIR)/home/$(USER_NAME)"

test: 
	#in case the previous test run failed unexpectedly
	
	for d in command_* ; do ../grid cd /home/$(USER_NAME); cd $$d; make test MOUNTED_HOME=$(MOUNTED_HOME) USER_NAME=$(USER_NAME) > /tmp/null; for n in 1 2 3 4 5 6 7 8 9 10;do if test -e "answer_$$n"; then if diff -B -b -w answer_$$n output_$$n ; then echo ".." ; else echo "F-$$t"; fi;  fi; done; make clean MOUNTED_HOME=$(MOUNTED_HOME) USER_NAME=$(USER_NAME) ; cd ..; sleep 10; done

setup:
	#sudo umount $(MOUNT_DIR)
	rm -rf $(MOUNT_DIR)
	mkdir $(MOUNT_DIR)
	nohup ../grid fuse --mount local:$(MOUNT_DIR) > /tmp/null &

coverage:
	ls -d command_*|wc -l
