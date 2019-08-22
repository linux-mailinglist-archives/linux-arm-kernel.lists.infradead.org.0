Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C460F98FA6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 11:39:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vdk+0gnYtrQSoyG62igVbGwWP1bMkf8NH8QVhG5/VCk=; b=BWg8nmq9I2LUQP
	FG3d/3E7LcNr7vpm1IhAkZi2S5o0oWd5gWwQTMxD14iMEwfvE+t1cg3+wGKf1YrkYKXG59PxFeyz/
	iboWTyeUb7ewIZWb154Sio7RA+ryktWHM2FGlMjz+48SL97OgDXZqJszAJdhwi4Q2IvF8ScQSUzD9
	baMArk+e6Lflx4F6nqTANIylBBKmo6anJLL7tSCYGni+qRtI5U58csByruc8CzNFnDLcMe8B3D+tE
	O1e/O0M5zimAVuoCmvoRvu5IobAiQat+cm2I7/bw2jzjRhsU4ffo9ET9R2LHtVvve4UYkh3tKIHGo
	G2bp4631N40+0gnGF38Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0jYP-0003ou-CX; Thu, 22 Aug 2019 09:38:49 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0jUI-0007Ly-CS
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 09:34:36 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id C80BDD749F;
 Thu, 22 Aug 2019 11:34:32 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id QccKzYIIqiku; Thu, 22 Aug 2019 11:33:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 1260CD755B;
 Thu, 22 Aug 2019 11:33:06 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id lMDnA7AaNIck; Thu, 22 Aug 2019 11:33:01 +0200 (CEST)
