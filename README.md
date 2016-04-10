# OpenChatAlyticsStack

[![Apache 2.0 Licensed](https://img.shields.io/badge/license-Apache%202.0-blue.svg)](https://github.com/OpenChatAlytics/OpenChatAlyticsStack/blob/master/LICENSE.txt)

This project contains Docker build information for building and launching the full OpenChatAlytics Stack.

To pull and run the Docker images, ensure that `docker-compose` is installed, then update the images by running

```
docker-compose pull
```

Once the latest images have been downloaded, start the containers by running

```
docker-compose up
```

Note that this requires ports `3001`, `8080` and `9000` to be open and available on your local machine.
OpenChatalyticsWeb should be available on `localhost:8080`, OpenChatalyticsCompute Event Stream on `9000` and 
OpenChatalyticsUI should be available on `localhost:3001`.