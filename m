Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 286251C557
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 10:49:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dsh0HEBp1XDyZrPRUDHHQ1o9swyjmoHIe3FizZUXZs4=; b=oRmZDjz+SvJXIF
	VJZvqGt4QipRWvVrHnjzsYEjnl/sG22wz9BM9xfdWbSNNxS5TxZwBu1LPk4FC/XPfTIqpgTVmgUGX
	0qRjg1Jja4lE0uOJ5ItkJPKkhYEP71d6N3brzCaE3vbqw+ErOC016SedWfLKgqcb3HZmT3hSrDHiZ
	S91z781aq1zQYg25Ilpc+RO3cHn7wJLtneJqo+G7Yl50xU+JBEynmXZBxx+sgnOcg97nBThXd00/3
	CsMjH84euQX0P8ycpEbjFsgHWtVIZo3ok0oQ5hxs4qFhkZAs276wg/FIL2t7rwws5sycDuZObZ1YR
	+lMQif+A7y/EmPZ1beaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQT7L-00010i-Pp; Tue, 14 May 2019 08:48:59 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQT71-0000lA-4N; Tue, 14 May 2019 08:48:45 +0000
X-UUID: af6c31bd58224994952c599145f59b19-20190514
X-UUID: af6c31bd58224994952c599145f59b19-20190514
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 214742650; Tue, 14 May 2019 00:47:46 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 14 May 2019 01:47:44 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 14 May 2019 16:47:42 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 14 May 2019 16:47:41 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Heikki Krogerus
 <heikki.krogerus@linux.intel.com>
Subject: [PATCH v5 6/6] usb: mtu3: register a USB Role Switch for dual role
 mode
