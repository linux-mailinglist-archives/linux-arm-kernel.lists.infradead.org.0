Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A5861C55D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 10:49:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1YweXAZAsXp5pogAkkXMcW9qfy8pajVRjem2qzT3ozQ=; b=CQZLTXnwlNOhO3
	+q6pf+wyhWMsLt3DP85pY6QwVZ6l3cBIdLc+LfIfAKRz2YlZrAnNUTOIA+uN/gkxdhGPviwleTPlT
	8XwyuRRceuAjT3VDsbnz31qeSKjK+ooj8oNSqYjTbn6T67tU5WkZevIVXKxfHXbB+hR6WVO7PNkUV
	4ZWHvLky0cV6eXQf+3BebJivCs+tXjsqvd5NSo06iR+tpFbjIMrnpgZxpg9dgrOlvvMwzRvGeTe1G
	FXEW7Bv56O33QOQjitsR09WeAcK+jNlxO7PLt8gVR2dLULyXfFQ4znKWtu8+RyRDHohOVr90C5PdY
	PsI7ZAyVBtN/2gqY+oNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQT7t-0001kA-8t; Tue, 14 May 2019 08:49:33 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQT72-0000mY-4J; Tue, 14 May 2019 08:48:49 +0000
X-UUID: eaf198b575644132bfa8bab252b6740a-20190514
X-UUID: eaf198b575644132bfa8bab252b6740a-20190514
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1409667960; Tue, 14 May 2019 00:47:45 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 14 May 2019 01:47:43 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS31DR.mediatek.inc (172.27.6.102) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 14 May 2019 16:47:40 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 14 May 2019 16:47:36 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Heikki Krogerus
 <heikki.krogerus@linux.intel.com>
Subject: [PATCH v5 5/6] usb: roles: add USB Type-B GPIO connector driver
Date: Tue, 14 May 2019 16:47:22 +0800
Message-ID: <1557823643-8616-6-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1557823643-8616-1-git-send-email-chunfeng.yun@mediatek.com>
References: <1557823643-8616-1-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_014840_449383_4A2B16E9 
X-CRM114-Status: GOOD (  21.04  )
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

Due to the requirement of usb-connector.txt binding, the old way
using extcon to support USB Dual-Role switch is now deprecated
when use Type-B connector.
This patch introduces a driver of Type-B connector which typically
uses an input GPIO to detect USB ID pin, and try to replace the
function provided by extcon-usb-gpio driver

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
v5 changes:
  1. put usb_role_switch when error happens suggested by Biju
  2. don't treat bype-B connector as a virtual device suggested by Rob

v4 changes:
  1. remove linux/gpio.h suggested by Linus
  2. put node when error happens

v3 changes:
  1. treat bype-B connector as a virtual device;
  2. change file name again

v2 changes:
  1. file name is changed
  2. use new compatible
---
 drivers/usb/roles/Kconfig           |  11 ++
 drivers/usb/roles/Makefile          |   1 +
 drivers/usb/roles/typeb-conn-gpio.c | 295 ++++++++++++++++++++++++++++
 3 files changed, 307 insertions(+)
 create mode 100644 drivers/usb/roles/typeb-conn-gpio.c

diff --git a/drivers/usb/roles/Kconfig b/drivers/usb/roles/Kconfig
index f8b31aa67526..d1156e18a81a 100644
--- a/drivers/usb/roles/Kconfig
+++ b/drivers/usb/roles/Kconfig
@@ -26,4 +26,15 @@ config USB_ROLES_INTEL_XHCI
 	  To compile the driver as a module, choose M here: the module will
 	  be called intel-xhci-usb-role-switch.
 
+config TYPEB_CONN_GPIO
+	tristate "USB Type-B GPIO Connector"
+	depends on GPIOLIB
+	help
+	  The driver supports USB role switch between host and device via GPIO
+	  based USB cable detection, used typically if an input GPIO is used
+	  to detect USB ID pin.
+
+	  To compile the driver as a module, choose M here: the module will
+	  be called typeb-conn-gpio.ko
+
 endif # USB_ROLE_SWITCH
diff --git a/drivers/usb/roles/Makefile b/drivers/usb/roles/Makefile
index 757a7d2797eb..5d5620d9d113 100644
--- a/drivers/usb/roles/Makefile
+++ b/drivers/usb/roles/Makefile
@@ -3,3 +3,4 @@
 obj-$(CONFIG_USB_ROLE_SWITCH)		+= roles.o
 roles-y					:= class.o
 obj-$(CONFIG_USB_ROLES_INTEL_XHCI)	+= intel-xhci-usb-role-switch.o
