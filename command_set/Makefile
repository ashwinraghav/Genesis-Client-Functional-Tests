TEST_DIR = "ls_test"
TEST_FILE = "1"
VAR_NAME = "VAR_X"
VAR_VALUE = "NEW VALUE"
#note that more files need to be added if other features are eing tested

XSCRIPT_FILE = "test_1.xml"

clean:
	rm -rf "$(MOUNTED_HOME)/$(TEST_DIR)"
	rm -rf "$(MOUNTED_HOME)/$(XSCRIPT_FILE)"
	rm -rf answer_* output_*

bootstrap: clean
	cp "$(XSCRIPT_FILE)" "$(MOUNTED_HOME)/"
answer:
	echo "" > answer_1
	echo "" > output_1
	#if other options are to be tested, they go here as answer_2, _3 etc

test: bootstrap answer
	echo "command_set test needs to be fixed"
	#tightly coupled to the script. Need to refactor.
	#../../grid script VAR_NAME=$(VAR_NAME) VAR_VALUE=$(VAR_VALUE) test_1.xml > output_1
	#if other options are to be tested, they go here as output_1, _2 etc
