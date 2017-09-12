# System Setup

## Using Docker

1.  Follow the [docker installation instructions](https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/) for your host OS.
2.  Make sure you [post installation steps for linux](https://docs.docker.com/engine/installation/linux/linux-postinstall/), if you are on linux. 
3.  Make sure you [fix docker's DNS settings](https://robinwinslow.uk/2016/06/23/fix-docker-networking-dns/) if you are on a Miami University computer (or if you find later that you cannot access websites from within docker images)
4.  From a terminal, start the docker image with the current directory
    mounted as `/workspace` and with port 8888 published to that you can access it from your host machine.  
    ```bash
    $ docker run \
        -v ${PWD}:/workspace \
        -p 8888:8888 \
        jfemiani/ser627a:latest 
    ```
5.  The previous command will show you which address to use, for example:
    ```
    http://localhost:8888/?token=3b442a9f5c9f40cac4b713d5d4e270cb62e46f4a4fa60bb1
    ```
    Copy that URL and paste it into the address bar of a browser.

> **NOTE:** If you are using port 8888 for something else, try `-p 8889:8888`' instead.
>  Just remember, if you do that then the URL that jupyter provides you will say `8888` and you must edit it to say `8889` in your browser's address bar.
## From Scratch

1. Install Anaconda on your system
2. Follow the same steps as I show in the [Dockerfile](./Dockerfile). 