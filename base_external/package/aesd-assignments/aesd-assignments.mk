
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

# Repo:    assignments-3-and-later-sergeynv-coursera
# Commit:  envsetup.sh: set AELD_ASSIGNMENTS_DIR
# https://github.com/cu-ecen-aeld/assignments-3-and-later-sergeynv-coursera/commit/da2885dcd61f74e377554afd1cc4b9280475dd7b
AESD_ASSIGNMENTS_VERSION = 'da2885dcd61f74e377554afd1cc4b9280475dd7b'
AESD_ASSIGNMENTS_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-sergeynv-coursera.git'
AESD_ASSIGNMENTS_SITE_METHOD = git
AESD_ASSIGNMENTS_GIT_SUBMODULES = YES

# May want/need to run the following first:
# sudo ln -sf $(realpath "${AESD_ASSIGNMENTS_DIR}/..") /aeld
# AESD_ASSIGNMENTS_OVERRIDE_SRCDIR = '/aeld/assignments/'

# Really need to 'make clean'?
# (E.g. in case we are using _OVERRIDE_SRCDIR where we build with a different toolchain?)
define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/finder-app clean
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/finder-app all
endef


# Add writer, finder and finder-test utilities/scripts.
# TODO(sergeynv): writer aso needs "/lib/ld-linux-aarch64.so.1" and "libc.so.6" which are currently missing!
define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755   $(@D)/finder-app/finder.sh       $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755   $(@D)/finder-app/finder-test.sh  $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755   $(@D)/finder-app/writer          $(TARGET_DIR)/usr/bin

	$(INSTALL) -d 0755   $(@D)/conf/   $(TARGET_DIR)/etc/finder-app/conf/
	$(INSTALL) -m 0755   $(@D)/conf/*  $(TARGET_DIR)/etc/finder-app/conf/

	$(INSTALL) -m 0755   $(@D)/assignment-autotest/test/assignment4/*  $(TARGET_DIR)/bin
endef

$(eval $(generic-package))
