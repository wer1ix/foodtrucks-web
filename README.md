SF Food Trucks
===

> San Francisco's finger-licking street food now at your fingertips.

![img](shot.png)

This is an application deployed by [Prakhar Srivastar](https://github.com/prakhar1989/) built following the [docker curriculum](http://prakhar.me/docker-curriculum) which is a comprehensive tutorial on getting started with Docker targeted especially at beginners. The app is built with [Flask](http://flask.pocoo.org/) on the backend and [Elasticsearch](http://elastic.co/) is the search engine powering the searches. The front-end is built with [React](http://facebook.github.io/react/) and the beautiful maps are courtesy of [Mapbox](https://www.mapbox.com/).

This version has updated some dependencies on the requirements.txt and for elasticsearch version 8.12.2.

#### Docker

There are two different ways of getting the app up and running with Docker. To learn more about how these two differ, check out the [docker curriculum](http://prakhar.me/docker-curriculum).

##### Docker Network
```
$ ./setup-docker.sh
```

##### Docker Compose
```
$ docker-compose up
```

The app can also be easily deployed on AWS Elastic Container Service. Once you have [aws ecs cli](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ECS_CLI_installation.html) installed, you can run the following to deploy it on ECS!
```
$ ./setup-aws-ecs.sh
```

Learn more at [docker-curriculum](http://prakhar.me/docker-curriculum).

Thanks so much for this useful tutorial Prakhar!
