Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB8D21F1FDE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 21:28:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P6em3oWe7GVshSo1LQ7WVjWHbJQwcTYyMahG5azlIRk=; b=cPWGLTTRb3hrhf
	e7SVAnOefWe9xJSuhKLFsiC2+NqkY2bqbtP2dQld5G1VoEpZWxrMLrhvLfxesz4FBr3VQbtDrJpMV
	0zCeJUqdORN/mfGNW63xY6QEXMNZWCYWmp60TMGtoFQUTWiZiJhdz1Y1vSE9uh5OprqjISxZLFShY
	3/G+dY4GIq3K+nDQFPb6b9fcsIAr6/Vy9rzQSE7DpmgUUU5mb+BcLWVvMcuAsbmMD8+Rjr/bPLQf7
	X3q49gDavrxS8MH49d6uHCA//Es+RSytJjTSsqJ/7N4+Q3SbbpCDR61WFc7QjyYHUP9Ex2tfa1ZK0
	N4H2sRuPbR65uImZR0Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiNRT-0002lP-FC; Mon, 08 Jun 2020 19:28:19 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiNQk-0002Ev-D4; Mon, 08 Jun 2020 19:27:36 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 37619AE35;
 Mon,  8 Jun 2020 19:27:36 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: f.fainelli@gmail.com, gregkh@linuxfoundation.org, wahrenst@gmx.net,
 robh@kernel.org, mathias.nyman@linux.intel.com,
 Eric Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-usb@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH 2/9] reset: Add Raspberry Pi 4 firmware USB reset controller
