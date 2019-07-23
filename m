Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59AD772228
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 00:19:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y1S+ZZ3O99mzZgQsuPDrSV9LZ/CWQZLYl6O3SqK7QIU=; b=pflj4OXvLedUBY
	ipbSTkXDI9y2IV9UpUZjwpqAYVeINKg2UNPQoOaiX9fKVuujwebOAGFCXFH/dbwdv1rxzfitcJ/7d
	NPPyx62ggQzLk+A1eq62bLzyS3LtuxUTjTPP+eaD4F/1qRRBitdlZGeXtVJFF2Jai6BXEpBM6DtSc
	pvqjZyuEkiak0d8D7FnnEm1US6tOmidR2iuvBbMmSlMvnDbltxtQjtVN6jZdNmdz53peVj/2YhACa
	+apxYlzXTXPwwRdk7DKqeYWglprKd9z8BwAfu+a+f501cFTp3rduIwdIpB7MQDQ5+DvXpgOGYf3fX
	ZmYdT1ISJveGRm3jV8Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq384-00067w-94; Tue, 23 Jul 2019 22:19:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hq37n-00065x-9I
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 22:19:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0834C1596;
 Tue, 23 Jul 2019 15:19:10 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id DD7DD3F694;
 Tue, 23 Jul 2019 15:19:06 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/7] drivers: Introduce device lookup variants by name
