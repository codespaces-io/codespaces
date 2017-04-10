### Why does Chef Codespace needs to be configured with host networking ?

If you plan to use docker along with testkitchen for TDD, it requires to provision a container, 
connect to it, run chef and then run the tests. This will not work without attaching to the hosts's 
network and without getting rid of network namespace for the control node. 

