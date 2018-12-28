# Dev Ops Test

By using only Vagrant and bash scripting (general unix commands i.e. yum, ssh, ls, cat, sed, touch, etc, are all allowed), automate the following.

You are required to provide us a single-line command which runs a bash script to execute all of the steps below.

* Create two CentOS 7 servers using Vagrant, one with hostname `deploy.server`, and another with hostname `api.server`. They should both be able to communicate with one another.
* Provision both servers with the account named `testing` with the password `testing`. This account must have sudo powers.
* SSH into `deploy.server` and then, download this file http://releases.ubuntu.com/cosmic/ubuntu-18.10-live-server-amd64.iso
* Compress this file using `tar.gz` and from the `deploy.server`, transfer the archive to the home directory of `api.server`'s testing account.
* As a reminder, the above needs to be done using Vagrant and bash scripting. You may not use a non-vanilla vagrant image.
* Send us a git repository link to your work.

# Notes

* If the vagrant download is slow (this may happen), try using a different vagrant box provider. Vagrant's official servers may be heavily loaded, and some boxes doesn't use vagrant's official servers, hence bypassing the issue.
* The usage of ssh keys are allowed.
