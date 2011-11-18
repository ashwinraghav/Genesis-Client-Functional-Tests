test:
	for t in command_*;do make -f $$t test >> /tmp/null; if diff -b -w answer output ; then echo "**$$t** PASSED\n" ; else echo "**$$t** FAILED\n"; fi; make -f $$t clean; done
