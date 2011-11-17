TEST_DIR = "ls_test"
clean:
	rm -rf $(TEST_DIR)
	rm -rf answer output

bootstrap: clean
	mkdir $(TEST_DIR)
	cd ls_test && touch 1 2 3 4 5 && cd ..

answer:
	echo '1\n2\n3\n4\n5'>answer

test: bootstrap answer
	pwd
	ls $(TEST_DIR) > output
	@if diff -b -w answer output ; then echo "*** passed" ; else echo "*** FAILED:"; fi
	make clean
