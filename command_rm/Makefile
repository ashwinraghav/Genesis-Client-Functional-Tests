TEST_DIR = "ls_test"
XSCRIPT_FILE = "test_1.xml"
REMOVABLE_FILE = "5"
TEST_PATH = "$(MOUNTED_HOME)/$(TEST_DIR)"
clean:
	rm -rf "$(MOUNTED_HOME)/$(TEST_DIR)"
	rm -rf answer_* output_*

bootstrap: clean
	cp "$(XSCRIPT_FILE)" "$(MOUNTED_HOME)/"
	mkdir $(TEST_PATH)
	touch $(TEST_PATH)/1
	touch $(TEST_PATH)/2
	touch $(TEST_PATH)/3
	touch $(TEST_PATH)/4
	touch $(TEST_PATH)/5
answer:
	echo $(TEST_DIR)':\n1\n2\n3\n4'>answer_1
	#if other options are to be tested, they go here as answer_2, _3 etc

test: bootstrap answer
	../../grid script DIR=$(TEST_DIR) SOURCE=$(REMOVABLE_FILE) test_1.xml > output_1

	#if other options are to be tested, they go here as output_1, _2 etc
