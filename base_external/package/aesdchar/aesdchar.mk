##############################################################
#
# AESDCHAR MAKEFILE
#
##############################################################

AESDCHAR_VERSION = '5814c62e72309c8598e73b454e4ce8a073c207b8'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESDCHAR_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-abhirathkoushik-cub.git'
AESDCHAR_SITE_METHOD = git
AESDCHAR_GIT_SUBMODULES = YES
AESDCHAR_MODULE_SUBDIRS = aesd-char-driver
 
 
define AESDCHAR_INSTALL_TARGET_CMDS
 	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin
 	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
 	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar-start-stop.sh $(TARGET_DIR)/etc/init.d/S97aesdchar
endef

$(eval $(generic-package))
$(eval $(kernel-module))