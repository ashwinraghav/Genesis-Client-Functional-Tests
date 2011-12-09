TEST_DIR = "ls_test"
NEW_DIR = "directory"
#note that more files need to be added if other features are eing tested

XSCRIPT_FILE = "test_1.xml"

clean:
	rm -rf "$(MOUNTED_HOME)/$(TEST_DIR)"
	rm -rf "$(MOUNTED_HOME)/$(XSCRIPT_FILE)"
	rm -rf answer_* output_*

bootstrap: clean
	mkdir "$(MOUNTED_HOME)/$(TEST_DIR)"
	cp "$(XSCRIPT_FILE)" "$(MOUNTED_HOME)/"
answer:
	echo "0 script DIR=$(TEST_DIR) NEW_DIR=$(NEW_DIR) test_1.xml\n1 cd $(TEST_DIR)\n2 mkdir $(NEW_DIR)\n3 cd $(NEW_DIR)\n4 history " > answer_1
	#if other options are to be tested, they go here as answer_2, _3 etc

test:bootstrap answer
	../../grid script DIR=$(TEST_DIR) NEW_DIR=$(NEW_DIR) test_1.xml > output_1
	#if other options are to be tested, they go here as output_1, _2 etc
