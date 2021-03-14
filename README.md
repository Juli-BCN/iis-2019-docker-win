# Docker App for IIS Server 2019 !
IIS Server 2019 Container for Windows - Docker App (2021)

:suspect: :clipboard: Str0ngP@ssword!



## Install Docker and GIT on Windows
(From this link)

> https://docs.docker.com/docker-for-windows/install/

(From this link)

> https://git-scm.com/download/win

> docker info

> docker --version

> git --version


## Download the code and Build the container
> git clone https://github.com/Juli-BCN/iis-2019-docker-win.git

> cd iis-2019-docker-win

> docker image build --tag iisbuilder .

> docker images



## Run the new IIS 2019 container
(Without volume created)
> docker run --detach -it --name iisbuilder --hostname iisbuilder

(With volume created, assuming C:\volsql directory exists)
> docker run --detach -it --name iisbuilder --hostname iisbuilder --volume c:\voliis:c:\voliis iisbuilder

*When creating the website folder, remember to put the files in path c:\voliis