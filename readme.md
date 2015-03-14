# Node.js website running with Deis

## Run localy

    fig up

open [http://localhost](http://localhost)

## Deploy with Deis

    ssh-add ~/.ssh/deis
    deis create
    git push deis master

deis open (open the website in the default browser)