Date: Mon,  8 Jun 2020 21:26:54 +0200
Message-Id: <20200608192701.18355-3-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200608192701.18355-1-nsaenzjulienne@suse.de>
References: <20200608192701.18355-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_122734_734726_3223411C 
X-CRM114-Status: GOOD (  20.03  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: lorenzo.pieralisi@arm.com, tim.gover@raspberrypi.org, helgaas@kernel.org,
 linux-kernel@vger.kernel.org, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Raspberry Pi 4 gets its USB functionality from VL805, a PCIe chip
that implements the xHCI. After a PCI fundamental reset, VL805's
firmware may either be loaded directly from an EEPROM or, if not
present, by the SoC's co-processor, VideoCore. RPi4's VideoCore OS
contains both the non public firmware load logic and the VL805 firmware
blob.

We control this trough a reset controller device that's able to trigger
the aforementioned process when relevant.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 drivers/reset/Kconfig                 |   9 ++
 drivers/reset/Makefile                |   1 +
 drivers/reset/reset-raspberrypi-usb.c | 122 ++++++++++++++++++++++++++
 3 files changed, 132 insertions(+)
 create mode 100644 drivers/reset/reset-raspberrypi-usb.c

diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
index d9efbfd29646..80e07190cd04 100644
--- a/drivers/reset/Kconfig
+++ b/drivers/reset/Kconfig
@@ -140,6 +140,15 @@ config RESET_QCOM_PDC
 	  to control reset signals provided by PDC for Modem, Compute,
 	  Display, GPU, Debug, AOP, Sensors, Audio, SP and APPS.
 
+config RESET_RASPBERRYPI_USB
+	tristate "Raspberry Pi 4 USB Reset Driver"
+	depends on RASPBERRYPI_FIRMWARE || (RASPBERRYPI_FIRMWARE=n && COMPILE_TEST)
+	default USB_XHCI_PCI
+	help
+	  This driver provides support for resetting the USB HW available in
+	  the Raspberry Pi 4. This reset process is controlled by firmware
+	  through a custom interface (see drivers/firmware/raspberrypi.c).
+
 config RESET_SCMI
 	tristate "Reset driver controlled via ARM SCMI interface"
 	depends on ARM_SCMI_PROTOCOL || COMPILE_TEST
diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
index 249ed357c997..49cd2868c7ab 100644
--- a/drivers/reset/Makefile
+++ b/drivers/reset/Makefile
@@ -21,6 +21,7 @@ obj-$(CONFIG_RESET_OXNAS) += reset-oxnas.o
 obj-$(CONFIG_RESET_PISTACHIO) += reset-pistachio.o
 obj-$(CONFIG_RESET_QCOM_AOSS) += reset-qcom-aoss.o
 obj-$(CONFIG_RESET_QCOM_PDC) += reset-qcom-pdc.o
+obj-$(CONFIG_RESET_RASPBERRYPI_USB) += reset-raspberrypi-usb.o
 obj-$(CONFIG_RESET_SCMI) += reset-scmi.o
 obj-$(CONFIG_RESET_SIMPLE) += reset-simple.o
 obj-$(CONFIG_RESET_STM32MP157) += reset-stm32mp1.o
diff --git a/drivers/reset/reset-raspberrypi-usb.c b/drivers/reset/reset-raspberrypi-usb.c
new file mode 100644
index 000000000000..e9a6e7018c6d
--- /dev/null
+++ b/drivers/reset/reset-raspberrypi-usb.c
@@ -0,0 +1,122 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Raspberry Pi 4 USB reset driver
+ *
+ * The Raspberry Pi 4 gets its USB functionality from VL805, a PCIe chip that
+ * implements xHCI. After a PCI reset, VL805's firmware may either be loaded
+ * directly from an EEPROM or, if not present, by the SoC's co-processor,
+ * VideoCore. rpi's VideoCore OS contains both the non public firmware load
+ * logic and the VL805 firmware blob. This driver triggers the aforementioned
+ * process.
+ *
+ * Copyright (C) 2020 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
+ */
+#include <linux/delay.h>
+#include <linux/device.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/reset-controller.h>
+#include <soc/bcm2835/raspberrypi-firmware.h>
+
+struct rpi_usb_reset {
+	struct reset_controller_dev rcdev;
+	struct rpi_firmware *fw;
+};
+
+static inline
+struct rpi_usb_reset *to_rpi_usb(struct reset_controller_dev *rcdev)
+{
+	return container_of(rcdev, struct rpi_usb_reset, rcdev);
+}
+
+static int rpi_usb_reset_reset(struct reset_controller_dev *rcdev,
+				unsigned long id)
+{
+	struct rpi_usb_reset *priv = to_rpi_usb(rcdev);
+	u32 dev_addr;
+	int ret;
+
+	/*
+	 * The pci device address is expected like this:
+	 *
+	 * PCI_BUS << 20 | PCI_SLOT << 15 | PCI_FUNC << 12
+	 *
+	 * But since rpi's PCIe setup is hardwired, we know the address in
+	 * advance.
+	 */
+	dev_addr = 0x100000;
+	ret = rpi_firmware_property(priv->fw, RPI_FIRMWARE_NOTIFY_XHCI_RESET,
+				    &dev_addr, sizeof(dev_addr));
+	if (ret)
+		return ret;
+
+	/* Wait for vl805 to startup */
+	usleep_range(200, 1000);
+
+	return 0;
+}
+
+static const struct reset_control_ops rpi_usb_reset_ops = {
+	.reset	= rpi_usb_reset_reset,
+};
+
+static int rpi_usb_reset_xlate(struct reset_controller_dev *rcdev,
+			       const struct of_phandle_args *reset_spec)
+{
+	/* This is needed if #reset-cells == 0. */
+	return 0;
+}
+
+static int rpi_usb_reset_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node *fw_node;
+	struct rpi_usb_reset *priv;
+	struct rpi_firmware *fw;
+
+	fw_node = of_get_parent(dev->of_node);
+	if (!fw_node) {
+		dev_err(dev, "Missing firmware node\n");
+		return -ENOENT;
+	}
+
+	fw = rpi_firmware_get(fw_node);
+	of_node_put(fw_node);
+	if (!fw)
+		return -EPROBE_DEFER;
+
+	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	dev_set_drvdata(dev, priv);
+
+	priv->fw = fw;
+	priv->rcdev.owner = THIS_MODULE;
+	priv->rcdev.nr_resets = 1;
+	priv->rcdev.ops = &rpi_usb_reset_ops;
+	priv->rcdev.of_node = dev->of_node;
+	priv->rcdev.of_xlate = rpi_usb_reset_xlate;
+
+	return devm_reset_controller_register(dev, &priv->rcdev);
+}
+
+static const struct of_device_id rpi_usb_reset_of_match[] = {
+	{ .compatible = "raspberrypi,firmware-usb-reset" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, rpi_usb_reset_of_match);
+
+static struct platform_driver rpi_usb_reset_driver = {
+	.probe	= rpi_usb_reset_probe,
+	.driver	= {
+		.name = "raspberrypi-usb-reset",
+		.of_match_table = rpi_usb_reset_of_match,
+	},
+};
+module_platform_driver(rpi_usb_reset_driver);
+
+MODULE_AUTHOR("Nicolas Saenz Julienne <nsaenzjulienne@suse.de>");
+MODULE_DESCRIPTION("Raspberry Pi 4 USB reset driver");
+MODULE_LICENSE("GPL");
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