+obj-$(CONFIG_TYPEB_CONN_GPIO)		+= typeb-conn-gpio.o
diff --git a/drivers/usb/roles/typeb-conn-gpio.c b/drivers/usb/roles/typeb-conn-gpio.c
new file mode 100644
index 000000000000..988ecf565f33
--- /dev/null
+++ b/drivers/usb/roles/typeb-conn-gpio.c
@@ -0,0 +1,295 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * USB Type-B GPIO Connector Driver
+ *
+ * Copyright (C) 2019 MediaTek Inc.
+ *
+ * Author: Chunfeng Yun <chunfeng.yun@mediatek.com>
+ *
+ * Some code borrowed from drivers/extcon/extcon-usb-gpio.c
+ */
+
+#include <linux/device.h>
+#include <linux/gpio/consumer.h>
+#include <linux/interrupt.h>
+#include <linux/irq.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_graph.h>
+#include <linux/pinctrl/consumer.h>
+#include <linux/platform_device.h>
+#include <linux/regulator/consumer.h>
+#include <linux/usb/role.h>
+
+#define USB_GPIO_DEB_MS		20	/* ms */
+#define USB_GPIO_DEB_US		((USB_GPIO_DEB_MS) * 1000)	/* us */
+
+#define USB_CONN_IRQF	\
+	(IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING | IRQF_ONESHOT)
+
+struct usb_conn_info {
+	struct device *dev;
+	struct usb_role_switch *role_sw;
+	enum usb_role last_role;
+	struct regulator *vbus;
+	struct delayed_work dw_det;
+	unsigned long debounce_jiffies;
+
+	struct gpio_desc *id_gpiod;
+	struct gpio_desc *vbus_gpiod;
+	int id_irq;
+	int vbus_irq;
+};
+
+/**
+ * "DEVICE" = VBUS and "HOST" = !ID, so we have:
+ * Both "DEVICE" and "HOST" can't be set as active at the same time
+ * so if "HOST" is active (i.e. ID is 0)  we keep "DEVICE" inactive
+ * even if VBUS is on.
+ *
+ *  Role          |   ID  |  VBUS
+ * ------------------------------------
+ *  [1] DEVICE    |   H   |   H
+ *  [2] NONE      |   H   |   L
+ *  [3] HOST      |   L   |   H
+ *  [4] HOST      |   L   |   L
+ *
+ * In case we have only one of these signals:
+ * - VBUS only - we want to distinguish between [1] and [2], so ID is always 1
+ * - ID only - we want to distinguish between [1] and [4], so VBUS = ID
+ */
+static void usb_conn_detect_cable(struct work_struct *work)
+{
+	struct usb_conn_info *info;
+	enum usb_role role;
+	int id, vbus, ret;
+
+	info = container_of(to_delayed_work(work),
+			    struct usb_conn_info, dw_det);
+
+	/* check ID and VBUS */
+	id = info->id_gpiod ?
+		gpiod_get_value_cansleep(info->id_gpiod) : 1;
+	vbus = info->vbus_gpiod ?
+		gpiod_get_value_cansleep(info->vbus_gpiod) : id;
+
+	if (!id)
+		role = USB_ROLE_HOST;
+	else if (vbus)
+		role = USB_ROLE_DEVICE;
+	else
+		role = USB_ROLE_NONE;
+
+	dev_dbg(info->dev, "role %d/%d, gpios: id %d, vbus %d\n",
+		info->last_role, role, id, vbus);
+
+	if (info->last_role == role) {
+		dev_warn(info->dev, "repeated role: %d\n", role);
+		return;
+	}
+
+	if (info->last_role == USB_ROLE_HOST)
+		regulator_disable(info->vbus);
+
+	ret = usb_role_switch_set_role(info->role_sw, role);
+	if (ret)
+		dev_err(info->dev, "failed to set role: %d\n", ret);
+
+	if (role == USB_ROLE_HOST) {
+		ret = regulator_enable(info->vbus);
+		if (ret)
+			dev_err(info->dev, "enable vbus regulator failed\n");
+	}
+
+	info->last_role = role;
+
+	dev_dbg(info->dev, "vbus regulator is %s\n",
+		regulator_is_enabled(info->vbus) ? "enabled" : "disabled");
+}
+
+static void usb_conn_queue_dwork(struct usb_conn_info *info,
+				 unsigned long delay)
+{
+	queue_delayed_work(system_power_efficient_wq, &info->dw_det, delay);
+}
+
+static irqreturn_t usb_conn_isr(int irq, void *dev_id)
+{
+	struct usb_conn_info *info = dev_id;
+
+	usb_conn_queue_dwork(info, info->debounce_jiffies);
+
+	return IRQ_HANDLED;
+}
+
+static int usb_conn_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node *node = dev->of_node;
+	struct device_node *remote_node;
+	struct usb_conn_info *info;
+	int ret = 0;
+
+	info = devm_kzalloc(dev, sizeof(*info), GFP_KERNEL);
+	if (!info)
+		return -ENOMEM;
+
+	info->dev = dev;
+	info->id_gpiod = devm_gpiod_get_optional(dev, "id", GPIOD_IN);
+	if (IS_ERR(info->id_gpiod))
+		return PTR_ERR(info->id_gpiod);
+
+	info->vbus_gpiod = devm_gpiod_get_optional(dev, "vbus", GPIOD_IN);
+	if (IS_ERR(info->vbus_gpiod))
+		return PTR_ERR(info->vbus_gpiod);
+
+	if (!info->id_gpiod && !info->vbus_gpiod) {
+		dev_err(dev, "failed to get gpios\n");
+		return -ENODEV;
+	}
+
+	if (info->id_gpiod)
+		ret = gpiod_set_debounce(info->id_gpiod, USB_GPIO_DEB_US);
+	if (!ret && info->vbus_gpiod)
+		ret = gpiod_set_debounce(info->vbus_gpiod, USB_GPIO_DEB_US);
+	if (ret < 0)
+		info->debounce_jiffies = msecs_to_jiffies(USB_GPIO_DEB_MS);
+
+	INIT_DELAYED_WORK(&info->dw_det, usb_conn_detect_cable);
+
+	info->vbus = devm_regulator_get(dev, "vbus");
+	if (IS_ERR(info->vbus)) {
+		dev_err(dev, "failed to get vbus\n");
+		return PTR_ERR(info->vbus);
+	}
+
+	remote_node = of_graph_get_remote_node(node, -1, 0);
+	if (!remote_node) {
+		dev_err(dev, "failed to get remote node\n");
+		return -ENODEV;
+	}
+
+	info->role_sw =
+		fwnode_usb_role_switch_get(of_fwnode_handle(remote_node));
+	of_node_put(remote_node);
+	if (IS_ERR(info->role_sw)) {
+		dev_err(dev, "failed to get role switch\n");
+		return PTR_ERR(info->role_sw);
+	}
+
+	if (info->id_gpiod) {
+		info->id_irq = gpiod_to_irq(info->id_gpiod);
+		if (info->id_irq < 0) {
+			dev_err(dev, "failed to get ID IRQ\n");
+			ret = info->id_irq;
+			goto put_role_sw;
+		}
+
+		ret = devm_request_threaded_irq(dev, info->id_irq, NULL,
+						usb_conn_isr, USB_CONN_IRQF,
+						pdev->name, info);
+		if (ret < 0) {
+			dev_err(dev, "failed to request ID IRQ\n");
+			goto put_role_sw;
+		}
+	}
+
+	if (info->vbus_gpiod) {
+		info->vbus_irq = gpiod_to_irq(info->vbus_gpiod);
+		if (info->vbus_irq < 0) {
+			dev_err(dev, "failed to get VBUS IRQ\n");
+			ret = info->vbus_irq;
+			goto put_role_sw;
+		}
+
+		ret = devm_request_threaded_irq(dev, info->vbus_irq, NULL,
+						usb_conn_isr, USB_CONN_IRQF,
+						pdev->name, info);
+		if (ret < 0) {
+			dev_err(dev, "failed to request VBUS IRQ\n");
+			goto put_role_sw;
+		}
+	}
+
+	platform_set_drvdata(pdev, info);
+
+	/* Perform initial detection */
+	usb_conn_queue_dwork(info, 0);
+
+	return 0;
+
+put_role_sw:
+	usb_role_switch_put(info->role_sw);
+	return ret;
+}
+
+static int usb_conn_remove(struct platform_device *pdev)
+{
+	struct usb_conn_info *info = platform_get_drvdata(pdev);
+
+	cancel_delayed_work_sync(&info->dw_det);
+
+	if (info->last_role == USB_ROLE_HOST)
+		regulator_disable(info->vbus);
+
+	usb_role_switch_put(info->role_sw);
+
+	return 0;
+}
+
+static int __maybe_unused usb_conn_suspend(struct device *dev)
+{
+	struct usb_conn_info *info = dev_get_drvdata(dev);
+
+	if (info->id_gpiod)
+		disable_irq(info->id_irq);
+	if (info->vbus_gpiod)
+		disable_irq(info->vbus_irq);
+
+	pinctrl_pm_select_sleep_state(dev);
+
+	return 0;
+}
+
+static int __maybe_unused usb_conn_resume(struct device *dev)
+{
+	struct usb_conn_info *info = dev_get_drvdata(dev);
+
+	pinctrl_pm_select_default_state(dev);
+
+	if (info->id_gpiod)
+		enable_irq(info->id_irq);
+	if (info->vbus_gpiod)
+		enable_irq(info->vbus_irq);
+
+	usb_conn_queue_dwork(info, 0);
+
+	return 0;
+}
+
+static SIMPLE_DEV_PM_OPS(usb_conn_pm_ops,
+			 usb_conn_suspend, usb_conn_resume);
+
+#define DEV_PMS_OPS (IS_ENABLED(CONFIG_PM_SLEEP) ? &usb_conn_pm_ops : NULL)
+
+static const struct of_device_id usb_conn_dt_match[] = {
+	{ .compatible = "linux,typeb-conn-gpio", },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, usb_conn_dt_match);
+
+static struct platform_driver usb_conn_driver = {
+	.probe		= usb_conn_probe,
+	.remove		= usb_conn_remove,
+	.driver		= {
+		.name	= "typeb-conn-gpio",
+		.pm	= DEV_PMS_OPS,
+		.of_match_table = usb_conn_dt_match,
+	},
+};
+
+module_platform_driver(usb_conn_driver);
+
+MODULE_AUTHOR("Chunfeng Yun <chunfeng.yun@mediatek.com>");
+MODULE_DESCRIPTION("USB Type-B GPIO connector driver");
+MODULE_LICENSE("GPL v2");
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
