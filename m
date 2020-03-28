Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 692B11969EB
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 23:58:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a9FrNouTI7PFx7m3ChdpY0vp38ost1HHYMGB7EwR9xI=; b=EHvTXR751M6y53
	IiW7l74Qi6ILEmJ8m2kdPoDl63UHvKj3SN6IVHb5wsNKIGy5NTnzF8bJ2wielpPBr9WdKoYEFCXJD
	6oThc9eeK/9C5Alt9fVsBXo82DXXKEMWFBxqibhOVvGDQqUrqAyxX+631GvGaFJlVg9g6uDJEXqUI
	m2UCsWy7ntWSAUbrIOJkN5KOq+NcUpbDAXYG+ibnoVTw+J1Eds1d4m0c6Zt4c/wXHGW7RdbJ4l6ve
	KGicdHVItBixiMtfN4/mKzIx2HiSxMEFCiuuqvOZRAJKI54ER8471IUChA8cZdrkMWl+oFRlIcdoV
	IUtSunGzVzvXOgTMpHTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIKOw-0005Ra-C2; Sat, 28 Mar 2020 22:58:02 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIKOn-0005Qy-6I
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 22:57:55 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.3) (envelope-from <daniel@makrotopia.org>)
 id 1jIKOZ-0002cv-QV; Sat, 28 Mar 2020 23:57:41 +0100
