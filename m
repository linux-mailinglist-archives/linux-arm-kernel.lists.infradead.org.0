Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D670A72245
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 00:20:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pmRM+tTm3KjFPdFHy7WCdt69AjBqLF4WotcoXSYB4F0=; b=YtjObUTpp6vhGV
	w6HMVoN7wTuz8eVej+39u+FmazbcBqoxcfRjRam3fKXCPQsQMbpuwziElkXoQ2QqcCHVGuiwInwPk
	gKl+4Jp7JJeP2vpyV57LnMjj+gkGJLpHc9nQhkJdMTTyzkJ1nVi70Wd8HKtiQIxUC8Z7eVznJeFmB
	KVhlY1hfL9wCM5T3B5MD64R/GEvHKUJEjULIAUsnE4XFCvcrI+4tolIFocNQSADAI2bVwu7L8ua7G
	Uk/DYvbjxKconLa8lzN6u08PmoLCrump5HXqXMhhe6J2bkQb6Gx3DABDqTzAtfmdm7u5hbYE9iiO1
	5gkwZsI8XW+3IzanZ0rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq39I-0008KU-F6; Tue, 23 Jul 2019 22:20:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hq37v-0006By-6c
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 22:19:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 944E215BF;
 Tue, 23 Jul 2019 15:19:18 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id AC3E63F694;
 Tue, 23 Jul 2019 15:19:16 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 4/7] drivers: Introduce device lookup variants by device
 type
Date: Tue, 23 Jul 2019 23:18:35 +0100
Message-Id: <20190723221838.12024-5-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190723221838.12024-1-suzuki.poulose@arm.com>
References: <20190723221838.12024-1-suzuki.poulose@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_151919_404780_7F801F69 
X-CRM114-Status: GOOD (  15.48  )
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, linux-usb@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 gregkh@linuxfoundation.org, Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 rafael@kernel.org, Heiko Carstens <heiko.carstens@de.ibm.com>,
 Harald Freudenberger <freude@linux.ibm.com>, Oliver Neukum <oneukum@suse.com>,
 Joe Perches <joe@perches.com>, Tomas Winkler <tomas.winkler@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a helper to match a device by its type and provide wrappers
for {bus/class/driver}_find_device() APIs.

Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Harald Freudenberger <freude@linux.ibm.com>
Cc: Heiko Carstens <heiko.carstens@de.ibm.com>
Cc: linux-usb@vger.kernel.org
Cc: Oliver Neukum <oneukum@suse.com>
Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: Tomas Winkler <tomas.winkler@intel.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>
Cc: Joe Perches <joe@perches.com>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 drivers/base/core.c               | 15 ++++++-------
 drivers/hwtracing/intel_th/core.c | 10 +--------
 drivers/misc/mei/main.c           |  9 +-------
 drivers/s390/crypto/zcrypt_api.c  | 11 +--------
 drivers/tty/tty_io.c              |  8 +------
 drivers/usb/core/devio.c          |  8 +------
 include/linux/device.h            | 37 +++++++++++++++++++++++++++++++
 7 files changed, 49 insertions(+), 49 deletions(-)

diff --git a/drivers/base/core.c b/drivers/base/core.c
index e8f81a667545..3abc32b60c0a 100644
--- a/drivers/base/core.c
+++ b/drivers/base/core.c
@@ -2867,13 +2867,6 @@ struct device *device_create_with_groups(struct class *class,
 }
 EXPORT_SYMBOL_GPL(device_create_with_groups);
 
