TEST_DIR = "ls_test"
TEST_FILE = "1"
clean:
	rm -rf "$(MOUNTED_HOME)/$(TEST_DIR)"
	rm -rf answer_* output_*

bootstrap: clean
	mkdir "$(MOUNTED_HOME)/$(TEST_DIR)"
	touch "$(MOUNTED_HOME)/$(TEST_DIR)/$(TEST_FILE)"
	echo "Contents of the file" > "$(MOUNTED_HOME)/$(TEST_DIR)/$(TEST_FILE)"
answer:
	echo "Contents of the file" > answer_1
	#if other options are to be tested, they go here as answer_2, _3 etc

test: bootstrap answer
	../../grid cat "$(TEST_DIR)/$(TEST_FILE)" > output_1
	#if other options are to be tested, they go here as output_1, _2 etc
