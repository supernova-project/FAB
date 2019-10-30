# FAB

The FAB build sandbox consists of two tools used for building
nix based operating systems; fabroot and fabstrap. Both tools 
are related and greatly simplify the build-from-source process.


# fabstrap
Fabstrap is used to create a build toolbox. The build
toolbox contains configuration information, source
tarballs, configuration information, and more.

- !! create a build toolbox
- !! configure Fabroot build options
- !! configure install locations
- set build format:
    - !! live cd media
    - !! installation media
    - !! direct installation to disk
    - !! direct installation to image (ISO, IMG)


# fabroot
fabroot sets up a chroot environment ideal for building
nix based systems. it uses a build toolbox generated
by the fabstrap utility.

- !! build OS components
- !! install OS to target
- !! create users on the operating system
- !! test OS post install