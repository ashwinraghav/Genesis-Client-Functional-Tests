MOUNTED_HOME = "mount_point/home/ashwinraghav"
test:
	for t in command_*;do make -f $$t test MOUNTED_HOME=$(MOUNTED_HOME); if diff -B -b -w answer output ; then echo "**$$t** PASSED\n" ; else echo "**$$t** FAILED\n"; fi; make -f $$t clean > /tmp/null ; done
