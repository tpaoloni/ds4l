all:
	make -C ds4_module
	make -C ds4_read

clean:
	make clean -C ds4_module
	make clean -C ds4_read

init: 
	-pkill event_gen
	-pkill device_read
	-rmmod hid_ds4
	-rmmod hid_sony
	insmod ds4_module/hid-ds4.ko
	make start -C ds4_read

exit:
	-pkill event_gen
	-pkill device_read
	-rmmod hid_ds4


