
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

# Repo:    assignments-3-and-later-sergeynv-coursera
# Commit:  [a4-p2] finder-test.sh: write output to /tmp/assignmentX-result.txt
# https://github.com/cu-ecen-aeld/assignments-3-and-later-sergeynv-coursera/commit/7ff398383c24a27ff463040fc8017e2ca8afd251
AESD_ASSIGNMENTS_VERSION = '7ff398383c24a27ff463040fc8017e2ca8afd251'
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
