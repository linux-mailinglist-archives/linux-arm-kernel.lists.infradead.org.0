Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 980D210D90E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 18:26:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0lgx3DOSCRFmRZpdwGUela3mTMYnM8iLsPXp3OWvLEo=; b=VS8dNR5ErKjqks
	4aWMbFBnoI3VtBET8+boeVaVhJpnvJBcPkx4C9b5+0zuZcJWAc4wATi9DjbZWYf2bT+GNTBBDiu8a
	I8uUbnIwY1hlLlSNcpYldLL9SYqbo7DuYK+MncI/aB2hhHuIeaGJa0zpzZlWECsr0nsOtrWsIrzDO
	bWKM1Rk/M7dx6o4gwqbL0N4C1VI+RZHx/XH8o3Cp2rvUteLo1BG+e0cv8IGsjbabjA5gI8NnNu6OY
	iWgqArE7hriEv7latZ3iqv1SjOZ4wPqIbqW+Zq6bRc4i5yvEs6ppQi/5xB7wMh4v8WVIJnI31oosK
	R8wLwNf6agvZHKQBrD1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iak2j-0005HJ-62; Fri, 29 Nov 2019 17:26:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iak1e-0004XC-21
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 17:25:54 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iak1U-0003D7-N3; Fri, 29 Nov 2019 18:25:40 +0100
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iak1S-0003AR-Ll; Fri, 29 Nov 2019 18:25:38 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: support.opensource@diasemi.com, lee.jones@linaro.org, robh+dt@kernel.org,
 linus.walleij@linaro.org, bgolaszewski@baylibre.com, joel@jms.id.au,
 andrew@aj.id.au, lgirdwood@gmail.com, broonie@kernel.org
Subject: [PATCH v3 2/6] gpio: make gpiod_to_offset() available for other users
Date: Fri, 29 Nov 2019 18:25:33 +0100
Message-Id: <20191129172537.31410-3-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191129172537.31410-1-m.felsch@pengutronix.de>
References: <20191129172537.31410-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_092550_121416_D49C7C54 
X-CRM114-Status: GOOD (  21.05  )
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
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently gpiod_to_offset() is a gpio-subsystem private function which
is used by the gpiolib itself and by the aspeed gpio driver. The time
has shown that there are other drivers as well which need this
information in some special cases e.g. MFD drivers. The patch makes the
function public but you need to explicit add the <linux/gpio/private.h>
include. See discussion [1] for more information.

[1] https://lkml.org/lkml/2019/11/27/357

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
v3:
- former patch description was "gpio: add support to get local gpio number"
- adapt commit message and description to reflect new state
- don't add wrapper instead use the already existing gpiod_to_offset
- move gpiod_to_offset from gpiolib.h into gpiolib.c
- move declaration into linux/gpio/private.h
---
 drivers/gpio/gpio-aspeed.c   | 11 +++++------
 drivers/gpio/gpiolib-sysfs.c |  1 +
 drivers/gpio/gpiolib.c       | 22 ++++++++++++++++++++++
 drivers/gpio/gpiolib.h       |  8 --------
 include/linux/gpio/private.h | 27 +++++++++++++++++++++++++++
 5 files changed, 55 insertions(+), 14 deletions(-)
 create mode 100644 include/linux/gpio/private.h

diff --git a/drivers/gpio/gpio-aspeed.c b/drivers/gpio/gpio-aspeed.c
index b1d1d39e5174..e10ebad6853a 100644
--- a/drivers/gpio/gpio-aspeed.c
+++ b/drivers/gpio/gpio-aspeed.c
@@ -20,13 +20,12 @@
 #include <linux/string.h>
 
 /*
- * These two headers aren't meant to be used by GPIO drivers. We need
- * them in order to access gpiod_to_offset() which we need to implement
- * the aspeed specific API which allows the coprocessor to request
- * access to some GPIOs and to arbitrate between coprocessor and ARM.
+ * The header isn't meant to be used by GPIO drivers. We need it in order to
+ * access gpiod_to_offset() which we need to implement the aspeed specific API
+ * which allows the coprocessor to request access to some GPIOs and to
+ * arbitrate between coprocessor and ARM.
  */
