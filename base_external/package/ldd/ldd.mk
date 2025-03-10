##############################################################
#
# LDD-PACKAGE-MAKEFILE
#
##############################################################

LDD_VERSION = '9ddb154d9955402bbc5209daa705c3159a007dae'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LDD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-abhirathkoushik-cub.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = NO

LDD_MODULE_SUBDIRS =  misc-modules
LDD_MODULE_SUBDIRS +=  scull

$(eval $(generic-package))
$(eval $(kernel-module))
