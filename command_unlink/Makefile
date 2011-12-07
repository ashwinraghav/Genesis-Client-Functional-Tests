TEST_DIR = "ls_test"
TEST_FILE = "test_file"
#note that more files need to be added if other features are eing tested

XSCRIPT_FILE = "test_1.xml"
CHANGED_CONTENT = "Changed contents of the file"
clean:
	rm -rf "$(MOUNTED_HOME)/$(TEST_DIR)"
	rm -rf "$(MOUNTED_HOME)/$(XSCRIPT_FILE)"
	rm -rf answer_* output_*

bootstrap: clean
	mkdir "$(MOUNTED_HOME)/$(TEST_DIR)"
	cp "$(XSCRIPT_FILE)" "$(MOUNTED_HOME)/"
	touch "$(MOUNTED_HOME)/$(TEST_DIR)/$(TEST_FILE)"
answer:
	echo "$(TEST_DIR):\n$(TEST_FILE)" > answer_1
	#if other options are to be tested, they go here as answer_2, _3 etc

test: bootstrap answer
	../../grid script CONTENT=$(CHANGED_CONTENT) DIR=$(TEST_DIR) SOURCE=$(TEST_FILE) DEST="~$(TEST_FILE)" test_1.xml > output_1
	#if other options are to be tested, they go here as output_1, _2 etc
