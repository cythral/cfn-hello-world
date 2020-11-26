# CloudFormation Hello World
![](https://codebuild.us-east-1.amazonaws.com/badges?uuid=eyJlbmNyeXB0ZWREYXRhIjoiWWhVZ2lwalkzWXJlYkhVNStsZWFKUHBScWQwbVZLN2JOYitkS2dXQ1ZBc0dRZ2RCV1Z1TWQ1TnRPb2xzd1kxbTJpSXN6WE9rZTEvZ0cwOGtRc3JVOWtvPSIsIml2UGFyYW1ldGVyU3BlYyI6IjZPbjE4Ky9IVE40dHVncEwiLCJtYXRlcmlhbFNldFNlcmlhbCI6MX0%3D&branch=master)

Simple hello world application using CloudFormation and our [new continuous integration and deployment services](https://github.com/cythral/cfn).  This creates a simple docker image based on nginx that displays the text, "Hello World."  This image is built on CodeBuild and pushed to a private ECR.  If all goes well, a resulting container will be deployed to ECS behind our load balancers, first to the dev environment and then to prod. Deployment to prod requires manual approval.  

## Local Build
To build the container locally, just run the following command:

```shell
docker build -t cfn-hello-world .
```

Then to run it, do:

```shell
docker run --rm -it -p 80:80 cfn-hello-world
```


Visit http://localhost and you should see "Hello World" display in your browser!
