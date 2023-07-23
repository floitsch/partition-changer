build/new_partition.bin: new_partitions.csv
	python $(IDF_PATH)/components/partition_table/gen_esp32part.py $< $@

main/new_partition.h: build/new_partition.bin
	xxd -C -n NEW_PARTITION -i $< $@
