DOCKERFILE - Dockerfile
----------
It is used to automate image creation.
Inside Dockerfile we use components to do our works.
Components will be on Capital Letter.
In Dockerfile D will be capital.
We can create image directly without container help
To create image from Dockerfile we need to build it.

COMPONENTS:
----------
FROM        : used to get base image
RUN        : used to run linux commands (While image creation)
CMD        : used to run linux commands (While container creation)
ENTRYPOINT    : high priority than cmd
COPY        : to copy local files to container
ADD        : to copy internet files to container
WORKDIR        : to open required directory
LABEL        : to add labels for docker images
ENV        : to set env variables (inside container)
ARGS        : to pass env variables (outside containers)
EXPOSE        : to give port number

Dockerfile --> Docker Build -->  Image --> Container

Example 1
=========
vi Dockerfile

FROM ubuntu
RUN apt update -y
RUN apt install git maven tree apache2 -y
RUN touch file1

-- docker build -t image1:v1 .    [  . represent current directory where we have dockerfile ]

-- docker run -it --name cont1 image1:v1   [ You will be now in container and see versions of softwares installed ]

   -- ctrl pq
