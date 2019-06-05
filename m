Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CF2F359A9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 11:28:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ryl8HU6TqaN8hmuILQ+PPWmtGCuO00AeenFcxaQvUkU=; b=MCEYB7kHDMrpgw
	um8QGlFjVX4KrhMlvhhpYB660l+WpDzGuy5nvjiYTwI2DRdXoXoehv09VcM+1rU7ohQ0RIhoS72Gz
	iQElezQlyh26+kC4G61guHA0WDwiXw5V3LrujJsjfCfGy9clyEqXRmXGL4YPvo1wgSsJKZw3QVePl
	6KSmEsmyfmb+nFQdZQya6/tQefiAlcJJVTapcrYPPyIPki8GKBryK1dD9SmnsWMFkYnewoZdKku5i
	AAFMr9YpWU1U/DRHKqe+aOvQU8dch1vmOps4ennBvPWwsCyGbT99lL6cwKQ418Qn5BcXKwT/VF0GQ
	TotQ6fZIOjliuXqK9ufg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYSDb-0000Se-2g; Wed, 05 Jun 2019 09:28:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYSDT-0000S7-Kj; Wed, 05 Jun 2019 09:28:21 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B1F8A20717;
 Wed,  5 Jun 2019 09:28:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559726899;
 bh=O8jFUaIHNHhFCwSgoimMNeuJKeLFh5boOF6WLICbEpQ=;
 h=Date:From:To:Cc:Subject:From;
 b=FiXrtfdl7Ez5iV/gHP9vjJGmvSqImAYHTPZMEwXuX9HgOC/7EXQ808E925fUEXosr
 iOb5iAspD+AXB3OFxxpTeLoITqiwdnamIjK7cQO3haA6ZcV5k4vUZpJ+fvUTFBm9k5
 FjZG1lzSn/o1kMfIytjRy87EU7xcqMFEKWY8rP2k=
Date: Wed, 5 Jun 2019 11:28:16 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Felipe Balbi <felipe.balbi@linux.intel.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: [PATCH v2] USB: move usb debugfs directory creation to the usb
 common core