Received: from belphegor.brq.redhat.com (nat-pool-brq-t.redhat.com
 [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 8E992D756D;
 Thu, 22 Aug 2019 11:26:52 +0200 (CEST)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Olof Johansson <olof@lixom.net>
Subject: [PATCH v2 19/20] phy: phy-mmp3-usb: add a new driver
Date: Thu, 22 Aug 2019 11:26:42 +0200
Message-Id: <20190822092643.593488-20-lkundrak@v3.sk>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190822092643.593488-1-lkundrak@v3.sk>
References: <20190822092643.593488-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_023434_885697_494AC1CD 
X-CRM114-Status: GOOD (  16.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, Stephen Boyd <sboyd@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is the USB2 PHY as found on the Marvell MMP3 SoC. Based on Marvell GPL
release.

While at that, also add a MAINTAINERS entry including the other MMP PHY
driver.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
---
 MAINTAINERS                        |   7 +
 drivers/phy/marvell/Kconfig        |  11 ++
 drivers/phy/marvell/Makefile       |   1 +
 drivers/phy/marvell/phy-mmp3-usb.c | 291 +++++++++++++++++++++++++++++
 4 files changed, 310 insertions(+)
 create mode 100644 drivers/phy/marvell/phy-mmp3-usb.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 014f533d5aff8..a18e87a16623c 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10798,6 +10798,13 @@ F:	arch/arm/boot/dts/mmp*
 F:	arch/arm/mach-mmp/
 F:	linux/soc/mmp/
 
+MMP USB PHY DRIVERS
+R:	Lubomir Rintel <lkundrak@v3.sk>
+L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
+S:	Maintained
+F:	drivers/phy/marvell/phy-mmp3-usb.c
+F:	drivers/phy/marvell/phy-pxa-usb.c
+
 MMU GATHER AND TLB INVALIDATION
 M:	Will Deacon <will@kernel.org>
 M:	"Aneesh Kumar K.V" <aneesh.kumar@linux.ibm.com>
diff --git a/drivers/phy/marvell/Kconfig b/drivers/phy/marvell/Kconfig
index 0e1642419c0bf..d33ef35b3e51b 100644
--- a/drivers/phy/marvell/Kconfig
+++ b/drivers/phy/marvell/Kconfig
@@ -102,3 +102,14 @@ config PHY_PXA_USB
 	  The PHY driver will be used by Marvell udc/ehci/otg driver.
 
 	  To compile this driver as a module, choose M here.
+
+config PHY_MMP3_USB
+	tristate "Marvell MMP3 USB PHY Driver"
+	depends on MACH_MMP3_DT || COMPILE_TEST
+	select GENERIC_PHY
+	help
+	  Enable this to support Marvell MMP3 USB PHY driver for Marvell
+	  SoC. This driver will do the PHY initialization and shutdown.
+	  The PHY driver will be used by Marvell udc/ehci/otg driver.
+
+	  To compile this driver as a module, choose M here.
diff --git a/drivers/phy/marvell/Makefile b/drivers/phy/marvell/Makefile
index 434eb9ca6cc3f..5a106b1549f41 100644
--- a/drivers/phy/marvell/Makefile
+++ b/drivers/phy/marvell/Makefile
@@ -2,6 +2,7 @@
 obj-$(CONFIG_ARMADA375_USBCLUSTER_PHY)	+= phy-armada375-usb2.o
 obj-$(CONFIG_PHY_BERLIN_SATA)		+= phy-berlin-sata.o
 obj-$(CONFIG_PHY_BERLIN_USB)		+= phy-berlin-usb.o
+obj-$(CONFIG_PHY_MMP3_USB)		+= phy-mmp3-usb.o
 obj-$(CONFIG_PHY_MVEBU_A3700_COMPHY)	+= phy-mvebu-a3700-comphy.o
 obj-$(CONFIG_PHY_MVEBU_A3700_UTMI)	+= phy-mvebu-a3700-utmi.o
 obj-$(CONFIG_PHY_MVEBU_A38X_COMPHY)	+= phy-armada38x-comphy.o
diff --git a/drivers/phy/marvell/phy-mmp3-usb.c b/drivers/phy/marvell/phy-mmp3-usb.c
new file mode 100644
index 0000000000000..499869595a582
--- /dev/null
+++ b/drivers/phy/marvell/phy-mmp3-usb.c
@@ -0,0 +1,291 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2011 Marvell International Ltd. All rights reserved.
+ * Copyright (C) 2018,2019 Lubomir Rintel <lkundrak@v3.sk>
+ */
+
+#include <linux/delay.h>
+#include <linux/io.h>
+#include <linux/module.h>
+#include <linux/phy/phy.h>
+#include <linux/platform_device.h>
+#include <linux/soc/mmp/cputype.h>
+
+#define USB2_PLL_REG0		0x4
+#define USB2_PLL_REG1		0x8
+#define USB2_TX_REG0		0x10
+#define USB2_TX_REG1		0x14
+#define USB2_TX_REG2		0x18
+#define USB2_RX_REG0		0x20
+#define USB2_RX_REG1		0x24
+#define USB2_RX_REG2		0x28
+#define USB2_ANA_REG0		0x30
+#define USB2_ANA_REG1		0x34
+#define USB2_ANA_REG2		0x38
+#define USB2_DIG_REG0		0x3C
+#define USB2_DIG_REG1		0x40
+#define USB2_DIG_REG2		0x44
+#define USB2_DIG_REG3		0x48
+#define USB2_TEST_REG0		0x4C
+#define USB2_TEST_REG1		0x50
+#define USB2_TEST_REG2		0x54
+#define USB2_CHARGER_REG0	0x58
+#define USB2_OTG_REG0		0x5C
+#define USB2_PHY_MON0		0x60
+#define USB2_RESETVE_REG0	0x64
+#define USB2_ICID_REG0		0x78
+#define USB2_ICID_REG1		0x7C
+
+/* USB2_PLL_REG0 */
+
+/* This is for Ax stepping */
+#define USB2_PLL_FBDIV_SHIFT_MMP3		0
+#define USB2_PLL_FBDIV_MASK_MMP3		(0xFF << 0)
+
+#define USB2_PLL_REFDIV_SHIFT_MMP3		8
+#define USB2_PLL_REFDIV_MASK_MMP3		(0xF << 8)
+
+#define USB2_PLL_VDD12_SHIFT_MMP3		12
+#define USB2_PLL_VDD18_SHIFT_MMP3		14
+
+/* This is for B0 stepping */
+#define USB2_PLL_FBDIV_SHIFT_MMP3_B0		0
+#define USB2_PLL_REFDIV_SHIFT_MMP3_B0		9
+#define USB2_PLL_VDD18_SHIFT_MMP3_B0		14
+#define USB2_PLL_FBDIV_MASK_MMP3_B0		0x01FF
+#define USB2_PLL_REFDIV_MASK_MMP3_B0		0x3E00
+
+#define USB2_PLL_CAL12_SHIFT_MMP3		0
+#define USB2_PLL_CALI12_MASK_MMP3		(0x3 << 0)
+
+#define USB2_PLL_VCOCAL_START_SHIFT_MMP3	2
+
+#define USB2_PLL_KVCO_SHIFT_MMP3		4
+#define USB2_PLL_KVCO_MASK_MMP3			(0x7<<4)
+
+#define USB2_PLL_ICP_SHIFT_MMP3			8
+#define USB2_PLL_ICP_MASK_MMP3			(0x7<<8)
+
+#define USB2_PLL_LOCK_BYPASS_SHIFT_MMP3		12
+
+#define USB2_PLL_PU_PLL_SHIFT_MMP3		13
+#define USB2_PLL_PU_PLL_MASK			(0x1 << 13)
+
+#define USB2_PLL_READY_MASK_MMP3		(0x1 << 15)
+
+/* USB2_TX_REG0 */
+#define USB2_TX_IMPCAL_VTH_SHIFT_MMP3		8
+#define USB2_TX_IMPCAL_VTH_MASK_MMP3		(0x7 << 8)
+
+#define USB2_TX_RCAL_START_SHIFT_MMP3		13
+
+/* USB2_TX_REG1 */
+#define USB2_TX_CK60_PHSEL_SHIFT_MMP3		0
+#define USB2_TX_CK60_PHSEL_MASK_MMP3		(0xf << 0)
+
+#define USB2_TX_AMP_SHIFT_MMP3			4
+#define USB2_TX_AMP_MASK_MMP3			(0x7 << 4)
+
+#define USB2_TX_VDD12_SHIFT_MMP3		8
+#define USB2_TX_VDD12_MASK_MMP3			(0x3 << 8)
+
+/* USB2_TX_REG2 */
+#define USB2_TX_DRV_SLEWRATE_SHIFT		10
+
+/* USB2_RX_REG0 */
+#define USB2_RX_SQ_THRESH_SHIFT_MMP3		4
+#define USB2_RX_SQ_THRESH_MASK_MMP3		(0xf << 4)
+
+#define USB2_RX_SQ_LENGTH_SHIFT_MMP3		10
+#define USB2_RX_SQ_LENGTH_MASK_MMP3		(0x3 << 10)
+
+/* USB2_ANA_REG1*/
+#define USB2_ANA_PU_ANA_SHIFT_MMP3		14
+
+/* USB2_OTG_REG0 */
+#define USB2_OTG_PU_OTG_SHIFT_MMP3		3
+
+struct mmp3_usb_phy {
+	struct phy *phy;
+	void __iomem *base;
+};
+
+static unsigned int u2o_get(void __iomem *base, unsigned int offset)
+{
+	return readl_relaxed(base + offset);
+}
+
+static void u2o_set(void __iomem *base, unsigned int offset,
+		unsigned int value)
+{
+	u32 reg;
+
+	reg = readl_relaxed(base + offset);
+	reg |= value;
+	writel_relaxed(reg, base + offset);
+	readl_relaxed(base + offset);
+}
+
+static void u2o_clear(void __iomem *base, unsigned int offset,
+		unsigned int value)
+{
+	u32 reg;
+
+	reg = readl_relaxed(base + offset);
+	reg &= ~value;
+	writel_relaxed(reg, base + offset);
+	readl_relaxed(base + offset);
+}
+
+static int mmp3_usb_phy_init(struct phy *phy)
+{
+	struct mmp3_usb_phy *mmp3_usb_phy = phy_get_drvdata(phy);
+	void __iomem *base = mmp3_usb_phy->base;
+
+	if (cpu_is_mmp3_a0()) {
+		u2o_clear(base, USB2_PLL_REG0, (USB2_PLL_FBDIV_MASK_MMP3
+			| USB2_PLL_REFDIV_MASK_MMP3));
+		u2o_set(base, USB2_PLL_REG0,
+			0xd << USB2_PLL_REFDIV_SHIFT_MMP3
+			| 0xf0 << USB2_PLL_FBDIV_SHIFT_MMP3);
+	} else if (cpu_is_mmp3_b0()) {
+		u2o_clear(base, USB2_PLL_REG0, USB2_PLL_REFDIV_MASK_MMP3_B0
+			| USB2_PLL_FBDIV_MASK_MMP3_B0);
+		u2o_set(base, USB2_PLL_REG0,
+			0xd << USB2_PLL_REFDIV_SHIFT_MMP3_B0
+			| 0xf0 << USB2_PLL_FBDIV_SHIFT_MMP3_B0);
+	} else {
+		dev_err(&phy->dev, "unsupported silicon revision\n");
+		return -ENODEV;
+	}
+
+	u2o_clear(base, USB2_PLL_REG1, USB2_PLL_PU_PLL_MASK
+		| USB2_PLL_ICP_MASK_MMP3
+		| USB2_PLL_KVCO_MASK_MMP3
+		| USB2_PLL_CALI12_MASK_MMP3);
+	u2o_set(base, USB2_PLL_REG1, 1 << USB2_PLL_PU_PLL_SHIFT_MMP3
+		| 1 << USB2_PLL_LOCK_BYPASS_SHIFT_MMP3
+		| 3 << USB2_PLL_ICP_SHIFT_MMP3
+		| 3 << USB2_PLL_KVCO_SHIFT_MMP3
+		| 3 << USB2_PLL_CAL12_SHIFT_MMP3);
+
+	u2o_clear(base, USB2_TX_REG0, USB2_TX_IMPCAL_VTH_MASK_MMP3);
+	u2o_set(base, USB2_TX_REG0, 2 << USB2_TX_IMPCAL_VTH_SHIFT_MMP3);
+
+	u2o_clear(base, USB2_TX_REG1, USB2_TX_VDD12_MASK_MMP3
+		| USB2_TX_AMP_MASK_MMP3
+		| USB2_TX_CK60_PHSEL_MASK_MMP3);
+	u2o_set(base, USB2_TX_REG1, 3 << USB2_TX_VDD12_SHIFT_MMP3
+		| 4 << USB2_TX_AMP_SHIFT_MMP3
+		| 4 << USB2_TX_CK60_PHSEL_SHIFT_MMP3);
+
+	u2o_clear(base, USB2_TX_REG2, 3 << USB2_TX_DRV_SLEWRATE_SHIFT);
+	u2o_set(base, USB2_TX_REG2, 2 << USB2_TX_DRV_SLEWRATE_SHIFT);
+
+	u2o_clear(base, USB2_RX_REG0, USB2_RX_SQ_THRESH_MASK_MMP3);
+	u2o_set(base, USB2_RX_REG0, 0xa << USB2_RX_SQ_THRESH_SHIFT_MMP3);
+
+	u2o_set(base, USB2_ANA_REG1, 0x1 << USB2_ANA_PU_ANA_SHIFT_MMP3);
+
+	u2o_set(base, USB2_OTG_REG0, 0x1 << USB2_OTG_PU_OTG_SHIFT_MMP3);
+
+	return 0;
+}
+
+static int mmp3_usb_phy_calibrate(struct phy *phy)
+{
+	struct mmp3_usb_phy *mmp3_usb_phy = phy_get_drvdata(phy);
+	void __iomem *base = mmp3_usb_phy->base;
+	int loops;
+
+	/*
+	 * PLL VCO and TX Impedance Calibration Timing:
+	 *
+	 *                _____________________________________
+	 * PU  __________|
+	 *                        _____________________________
+	 * VCOCAL START _________|
+	 *                                 ___
+	 * REG_RCAL_START ________________|   |________|_______
+	 *               | 200us | 400us  | 40| 400us  | USB PHY READY
+	 */
+
+	udelay(200);
+	u2o_set(base, USB2_PLL_REG1, 1 << USB2_PLL_VCOCAL_START_SHIFT_MMP3);
+	udelay(400);
+	u2o_set(base, USB2_TX_REG0, 1 << USB2_TX_RCAL_START_SHIFT_MMP3);
+	udelay(40);
+	u2o_clear(base, USB2_TX_REG0, 1 << USB2_TX_RCAL_START_SHIFT_MMP3);
+	udelay(400);
+
+	loops = 0;
+	while ((u2o_get(base, USB2_PLL_REG1) & USB2_PLL_READY_MASK_MMP3) == 0) {
+		mdelay(1);
+		loops++;
+		if (loops > 100) {
+			dev_err(&phy->dev, "PLL_READY not set after 100mS.\n");
+			return -ETIMEDOUT;
+		}
+	}
+
+	return 0;
+}
+
+static const struct phy_ops mmp3_usb_phy_ops = {
+	.init		= mmp3_usb_phy_init,
+	.calibrate	= mmp3_usb_phy_calibrate,
+	.owner		= THIS_MODULE,
+};
+
+static const struct of_device_id mmp3_usb_phy_of_match[] = {
+	{ .compatible = "marvell,mmp3-usb-phy", },
+	{ },
+};
+MODULE_DEVICE_TABLE(of, mmp3_usb_phy_of_match);
+
+static int mmp3_usb_phy_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct resource *resource;
+	struct mmp3_usb_phy *mmp3_usb_phy;
+	struct phy_provider *provider;
+
+	mmp3_usb_phy = devm_kzalloc(dev, sizeof(*mmp3_usb_phy), GFP_KERNEL);
+	if (!mmp3_usb_phy)
+		return -ENOMEM;
+
+	resource = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	mmp3_usb_phy->base = devm_ioremap_resource(dev, resource);
+	if (IS_ERR(mmp3_usb_phy->base)) {
+		dev_err(dev, "failed to remap PHY regs\n");
+		return PTR_ERR(mmp3_usb_phy->base);
+	}
+
+	mmp3_usb_phy->phy = devm_phy_create(dev, NULL, &mmp3_usb_phy_ops);
+	if (IS_ERR(mmp3_usb_phy->phy)) {
+		dev_err(dev, "failed to create PHY\n");
+		return PTR_ERR(mmp3_usb_phy->phy);
+	}
+
+	phy_set_drvdata(mmp3_usb_phy->phy, mmp3_usb_phy);
+	provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
+	if (IS_ERR(provider)) {
+		dev_err(dev, "failed to register PHY provider\n");
+		return PTR_ERR(provider);
+	}
+
+	return 0;
+}
+
+static struct platform_driver mmp3_usb_phy_driver = {
+	.probe		= mmp3_usb_phy_probe,
+	.driver		= {
+		.name	= "mmp3-usb-phy",
+		.of_match_table = mmp3_usb_phy_of_match,
+	},
+};
+module_platform_driver(mmp3_usb_phy_driver);
+
+MODULE_AUTHOR("Lubomir Rintel <lkundrak@v3.sk>");
+MODULE_DESCRIPTION("Marvell MMP3 USB PHY Driver");
+MODULE_LICENSE("GPL v2");
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