-#include <linux/gpio/consumer.h>
-#include "gpiolib.h"
+#include <linux/gpio/private.h>
 
 struct aspeed_bank_props {
 	unsigned int bank;
diff --git a/drivers/gpio/gpiolib-sysfs.c b/drivers/gpio/gpiolib-sysfs.c
index d4cab6a80928..367db78bb58c 100644
--- a/drivers/gpio/gpiolib-sysfs.c
+++ b/drivers/gpio/gpiolib-sysfs.c
@@ -5,6 +5,7 @@
 #include <linux/sysfs.h>
 #include <linux/gpio/consumer.h>
 #include <linux/gpio/driver.h>
+#include <linux/gpio/private.h>
 #include <linux/interrupt.h>
 #include <linux/kdev_t.h>
 #include <linux/slab.h>
diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 548cf41c6179..197cac0e3e99 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -150,6 +150,28 @@ struct gpio_desc *gpiochip_get_desc(struct gpio_chip *chip,
 	return &gdev->descs[hwnum];
 }
 
+/**
+ * gpiod_to_offset - obtain the local GPIO number from a global unique
+ *		     descriptor
+ * @desc:	     gpio whose local gpio number should be returned
+ *
+ * It converts the global unique descriptor into the gpio chip local gpio
+ * number. This can be useful if you need to do further device configuration
+ * e.g. for a MFD. Use this function with caution. You will get a wrong number
+ * if you pass the wrong descriptor.
+ *
+ * Return:
+ * * the GPIO number of the passed descriptor relative to its chip
+ * * -EINVAL if desc is invalid or NULL
+ */
+int gpiod_to_offset(const struct gpio_desc *desc)
+{
+	if (IS_ERR_OR_NULL(desc))
+		return -EINVAL;
+	return desc - &desc->gdev->descs[0];
+}
+EXPORT_SYMBOL_GPL(gpiod_to_offset);
+
 /**
  * desc_to_gpio - convert a GPIO descriptor to the integer namespace
  * @desc: GPIO descriptor
diff --git a/drivers/gpio/gpiolib.h b/drivers/gpio/gpiolib.h
index a7f93ce6e114..a586a793b084 100644
--- a/drivers/gpio/gpiolib.h
+++ b/drivers/gpio/gpiolib.h
@@ -124,14 +124,6 @@ int gpiod_configure_flags(struct gpio_desc *desc, const char *con_id,
 int gpiod_hog(struct gpio_desc *desc, const char *name,
 		unsigned long lflags, enum gpiod_flags dflags);
 
-/*
- * Return the GPIO number of the passed descriptor relative to its chip
- */
-static inline int gpiod_to_offet(const struct gpio_desc *desc)
-{
-	return desc - &desc->gdev->descs[0];
-}
-
 /* With descriptor prefix */
 
 #define gpiod_emerg(desc, fmt, ...)					       \
diff --git a/include/linux/gpio/private.h b/include/linux/gpio/private.h
new file mode 100644
index 000000000000..56514bdcfac6
--- /dev/null
+++ b/include/linux/gpio/private.h
@@ -0,0 +1,27 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Functions listed here should be used with caution. Mostly those functions are
+ * used by the gpiolib internally. But the time has shown that some special
+ * drivers needs access to these helpers too.
+ */
+#ifndef __LINUX_GPIO_PRIVATE_H
+#define __LINUX_GPIO_PRIVATE_H
+
+struct gpio_desc;
+
+#ifdef CONFIG_GPIOLIB
+
+int gpiod_to_offset(const struct gpio_desc *desc);
+
+#else /* CONFIG_GPIOLIB */
+
+static inline int gpiod_to_offset(const struct gpio_desc *desc)
+{
+	/* GPIO can never have been requested */
+	WARN_ON(desc);
+	return 0;
+}
+
+#endif /* CONFIG_GPIOLIB */
+
+#endif /* __LINUX_GPIO_PRIVATE_H */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