Date: Sat, 28 Mar 2020 22:57:19 +0000
From: Daniel Golle <daniel@makrotopia.org>
To: Neil Armstrong <narmstrong@baylibre.com>, linux-oxnas@groups.io,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH resend] power: reset: introduce oxnas-restart
Message-ID: <20200328225719.GA463417@makrotopia.org>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_155753_389109_9229D217 
X-CRM114-Status: GOOD (  15.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Sungbo Eo <mans0n@gorani.run>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add reboot handler for OXNAS OX820 chips as reboot currenly hangs on
those boards. Code is based on ox820_assert_system_reset() found in
https://github.com/kref/linux-oxnas/blob/master/arch/arm/mach-oxnas/mach-ox820.c#L181

Signed-off-by: Daniel Golle <daniel@makrotopia.org>
---
 drivers/power/reset/Kconfig         |   7 +
 drivers/power/reset/Makefile        |   1 +
 drivers/power/reset/oxnas-restart.c | 229 ++++++++++++++++++++++++++++
 3 files changed, 237 insertions(+)
 create mode 100644 drivers/power/reset/oxnas-restart.c

diff --git a/drivers/power/reset/Kconfig b/drivers/power/reset/Kconfig
index 890380302080..6163c52e7eb4 100644
--- a/drivers/power/reset/Kconfig
+++ b/drivers/power/reset/Kconfig
@@ -123,6 +123,13 @@ config POWER_RESET_OCELOT_RESET
 	help
 	  This driver supports restart for Microsemi Ocelot SoC.
 
+config POWER_RESET_OXNAS
+	bool "OXNAS SoC restart driver"
+	depends on ARCH_OXNAS
+	default MACH_OX820
+	help
+	  Restart support for OXNAS OX820 boards.
+
 config POWER_RESET_PIIX4_POWEROFF
 	tristate "Intel PIIX4 power-off driver"
 	depends on PCI
diff --git a/drivers/power/reset/Makefile b/drivers/power/reset/Makefile
index da37f8b851dc..5710ca469517 100644
--- a/drivers/power/reset/Makefile
+++ b/drivers/power/reset/Makefile
@@ -12,6 +12,7 @@ obj-$(CONFIG_POWER_RESET_GPIO_RESTART) += gpio-restart.o
 obj-$(CONFIG_POWER_RESET_HISI) += hisi-reboot.o
 obj-$(CONFIG_POWER_RESET_MSM) += msm-poweroff.o
 obj-$(CONFIG_POWER_RESET_MT6323) += mt6323-poweroff.o
+obj-$(CONFIG_POWER_RESET_OXNAS) += oxnas-restart.o
 obj-$(CONFIG_POWER_RESET_QCOM_PON) += qcom-pon.o
 obj-$(CONFIG_POWER_RESET_OCELOT_RESET) += ocelot-reset.o
 obj-$(CONFIG_POWER_RESET_PIIX4_POWEROFF) += piix4-poweroff.o
diff --git a/drivers/power/reset/oxnas-restart.c b/drivers/power/reset/oxnas-restart.c
new file mode 100644
index 000000000000..e0c126eae0f5
--- /dev/null
+++ b/drivers/power/reset/oxnas-restart.c
@@ -0,0 +1,229 @@
+// SPDX-License-Identifier: (GPL-2.0)
+/*
+ * oxnas SoC reset driver
+ * based on:
+ * Microsemi MIPS SoC reset driver
+ * and ox820_assert_system_reset() written by Ma Hajun <mahaijuns@gmail.com>
+ *
+ * License: GPL
+ * Copyright (c) 2013 Ma Hajun <mahaijuns@gmail.com>
+ * Copyright (c) 2017 Microsemi Corporation
+ * Copyright (c) 2019 Daniel Golle <daniel@makrotopia.org>
+ */
+#include <linux/delay.h>
+#include <linux/io.h>
+#include <linux/notifier.h>
+#include <linux/mfd/syscon.h>
+#include <linux/of_address.h>
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+#include <linux/reboot.h>
+#include <linux/regmap.h>
+
+/* bit numbers of reset control register */
+#define OX820_SYS_CTRL_RST_SCU                0
+#define OX820_SYS_CTRL_RST_COPRO              1
+#define OX820_SYS_CTRL_RST_ARM0               2
+#define OX820_SYS_CTRL_RST_ARM1               3
+#define OX820_SYS_CTRL_RST_USBHS              4
+#define OX820_SYS_CTRL_RST_USBHSPHYA          5
+#define OX820_SYS_CTRL_RST_MACA               6
+#define OX820_SYS_CTRL_RST_MAC                OX820_SYS_CTRL_RST_MACA
+#define OX820_SYS_CTRL_RST_PCIEA              7
+#define OX820_SYS_CTRL_RST_SGDMA              8
+#define OX820_SYS_CTRL_RST_CIPHER             9
+#define OX820_SYS_CTRL_RST_DDR                10
+#define OX820_SYS_CTRL_RST_SATA               11
+#define OX820_SYS_CTRL_RST_SATA_LINK          12
+#define OX820_SYS_CTRL_RST_SATA_PHY           13
+#define OX820_SYS_CTRL_RST_PCIEPHY            14
+#define OX820_SYS_CTRL_RST_STATIC             15
+#define OX820_SYS_CTRL_RST_GPIO               16
+#define OX820_SYS_CTRL_RST_UART1              17
+#define OX820_SYS_CTRL_RST_UART2              18
+#define OX820_SYS_CTRL_RST_MISC               19
+#define OX820_SYS_CTRL_RST_I2S                20
+#define OX820_SYS_CTRL_RST_SD                 21
+#define OX820_SYS_CTRL_RST_MACB               22
+#define OX820_SYS_CTRL_RST_PCIEB              23
+#define OX820_SYS_CTRL_RST_VIDEO              24
+#define OX820_SYS_CTRL_RST_DDR_PHY            25
+#define OX820_SYS_CTRL_RST_USBHSPHYB          26
+#define OX820_SYS_CTRL_RST_USBDEV             27
+#define OX820_SYS_CTRL_RST_ARMDBG             29
+#define OX820_SYS_CTRL_RST_PLLA               30
+#define OX820_SYS_CTRL_RST_PLLB               31
+
+/* bit numbers of clock control register */
+#define OX820_SYS_CTRL_CLK_COPRO              0
+#define OX820_SYS_CTRL_CLK_DMA                1
+#define OX820_SYS_CTRL_CLK_CIPHER             2
+#define OX820_SYS_CTRL_CLK_SD                 3
+#define OX820_SYS_CTRL_CLK_SATA               4
+#define OX820_SYS_CTRL_CLK_I2S                5
+#define OX820_SYS_CTRL_CLK_USBHS              6
+#define OX820_SYS_CTRL_CLK_MACA               7
+#define OX820_SYS_CTRL_CLK_MAC                OX820_SYS_CTRL_CLK_MACA
+#define OX820_SYS_CTRL_CLK_PCIEA              8
+#define OX820_SYS_CTRL_CLK_STATIC             9
+#define OX820_SYS_CTRL_CLK_MACB               10
+#define OX820_SYS_CTRL_CLK_PCIEB              11
+#define OX820_SYS_CTRL_CLK_REF600             12
+#define OX820_SYS_CTRL_CLK_USBDEV             13
+#define OX820_SYS_CTRL_CLK_DDR                14
+#define OX820_SYS_CTRL_CLK_DDRPHY             15
+#define OX820_SYS_CTRL_CLK_DDRCK              16
+
+/* Regmap offsets */
+#define OX820_CLK_SET_REGOFFSET               0x2c
+#define OX820_CLK_CLR_REGOFFSET               0x30
+#define OX820_RST_SET_REGOFFSET               0x34
+#define OX820_RST_CLR_REGOFFSET               0x38
+#define OX820_SECONDARY_SEL_REGOFFSET         0x14
+#define OX820_TERTIARY_SEL_REGOFFSET          0x8c
+#define OX820_QUATERNARY_SEL_REGOFFSET        0x94
+#define OX820_DEBUG_SEL_REGOFFSET             0x9c
+#define OX820_ALTERNATIVE_SEL_REGOFFSET       0xa4
+#define OX820_PULLUP_SEL_REGOFFSET            0xac
+#define OX820_SEC_SECONDARY_SEL_REGOFFSET     0x100014
+#define OX820_SEC_TERTIARY_SEL_REGOFFSET      0x10008c
+#define OX820_SEC_QUATERNARY_SEL_REGOFFSET    0x100094
+#define OX820_SEC_DEBUG_SEL_REGOFFSET         0x10009c
+#define OX820_SEC_ALTERNATIVE_SEL_REGOFFSET   0x1000a4
+#define OX820_SEC_PULLUP_SEL_REGOFFSET        0x1000ac
+
+
+struct oxnas_restart_context {
+	struct regmap *sys_ctrl;
+	struct notifier_block restart_handler;
+};
+
+static int ox820_restart_handle(struct notifier_block *this,
+				 unsigned long mode, void *cmd)
+{
+	struct oxnas_restart_context *ctx = container_of(this, struct
+							oxnas_restart_context,
+							restart_handler);
+	u32 value;
+
+	/* Assert reset to cores as per power on defaults
+	 * Don't touch the DDR interface as things will come to an impromptu stop
+	 * NB Possibly should be asserting reset for PLLB, but there are timing
+	 *    concerns here according to the docs */
+	value = BIT(OX820_SYS_CTRL_RST_COPRO)		|
+		BIT(OX820_SYS_CTRL_RST_USBHS)		|
+		BIT(OX820_SYS_CTRL_RST_USBHSPHYA)	|
+		BIT(OX820_SYS_CTRL_RST_MACA)		|
+		BIT(OX820_SYS_CTRL_RST_PCIEA)		|
+		BIT(OX820_SYS_CTRL_RST_SGDMA)		|
+		BIT(OX820_SYS_CTRL_RST_CIPHER)		|
+		BIT(OX820_SYS_CTRL_RST_SATA)		|
+		BIT(OX820_SYS_CTRL_RST_SATA_LINK)	|
+		BIT(OX820_SYS_CTRL_RST_SATA_PHY)	|
+		BIT(OX820_SYS_CTRL_RST_PCIEPHY)		|
+		BIT(OX820_SYS_CTRL_RST_STATIC)		|
+		BIT(OX820_SYS_CTRL_RST_UART1)		|
+		BIT(OX820_SYS_CTRL_RST_UART2)		|
+		BIT(OX820_SYS_CTRL_RST_MISC)		|
+		BIT(OX820_SYS_CTRL_RST_I2S)		|
+		BIT(OX820_SYS_CTRL_RST_SD)		|
+		BIT(OX820_SYS_CTRL_RST_MACB)		|
+		BIT(OX820_SYS_CTRL_RST_PCIEB)		|
+		BIT(OX820_SYS_CTRL_RST_VIDEO)		|
+		BIT(OX820_SYS_CTRL_RST_USBHSPHYB)	|
+		BIT(OX820_SYS_CTRL_RST_USBDEV);
+
+	regmap_write(ctx->sys_ctrl, OX820_RST_SET_REGOFFSET, value);
+
+	/* Release reset to cores as per power on defaults */
+	regmap_write(ctx->sys_ctrl, OX820_RST_CLR_REGOFFSET, BIT(OX820_SYS_CTRL_RST_GPIO));
+
+	/* Disable clocks to cores as per power-on defaults - must leave DDR
+	 * related clocks enabled otherwise we'll stop rather abruptly. */
+	value =
+		BIT(OX820_SYS_CTRL_CLK_COPRO)		|
+		BIT(OX820_SYS_CTRL_CLK_DMA)		|
+		BIT(OX820_SYS_CTRL_CLK_CIPHER)		|
+		BIT(OX820_SYS_CTRL_CLK_SD)		|
+		BIT(OX820_SYS_CTRL_CLK_SATA)		|
+		BIT(OX820_SYS_CTRL_CLK_I2S)		|
+		BIT(OX820_SYS_CTRL_CLK_USBHS)		|
+		BIT(OX820_SYS_CTRL_CLK_MAC)		|
+		BIT(OX820_SYS_CTRL_CLK_PCIEA)		|
+		BIT(OX820_SYS_CTRL_CLK_STATIC)		|
+		BIT(OX820_SYS_CTRL_CLK_MACB)		|
+		BIT(OX820_SYS_CTRL_CLK_PCIEB)		|
+		BIT(OX820_SYS_CTRL_CLK_REF600)		|
+		BIT(OX820_SYS_CTRL_CLK_USBDEV);
+
+	regmap_write(ctx->sys_ctrl, OX820_CLK_CLR_REGOFFSET, value);
+
+	/* Enable clocks to cores as per power-on defaults */
+
+	/* Set sys-control pin mux'ing as per power-on defaults */
+	regmap_write(ctx->sys_ctrl, OX820_SECONDARY_SEL_REGOFFSET, 0);
+	regmap_write(ctx->sys_ctrl, OX820_TERTIARY_SEL_REGOFFSET, 0);
+	regmap_write(ctx->sys_ctrl, OX820_QUATERNARY_SEL_REGOFFSET, 0);
+	regmap_write(ctx->sys_ctrl, OX820_DEBUG_SEL_REGOFFSET, 0);
+	regmap_write(ctx->sys_ctrl, OX820_ALTERNATIVE_SEL_REGOFFSET, 0);
+	regmap_write(ctx->sys_ctrl, OX820_PULLUP_SEL_REGOFFSET, 0);
+
+	regmap_write(ctx->sys_ctrl, OX820_SEC_SECONDARY_SEL_REGOFFSET, 0);
+	regmap_write(ctx->sys_ctrl, OX820_SEC_TERTIARY_SEL_REGOFFSET, 0);
+	regmap_write(ctx->sys_ctrl, OX820_SEC_QUATERNARY_SEL_REGOFFSET, 0);
+	regmap_write(ctx->sys_ctrl, OX820_SEC_DEBUG_SEL_REGOFFSET, 0);
+	regmap_write(ctx->sys_ctrl, OX820_SEC_ALTERNATIVE_SEL_REGOFFSET, 0);
+	regmap_write(ctx->sys_ctrl, OX820_SEC_PULLUP_SEL_REGOFFSET, 0);
+
+	/* No need to save any state, as the ROM loader can determine whether
+	 * reset is due to power cycling or programatic action, just hit the
+	 * (self-clearing) CPU reset bit of the block reset register */
+	value =
+		BIT(OX820_SYS_CTRL_RST_SCU) |
+		BIT(OX820_SYS_CTRL_RST_ARM0) |
+		BIT(OX820_SYS_CTRL_RST_ARM1);
+
+	regmap_write(ctx->sys_ctrl, OX820_RST_SET_REGOFFSET, value);
+
+	pr_emerg("Unable to restart system\n");
+	return NOTIFY_DONE;
+}
+
+static int ox820_restart_probe(struct platform_device *pdev)
+{
+	struct oxnas_restart_context *ctx;
+	struct regmap *sys_ctrl;
+	struct device *dev = &pdev->dev;
+	int err = 0;
+
+	sys_ctrl = syscon_node_to_regmap(pdev->dev.of_node);
+	if (IS_ERR(sys_ctrl))
+		return PTR_ERR(sys_ctrl);
+
+	ctx = devm_kzalloc(&pdev->dev, sizeof(*ctx), GFP_KERNEL);
+	if (!ctx)
+		return -ENOMEM;
+
+	ctx->sys_ctrl = sys_ctrl;
+	ctx->restart_handler.notifier_call = ox820_restart_handle;
+	ctx->restart_handler.priority = 192;
+	err = register_restart_handler(&ctx->restart_handler);
+	if (err)
+		dev_err(dev, "can't register restart notifier (err=%d)\n", err);
+
+	return err;
+}
+
+static const struct of_device_id ox820_restart_of_match[] = {
+	{ .compatible = "oxsemi,ox820-sys-ctrl" },
+	{}
+};
+
+static struct platform_driver ox820_restart_driver = {
+	.probe = ox820_restart_probe,
+	.driver = {
+		.name = "ox820-chip-reset",
+		.of_match_table = ox820_restart_of_match,
+	},
+};
+builtin_platform_driver(ox820_restart_driver);
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
