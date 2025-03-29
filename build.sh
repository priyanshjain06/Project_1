docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID priyansh01jain/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID priyansh01jain/$JOB_NAME:latest

docker push priyansh01jain/$JOB_NAME:$BUILD_ID

docker push priyansh01jain/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID priyansh01jain/$JOB_NAME:$BUILD_ID priyansh01jain/$JOB_NAME:latest