Date: Tue, 14 May 2019 16:47:23 +0800
Message-ID: <1557823643-8616-7-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1557823643-8616-1-git-send-email-chunfeng.yun@mediatek.com>
References: <1557823643-8616-1-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_014839_432334_B5E71650 
X-CRM114-Status: GOOD (  17.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Hans de Goede <hdegoede@redhat.com>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Biju Das <biju.das@bp.renesas.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 linux-mediatek@lists.infradead.org, Min Guo <min.guo@mediatek.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Adam
 Thomson <Adam.Thomson.Opensource@diasemi.com>,
 linux-arm-kernel@lists.infradead.org, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Because extcon is not allowed for new bindings, and the
dual role switch is supported by USB Role Switch,
especially for Type-C drivers, so register a USB Role
Switch to support the new way

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
v5 no change

v4 changes:
  1. assign fwnode member of usb_role_switch struct suggested by Heikki

v3 changes:
  1. select USB_ROLE_SWITCH in Kconfig suggested by Heikki
  2. rename ssusb_mode_manual_switch() to ssusb_mode_switch()

v2 no change
---
 drivers/usb/mtu3/Kconfig        |  1 +
 drivers/usb/mtu3/mtu3.h         |  5 ++++
 drivers/usb/mtu3/mtu3_debugfs.c |  4 +--
 drivers/usb/mtu3/mtu3_dr.c      | 48 ++++++++++++++++++++++++++++++++-
 drivers/usb/mtu3/mtu3_dr.h      |  6 ++---
 drivers/usb/mtu3/mtu3_plat.c    |  3 ++-
 6 files changed, 60 insertions(+), 7 deletions(-)

diff --git a/drivers/usb/mtu3/Kconfig b/drivers/usb/mtu3/Kconfig
index bcc23486c4ed..88e3db7b3016 100644
--- a/drivers/usb/mtu3/Kconfig
+++ b/drivers/usb/mtu3/Kconfig
@@ -43,6 +43,7 @@ config USB_MTU3_DUAL_ROLE
 	bool "Dual Role mode"
 	depends on ((USB=y || USB=USB_MTU3) && (USB_GADGET=y || USB_GADGET=USB_MTU3))
 	depends on (EXTCON=y || EXTCON=USB_MTU3)
+	select USB_ROLE_SWITCH
 	help
 	  This is the default mode of working of MTU3 controller where
 	  both host and gadget features are enabled.
diff --git a/drivers/usb/mtu3/mtu3.h b/drivers/usb/mtu3/mtu3.h
index 76ecf12fdf62..6087be236a35 100644
--- a/drivers/usb/mtu3/mtu3.h
+++ b/drivers/usb/mtu3/mtu3.h
@@ -199,6 +199,9 @@ struct mtu3_gpd_ring {
 * @id_nb : notifier for iddig(idpin) detection
 * @id_work : work of iddig detection notifier
 * @id_event : event of iddig detecion notifier
+* @role_sw : use USB Role Switch to support dual-role switch, can't use
+*		extcon at the same time, and extcon is deprecated.
+* @role_sw_used : true when the USB Role Switch is used.
 * @is_u3_drd: whether port0 supports usb3.0 dual-role device or not
 * @manual_drd_enabled: it's true when supports dual-role device by debugfs
 *		to switch host/device modes depending on user input.
@@ -212,6 +215,8 @@ struct otg_switch_mtk {
 	struct notifier_block id_nb;
 	struct work_struct id_work;
 	unsigned long id_event;
+	struct usb_role_switch *role_sw;
+	bool role_sw_used;
 	bool is_u3_drd;
 	bool manual_drd_enabled;
 };
diff --git a/drivers/usb/mtu3/mtu3_debugfs.c b/drivers/usb/mtu3/mtu3_debugfs.c
index b7c86ccd50b4..3ed666f94dd9 100644
--- a/drivers/usb/mtu3/mtu3_debugfs.c
+++ b/drivers/usb/mtu3/mtu3_debugfs.c
@@ -453,9 +453,9 @@ static ssize_t ssusb_mode_write(struct file *file, const char __user *ubuf,
 		return -EFAULT;
 
 	if (!strncmp(buf, "host", 4) && !ssusb->is_host) {
-		ssusb_mode_manual_switch(ssusb, 1);
+		ssusb_mode_switch(ssusb, 1);
 	} else if (!strncmp(buf, "device", 6) && ssusb->is_host) {
-		ssusb_mode_manual_switch(ssusb, 0);
+		ssusb_mode_switch(ssusb, 0);
 	} else {
 		dev_err(ssusb->dev, "wrong or duplicated setting\n");
 		return -EINVAL;
diff --git a/drivers/usb/mtu3/mtu3_dr.c b/drivers/usb/mtu3/mtu3_dr.c
index 5fcb71af875a..08e18448e8b8 100644
--- a/drivers/usb/mtu3/mtu3_dr.c
+++ b/drivers/usb/mtu3/mtu3_dr.c
@@ -7,6 +7,8 @@
  * Author: Chunfeng Yun <chunfeng.yun@mediatek.com>
  */
 
+#include <linux/usb/role.h>
+
 #include "mtu3.h"
 #include "mtu3_dr.h"
 #include "mtu3_debug.h"
@@ -280,7 +282,7 @@ static int ssusb_extcon_register(struct otg_switch_mtk *otg_sx)
  * This is useful in special cases, such as uses TYPE-A receptacle but also
  * wants to support dual-role mode.
  */
-void ssusb_mode_manual_switch(struct ssusb_mtk *ssusb, int to_host)
+void ssusb_mode_switch(struct ssusb_mtk *ssusb, int to_host)
 {
 	struct otg_switch_mtk *otg_sx = &ssusb->otg_switch;
 
@@ -318,6 +320,47 @@ void ssusb_set_force_mode(struct ssusb_mtk *ssusb,
 	mtu3_writel(ssusb->ippc_base, SSUSB_U2_CTRL(0), value);
 }
 
+static int ssusb_role_sw_set(struct device *dev, enum usb_role role)
+{
+	struct ssusb_mtk *ssusb = dev_get_drvdata(dev);
+	bool to_host = false;
+
+	if (role == USB_ROLE_HOST)
+		to_host = true;
+
+	if (to_host ^ ssusb->is_host)
+		ssusb_mode_switch(ssusb, to_host);
+
+	return 0;
+}
+
+static enum usb_role ssusb_role_sw_get(struct device *dev)
+{
+	struct ssusb_mtk *ssusb = dev_get_drvdata(dev);
+	enum usb_role role;
+
+	role = ssusb->is_host ? USB_ROLE_HOST : USB_ROLE_DEVICE;
+
+	return role;
+}
+
+static int ssusb_role_sw_register(struct otg_switch_mtk *otg_sx)
+{
+	struct usb_role_switch_desc role_sx_desc = { 0 };
+	struct ssusb_mtk *ssusb =
+		container_of(otg_sx, struct ssusb_mtk, otg_switch);
+
+	if (!otg_sx->role_sw_used)
+		return 0;
+
+	role_sx_desc.set = ssusb_role_sw_set;
+	role_sx_desc.get = ssusb_role_sw_get;
+	role_sx_desc.fwnode = dev_fwnode(ssusb->dev);
+	otg_sx->role_sw = usb_role_switch_register(ssusb->dev, &role_sx_desc);
+
+	return PTR_ERR_OR_ZERO(otg_sx->role_sw);
+}
+
 int ssusb_otg_switch_init(struct ssusb_mtk *ssusb)
 {
 	struct otg_switch_mtk *otg_sx = &ssusb->otg_switch;
@@ -328,6 +371,8 @@ int ssusb_otg_switch_init(struct ssusb_mtk *ssusb)
 
 	if (otg_sx->manual_drd_enabled)
 		ssusb_dr_debugfs_init(ssusb);
+	else if (otg_sx->role_sw_used)
+		ret = ssusb_role_sw_register(otg_sx);
 	else
 		ret = ssusb_extcon_register(otg_sx);
 
@@ -340,4 +385,5 @@ void ssusb_otg_switch_exit(struct ssusb_mtk *ssusb)
 
 	cancel_work_sync(&otg_sx->id_work);
 	cancel_work_sync(&otg_sx->vbus_work);
+	usb_role_switch_unregister(otg_sx->role_sw);
 }
diff --git a/drivers/usb/mtu3/mtu3_dr.h b/drivers/usb/mtu3/mtu3_dr.h
index ba6fe357ce29..5e58c4dbd54a 100644
--- a/drivers/usb/mtu3/mtu3_dr.h
+++ b/drivers/usb/mtu3/mtu3_dr.h
@@ -71,7 +71,7 @@ static inline void ssusb_gadget_exit(struct ssusb_mtk *ssusb)
 #if IS_ENABLED(CONFIG_USB_MTU3_DUAL_ROLE)
 int ssusb_otg_switch_init(struct ssusb_mtk *ssusb);
 void ssusb_otg_switch_exit(struct ssusb_mtk *ssusb);
-void ssusb_mode_manual_switch(struct ssusb_mtk *ssusb, int to_host);
+void ssusb_mode_switch(struct ssusb_mtk *ssusb, int to_host);
 int ssusb_set_vbus(struct otg_switch_mtk *otg_sx, int is_on);
 void ssusb_set_force_mode(struct ssusb_mtk *ssusb,
 			  enum mtu3_dr_force_mode mode);
@@ -86,8 +86,8 @@ static inline int ssusb_otg_switch_init(struct ssusb_mtk *ssusb)
 static inline void ssusb_otg_switch_exit(struct ssusb_mtk *ssusb)
 {}
 
-static inline void
-ssusb_mode_manual_switch(struct ssusb_mtk *ssusb, int to_host) {}
+static inline void ssusb_mode_switch(struct ssusb_mtk *ssusb, int to_host)
+{}
 
 static inline int ssusb_set_vbus(struct otg_switch_mtk *otg_sx, int is_on)
 {
diff --git a/drivers/usb/mtu3/mtu3_plat.c b/drivers/usb/mtu3/mtu3_plat.c
index fd0f6c5dfbc1..9c256ea3cdf5 100644
--- a/drivers/usb/mtu3/mtu3_plat.c
+++ b/drivers/usb/mtu3/mtu3_plat.c
@@ -299,8 +299,9 @@ static int get_ssusb_rscs(struct platform_device *pdev, struct ssusb_mtk *ssusb)
 	otg_sx->is_u3_drd = of_property_read_bool(node, "mediatek,usb3-drd");
 	otg_sx->manual_drd_enabled =
 		of_property_read_bool(node, "enable-manual-drd");
+	otg_sx->role_sw_used = of_property_read_bool(node, "usb-role-switch");
 
-	if (of_property_read_bool(node, "extcon")) {
+	if (!otg_sx->role_sw_used && of_property_read_bool(node, "extcon")) {
 		otg_sx->edev = extcon_get_edev_by_phandle(ssusb->dev, 0);
 		if (IS_ERR(otg_sx->edev)) {
 			dev_err(ssusb->dev, "couldn't get extcon device\n");
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
