DASH_HA_VERSION = 1.0.0
DASH_HA_NAME = dash-ha

DASH_HA = $(DASH_HA_NAME)_$(DASH_HA_VERSION)_$(CONFIGURED_ARCH).deb
$(DASH_HA)_SRC_PATH = $(SRC_PATH)/sonic-dash-ha
$(DASH_HA)_VERSION = $(DASH_HA_VERSION)
$(DASH_HA)_NAME = $(DASH_HA_NAME)
$(DASH_HA)_DEPENDS = $(LIBSWSSCOMMON_DEV)
$(DASH_HA)_RDEPENDS = $(LIBSWSSCOMMON)

SONIC_DPKG_DEBS += $(DASH_HA)

DASH_HA_DBG = $(DASH_HA_NAME)-dbgsym_$(DASH_HA_VERSION)_$(CONFIGURED_ARCH).deb
$(eval $(call add_derived_package,$(DASH_HA),$(DASH_HA_DBG)))
