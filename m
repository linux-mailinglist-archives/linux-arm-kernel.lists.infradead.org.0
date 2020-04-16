Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10EC41AD003
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 20:58:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IBYPJgpw6VtvmDBspszjXzitrYo+GgfHTVwDGO3v+7w=; b=DLEtmIyed+iXMO
	8r5b5eohmPvAD01YA5GR2ba5bS1IBYK3oDuT+kjaN2iKYoMK5sf+v0XNJlxHfBnSWEwxlynRRjsfu
	nNxAocDOfRcV72U8G5VKK1W6ln2mNuDy/KzXgY17XbuIWOQnaQDWYu7ToMlpGumo72mTg6GZVgn2S
	7FDBufvBoSKNJ3ZofskOH6ITMgLSgnVLyNBl4w2bwdbKaFUxvLD+S2eAPuLxjWlZSK9flStSTJt6T
	lzn1c4fLC1R+53l+X9ckB2Km48zaCq7NhjllTF0zHQvuYOGKAWI/QI8ZinPUv5stOmxLTSmRHRnK5
	wv3X8etgWN1UVI+5uIoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP9ir-0002GA-SN; Thu, 16 Apr 2020 18:58:49 +0000
Received: from mailoutvs52.siol.net ([185.57.226.243] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP9iM-00026u-SI
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 18:58:21 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id DD8D0524696;
 Thu, 16 Apr 2020 20:58:13 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id Y-h1UHWlQNt9; Thu, 16 Apr 2020 20:58:13 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 30C905246A3;
 Thu, 16 Apr 2020 20:58:13 +0200 (CEST)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id B19535246A4;
 Thu, 16 Apr 2020 20:58:10 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: robh+dt@kernel.org, andrew@lunn.ch, f.fainelli@gmail.com,
 hkallweit1@gmail.com
Subject: [RFC PATCH 2/4] net: phy: Add support for AC200 EPHY
Date: Thu, 16 Apr 2020 20:57:56 +0200
Message-Id: <20200416185758.1388148-3-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200416185758.1388148-1-jernej.skrabec@siol.net>
References: <20200416185758.1388148-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_115819_075106_043DA6C8 
X-CRM114-Status: GOOD (  16.46  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.243 listed in list.dnswl.org]
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

AC200 MFD IC supports Fast Ethernet PHY. Add a driver for it.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/net/phy/Kconfig  |   7 ++
 drivers/net/phy/Makefile |   1 +
 drivers/net/phy/ac200.c  | 206 +++++++++++++++++++++++++++++++++++++++
 3 files changed, 214 insertions(+)
 create mode 100644 drivers/net/phy/ac200.c

diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
index 3fa33d27eeba..16af69f69eaf 100644
--- a/drivers/net/phy/Kconfig
+++ b/drivers/net/phy/Kconfig
@@ -288,6 +288,13 @@ config ADIN_PHY
 	  - ADIN1300 - Robust,Industrial, Low Latency 10/100/1000 Gigabit
 	    Ethernet PHY
 
+config AC200_PHY
+	tristate "AC200 EPHY"
+	depends on NVMEM
+	depends on OF
+	help
+	  Fast ethernet PHY as found in X-Powers AC200 multi-function device.
+
 config AMD_PHY
 	tristate "AMD PHYs"
 	---help---
diff --git a/drivers/net/phy/Makefile b/drivers/net/phy/Makefile
index 2f5c7093a65b..b0c5b91900fa 100644
--- a/drivers/net/phy/Makefile
+++ b/drivers/net/phy/Makefile
@@ -53,6 +53,7 @@ obj-$(CONFIG_SFP)		+= sfp.o
 sfp-obj-$(CONFIG_SFP)		+= sfp-bus.o
 obj-y				+= $(sfp-obj-y) $(sfp-obj-m)
 
+obj-$(CONFIG_AC200_PHY)		+= ac200.o
 obj-$(CONFIG_ADIN_PHY)		+= adin.o
 obj-$(CONFIG_AMD_PHY)		+= amd.o
 aquantia-objs			+= aquantia_main.o
diff --git a/drivers/net/phy/ac200.c b/drivers/net/phy/ac200.c
new file mode 100644
index 000000000000..3d7856ff8f91
--- /dev/null
+++ b/drivers/net/phy/ac200.c
@@ -0,0 +1,206 @@
+// SPDX-License-Identifier: GPL-2.0+
+/**
+ * Driver for AC200 Ethernet PHY
+ *
+ * Copyright (c) 2020 Jernej Skrabec <jernej.skrabec@siol.net>
+ */
+
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/mfd/ac200.h>
+#include <linux/nvmem-consumer.h>
+#include <linux/of.h>
+#include <linux/phy.h>
+#include <linux/platform_device.h>
+
+#define AC200_EPHY_ID			0x00441400
+#define AC200_EPHY_ID_MASK		0x0ffffff0
+
+/* macros for system ephy control 0 register */
+#define AC200_EPHY_RESET_INVALID	BIT(0)
+#define AC200_EPHY_SYSCLK_GATING	BIT(1)
+
+/* macros for system ephy control 1 register */
+#define AC200_EPHY_E_EPHY_MII_IO_EN	BIT(0)
+#define AC200_EPHY_E_LNK_LED_IO_EN	BIT(1)
+#define AC200_EPHY_E_SPD_LED_IO_EN	BIT(2)
+#define AC200_EPHY_E_DPX_LED_IO_EN	BIT(3)
+
+/* macros for ephy control register */
+#define AC200_EPHY_SHUTDOWN		BIT(0)
+#define AC200_EPHY_LED_POL		BIT(1)
+#define AC200_EPHY_CLK_SEL		BIT(2)
+#define AC200_EPHY_ADDR(x)		(((x) & 0x1F) << 4)
+#define AC200_EPHY_XMII_SEL		BIT(11)
+#define AC200_EPHY_CALIB(x)		(((x) & 0xF) << 12)
+
+struct ac200_ephy_dev {
+	struct phy_driver	*ephy;
+	struct regmap		*regmap;
+};
+
+static char *ac200_phy_name = "AC200 EPHY";
+
+static int ac200_ephy_config_init(struct phy_device *phydev)
+{
+	const struct ac200_ephy_dev *priv = phydev->drv->driver_data;
+	unsigned int value;
+	int ret;
+
+	phy_write(phydev, 0x1f, 0x0100);	/* Switch to Page 1 */
+	phy_write(phydev, 0x12, 0x4824);	/* Disable APS */
+
+	phy_write(phydev, 0x1f, 0x0200);	/* Switch to Page 2 */
+	phy_write(phydev, 0x18, 0x0000);	/* PHYAFE TRX optimization */
+
+	phy_write(phydev, 0x1f, 0x0600);	/* Switch to Page 6 */
+	phy_write(phydev, 0x14, 0x708f);	/* PHYAFE TX optimization */
+	phy_write(phydev, 0x13, 0xF000);	/* PHYAFE RX optimization */
+	phy_write(phydev, 0x15, 0x1530);
+
+	phy_write(phydev, 0x1f, 0x0800);	/* Switch to Page 6 */
+	phy_write(phydev, 0x18, 0x00bc);	/* PHYAFE TRX optimization */
+
+	phy_write(phydev, 0x1f, 0x0100);	/* switch to page 1 */
+	phy_clear_bits(phydev, 0x17, BIT(3));	/* disable intelligent IEEE */
+
+	/* next two blocks disable 802.3az IEEE */
+	phy_write(phydev, 0x1f, 0x0200);	/* switch to page 2 */
+	phy_write(phydev, 0x18, 0x0000);
+
+	phy_write(phydev, 0x1f, 0x0000);	/* switch to page 0 */
+	phy_clear_bits_mmd(phydev, 0x7, 0x3c, BIT(1));
+
+	if (phydev->interface == PHY_INTERFACE_MODE_RMII)
+		value = AC200_EPHY_XMII_SEL;
+	else
+		value = 0;
+
+	ret = regmap_update_bits(priv->regmap, AC200_EPHY_CTL,
+				 AC200_EPHY_XMII_SEL, value);
+	if (ret)
+		return ret;
+
+	/* FIXME: This is H6 specific */
+	phy_set_bits(phydev, 0x13, BIT(12));
+
+	return 0;
+}
+
+static int ac200_ephy_probe(struct platform_device *pdev)
+{
+	struct ac200_dev *ac200 = dev_get_drvdata(pdev->dev.parent);
+	struct device *dev = &pdev->dev;
+	struct ac200_ephy_dev *priv;
+	struct nvmem_cell *calcell;
+	struct phy_driver *ephy;
+	u16 *caldata, calib;
+	size_t callen;
+	int ret;
+
+	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	ephy = devm_kzalloc(dev, sizeof(*ephy), GFP_KERNEL);
+	if (!ephy)
+		return -ENOMEM;
+
+	calcell = devm_nvmem_cell_get(dev, "calibration");
+	if (IS_ERR(calcell)) {
+		dev_err(dev, "Unable to find calibration data!\n");
+		return PTR_ERR(calcell);
+	}
+
+	caldata = nvmem_cell_read(calcell, &callen);
+	if (IS_ERR(caldata)) {
+		dev_err(dev, "Unable to read calibration data!\n");
+		return PTR_ERR(caldata);
+	}
+
+	if (callen != 2) {
+		dev_err(dev, "Calibration data has wrong length: 2 != %zu\n",
+			callen);
+		kfree(caldata);
+		return -EINVAL;
+	}
+
+	calib = *caldata + 3;
+	kfree(caldata);
+
+	ephy->phy_id = AC200_EPHY_ID;
+	ephy->phy_id_mask = AC200_EPHY_ID_MASK;
+	ephy->name = ac200_phy_name;
+	ephy->driver_data = priv;
+	ephy->soft_reset = genphy_soft_reset;
+	ephy->config_init = ac200_ephy_config_init;
+	ephy->suspend = genphy_suspend;
+	ephy->resume = genphy_resume;
+
+	priv->ephy = ephy;
+	priv->regmap = ac200->regmap;
+	platform_set_drvdata(pdev, priv);
+
+	ret = regmap_write(ac200->regmap, AC200_SYS_EPHY_CTL0,
+			   AC200_EPHY_RESET_INVALID |
+			   AC200_EPHY_SYSCLK_GATING);
+	if (ret)
+		return ret;
+
+	ret = regmap_write(ac200->regmap, AC200_SYS_EPHY_CTL1,
+			   AC200_EPHY_E_EPHY_MII_IO_EN |
+			   AC200_EPHY_E_LNK_LED_IO_EN |
+			   AC200_EPHY_E_SPD_LED_IO_EN |
+			   AC200_EPHY_E_DPX_LED_IO_EN);
+	if (ret)
+		return ret;
+
+	ret = regmap_write(ac200->regmap, AC200_EPHY_CTL,
+			   AC200_EPHY_LED_POL |
+			   AC200_EPHY_CLK_SEL |
+			   AC200_EPHY_ADDR(1) |
+			   AC200_EPHY_CALIB(calib));
+	if (ret)
+		return ret;
+
+	ret = phy_driver_register(priv->ephy, THIS_MODULE);
+	if (ret) {
+		dev_err(dev, "Unable to register phy\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+static int ac200_ephy_remove(struct platform_device *pdev)
+{
+	struct ac200_ephy_dev *priv = platform_get_drvdata(pdev);
+
+	phy_driver_unregister(priv->ephy);
+
+	regmap_write(priv->regmap, AC200_EPHY_CTL, AC200_EPHY_SHUTDOWN);
+	regmap_write(priv->regmap, AC200_SYS_EPHY_CTL1, 0);
+	regmap_write(priv->regmap, AC200_SYS_EPHY_CTL0, 0);
+
+	return 0;
+}
+
+static const struct of_device_id ac200_ephy_match[] = {
+	{ .compatible = "x-powers,ac200-ephy" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, ac200_ephy_match);
+
+static struct platform_driver ac200_ephy_driver = {
+	.probe		= ac200_ephy_probe,
+	.remove		= ac200_ephy_remove,
+	.driver		= {
+		.name		= "ac200-ephy",
+		.of_match_table	= ac200_ephy_match,
+	},
+};
+module_platform_driver(ac200_ephy_driver);
+
+MODULE_AUTHOR("Jernej Skrabec <jernej.skrabec@siol.net>");
+MODULE_DESCRIPTION("AC200 Ethernet PHY driver");
+MODULE_LICENSE("GPL");
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
