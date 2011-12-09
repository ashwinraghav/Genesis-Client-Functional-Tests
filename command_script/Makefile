TEST_DIR = "ls_test"
TEST_FILE = "1"
#note that more files need to be added if other features are eing tested

XSCRIPT_FILE = "test_1.xml"

clean:
	rm -rf "$(MOUNTED_HOME)/$(TEST_DIR)"
	rm -rf "$(MOUNTED_HOME)/$(XSCRIPT_FILE)"
	rm -rf answer_* output_*

bootstrap: clean
	mkdir "$(MOUNTED_HOME)/$(TEST_DIR)"
	cp "$(XSCRIPT_FILE)" "$(MOUNTED_HOME)/"
	echo "Contents of the file" > "$(MOUNTED_HOME)/$(TEST_DIR)/$(TEST_FILE)"
answer:
	echo "Contents of the file" > answer_1
	#if other options are to be tested, they go here as answer_2, _3 etc

test: bootstrap answer
	#to test the script command run any command and assert
	../../grid script DIR=$(TEST_DIR) SOURCE=$(TEST_FILE) DEST="~$(TEST_FILE)" test_1.xml > output_1
	#if other options are to be tested, they go here as output_1, _2 etc
