TEST_DIR = "ls_test"
TEST_FILE = "1"
#note that more files need to be added if other features are eing tested

XSCRIPT_FILE = "test_1.xml"

clean:
	rm -rf "$(MOUNTED_HOME)/$(XSCRIPT_FILE)"
	rm -rf answer_* output_*

bootstrap: clean
	cp "$(XSCRIPT_FILE)" "$(MOUNTED_HOME)/"
answer:
	echo "Response 0:  Hello, World!" > answer_1
	#if other options are to be tested, they go here as answer_2, _3 etc

test: bootstrap answer
	../../grid script CONTAINER_PATH="/home/$(USER_NAME)" test_1.xml | grep "Hello" > output_1
	#if other options are to be tested, they go here as output_1, _2 etc