Message-ID: <20190605092816.GA23758@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_022819_777247_251BD25B 
X-CRM114-Status: GOOD (  16.85  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The USB gadget subsystem wants to use the USB debugfs root directory, so
move it to the common "core" USB code so that it is properly initialized
and removed as needed.

In order to properly do this, we need to load the common code before the
usb core code, when everything is linked into the kernel, so reorder the
link order of the code.

Also as the usb common code has the possibility of the led trigger logic
to be merged into it, handle the build option properly by only having
one module init/exit function and have the common code initialize the
led trigger if needed.

Reported-by: From: Chunfeng Yun <chunfeng.yun@mediatek.com>
Cc: Felipe Balbi <felipe.balbi@linux.intel.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---

Chunfeng, can you test this version to verify it works for you when
building the code into the kernel?

v2: handle led common code link error reported by kbuild
    handle subsys_initcall issue pointed out by Chunfeng

 drivers/usb/Makefile        |  3 +--
 drivers/usb/common/common.c | 21 +++++++++++++++++++++
 drivers/usb/common/common.h | 14 ++++++++++++++
 drivers/usb/common/led.c    |  9 +++------
 drivers/usb/core/usb.c      | 10 ++++------
 5 files changed, 43 insertions(+), 14 deletions(-)
 create mode 100644 drivers/usb/common/common.h

diff --git a/drivers/usb/Makefile b/drivers/usb/Makefile
index 7d1b8c82b208..ecc2de1ffaae 100644
--- a/drivers/usb/Makefile
+++ b/drivers/usb/Makefile
@@ -5,6 +5,7 @@
 
 # Object files in subdirectories
 
+obj-$(CONFIG_USB_COMMON)	+= common/
 obj-$(CONFIG_USB)		+= core/
 obj-$(CONFIG_USB_SUPPORT)	+= phy/
 
@@ -60,8 +61,6 @@ obj-$(CONFIG_USB_CHIPIDEA)	+= chipidea/
 obj-$(CONFIG_USB_RENESAS_USBHS)	+= renesas_usbhs/
 obj-$(CONFIG_USB_GADGET)	+= gadget/
 
-obj-$(CONFIG_USB_COMMON)	+= common/
-
 obj-$(CONFIG_USBIP_CORE)	+= usbip/
 
 obj-$(CONFIG_TYPEC)		+= typec/
diff --git a/drivers/usb/common/common.c b/drivers/usb/common/common.c
index 18f5dcf58b0d..84a4423aaddf 100644
--- a/drivers/usb/common/common.c
+++ b/drivers/usb/common/common.c
@@ -15,6 +15,8 @@
 #include <linux/usb/of.h>
 #include <linux/usb/otg.h>
 #include <linux/of_platform.h>
+#include <linux/debugfs.h>
+#include "common.h"
 
 static const char *const ep_type_names[] = {
 	[USB_ENDPOINT_XFER_CONTROL] = "ctrl",
@@ -291,4 +293,23 @@ struct device *usb_of_get_companion_dev(struct device *dev)
 EXPORT_SYMBOL_GPL(usb_of_get_companion_dev);
 #endif
 
+struct dentry *usb_debug_root;
+EXPORT_SYMBOL_GPL(usb_debug_root);
+
+static int usb_common_init(void)
+{
+	usb_debug_root = debugfs_create_dir("usb", NULL);
+	ledtrig_usb_init();
+	return 0;
+}
+
+static void usb_common_exit(void)
+{
+	ledtrig_usb_exit();
+	debugfs_remove_recursive(usb_debug_root);
+}
+
+subsys_initcall(usb_common_init);
+module_exit(usb_common_exit);
+
 MODULE_LICENSE("GPL");
diff --git a/drivers/usb/common/common.h b/drivers/usb/common/common.h
new file mode 100644
index 000000000000..424a91316a4b
--- /dev/null
+++ b/drivers/usb/common/common.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef __LINUX_USB_COMMON_H
+#define __LINUX_USB_COMMON_H
+
+#if defined(CONFIG_USB_LED_TRIG)
+void ledtrig_usb_init(void);
+void ledtrig_usb_exit(void);
+#else
+static inline void ledtrig_usb_init(void) { }
+static inline void ledtrig_usb_exit(void) { }
+#endif
+
+#endif	/* __LINUX_USB_COMMON_H */
diff --git a/drivers/usb/common/led.c b/drivers/usb/common/led.c
index 7bd81166b77d..0865dd44a80a 100644
--- a/drivers/usb/common/led.c
+++ b/drivers/usb/common/led.c
@@ -10,6 +10,7 @@
 #include <linux/init.h>
 #include <linux/leds.h>
 #include <linux/usb.h>
+#include "common.h"
 
 #define BLINK_DELAY 30
 
@@ -36,18 +37,14 @@ void usb_led_activity(enum usb_led_event ev)
 EXPORT_SYMBOL_GPL(usb_led_activity);
 
 
-static int __init ledtrig_usb_init(void)
+void __init ledtrig_usb_init(void)
 {
 	led_trigger_register_simple("usb-gadget", &ledtrig_usb_gadget);
 	led_trigger_register_simple("usb-host", &ledtrig_usb_host);
-	return 0;
 }
 
-static void __exit ledtrig_usb_exit(void)
+void __exit ledtrig_usb_exit(void)
 {
 	led_trigger_unregister_simple(ledtrig_usb_gadget);
 	led_trigger_unregister_simple(ledtrig_usb_host);
 }
-
-module_init(ledtrig_usb_init);
-module_exit(ledtrig_usb_exit);
diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 7fcb9f782931..5a0df527a8ca 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -1185,19 +1185,17 @@ static struct notifier_block usb_bus_nb = {
 	.notifier_call = usb_bus_notify,
 };
 
-struct dentry *usb_debug_root;
-EXPORT_SYMBOL_GPL(usb_debug_root);
+static struct dentry *usb_devices_root;
 
 static void usb_debugfs_init(void)
 {
-	usb_debug_root = debugfs_create_dir("usb", NULL);
-	debugfs_create_file("devices", 0444, usb_debug_root, NULL,
-			    &usbfs_devices_fops);
+	usb_devices_root = debugfs_create_file("devices", 0444, usb_debug_root,
+					       NULL, &usbfs_devices_fops);
 }
 
 static void usb_debugfs_cleanup(void)
 {
-	debugfs_remove_recursive(usb_debug_root);
+	debugfs_remove(usb_devices_root);
 }
 
 /*
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
