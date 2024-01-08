
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

# 'assignments-3-and-later-sergeynv-coursera' repo, 'assignment-4-part-1' tag/release
# https://github.com/cu-ecen-aeld/assignments-3-and-later-sergeynv-coursera/releases/tag/assignment-4-part-1
AESD_ASSIGNMENTS_VERSION = 'e807d915ae30619b36bd44ffbd6d38644f568bc4'
AESD_ASSIGNMENTS_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-sergeynv-coursera.git'
AESD_ASSIGNMENTS_SITE_METHOD = git
AESD_ASSIGNMENTS_GIT_SUBMODULES = YES

define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/finder-app all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -d 0755 $(@D)/conf/ $(TARGET_DIR)/etc/finder-app/conf/
	$(INSTALL) -m 0755 $(@D)/conf/* $(TARGET_DIR)/etc/finder-app/conf/
	$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment4/* $(TARGET_DIR)/bin
endef

$(eval $(generic-package))