-static int __match_devt(struct device *dev, const void *data)
-{
-	const dev_t *devt = data;
-
-	return dev->devt == *devt;
-}
-
 /**
  * device_destroy - removes a device that was created with device_create()
  * @class: pointer to the struct class that this device was registered with
@@ -2886,7 +2879,7 @@ void device_destroy(struct class *class, dev_t devt)
 {
 	struct device *dev;
 
-	dev = class_find_device(class, NULL, &devt, __match_devt);
+	dev = class_find_device_by_devt(class, devt);
 	if (dev) {
 		put_device(dev);
 		device_unregister(dev);
@@ -3374,3 +3367,9 @@ int device_match_fwnode(struct device *dev, const void *fwnode)
 	return dev_fwnode(dev) == fwnode;
 }
 EXPORT_SYMBOL_GPL(device_match_fwnode);
+
+int device_match_devt(struct device *dev, const void *pdevt)
+{
+	return dev->devt == *(dev_t *)pdevt;
+}
+EXPORT_SYMBOL_GPL(device_match_devt);
diff --git a/drivers/hwtracing/intel_th/core.c b/drivers/hwtracing/intel_th/core.c
index 55922896d862..d5c1821b31c6 100644
--- a/drivers/hwtracing/intel_th/core.c
+++ b/drivers/hwtracing/intel_th/core.c
@@ -789,12 +789,6 @@ static int intel_th_populate(struct intel_th *th)
 	return 0;
 }
 
-static int match_devt(struct device *dev, const void *data)
-{
-	dev_t devt = (dev_t)(unsigned long)(void *)data;
-	return dev->devt == devt;
-}
-
 static int intel_th_output_open(struct inode *inode, struct file *file)
 {
 	const struct file_operations *fops;
@@ -802,9 +796,7 @@ static int intel_th_output_open(struct inode *inode, struct file *file)
 	struct device *dev;
 	int err;
 
-	dev = bus_find_device(&intel_th_bus, NULL,
-			      (void *)(unsigned long)inode->i_rdev,
-			      match_devt);
+	dev = bus_find_device_by_devt(&intel_th_bus, inode->i_rdev);
 	if (!dev || !dev->driver)
 		return -ENODEV;
 
diff --git a/drivers/misc/mei/main.c b/drivers/misc/mei/main.c
index f894d1f8a53e..7310b476323c 100644
--- a/drivers/misc/mei/main.c
+++ b/drivers/misc/mei/main.c
@@ -858,13 +858,6 @@ static ssize_t dev_state_show(struct device *device,
 }
 static DEVICE_ATTR_RO(dev_state);
 
-static int match_devt(struct device *dev, const void *data)
-{
-	const dev_t *devt = data;
-
-	return dev->devt == *devt;
-}
-
 /**
  * dev_set_devstate: set to new device state and notify sysfs file.
  *
@@ -880,7 +873,7 @@ void mei_set_devstate(struct mei_device *dev, enum mei_dev_state state)
 
 	dev->dev_state = state;
 
-	clsdev = class_find_device(mei_class, NULL, &dev->cdev.dev, match_devt);
+	clsdev = class_find_device_by_devt(mei_class, dev->cdev.dev);
 	if (clsdev) {
 		sysfs_notify(&clsdev->kobj, NULL, "dev_state");
 		put_device(clsdev);
diff --git a/drivers/s390/crypto/zcrypt_api.c b/drivers/s390/crypto/zcrypt_api.c
index 38a5a47b8c9c..150f6236c9bb 100644
--- a/drivers/s390/crypto/zcrypt_api.c
+++ b/drivers/s390/crypto/zcrypt_api.c
@@ -133,12 +133,6 @@ struct zcdn_device {
 static int zcdn_create(const char *name);
 static int zcdn_destroy(const char *name);
 
-/* helper function, matches the devt value for find_zcdndev_by_devt() */
-static int __match_zcdn_devt(struct device *dev, const void *data)
-{
-	return dev->devt == *((dev_t *) data);
-}
-
 /*
  * Find zcdn device by name.
  * Returns reference to the zcdn device which needs to be released
@@ -158,10 +152,7 @@ static inline struct zcdn_device *find_zcdndev_by_name(const char *name)
  */
 static inline struct zcdn_device *find_zcdndev_by_devt(dev_t devt)
 {
-	struct device *dev =
-		class_find_device(zcrypt_class, NULL,
-				  (void *) &devt,
-				  __match_zcdn_devt);
+	struct device *dev = class_find_device_by_devt(zcrypt_class, devt);
 
 	return dev ? to_zcdn_dev(dev) : NULL;
 }
diff --git a/drivers/tty/tty_io.c b/drivers/tty/tty_io.c
index 566728fbaf3c..802c1210558f 100644
--- a/drivers/tty/tty_io.c
+++ b/drivers/tty/tty_io.c
@@ -2952,17 +2952,11 @@ void do_SAK(struct tty_struct *tty)
 
 EXPORT_SYMBOL(do_SAK);
 
