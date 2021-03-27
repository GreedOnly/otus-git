# otus-git

##This repository has some config files for education-course.
    ```git clone https://github.com/GreedOnly/otus-git.git``` to clone repository.
##Directory WebServer.v* has all of you needs to make homework "Web servers".
#    WebServer.v.1 made home work with shell provision.
        ```cd otus-git/WebServer.v.1``` to move to the directiry.
        ```vagrant up``` to deploy.
        ```curl localhost:8080``` to prove.
#    WebServer.v.2 made home work with ansible playbook.
        ```cd otus-git/WebServer.v.2``` to move to the directiry.
        ```vagrant up``` to deploy.
        ```ansible-playbook webserver.yml``` to configure vm.
        ```curl localhost:8080``` to prove.
#    WebServer.v.3 made home work with ansible roles. There are four roles.
        ```cd otus-git/WebServer.v.3``` to move to the directiry.
        ```vagrant up``` to deploy.
        ```ansible-playbook make_homework.yml``` to configure vm.
#Directory MySql.v* has all of you needs to make homework "Mysql servers".

##Directory Prometheus.v* has all of you needs to make homework "Monitoring servers".

## Final project
        ```cd otus-git/Final_project.v.3/ && vagrant up```