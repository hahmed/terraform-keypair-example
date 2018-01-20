## Terraforms example to allow ssh into instance

This example creates a VPC in AWS, with a security group that allows any connections from outgoing connections and on port 22 (SSH) any connections from incoming connections. (This ideally needs to be locked down to *your* home IP address or work IP address, for this example it's fine.)

Few things you will need

### Create terraforms.tfvars

````
> touch terraforms.tfvars

AWS_ACCESS_KEY = "access_key_here"
AWS_SECRET_KEY = "secret_key_here"
````

### Create ssh key pair

````
> ssh-keygen -f mykey
````

### terraforms

Then run terraforms init to load aws

````
> terraform init
````

Then apply the changes

````
> terraform apply
````

Check out the public IP address in the .tfstate file to ssh into the instance

````
> ssh public_ip_address -l ubuntu -i mykey
````

`sudo -s` gives you root access (type exit to exit), you can then check out the configuration for the network interface (`route -n` - type CTRL + D to exit)
