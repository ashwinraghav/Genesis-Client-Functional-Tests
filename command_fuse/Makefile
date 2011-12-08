TEST_DIR = "ls_test"
TEST_MOUNT_DIR = "$(PWD)/mounted_dir"
TEST_FILE = "1"
#note that more files need to be added if other features are eing tested

XSCRIPT_FILE = "test_1.xml"

clean:
	rm -rf "$(MOUNTED_HOME)/$(TEST_DIR)"
	rm -rf "$(MOUNTED_HOME)/$(XSCRIPT_FILE)"
	rm -rf answer_* output_*
	sudo umount "$(TEST_MOUNT_DIR)"
	rm -rf "$(TEST_MOUNT_DIR)"

bootstrap:
	mkdir "$(MOUNTED_HOME)/$(TEST_DIR)"
	mkdir "$(TEST_MOUNT_DIR)"
	touch "$(MOUNTED_HOME)/$(TEST_DIR)/$(TEST_FILE)"
	nohup ../../grid fuse --mount local:$(TEST_MOUNT_DIR) > /tmp/null &
answer:
	echo "$(TEST_FILE)" > answer_1
	#if other options are to be tested, they go here as answer_2, _3 etc

test: bootstrap answer
	sleep 5
	ls "$(TEST_MOUNT_DIR)/home/$(USER_NAME)/$(TEST_DIR)" > output_1

	#if other options are to be tested, they go here as output_1, _2 etc
