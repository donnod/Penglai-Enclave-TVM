##############
# penglai.ko
##############

export penglai_dir=$PWD/Penglai-sdk-TVM/enclave-driver
cp $penglai_dir/penglai.ko copy-files/


###########
# host
###########

if [ ! -d "copy-files/host" ]; then
  mkdir copy-files/host
fi

export host_dir=$PWD/Penglai-sdk-TVM/demo/host
cp $host_dir/host copy-files/host/

export init_dir=$PWD/Penglai-sdk-TVM/demo/dd-init
cp $init_dir/dd-init copy-files/host/

#############
# hello world
#############

if [ ! -d "copy-files/hello-world" ] ; then
  mkdir copy-files/hello-world
fi

export hello_world_dir=$PWD/Penglai-sdk-TVM/demo/hello-world
cp $hello_world_dir/hello-world copy-files/hello-world

##############
# ipc
##############

if [ ! -d "copy-files/ipc" ] ; then
  mkdir copy-files/ipc
fi

export ipc_dir=$PWD/Penglai-sdk-TVM/demo/ipc
cp $ipc_dir/caller/caller copy-files/ipc
cp $ipc_dir/server/server copy-files/ipc
cp $ipc_dir/test-caller/test-caller copy-files/ipc

export ipc_dir=$PWD/Penglai-sdk-TVM/demo/ipc-baseline
cp $ipc_dir/caller/caller-baseline copy-files/ipc
cp $ipc_dir/server/server-baseline copy-files/ipc
cp $ipc_dir/test-caller/test-caller-baseline copy-files/ipc


################
# serverless
################

if [ ! -d "copy-files/serverless-test" ] ; then
 mkdir copy-files/serverless-test
fi

export serverless_test_dir=$PWD/Penglai-sdk-TVM/demo/image-process/serverless_test
cp $serverless_test_dir/serverless-user copy-files/serverless-test
cp $serverless_test_dir/entry_enclave copy-files/serverless-test
cp $serverless_test_dir/imageResize copy-files/serverless-test
cp $serverless_test_dir/imageRotate copy-files/serverless-test
cp $serverless_test_dir/imageErosion copy-files/serverless-test

###############
# map-reduce
###############

if [ ! -d "copy-files/map-reduce" ] ; then
 mkdir copy-files/map-reduce
fi

export map_reduce_dir=$PWD/Penglai-sdk-TVM/demo/map-reduce
cp $map_reduce_dir/map/map copy-files/map-reduce
cp $map_reduce_dir/mphost/mphost copy-files/map-reduce
cp $map_reduce_dir/mphost/input.txt copy-files/map-reduce
cp $map_reduce_dir/reduce/reduce copy-files/map-reduce
cp $map_reduce_dir/map2/map2 copy-files/map-reduce
cp $map_reduce_dir/mphost2/mphost2 copy-files/map-reduce
cp $map_reduce_dir/reduce2/reduce2 copy-files/map-reduce
cp $map_reduce_dir/map4/map4 copy-files/map-reduce
cp $map_reduce_dir/mphost4/mphost4 copy-files/map-reduce
cp $map_reduce_dir/reduce4/reduce4 copy-files/map-reduce

#############
# FS
#############

if [ ! -d "copy-files/fs" ] ; then
  mkdir copy-files/fs
fi

export fs_dir=$PWD/Penglai-sdk-TVM/demo/FS
cp $fs_dir/fshost/fshost copy-files/fs
cp $fs_dir/testfs/testfs copy-files/fs
cp $fs_dir/littlefs/lfs copy-files/fs

#############
# stress-ng
#############

if [ ! -d "copy-files/stress-ng" ]; then
  mkdir copy-files/stress-ng
fi

export stress_ng_dir=$PWD/Penglai-sdk-TVM/demo/stress-ng
cp $stress_ng_dir/stress-ng copy-files/stress-ng/


############
# lmbench
############

if [ ! -d "copy-files/lmbench" ] ; then
  mkdir copy-files/lmbench
fi

export lmbench_dir=$PWD/Penglai-sdk-TVM/demo/lmbench
cp $lmbench_dir/bin/x86_64-linux-gnu/*mem* copy-files/lmbench
cp $lmbench_dir/bin/x86_64-linux-gnu/*mmap* copy-files/lmbench

############
# redis
############

if [ ! -d "copy-files/redis" ] ; then
  mkdir copy-files/redis
fi

export redis_dir=$PWD/Penglai-sdk-TVM/demo/redis-6.2.1/src
cp $redis_dir/redis-benchmark copy-files/redis
cp $redis_dir/redis-server copy-files/redis
cp $redis_dir/redis-cli copy-files/redis
# cp -r $redis_dir/../ copy-files/redis