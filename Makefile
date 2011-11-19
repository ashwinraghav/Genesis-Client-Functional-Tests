MOUNTED_HOME = "mount_point_1/home/ashwinraghav"
test:
	for t in command_*;do make -f $$t test MOUNTED_HOME=$(MOUNTED_HOME) > /tmp/null; for n in 1 2 3 4 5 6 7 8 9 10;do if test -e "answer_$$n"; then if diff -B -b -w answer_$$n output_$$n ; then echo ".." ; else echo "F-$$t"; fi;  fi; done; make -f $$t clean > /tmp/null ; done
	
