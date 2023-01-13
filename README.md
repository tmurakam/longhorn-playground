# Longhorn playground

# Deploy k8s

Startup nodes:

    $ vagrant up

Login to master-0:

    $ vagrant ssh master-0

Then deploy kubernetes cluster using kubespray

    $ ./setup-ssh.sh
    $ ./get-kubespray.sh
    $ ./install-ansible.sh
    $ ./configure-kubespray.sh
    $ ./deploy.sh