Date: Tue, 23 Jul 2019 23:18:32 +0100
Message-Id: <20190723221838.12024-2-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190723221838.12024-1-suzuki.poulose@arm.com>
References: <20190723221838.12024-1-suzuki.poulose@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_151911_434118_70C9932F 
X-CRM114-Status: GOOD (  18.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Alexander Aring <alex.aring@gmail.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, rafael@kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, Pavel Machek <pavel@ucw.cz>,
 Lee Jones <lee.jones@linaro.org>, linux-leds@vger.kernel.org,
 linux-rtc@vger.kernel.org, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Stefan Schmidt <stefan@datenfreihafen.org>, Arnd Bergmann <arnd@arndb.de>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Harald Freudenberger <freude@linux.ibm.com>, Dan Murphy <dmurphy@ti.com>,
 linux-arm-kernel@lists.infradead.org, Alessandro Zummo <a.zummo@towertech.it>,
 gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 Peter Oberparleiter <oberpar@linux.ibm.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, linux-wpan@vger.kernel.org,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a helper to match the device name for device lookup. Also
reuse this generic exported helper for the existing bus_find_device_by_name().
and add similar variants for driver/class.

Cc: Alessandro Zummo <a.zummo@towertech.it>
Cc: Alexander Aring <alex.aring@gmail.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Dan Murphy <dmurphy@ti.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Harald Freudenberger <freude@linux.ibm.com>
Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: Heiko Carstens <heiko.carstens@de.ibm.com>
Cc: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Cc: Lee Jones <lee.jones@linaro.org>
Cc: linux-leds@vger.kernel.org
Cc: linux-rtc@vger.kernel.org
Cc: linux-usb@vger.kernel.org
Cc: linux-wpan@vger.kernel.org
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Pavel Machek <pavel@ucw.cz>
Cc: Peter Oberparleiter <oberpar@linux.ibm.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>
Cc: Stefan Schmidt <stefan@datenfreihafen.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 drivers/base/bus.c               | 24 ------------------
 drivers/base/core.c              |  6 +++++
 drivers/hwtracing/stm/core.c     |  9 +------
 drivers/leds/led-class.c         |  9 +------
 drivers/rtc/interface.c          | 11 +--------
 drivers/s390/cio/ccwgroup.c      | 10 +-------
 drivers/s390/cio/device.c        | 15 +-----------
 drivers/s390/crypto/zcrypt_api.c | 11 +--------
 drivers/usb/roles/class.c        |  8 +-----
 drivers/usb/typec/class.c        |  8 +-----
 include/linux/device.h           | 42 +++++++++++++++++++++++++++++---
 net/ieee802154/core.c            |  7 +-----
 12 files changed, 54 insertions(+), 106 deletions(-)

diff --git a/drivers/base/bus.c b/drivers/base/bus.c
index df3cac739813..a1d1e8256324 100644
--- a/drivers/base/bus.c
+++ b/drivers/base/bus.c
@@ -342,30 +342,6 @@ struct device *bus_find_device(struct bus_type *bus,
 }
 EXPORT_SYMBOL_GPL(bus_find_device);
 
-static int match_name(struct device *dev, const void *data)
-{
-	const char *name = data;
-
-	return sysfs_streq(name, dev_name(dev));
-}
-
-/**
- * bus_find_device_by_name - device iterator for locating a particular device of a specific name
- * @bus: bus type
- * @start: Device to begin with
- * @name: name of the device to match
- *
- * This is similar to the bus_find_device() function above, but it handles
- * searching by a name automatically, no need to write another strcmp matching
- * function.
- */
-struct device *bus_find_device_by_name(struct bus_type *bus,
-				       struct device *start, const char *name)
-{
-	return bus_find_device(bus, start, (void *)name, match_name);
-}
-EXPORT_SYMBOL_GPL(bus_find_device_by_name);
-
 /**
  * subsys_find_device_by_id - find a device with a specific enumeration number
  * @subsys: subsystem
diff --git a/drivers/base/core.c b/drivers/base/core.c
index da84a73f2ba6..fb83647d685a 100644
--- a/drivers/base/core.c
+++ b/drivers/base/core.c
@@ -3357,6 +3357,12 @@ void device_set_of_node_from_dev(struct device *dev, const struct device *dev2)
 }
 EXPORT_SYMBOL_GPL(device_set_of_node_from_dev);
 
+int device_match_name(struct device *dev, const void *name)
+{
+	return sysfs_streq(dev_name(dev), name);
+}
+EXPORT_SYMBOL_GPL(device_match_name);
+
 int device_match_of_node(struct device *dev, const void *np)
 {
 	return dev->of_node == np;
diff --git a/drivers/hwtracing/stm/core.c b/drivers/hwtracing/stm/core.c
index e55b902560de..2b6bd42632e8 100644
--- a/drivers/hwtracing/stm/core.c
+++ b/drivers/hwtracing/stm/core.c
@@ -89,13 +89,6 @@ static struct class stm_class = {
 	.dev_groups	= stm_groups,
 };
 
-static int stm_dev_match(struct device *dev, const void *data)
-{
-	const char *name = data;
-
-	return sysfs_streq(name, dev_name(dev));
-}
-
 /**
  * stm_find_device() - find stm device by name
  * @buf:	character buffer containing the name
@@ -116,7 +109,7 @@ struct stm_device *stm_find_device(const char *buf)
 	if (!stm_core_up)
 		return NULL;
 
-	dev = class_find_device(&stm_class, NULL, buf, stm_dev_match);
+	dev = class_find_device_by_name(&stm_class, buf);
 	if (!dev)
 		return NULL;
 
diff --git a/drivers/leds/led-class.c b/drivers/leds/led-class.c
index 4793e77808e2..d54c8e4d8954 100644
--- a/drivers/leds/led-class.c
+++ b/drivers/leds/led-class.c
@@ -213,13 +213,6 @@ static int led_resume(struct device *dev)
 
 static SIMPLE_DEV_PM_OPS(leds_class_dev_pm_ops, led_suspend, led_resume);
 
-static int match_name(struct device *dev, const void *data)
-{
-	if (!dev_name(dev))
-		return 0;
-	return !strcmp(dev_name(dev), (char *)data);
-}
-
 static int led_classdev_next_name(const char *init_name, char *name,
 				  size_t len)
 {
@@ -230,7 +223,7 @@ static int led_classdev_next_name(const char *init_name, char *name,
 	strlcpy(name, init_name, len);
 
 	while ((ret < len) &&
-	       (dev = class_find_device(leds_class, NULL, name, match_name))) {
+	       (dev = class_find_device_by_name(leds_class, name))) {
 		put_device(dev);
 		ret = snprintf(name, len, "%s_%u", init_name, ++i);
 	}
diff --git a/drivers/rtc/interface.c b/drivers/rtc/interface.c
index 72b7ddc43116..c93ef33b01d3 100644
--- a/drivers/rtc/interface.c
+++ b/drivers/rtc/interface.c
@@ -663,21 +663,12 @@ void rtc_update_irq(struct rtc_device *rtc,
 }
 EXPORT_SYMBOL_GPL(rtc_update_irq);
 
-static int __rtc_match(struct device *dev, const void *data)
-{
-	const char *name = data;
-
-	if (strcmp(dev_name(dev), name) == 0)
-		return 1;
-	return 0;
-}
-
 struct rtc_device *rtc_class_open(const char *name)
 {
 	struct device *dev;
 	struct rtc_device *rtc = NULL;
 
-	dev = class_find_device(rtc_class, NULL, name, __rtc_match);
+	dev = class_find_device_by_name(rtc_class, name);
 	if (dev)
 		rtc = to_rtc_device(dev);
 
diff --git a/drivers/s390/cio/ccwgroup.c b/drivers/s390/cio/ccwgroup.c
index c522e9313c50..d843e362c167 100644
--- a/drivers/s390/cio/ccwgroup.c
+++ b/drivers/s390/cio/ccwgroup.c
@@ -608,13 +608,6 @@ void ccwgroup_driver_unregister(struct ccwgroup_driver *cdriver)
 }
 EXPORT_SYMBOL(ccwgroup_driver_unregister);
 
-static int __ccwgroupdev_check_busid(struct device *dev, const void *id)
-{
-	const char *bus_id = id;
-
-	return (strcmp(bus_id, dev_name(dev)) == 0);
-}
-
 /**
  * get_ccwgroupdev_by_busid() - obtain device from a bus id
  * @gdrv: driver the device is owned by
@@ -631,8 +624,7 @@ struct ccwgroup_device *get_ccwgroupdev_by_busid(struct ccwgroup_driver *gdrv,
 {
 	struct device *dev;
 
-	dev = driver_find_device(&gdrv->driver, NULL, bus_id,
-				 __ccwgroupdev_check_busid);
+	dev = driver_find_device_by_name(&gdrv->driver, bus_id);
 
 	return dev ? to_ccwgroupdev(dev) : NULL;
 }
diff --git a/drivers/s390/cio/device.c b/drivers/s390/cio/device.c
index c421899be20f..131430bd48d9 100644
--- a/drivers/s390/cio/device.c
+++ b/drivers/s390/cio/device.c
@@ -1695,18 +1695,6 @@ int ccw_device_force_console(struct ccw_device *cdev)
 EXPORT_SYMBOL_GPL(ccw_device_force_console);
 #endif
 
-/*
- * get ccw_device matching the busid, but only if owned by cdrv
- */
-static int
-__ccwdev_check_busid(struct device *dev, const void *id)
-{
-	const char *bus_id = id;
-
-	return (strcmp(bus_id, dev_name(dev)) == 0);
-}
-
-
 /**
  * get_ccwdev_by_busid() - obtain device from a bus id
  * @cdrv: driver the device is owned by
@@ -1723,8 +1711,7 @@ struct ccw_device *get_ccwdev_by_busid(struct ccw_driver *cdrv,
 {
 	struct device *dev;
 
-	dev = driver_find_device(&cdrv->driver, NULL, (void *)bus_id,
-				 __ccwdev_check_busid);
+	dev = driver_find_device_by_name(&cdrv->driver, bus_id);
 
 	return dev ? to_ccwdev(dev) : NULL;
 }
diff --git a/drivers/s390/crypto/zcrypt_api.c b/drivers/s390/crypto/zcrypt_api.c
index 1058b4b5cc1e..38a5a47b8c9c 100644
--- a/drivers/s390/crypto/zcrypt_api.c
+++ b/drivers/s390/crypto/zcrypt_api.c
@@ -133,12 +133,6 @@ struct zcdn_device {
 static int zcdn_create(const char *name);
 static int zcdn_destroy(const char *name);
 
-/* helper function, matches the name for find_zcdndev_by_name() */
-static int __match_zcdn_name(struct device *dev, const void *data)
-{
-	return strcmp(dev_name(dev), (const char *)data) == 0;
-}
-
 /* helper function, matches the devt value for find_zcdndev_by_devt() */
 static int __match_zcdn_devt(struct device *dev, const void *data)
 {
@@ -152,10 +146,7 @@ static int __match_zcdn_devt(struct device *dev, const void *data)
  */
 static inline struct zcdn_device *find_zcdndev_by_name(const char *name)
 {
-	struct device *dev =
-		class_find_device(zcrypt_class, NULL,
-				  (void *) name,
-				  __match_zcdn_name);
+	struct device *dev = class_find_device_by_name(zcrypt_class, name);
 
 	return dev ? to_zcdn_dev(dev) : NULL;
 }
diff --git a/drivers/usb/roles/class.c b/drivers/usb/roles/class.c
index 86defca6623e..c8efe60e2465 100644
--- a/drivers/usb/roles/class.c
+++ b/drivers/usb/roles/class.c
@@ -90,11 +90,6 @@ static int switch_fwnode_match(struct device *dev, const void *fwnode)
 	return dev_fwnode(dev) == fwnode;
 }
 
-static int switch_name_match(struct device *dev, const void *name)
-{
-	return !strcmp((const char *)name, dev_name(dev));
-}
-
 static void *usb_role_switch_match(struct device_connection *con, int ep,
 				   void *data)
 {
@@ -107,8 +102,7 @@ static void *usb_role_switch_match(struct device_connection *con, int ep,
 		dev = class_find_device(role_class, NULL, con->fwnode,
 					switch_fwnode_match);
 	} else {
-		dev = class_find_device(role_class, NULL, con->endpoint[ep],
-					switch_name_match);
+		dev = class_find_device_by_name(role_class, con->endpoint[ep]);
 	}
 
 	return dev ? to_role_switch(dev) : ERR_PTR(-EPROBE_DEFER);
diff --git a/drivers/usb/typec/class.c b/drivers/usb/typec/class.c
index a18285a990a8..9b0d15b487e5 100644
--- a/drivers/usb/typec/class.c
+++ b/drivers/usb/typec/class.c
@@ -210,11 +210,6 @@ static int typec_port_fwnode_match(struct device *dev, const void *fwnode)
 	return dev_fwnode(dev) == fwnode;
 }
 
-static int typec_port_name_match(struct device *dev, const void *name)
-{
-	return !strcmp((const char *)name, dev_name(dev));
-}
-
 static void *typec_port_match(struct device_connection *con, int ep, void *data)
 {
 	struct device *dev;
@@ -227,8 +222,7 @@ static void *typec_port_match(struct device_connection *con, int ep, void *data)
 		return class_find_device(typec_class, NULL, con->fwnode,
 					 typec_port_fwnode_match);
 
-	dev = class_find_device(typec_class, NULL, con->endpoint[ep],
-				typec_port_name_match);
+	dev = class_find_device_by_name(typec_class, con->endpoint[ep]);
 
 	return dev ? dev : ERR_PTR(-EPROBE_DEFER);
 }
diff --git a/include/linux/device.h b/include/linux/device.h
index c330b75c6c57..3ba376b8b456 100644
--- a/include/linux/device.h
+++ b/include/linux/device.h
@@ -164,6 +164,7 @@ void subsys_dev_iter_init(struct subsys_dev_iter *iter,
 struct device *subsys_dev_iter_next(struct subsys_dev_iter *iter);
 void subsys_dev_iter_exit(struct subsys_dev_iter *iter);
 
+int device_match_name(struct device *dev, const void *name);
 int device_match_of_node(struct device *dev, const void *np);
 
 int bus_for_each_dev(struct bus_type *bus, struct device *start, void *data,
@@ -171,9 +172,20 @@ int bus_for_each_dev(struct bus_type *bus, struct device *start, void *data,
 struct device *bus_find_device(struct bus_type *bus, struct device *start,
 			       const void *data,
 			       int (*match)(struct device *dev, const void *data));
-struct device *bus_find_device_by_name(struct bus_type *bus,
-				       struct device *start,
-				       const char *name);
+/**
+ * bus_find_device_by_name - device iterator for locating a particular device
+ * of a specific name.
+ * @bus: bus type
+ * @start: Device to begin with
+ * @name: name of the device to match
+ */
+static inline struct device *bus_find_device_by_name(struct bus_type *bus,
+						     struct device *start,
+						     const char *name)
+{
+	return bus_find_device(bus, start, name, device_match_name);
+}
+
 struct device *subsys_find_device_by_id(struct bus_type *bus, unsigned int id,
 					struct device *hint);
 int bus_for_each_drv(struct bus_type *bus, struct device_driver *start,
@@ -342,6 +354,18 @@ struct device *driver_find_device(struct device_driver *drv,
 				  struct device *start, const void *data,
 				  int (*match)(struct device *dev, const void *data));
 
+/**
+ * driver_find_device_by_name - device iterator for locating a particular device
+ * of a specific name.
+ * @driver: the driver we're iterating
+ * @name: name of the device to match
+ */
+static inline struct device *driver_find_device_by_name(struct device_driver *drv,
+							const char *name)
+{
+	return driver_find_device(drv, NULL, name, device_match_name);
+}
+
 void driver_deferred_probe_add(struct device *dev);
 int driver_deferred_probe_check_state(struct device *dev);
 int driver_deferred_probe_check_state_continue(struct device *dev);
@@ -471,6 +495,18 @@ extern struct device *class_find_device(struct class *class,
 					struct device *start, const void *data,
 					int (*match)(struct device *, const void *));
 
+/**
+ * class_find_device_by_name - device iterator for locating a particular device
+ * of a specific name.
+ * @class: class type
+ * @name: name of the device to match
+ */
+static inline struct device *class_find_device_by_name(struct class *class,
+						       const char *name)
+{
+	return class_find_device(class, NULL, name, device_match_name);
+}
+
 struct class_attribute {
 	struct attribute attr;
 	ssize_t (*show)(struct class *class, struct class_attribute *attr,
diff --git a/net/ieee802154/core.c b/net/ieee802154/core.c
index 60b7ac56a1f5..de259b5170ab 100644
--- a/net/ieee802154/core.c
+++ b/net/ieee802154/core.c
@@ -23,11 +23,6 @@
 LIST_HEAD(cfg802154_rdev_list);
 int cfg802154_rdev_list_generation;
 
-static int wpan_phy_match(struct device *dev, const void *data)
-{
-	return !strcmp(dev_name(dev), (const char *)data);
-}
-
 struct wpan_phy *wpan_phy_find(const char *str)
 {
 	struct device *dev;
@@ -35,7 +30,7 @@ struct wpan_phy *wpan_phy_find(const char *str)
 	if (WARN_ON(!str))
 		return NULL;
 
-	dev = class_find_device(&wpan_phy_class, NULL, str, wpan_phy_match);
+	dev = class_find_device_by_name(&wpan_phy_class, str);
 	if (!dev)
 		return NULL;
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