-static int dev_match_devt(struct device *dev, const void *data)
-{
-	const dev_t *devt = data;
-	return dev->devt == *devt;
-}
-
 /* Must put_device() after it's unused! */
 static struct device *tty_get_device(struct tty_struct *tty)
 {
 	dev_t devt = tty_devnum(tty);
-	return class_find_device(tty_class, NULL, &devt, dev_match_devt);
+	return class_find_device_by_devt(tty_class, devt);
 }
 
 
diff --git a/drivers/usb/core/devio.c b/drivers/usb/core/devio.c
index b265ab5405f9..60268aee93a8 100644
--- a/drivers/usb/core/devio.c
+++ b/drivers/usb/core/devio.c
@@ -942,17 +942,11 @@ static int parse_usbdevfs_streams(struct usb_dev_state *ps,
 	return ret;
 }
 
-static int match_devt(struct device *dev, const void *data)
-{
-	return dev->devt == (dev_t)(unsigned long)(void *)data;
-}
-
 static struct usb_device *usbdev_lookup_by_devt(dev_t devt)
 {
 	struct device *dev;
 
-	dev = bus_find_device(&usb_bus_type, NULL,
-			      (void *) (unsigned long) devt, match_devt);
+	dev = bus_find_device_by_devt(&usb_bus_type, devt);
 	if (!dev)
 		return NULL;
 	return to_usb_device(dev);
diff --git a/include/linux/device.h b/include/linux/device.h
index 7133fc1c285d..93b2f55ef44e 100644
--- a/include/linux/device.h
+++ b/include/linux/device.h
@@ -167,6 +167,7 @@ void subsys_dev_iter_exit(struct subsys_dev_iter *iter);
 int device_match_name(struct device *dev, const void *name);
 int device_match_of_node(struct device *dev, const void *np);
 int device_match_fwnode(struct device *dev, const void *fwnode);
+int device_match_devt(struct device *dev, const void *pdevt);
 
 int bus_for_each_dev(struct bus_type *bus, struct device *start, void *data,
 		     int (*fn)(struct device *dev, void *data));
@@ -211,6 +212,18 @@ bus_find_device_by_fwnode(struct bus_type *bus, const struct fwnode_handle *fwno
 	return bus_find_device(bus, NULL, fwnode, device_match_fwnode);
 }
 
+/**
+ * bus_find_device_by_devt : device iterator for locating a particular device
+ * matching the device type.
+ * @bus: bus type
+ * @devt: device type of the device to match.
+ */
+static inline struct device *bus_find_device_by_devt(struct bus_type *bus,
+						     dev_t devt)
+{
+	return bus_find_device(bus, NULL, &devt, device_match_devt);
+}
+
 struct device *subsys_find_device_by_id(struct bus_type *bus, unsigned int id,
 					struct device *hint);
 int bus_for_each_drv(struct bus_type *bus, struct device_driver *start,
@@ -417,6 +430,18 @@ driver_find_device_by_fwnode(struct device_driver *drv,
 	return driver_find_device(drv, NULL, fwnode, device_match_fwnode);
 }
 
+/**
+ * driver_find_device_by_devt- device iterator for locating a particular device
+ * by devt.
+ * @driver: the driver we're iterating
+ * @devt: devt pointer to match.
+ */
+static inline struct device *driver_find_device_by_devt(struct device_driver *drv,
+							dev_t devt)
+{
+	return driver_find_device(drv, NULL, &devt, device_match_devt);
+}
+
 void driver_deferred_probe_add(struct device *dev);
 int driver_deferred_probe_check_state(struct device *dev);
 int driver_deferred_probe_check_state_continue(struct device *dev);
@@ -583,6 +608,18 @@ class_find_device_by_fwnode(struct class *class,
 	return class_find_device(class, NULL, fwnode, device_match_fwnode);
 }
 
+/**
+ * class_find_device_by_devt : device iterator for locating a particular device
+ * matching the device type.
+ * @class: class type
+ * @devt: device type of the device to match.
+ */
+static inline struct device *class_find_device_by_devt(struct class *class,
+						       dev_t devt)
+{
+	return class_find_device(class, NULL, &devt, device_match_devt);
+}
+
 struct class_attribute {
 	struct attribute attr;
 	ssize_t (*show)(struct class *class, struct class_attribute *attr,
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
