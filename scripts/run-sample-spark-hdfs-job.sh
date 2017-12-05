#!/bin/bash
#
# SCRIPT: run-sample-spark-hdfs-job.sh
#

echo
echo "#############################################"
echo "### Running Spark HDFSWordCount example. ###"
echo "#############################################"
echo

dcos spark run --name 'spark' --submit-args='--conf spark.eventLog.enabled=true --conf spark.eventLog.dir=hdfs://hdfs/history --conf Dspark.mesos.coarse=true --conf spark.cores.max=4 --conf spark.executor.memory=1g --driver-cores 1 --driver-memory 1g --class HDFSWordCount http://infinity-artifacts.s3.amazonaws.com/spark/sparkjob-assembly-1.0.jar hdfs:///test-data/test-data.txt'

# End of script
