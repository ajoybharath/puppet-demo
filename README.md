# Puppet Master and Client with terraform

## Terraform commands to run after installing terraform ##

To create instances
```
$ terraform init
$ terraform plan
$ terraform apply

```
To terminate the instances created
```
$ terrraform destroy
```

## Please follow the text files below for installation configuration and manifests ##

- ./puppet/Puppet_install.txt - Installation and configuration steps for master and client
- ./puppet/initial-manifest.txt - a simple httpd example
- ./puppet/java_tomcat.txt - An example for installing and configuring Java and Tomcat server
- ./puppet/Few_complex_examples.txt - Two examples for Creating Modules, using templates etc