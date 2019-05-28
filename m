Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E3D2C0B1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 09:55:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ChT4IjWJZQU1QQTbdCLlQNAYfftGXiEVYmXtkpevSL4=; b=gt+i9tJyPBoOZ/
	uU7XrS2myw+wly5DI9cl+BV6s/kGYd+3j62ijBW44crcVa5Zsy5bbQjnHXGJbl0f5h7dOQuqDQ92F
	zZXE8fm/4TNJXkq71XzUqCCr7lOHcuzoABFd1s+HE1UoXUCiyKmERauMxfXA71boU/hXWRO4zN7aA
	5ytKJmG5HmC8eutNHlZpIyp0in3a7Z02Ku8aR/WVtPBlu1d0j6hXqPBqfoKHTvMFVwv8auKLJTLcQ
	EGGBzBJxO6oaylS8Eu6wD3YpudPf0wCjoL2QghdwWHzEeRbjb86HVEsSRuB5dM6b/YN0Op94cFECJ
	qWbCGyVavDifxj2UGMdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVWxK-0005g0-Mb; Tue, 28 May 2019 07:55:34 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVWxD-0005f0-5j; Tue, 28 May 2019 07:55:28 +0000
X-UUID: ddfd4b37246044219cd204a1121c6dde-20190527
X-UUID: ddfd4b37246044219cd204a1121c6dde-20190527
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 411010569; Mon, 27 May 2019 23:55:18 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 28 May 2019 00:55:17 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 28 May 2019 15:55:15 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 28 May 2019 15:55:14 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [v3 PATCH] usb: create usb_debug_root for gadget only
Date: Tue, 28 May 2019 15:54:59 +0800
Message-ID: <cffd6d75f69e4d908c8f39b8a60ddae27d6b7c88.1559028752.git.chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_005527_220383_C2FCE8E2 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-usb@vger.kernel.org, Randy Dunlap <rdunlap@infradead.org>,
 linux-kernel@vger.kernel.org, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
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
v3:
  1. still create usb_debug_root for gadget only
  2. abandon mtu3's change
  3. drop acked-by Randy

v2(resend): add acked-by Randy

v1: fix mtu3's build error, replace usb_debug_root by NULL;
---
 drivers/usb/core/usb.c        |  2 +-
 drivers/usb/gadget/udc/core.c | 27 +++++++++++++++++++++++++++
 include/linux/usb.h           |  1 +
 3 files changed, 29 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 7fcb9f782931..88b3ee03a12d 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -1190,7 +1190,7 @@ EXPORT_SYMBOL_GPL(usb_debug_root);
 
 static void usb_debugfs_init(void)
 {
-	usb_debug_root = debugfs_create_dir("usb", NULL);
+	usb_debug_root = debugfs_create_dir(USB_DEBUG_ROOT_NAME, NULL);
 	debugfs_create_file("devices", 0444, usb_debug_root, NULL,
 			    &usbfs_devices_fops);
 }
diff --git a/drivers/usb/gadget/udc/core.c b/drivers/usb/gadget/udc/core.c
index 7cf34beb50df..ed45f9429e58 100644
--- a/drivers/usb/gadget/udc/core.c
+++ b/drivers/usb/gadget/udc/core.c
@@ -8,6 +8,7 @@
 
 #include <linux/kernel.h>
 #include <linux/module.h>
+#include <linux/debugfs.h>
 #include <linux/device.h>
 #include <linux/list.h>
 #include <linux/err.h>
@@ -1587,12 +1588,37 @@ static int usb_udc_uevent(struct device *dev, struct kobj_uevent_env *env)
 	return 0;
 }
 
+/* if CONFIG_USB is set, leave USB core to create usb_debug_root */
+#ifndef CONFIG_USB
+struct dentry *usb_debug_root;
+EXPORT_SYMBOL_GPL(usb_debug_root);
+
+static void usb_debugfs_init(void)
+{
+	usb_debug_root = debugfs_create_dir(USB_DEBUG_ROOT_NAME, NULL);
+}
+
+static void usb_debugfs_cleanup(void)
+{
+	debugfs_remove_recursive(usb_debug_root);
+}
+#else
+static void usb_debugfs_init(void)
+{}
+
+static void usb_debugfs_cleanup(void)
+{}
+#endif
+
 static int __init usb_udc_init(void)
 {
+	usb_debugfs_init();
+
 	udc_class = class_create(THIS_MODULE, "udc");
 	if (IS_ERR(udc_class)) {
 		pr_err("failed to create udc class --> %ld\n",
 				PTR_ERR(udc_class));
+		usb_debugfs_cleanup();
 		return PTR_ERR(udc_class);
 	}
 
@@ -1604,6 +1630,7 @@ subsys_initcall(usb_udc_init);
 static void __exit usb_udc_exit(void)
 {
 	class_destroy(udc_class);
+	usb_debugfs_cleanup();
 }
 module_exit(usb_udc_exit);
 
diff --git a/include/linux/usb.h b/include/linux/usb.h
index ae82d9d1112b..9c6e7b3265af 100644
--- a/include/linux/usb.h
+++ b/include/linux/usb.h
@@ -1994,6 +1994,7 @@ extern void usb_register_notify(struct notifier_block *nb);
 extern void usb_unregister_notify(struct notifier_block *nb);
 
 /* debugfs stuff */
+#define USB_DEBUG_ROOT_NAME	"usb"
 extern struct dentry *usb_debug_root;
 
 /* LED triggers */
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
