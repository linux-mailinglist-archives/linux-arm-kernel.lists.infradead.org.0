Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E194234037
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 09:34:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DxVYXWpxSSqgL6HlcDm8rW2weXzUyOfXN4s0bI/kCS8=; b=UrBWb7Jg4gxiGc
	c6OJLIcuCUTQ96BlXmXBr0/yR+T4ErCXwSdpCrUuj6bjVWRQOe/+uAeWoBJPeCtRXxvz6AwT9XqfV
	OiW11OR6patqaLYHwuDcCrOeY5AGXdOAdl4/5XRt6s1WnBxgH/LlcVQllLqvyRIBOf7ooN9Sd0UfT
	M1GIW8sd/h4WgvvLPAAZCxNXlDveUb0ARxVFj3PEZENtfjvP5Ue9quX4cUp463AtL4bavGTxlUEdk
	+VmdOmBPG2zATLaNGVFqRzApX2t+wKBeJ1suicvkiZm1BXrZS5q78CFZGXiGt41vGc9J5dG+saERJ
	YKcBUR7Z6pYrdbkTePJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY3xn-000427-HP; Tue, 04 Jun 2019 07:34:31 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY3xe-00041I-Ka; Tue, 04 Jun 2019 07:34:24 +0000
X-UUID: 4775b66b93e94337a69f6e19048a96f9-20190603
X-UUID: 4775b66b93e94337a69f6e19048a96f9-20190603
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2054556446; Mon, 03 Jun 2019 23:34:19 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 4 Jun 2019 00:34:18 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 4 Jun 2019 15:34:15 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 4 Jun 2019 15:34:13 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Felipe Balbi
 <felipe.balbi@linux.intel.com>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v4] usb: create usb_debug_root for gadget only
Date: Tue, 4 Jun 2019 15:34:07 +0800
Message-ID: <1559633647-29040-1-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_003422_679967_5475ADE7 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 Chunfeng Yun <chunfeng.yun@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When CONFIG_USB is not set, and CONFIG_USB_GADGET is set,
there is an issue, e.g.:

drivers/usb/mtu3/mtu3_debugfs.o: in function 'ssusb_debugfs_create_root':
mtu3_debugfs.c:(.text+0xba3): undefined reference to 'usb_debug_root'

usb_debug_root is currently only built when host is supported
(CONFIG_USB is set), for convenience, we also want it created when
gadget only is enabled, this patch try to support it.

Reported-by: Randy Dunlap <rdunlap@infradead.org>
Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
v4:
  move common API into common.c suggested by Felipe

v3:
  1. still create usb_debug_root for gadget only
  2. abandon mtu3's change
  3. drop acked-by Randy

v2(resend): add acked-by Randy

v1: fix mtu3's build error, replace usb_debug_root by NULL;
---
 drivers/usb/common/common.c   | 26 ++++++++++++++++++++++++++
 drivers/usb/core/usb.c        | 16 ++++------------
 drivers/usb/gadget/udc/core.c |  3 +++
 include/linux/usb.h           |  2 ++
 4 files changed, 35 insertions(+), 12 deletions(-)

diff --git a/drivers/usb/common/common.c b/drivers/usb/common/common.c
index 18f5dcf58b0d..c52e9c9f58ec 100644
--- a/drivers/usb/common/common.c
+++ b/drivers/usb/common/common.c
@@ -15,6 +15,7 @@
 #include <linux/usb/of.h>
 #include <linux/usb/otg.h>
 #include <linux/of_platform.h>
+#include <linux/debugfs.h>
 
 static const char *const ep_type_names[] = {
 	[USB_ENDPOINT_XFER_CONTROL] = "ctrl",
@@ -139,6 +140,31 @@ enum usb_dr_mode usb_get_dr_mode(struct device *dev)
 }
 EXPORT_SYMBOL_GPL(usb_get_dr_mode);
 
+struct dentry *usb_debug_root;
+EXPORT_SYMBOL_GPL(usb_debug_root);
+
+static atomic_t usb_debug_root_refcnt = ATOMIC_INIT(0);
+
+struct dentry *usb_debugfs_init(void)
+{
+	if (!usb_debug_root)
+		usb_debug_root = debugfs_create_dir("usb", NULL);
+
+	atomic_inc(&usb_debug_root_refcnt);
+
+	return usb_debug_root;
+}
+EXPORT_SYMBOL_GPL(usb_debugfs_init);
+
+void usb_debugfs_cleanup(void)
+{
+	if (atomic_dec_and_test(&usb_debug_root_refcnt)) {
+		debugfs_remove_recursive(usb_debug_root);
+		usb_debug_root = NULL;
+	}
+}
+EXPORT_SYMBOL_GPL(usb_debugfs_cleanup);
+
 #ifdef CONFIG_OF
 /**
  * of_usb_get_dr_mode_by_phy - Get dual role mode for the controller device
diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 7fcb9f782931..9d8db7faf75f 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -1185,19 +1185,11 @@ static struct notifier_block usb_bus_nb = {
 	.notifier_call = usb_bus_notify,
 };
 
-struct dentry *usb_debug_root;
-EXPORT_SYMBOL_GPL(usb_debug_root);
-
-static void usb_debugfs_init(void)
+static void usb_core_debugfs_init(void)
 {
-	usb_debug_root = debugfs_create_dir("usb", NULL);
-	debugfs_create_file("devices", 0444, usb_debug_root, NULL,
-			    &usbfs_devices_fops);
-}
+	struct dentry *root = usb_debugfs_init();
 
-static void usb_debugfs_cleanup(void)
-{
-	debugfs_remove_recursive(usb_debug_root);
+	debugfs_create_file("devices", 0444, root, NULL, &usbfs_devices_fops);
 }
 
 /*
@@ -1212,7 +1204,7 @@ static int __init usb_init(void)
 	}
 	usb_init_pool_max();
 
-	usb_debugfs_init();
+	usb_core_debugfs_init();
 
 	usb_acpi_register();
 	retval = bus_register(&usb_bus_type);
diff --git a/drivers/usb/gadget/udc/core.c b/drivers/usb/gadget/udc/core.c
index 7cf34beb50df..8ef000b9baa4 100644
--- a/drivers/usb/gadget/udc/core.c
+++ b/drivers/usb/gadget/udc/core.c
@@ -1597,12 +1597,15 @@ static int __init usb_udc_init(void)
 	}
 
 	udc_class->dev_uevent = usb_udc_uevent;
+	usb_debugfs_init();
+
 	return 0;
 }
 subsys_initcall(usb_udc_init);
 
 static void __exit usb_udc_exit(void)
 {
+	usb_debugfs_cleanup();
 	class_destroy(udc_class);
 }
 module_exit(usb_udc_exit);
diff --git a/include/linux/usb.h b/include/linux/usb.h
index ae82d9d1112b..175e4a0b1847 100644
--- a/include/linux/usb.h
+++ b/include/linux/usb.h
@@ -1995,6 +1995,8 @@ extern void usb_unregister_notify(struct notifier_block *nb);
 
 /* debugfs stuff */
 extern struct dentry *usb_debug_root;
+extern struct dentry *usb_debugfs_init(void);
+extern void usb_debugfs_cleanup(void);
 
 /* LED triggers */
 enum usb_led_event {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
