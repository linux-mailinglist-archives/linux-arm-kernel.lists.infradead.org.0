Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B41A1AD009
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 20:59:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zks+/tbSOGZBowrL4gE1aBFJmz20txhPxJPvmP/54Yw=; b=eikTXn+dVrxBKt
	Frp6GjYEG7ZT4e00OxV8yKFn51DFep4tXUuq2mUk+J3WqDliEbSoqL+XqVAcSwWo63RcFhyMvQoNG
	OXYMmeDRfAkhJADtouqLS/1n6umEp9aendF1F23OWOM+X01j+GCQbm93x0+yQIwYZnbqJZbXaxf2E
	IX8pKDqs73RzsXPT0GEbYRitCY6q/yTu5h85iyaGk7+pmXyFNqbQzcUDoJ8n0tLvu6OOezUl1hQLN
	sdYm7p65MEVfaLaW9e/4iQOWyZ/244SiehsA8K54b9XLG2TzMgROUq24E7zYvaDSigmmItc5hHWHM
	AH3zJV7J19SXxILYQDJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP9jd-00033o-82; Thu, 16 Apr 2020 18:59:37 +0000
Received: from mailoutvs11.siol.net ([185.57.226.202] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP9iM-00026s-T7
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 18:58:23 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id AD8CA524689;
 Thu, 16 Apr 2020 20:58:11 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id 39mq3GOJIFkz; Thu, 16 Apr 2020 20:58:10 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id A87925246A3;
 Thu, 16 Apr 2020 20:58:10 +0200 (CEST)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id AC6F852465F;
 Thu, 16 Apr 2020 20:58:07 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: robh+dt@kernel.org, andrew@lunn.ch, f.fainelli@gmail.com,
 hkallweit1@gmail.com
Subject: [RFC PATCH 1/4] mfd: Add support for AC200
Date: Thu, 16 Apr 2020 20:57:55 +0200
Message-Id: <20200416185758.1388148-2-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200416185758.1388148-1-jernej.skrabec@siol.net>
References: <20200416185758.1388148-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_115819_251693_F866CAD3 
X-CRM114-Status: GOOD (  18.31  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.202 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org, linux@armlinux.org.uk,
 mripard@kernel.org, linux-kernel@vger.kernel.org, wens@csie.org,
 lee.jones@linaro.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds support for AC200 multi functional IC. It can be packaged
standalone or copackaged with SoC like Allwinner H6.

It has analog audio codec, CVBS encoder, RTC and Fast Ethernet PHY.
Documentation also mention eFuses, but it seems that it's not used in
copackaged variant.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/mfd/Kconfig       |   9 ++
 drivers/mfd/Makefile      |   1 +
 drivers/mfd/ac200.c       | 188 ++++++++++++++++++++++++++++++++++
 include/linux/mfd/ac200.h | 210 ++++++++++++++++++++++++++++++++++++++
 4 files changed, 408 insertions(+)
 create mode 100644 drivers/mfd/ac200.c
 create mode 100644 include/linux/mfd/ac200.h

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 0a59249198d3..1d6b7f3ae193 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -178,6 +178,15 @@ config MFD_AC100
 	  This driver include only the core APIs. You have to select individual
 	  components like codecs or RTC under the corresponding menus.
 
+config MFD_AC200
+	tristate "X-Powers AC200"
+	select MFD_CORE
+	depends on I2C
+	help
+	  If you say Y here you get support for the X-Powers AC200 IC.
+	  This driver include only the core APIs. You have to select individual
+	  components like Ethernet PHY or RTC under the corresponding menus.
+
 config MFD_AXP20X
 	tristate
 	select MFD_CORE
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index f935d10cbf0f..a20407290d6f 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -142,6 +142,7 @@ obj-$(CONFIG_MFD_DA9052_SPI)	+= da9052-spi.o
 obj-$(CONFIG_MFD_DA9052_I2C)	+= da9052-i2c.o
 
 obj-$(CONFIG_MFD_AC100)		+= ac100.o
+obj-$(CONFIG_MFD_AC200)		+= ac200.o
 obj-$(CONFIG_MFD_AXP20X)	+= axp20x.o
 obj-$(CONFIG_MFD_AXP20X_I2C)	+= axp20x-i2c.o
 obj-$(CONFIG_MFD_AXP20X_RSB)	+= axp20x-rsb.o
diff --git a/drivers/mfd/ac200.c b/drivers/mfd/ac200.c
new file mode 100644
index 000000000000..cf2710b84879
--- /dev/null
+++ b/drivers/mfd/ac200.c
@@ -0,0 +1,188 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * MFD core driver for X-Powers' AC200 IC
+ *
+ * The AC200 is a chip which is co-packaged with Allwinner H6 SoC and
+ * includes analog audio codec, analog TV encoder, ethernet PHY, eFuse
+ * and RTC.
+ *
+ * Copyright (c) 2020 Jernej Skrabec <jernej.skrabec@siol.net>
+ */
+
+#include <linux/i2c.h>
+#include <linux/interrupt.h>
+#include <linux/kernel.h>
+#include <linux/mfd/core.h>
+#include <linux/mfd/ac200.h>
+#include <linux/module.h>
+#include <linux/of.h>
+
+/* Interrupts */
+#define AC200_IRQ_RTC  0
+#define AC200_IRQ_EPHY 1
+#define AC200_IRQ_TVE  2
+
+/* IRQ enable register */
+#define AC200_SYS_IRQ_ENABLE_OUT_EN BIT(15)
+#define AC200_SYS_IRQ_ENABLE_RTC    BIT(12)
+#define AC200_SYS_IRQ_ENABLE_EPHY   BIT(8)
+#define AC200_SYS_IRQ_ENABLE_TVE    BIT(4)
+
+static const struct regmap_range_cfg ac200_range_cfg[] = {
+	{
+		.range_min = AC200_SYS_VERSION,
+		.range_max = AC200_IC_CHARA1,
+		.selector_reg = AC200_TWI_REG_ADDR_H,
+		.selector_mask = 0xff,
+		.selector_shift = 0,
+		.window_start = 0,
+		.window_len = 256,
+	}
+};
+
+static const struct regmap_config ac200_regmap_config = {
+	.reg_bits	= 8,
+	.val_bits	= 16,
+	.ranges		= ac200_range_cfg,
+	.num_ranges	= ARRAY_SIZE(ac200_range_cfg),
+	.max_register	= AC200_IC_CHARA1,
+};
+
+static const struct regmap_irq ac200_regmap_irqs[] = {
+	REGMAP_IRQ_REG(AC200_IRQ_RTC,  0, AC200_SYS_IRQ_ENABLE_RTC),
+	REGMAP_IRQ_REG(AC200_IRQ_EPHY, 0, AC200_SYS_IRQ_ENABLE_EPHY),
+	REGMAP_IRQ_REG(AC200_IRQ_TVE,  0, AC200_SYS_IRQ_ENABLE_TVE),
+};
+
+static const struct regmap_irq_chip ac200_regmap_irq_chip = {
+	.name			= "ac200_irq_chip",
+	.status_base		= AC200_SYS_IRQ_STATUS,
+	.mask_base		= AC200_SYS_IRQ_ENABLE,
+	.mask_invert		= true,
+	.irqs			= ac200_regmap_irqs,
+	.num_irqs		= ARRAY_SIZE(ac200_regmap_irqs),
+	.num_regs		= 1,
+};
+
+static const struct resource ephy_resource[] = {
+	DEFINE_RES_IRQ(AC200_IRQ_EPHY),
+};
+
+static const struct mfd_cell ac200_cells[] = {
+	{
+		.name		= "ac200-ephy",
+		.num_resources	= ARRAY_SIZE(ephy_resource),
+		.resources	= ephy_resource,
+		.of_compatible	= "x-powers,ac200-ephy",
+	},
+};
+
+static int ac200_i2c_probe(struct i2c_client *i2c,
+			   const struct i2c_device_id *id)
+{
+	struct device *dev = &i2c->dev;
+	struct ac200_dev *ac200;
+	int ret;
+
+	ac200 = devm_kzalloc(dev, sizeof(*ac200), GFP_KERNEL);
+	if (!ac200)
+		return -ENOMEM;
+
+	i2c_set_clientdata(i2c, ac200);
+
+	ac200->regmap = devm_regmap_init_i2c(i2c, &ac200_regmap_config);
+	if (IS_ERR(ac200->regmap)) {
+		dev_err(dev, "regmap init failed\n");
+		return PTR_ERR(ac200->regmap);
+	}
+
+	ac200->clk = devm_clk_get(dev, NULL);
+	if (IS_ERR(ac200->clk)) {
+		dev_err(dev, "Can't obtain the clock!\n");
+		return PTR_ERR(ac200->clk);
+	}
+
+	ret = clk_prepare_enable(ac200->clk);
+	if (ret)
+		return ret;
+
+	/* do a reset to put chip in a known state */
+
+	ret = regmap_write(ac200->regmap, AC200_SYS_CONTROL, 0);
+	if (ret)
+		goto err_free_clk;
+
+	ret = regmap_write(ac200->regmap, AC200_SYS_CONTROL, 1);
+	if (ret)
+		goto err_free_clk;
+
+	/* enable interrupt pin */
+
+	ret = regmap_write(ac200->regmap, AC200_SYS_IRQ_ENABLE,
+			   AC200_SYS_IRQ_ENABLE_OUT_EN);
+	if (ret)
+		goto err_free_clk;
+
+	ret = regmap_add_irq_chip(ac200->regmap, i2c->irq, IRQF_ONESHOT, 0,
+				  &ac200_regmap_irq_chip, &ac200->regmap_irqc);
+	if (ret)
+		goto err_free_clk;
+
+	ret = devm_mfd_add_devices(dev, PLATFORM_DEVID_NONE, ac200_cells,
+				   ARRAY_SIZE(ac200_cells), NULL, 0, NULL);
+	if (ret) {
+		dev_err(dev, "failed to add MFD devices: %d\n", ret);
+		goto err_del_irq_chip;
+	}
+
+	return 0;
+
+err_del_irq_chip:
+	regmap_del_irq_chip(i2c->irq, ac200->regmap_irqc);
+err_free_clk:
+	clk_disable_unprepare(ac200->clk);
+
+	return ret;
+}
+
+static int ac200_i2c_remove(struct i2c_client *i2c)
+{
+	struct ac200_dev *ac200 = i2c_get_clientdata(i2c);
+
+	/* put chip in reset state */
+	regmap_write(ac200->regmap, AC200_SYS_CONTROL, 0);
+
+	mfd_remove_devices(&i2c->dev);
+	regmap_del_irq_chip(i2c->irq, ac200->regmap_irqc);
+
+	clk_disable_unprepare(ac200->clk);
+
+	return 0;
+}
+
+static const struct i2c_device_id ac200_ids[] = {
+	{ "ac200", },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(i2c, ac200_ids);
+
+static const struct of_device_id ac200_of_match[] = {
+	{ .compatible = "x-powers,ac200" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, ac200_of_match);
+
+static struct i2c_driver ac200_i2c_driver = {
+	.driver = {
+		.name	= "ac200",
+		.of_match_table	= of_match_ptr(ac200_of_match),
+	},
+	.probe	= ac200_i2c_probe,
+	.remove = ac200_i2c_remove,
+	.id_table = ac200_ids,
+};
+module_i2c_driver(ac200_i2c_driver);
+
+MODULE_DESCRIPTION("MFD core driver for AC200");
+MODULE_AUTHOR("Jernej Skrabec <jernej.skrabec@siol.net>");
+MODULE_LICENSE("GPL v2");
diff --git a/include/linux/mfd/ac200.h b/include/linux/mfd/ac200.h
new file mode 100644
index 000000000000..f75baf0d910c
--- /dev/null
+++ b/include/linux/mfd/ac200.h
@@ -0,0 +1,210 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * AC200 register list
+ *
+ * Copyright (C) 2019 Jernej Skrabec <jernej.skrabec@siol.net>
+ */
+
+#ifndef __LINUX_MFD_AC200_H
+#define __LINUX_MFD_AC200_H
+
+#include <linux/clk.h>
+#include <linux/regmap.h>
+
+/* interface registers (can be accessed from any page) */
+#define AC200_TWI_CHANGE_TO_RSB		0x3E
+#define AC200_TWI_PAD_DELAY		0xC4
+#define AC200_TWI_REG_ADDR_H		0xFE
+
+/* General registers */
+#define AC200_SYS_VERSION		0x0000
+#define AC200_SYS_CONTROL		0x0002
+#define AC200_SYS_IRQ_ENABLE		0x0004
+#define AC200_SYS_IRQ_STATUS		0x0006
+#define AC200_SYS_CLK_CTL		0x0008
+#define AC200_SYS_DLDO_OSC_CTL		0x000A
+#define AC200_SYS_PLL_CTL0		0x000C
+#define AC200_SYS_PLL_CTL1		0x000E
+#define AC200_SYS_AUDIO_CTL0		0x0010
+#define AC200_SYS_AUDIO_CTL1		0x0012
+#define AC200_SYS_EPHY_CTL0		0x0014
+#define AC200_SYS_EPHY_CTL1		0x0016
+#define AC200_SYS_TVE_CTL0		0x0018
+#define AC200_SYS_TVE_CTL1		0x001A
+
+/* Audio Codec registers */
+#define AC200_AC_SYS_CLK_CTL		0x2000
+#define AC200_SYS_MOD_RST		0x2002
+#define AC200_SYS_SAMP_CTL		0x2004
+#define AC200_I2S_CTL			0x2100
+#define AC200_I2S_CLK			0x2102
+#define AC200_I2S_FMT0			0x2104
+#define AC200_I2S_FMT1			0x2108
+#define AC200_I2S_MIX_SRC		0x2114
+#define AC200_I2S_MIX_GAIN		0x2116
+#define AC200_I2S_DACDAT_DVC		0x2118
+#define AC200_I2S_ADCDAT_DVC		0x211A
+#define AC200_AC_DAC_DPC		0x2200
+#define AC200_AC_DAC_MIX_SRC		0x2202
+#define AC200_AC_DAC_MIX_GAIN		0x2204
+#define AC200_DACA_OMIXER_CTRL		0x2220
+#define AC200_OMIXER_SR			0x2222
+#define AC200_LINEOUT_CTRL		0x2224
+#define AC200_AC_ADC_DPC		0x2300
+#define AC200_MBIAS_CTRL		0x2310
+#define AC200_ADC_MIC_CTRL		0x2320
+#define AC200_ADCMIXER_SR		0x2322
+#define AC200_ANALOG_TUNING0		0x232A
+#define AC200_ANALOG_TUNING1		0x232C
+#define AC200_AC_AGC_SEL		0x2480
+#define AC200_ADC_DAPLCTRL		0x2500
+#define AC200_ADC_DAPRCTRL		0x2502
+#define AC200_ADC_DAPLSTA		0x2504
+#define AC200_ADC_DAPRSTA		0x2506
+#define AC200_ADC_DAPLTL		0x2508
+#define AC200_ADC_DAPRTL		0x250A
+#define AC200_ADC_DAPLHAC		0x250C
+#define AC200_ADC_DAPLLAC		0x250E
+#define AC200_ADC_DAPRHAC		0x2510
+#define AC200_ADC_DAPRLAC		0x2512
+#define AC200_ADC_DAPLDT		0x2514
+#define AC200_ADC_DAPLAT		0x2516
+#define AC200_ADC_DAPRDT		0x2518
+#define AC200_ADC_DAPRAT		0x251A
+#define AC200_ADC_DAPNTH		0x251C
+#define AC200_ADC_DAPLHNAC		0x251E
+#define AC200_ADC_DAPLLNAC		0x2520
+#define AC200_ADC_DAPRHNAC		0x2522
+#define AC200_ADC_DAPRLNAC		0x2524
+#define AC200_AC_DAPHHPFC		0x2526
+#define AC200_AC_DAPLHPFC		0x2528
+#define AC200_AC_DAPOPT			0x252A
+#define AC200_AC_DAC_DAPCTRL		0x3000
+#define AC200_AC_DRC_HHPFC		0x3002
+#define AC200_AC_DRC_LHPFC		0x3004
+#define AC200_AC_DRC_CTRL		0x3006
+#define AC200_AC_DRC_LPFHAT		0x3008
+#define AC200_AC_DRC_LPFLAT		0x300A
+#define AC200_AC_DRC_RPFHAT		0x300C
+#define AC200_AC_DRC_RPFLAT		0x300E
+#define AC200_AC_DRC_LPFHRT		0x3010
+#define AC200_AC_DRC_LPFLRT		0x3012
+#define AC200_AC_DRC_RPFHRT		0x3014
+#define AC200_AC_DRC_RPFLRT		0x3016
+#define AC200_AC_DRC_LRMSHAT		0x3018
+#define AC200_AC_DRC_LRMSLAT		0x301A
+#define AC200_AC_DRC_RRMSHAT		0x301C
+#define AC200_AC_DRC_RRMSLAT		0x301E
+#define AC200_AC_DRC_HCT		0x3020
+#define AC200_AC_DRC_LCT		0x3022
+#define AC200_AC_DRC_HKC		0x3024
+#define AC200_AC_DRC_LKC		0x3026
+#define AC200_AC_DRC_HOPC		0x3028
+#define AC200_AC_DRC_LOPC		0x302A
+#define AC200_AC_DRC_HLT		0x302C
+#define AC200_AC_DRC_LLT		0x302E
+#define AC200_AC_DRC_HKI		0x3030
+#define AC200_AC_DRC_LKI		0x3032
+#define AC200_AC_DRC_HOPL		0x3034
+#define AC200_AC_DRC_LOPL		0x3036
+#define AC200_AC_DRC_HET		0x3038
+#define AC200_AC_DRC_LET		0x303A
+#define AC200_AC_DRC_HKE		0x303C
+#define AC200_AC_DRC_LKE		0x303E
+#define AC200_AC_DRC_HOPE		0x3040
+#define AC200_AC_DRC_LOPE		0x3042
+#define AC200_AC_DRC_HKN		0x3044
+#define AC200_AC_DRC_LKN		0x3046
+#define AC200_AC_DRC_SFHAT		0x3048
+#define AC200_AC_DRC_SFLAT		0x304A
+#define AC200_AC_DRC_SFHRT		0x304C
+#define AC200_AC_DRC_SFLRT		0x304E
+#define AC200_AC_DRC_MXGHS		0x3050
+#define AC200_AC_DRC_MXGLS		0x3052
+#define AC200_AC_DRC_MNGHS		0x3054
+#define AC200_AC_DRC_MNGLS		0x3056
+#define AC200_AC_DRC_EPSHC		0x3058
+#define AC200_AC_DRC_EPSLC		0x305A
+#define AC200_AC_DRC_HPFHGAIN		0x305E
+#define AC200_AC_DRC_HPFLGAIN		0x3060
+#define AC200_AC_DRC_BISTCR		0x3100
+#define AC200_AC_DRC_BISTST		0x3102
+
+/* TVE registers */
+#define AC200_TVE_CTL0			0x4000
+#define AC200_TVE_CTL1			0x4002
+#define AC200_TVE_MOD0			0x4004
+#define AC200_TVE_MOD1			0x4006
+#define AC200_TVE_DAC_CFG0		0x4008
+#define AC200_TVE_DAC_CFG1		0x400A
+#define AC200_TVE_YC_DELAY		0x400C
+#define AC200_TVE_YC_FILTER		0x400E
+#define AC200_TVE_BURST_FRQ0		0x4010
+#define AC200_TVE_BURST_FRQ1		0x4012
+#define AC200_TVE_FRONT_PORCH		0x4014
+#define AC200_TVE_BACK_PORCH		0x4016
+#define AC200_TVE_TOTAL_LINE		0x401C
+#define AC200_TVE_FIRST_ACTIVE		0x401E
+#define AC200_TVE_BLACK_LEVEL		0x4020
+#define AC200_TVE_BLANK_LEVEL		0x4022
+#define AC200_TVE_PLUG_EN		0x4030
+#define AC200_TVE_PLUG_IRQ_EN		0x4032
+#define AC200_TVE_PLUG_IRQ_STA		0x4034
+#define AC200_TVE_PLUG_STA		0x4038
+#define AC200_TVE_PLUG_DEBOUNCE		0x4040
+#define AC200_TVE_DAC_TEST		0x4042
+#define AC200_TVE_PLUG_PULSE_LEVEL	0x40F4
+#define AC200_TVE_PLUG_PULSE_START	0x40F8
+#define AC200_TVE_PLUG_PULSE_PERIOD	0x40FA
+#define AC200_TVE_IF_CTL		0x5000
+#define AC200_TVE_IF_TIM0		0x5008
+#define AC200_TVE_IF_TIM1		0x500A
+#define AC200_TVE_IF_TIM2		0x500C
+#define AC200_TVE_IF_TIM3		0x500E
+#define AC200_TVE_IF_SYNC0		0x5010
+#define AC200_TVE_IF_SYNC1		0x5012
+#define AC200_TVE_IF_SYNC2		0x5014
+#define AC200_TVE_IF_TIM4		0x5016
+#define AC200_TVE_IF_STATUS		0x5018
+
+/* EPHY registers */
+#define AC200_EPHY_CTL			0x6000
+#define AC200_EPHY_BIST			0x6002
+
+/* eFuse registers (0x8000 - 0x9FFF, layout unknown) */
+
+/* RTC registers */
+#define AC200_LOSC_CTRL0		0xA000
+#define AC200_LOSC_CTRL1		0xA002
+#define AC200_LOSC_AUTO_SWT_STA		0xA004
+#define AC200_INTOSC_CLK_PRESCAL	0xA008
+#define AC200_RTC_YY_MM_DD0		0xA010
+#define AC200_RTC_YY_MM_DD1		0xA012
+#define AC200_RTC_HH_MM_SS0		0xA014
+#define AC200_RTC_HH_MM_SS1		0xA016
+#define AC200_ALARM0_CUR_VLU0		0xA024
+#define AC200_ALARM0_CUR_VLU1		0xA026
+#define AC200_ALARM0_ENABLE		0xA028
+#define AC200_ALARM0_IRQ_EN		0xA02C
+#define AC200_ALARM0_IRQ_STA		0xA030
+#define AC200_ALARM1_WK_HH_MM_SS0	0xA040
+#define AC200_ALARM1_WK_HH_MM_SS1	0xA042
+#define AC200_ALARM1_ENABLE		0xA044
+#define AC200_ALARM1_IRQ_EN		0xA048
+#define AC200_ALARM1_IRQ_STA		0xA04C
+#define AC200_ALARM_CONFIG		0xA050
+#define AC200_LOSC_OUT_GATING		0xA060
+#define AC200_GP_DATA(x)		(0xA100 + (x) * 2)
+#define AC200_RTC_DEB			0xA170
+#define AC200_GPL_HOLD_OUTPUT		0xA180
+#define AC200_VDD_RTC			0xA190
+#define AC200_IC_CHARA0			0xA1F0
+#define AC200_IC_CHARA1			0xA1F2
+
+struct ac200_dev {
+	struct clk			*clk;
+	struct regmap			*regmap;
+	struct regmap_irq_chip_data	*regmap_irqc;
+};
+
+#endif /* __LINUX_MFD_AC200_H */
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
