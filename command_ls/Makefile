TEST_DIR = "ls_test"
TEST_PATH = "$(MOUNTED_HOME)/$(TEST_DIR)"
clean:
	rm -rf "$(MOUNTED_HOME)/$(TEST_DIR)"
	rm -rf answer_* output_*

bootstrap: clean
	mkdir $(TEST_PATH)
	touch $(TEST_PATH)/1
	touch $(TEST_PATH)/2
	touch $(TEST_PATH)/3
	touch $(TEST_PATH)/4
	touch $(TEST_PATH)/5
answer:
	echo $(TEST_DIR)':\n1\n2\n3\n4\n5'>answer_1
	#if other options are to be tested, they go here as answer_2, _3 etc

test: bootstrap answer
	../../grid ls $(TEST_DIR) > output_1
	#if other options are to be tested, they go here as output_1, _2 etc
