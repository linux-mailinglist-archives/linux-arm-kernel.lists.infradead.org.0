Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2842EA14E8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 11:27:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9n3+xYmlvynYJo2u5E33HqxhixkoEoNSg7vSNN+RdkU=; b=j4Cwoes+PqYUTz
	wSGPziwSbMPcA3FNTP2CwmxxAjHUDOnznOTx67+chpvPPFLxarn6Pqu56S7nAc+Uxs1/GcEff5Jsq
	L/RlG47QeCAEDdeKSIxtHKknq4CDj82fXDqmJbmviiQgl7nv+xXKbOAxXEL5Q+r2shln46RNy5O/6
	/Qfh5wMKTQldo42/81iithQNxPgiZ7QW3ca3iE13JWdT48uSMTn3ZiDxWbZ6C53MbPL0ymzpNNMdH
	pVK+PyrBAA1ZnW+dQj6KPcVsbO94o0OjaKlN3CgDSJ2IYiX4C2qVP6Vh/vTc+Kow25hOuCru45SJp
	X/0Ny5rhPeRt2vjh3H4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3GiP-0005YB-V2; Thu, 29 Aug 2019 09:27:38 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3GeH-0000p8-1Z; Thu, 29 Aug 2019 09:23:24 +0000
X-UUID: c41b122b42dd4116a9dce4b96867b68e-20190829
X-UUID: c41b122b42dd4116a9dce4b96867b68e-20190829
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 672609206; Thu, 29 Aug 2019 01:23:23 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 29 Aug 2019 02:23:21 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS31DR.mediatek.inc (172.27.6.102) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 29 Aug 2019 17:23:20 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 29 Aug 2019 17:23:19 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Biju Das <biju.das@bp.renesas.com>
Subject: [PATCH next v11 10/11] usb: common: add USB GPIO based connection
 detection driver
Date: Thu, 29 Aug 2019 17:22:37 +0800
Message-ID: <1567070558-29417-11-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1567070558-29417-1-git-send-email-chunfeng.yun@mediatek.com>
References: <1567070558-29417-1-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 86C2640524C87E1348271FED80FCC76BD7D3BB1E0A861CCC77305A4E5350C32A2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_022321_349629_7804C083 
X-CRM114-Status: GOOD (  21.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Hans de Goede <hdegoede@redhat.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>, Andy
 Shevchenko <andy.shevchenko@gmail.com>, linux-mediatek@lists.infradead.org,
 Min Guo <min.guo@mediatek.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Nagarjuna Kristam <nkristam@nvidia.com>, Adam
 Thomson <Adam.Thomson.Opensource@diasemi.com>,
 linux-arm-kernel@lists.infradead.org, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Due to the requirement of usb-connector.txt binding, the old way
using extcon to support USB Dual-Role switch is now deprecated
when use Type-B connector.
This patch introduces a USB GPIO based connection detection driver,
used to support Type-B connector which typically uses an input GPIO
to detect USB ID pin, and try to replace the function provided
by the extcon-usb-gpio driver

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
Tested-by: Nagarjuna Kristam <nkristam@nvidia.com>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
---
v11 changes:
  1. use new compatible "gpio-usb-b-connector"

v10 no changes

v9 changes:
  1. add reviewed-by Linus

v8 changes:
  1. rename the driver name and usb new compatible suggested by Heikki
  2. move the driver into usb/common from usb/roles suggested by Heikki

v7 changes:
  1. remove macro DEV_PMS_OPS suggested by Andy
  2. add tested-by Nagarjuna

v6 changes:
  1. get usb-role-swtich by usb_role_switch_get()

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
 drivers/usb/common/Kconfig         |  13 ++
 drivers/usb/common/Makefile        |   1 +
 drivers/usb/common/usb-conn-gpio.c | 284 +++++++++++++++++++++++++++++
 3 files changed, 298 insertions(+)
 create mode 100644 drivers/usb/common/usb-conn-gpio.c

diff --git a/drivers/usb/common/Kconfig b/drivers/usb/common/Kconfig
index 848545b099cf..d611477aae41 100644
--- a/drivers/usb/common/Kconfig
+++ b/drivers/usb/common/Kconfig
@@ -36,3 +36,16 @@ config USB_ULPI_BUS
 	  To compile this driver as a module, choose M here: the module will
 	  be called ulpi.
 
+config USB_CONN_GPIO
+	tristate "USB GPIO Based Connection Detection Driver"
+	depends on GPIOLIB
+	select USB_ROLE_SWITCH
+	help
+	  The driver supports USB role switch between host and device via GPIO
+	  based USB cable detection, used typically if an input GPIO is used
+	  to detect USB ID pin, and another input GPIO may be also used to detect
+	  Vbus pin at the same time, it also can be used to enable/disable
+	  device if an input GPIO is only used to detect Vbus pin.
+
+	  To compile the driver as a module, choose M here: the module will
+	  be called usb-conn-gpio.ko
diff --git a/drivers/usb/common/Makefile b/drivers/usb/common/Makefile
index 0a7c45e85481..8227ffc2cf0b 100644
--- a/drivers/usb/common/Makefile
+++ b/drivers/usb/common/Makefile
@@ -7,5 +7,6 @@ obj-$(CONFIG_USB_COMMON)	  += usb-common.o
 usb-common-y			  += common.o
 usb-common-$(CONFIG_USB_LED_TRIG) += led.o
 
+obj-$(CONFIG_USB_CONN_GPIO)	+= usb-conn-gpio.o
 obj-$(CONFIG_USB_OTG_FSM) += usb-otg-fsm.o
 obj-$(CONFIG_USB_ULPI_BUS)	+= ulpi.o
diff --git a/drivers/usb/common/usb-conn-gpio.c b/drivers/usb/common/usb-conn-gpio.c
new file mode 100644
index 000000000000..87338f9eb5be
--- /dev/null
+++ b/drivers/usb/common/usb-conn-gpio.c
@@ -0,0 +1,284 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * USB GPIO Based Connection Detection Driver
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
+	info->role_sw = usb_role_switch_get(dev);
+	if (IS_ERR(info->role_sw)) {
+		if (PTR_ERR(info->role_sw) != -EPROBE_DEFER)
+			dev_err(dev, "failed to get role switch\n");
+
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
+static const struct of_device_id usb_conn_dt_match[] = {
+	{ .compatible = "gpio-usb-b-connector", },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, usb_conn_dt_match);
+
+static struct platform_driver usb_conn_driver = {
+	.probe		= usb_conn_probe,
+	.remove		= usb_conn_remove,
+	.driver		= {
+		.name	= "usb-conn-gpio",
+		.pm	= &usb_conn_pm_ops,
+		.of_match_table = usb_conn_dt_match,
+	},
+};
+
+module_platform_driver(usb_conn_driver);
+
+MODULE_AUTHOR("Chunfeng Yun <chunfeng.yun@mediatek.com>");
+MODULE_DESCRIPTION("USB GPIO based connection detection driver");
+MODULE_LICENSE("GPL v2");
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
