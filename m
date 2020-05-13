Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6644A1D16DA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 16:02:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uTuWw4N+70DDNXd2SL28vyFco5jchISfv8ftG6fOl2Q=; b=bxntBa02+5v48n
	p7Uji6iM3zYd2VYY/7W7jZLWqL3Ac3FhstUpHmJ/KDR6FHd+OJD4khB6Fj4WDViZveW9QvI19txND
	p9DE60RqQ6xE0y/CbYqN/HNnekG63GFgHXtVwyEqpp1kt6JqjrYWxj6L5wqawoeIHAfM9GC6h5d//
	FHLcogeCkwYtFNAbL4xTW3RuDyln+YMYoaZmjmNooJo4D8Ch09WMrxIxwjfUhJxlCF4MpTqN9a5Qg
	83wdOFbTaT/VSBcVhtrFfWiOOYglT0RDLeqlX5EGmySr45OT6xp9j5/G1j5rMQVGXvg25cshrj1Qs
	K6kXJ2gx9m0IAsTgpjHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYry1-0007rY-80; Wed, 13 May 2020 14:02:37 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrwO-0006ib-CB
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 14:01:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589378456; x=1620914456;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1swg6ZG2UCq1p1EBnUde+FEZzUoK/J9xFuajuCGuPtw=;
 b=a7BeCpdVxpDfuAIHRy1sIYjBbDdl+7nLFRkXDQrfCX58jTAKvPEODRx9
 MbxFJzU4+E33X/oktGKYjFj/El8nHnnWguB1Wc4wGvrmSz3Y9dCeSNhRA
 x+s3cDs0t8OG0KOjpBcYXQQDp0u4Vq+ZCFz01cEEsw2n4S7eL4RuGCRlC
 t1hQ3UiR5cYK1bJlKWIQZkZVzN/1XMNFWAWrmbN4il0KAj7SqIhyfKe44
 hyNIVmVLyTAOQXZPrV8/KbS7EloyuA5pyGg2Wkpzm/fE0VWhhXqQ2ewZu
 1/b3/Wt+5xbAXk9iUEcCNas4j4FMy1BT1s/4DeqTDl0W/mu4sCV/Xmomf w==;
IronPort-SDR: cfxKyDHaPM5pbLKPaM4eSj2A/fLEAob5zF3xUMvB+oyrM67FDp5QWyy1mGMn7Z3wyBqz2UHzHT
 prsMO4DLfhymivk3sqL/LcM0O2eslS4Nw9WW5+KsZ9amLETCcaYw/4PXYHWq+7Tc4bCChQogy8
 oPXaPlMr8GZpcyOPfswKc28CJ22UyNPRJWjsUIKP9D5BxFjah3XBmQuZD34nET1pOJI4vYeDtN
 YjHVZN4Uo/hMYAHUVxcVZuZBk7ExZKqegjNnDXOY01Yfg2x8C3ZP5vYZ02cuSHo+dQNl3F8Dic
 RGY=
X-IronPort-AV: E=Sophos;i="5.73,388,1583218800"; d="scan'208";a="76507930"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 07:00:52 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 07:00:52 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 13 May 2020 07:00:50 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Mark Brown <broonie@kernel.org>, SoC Team <soc@kernel.org>
Subject: [PATCH 05/10] spi: spi-dw-mmio: Spin off MSCC platforms into
 spi-dw-mchp
Date: Wed, 13 May 2020 16:00:26 +0200
Message-ID: <20200513140031.25633-6-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200513140031.25633-1-lars.povlsen@microchip.com>
References: <20200513140031.25633-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_070056_683333_0AEC9A09 
X-CRM114-Status: GOOD (  22.20  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 Lars Povlsen <lars.povlsen@microchip.com>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch spins off the MSCC platforms into a separate driver, as
adding new platforms from the MSCC/Microchip product lines will
further complicate (clutter) the original driver.

The new 'spi-dw-mchp' driver still builds on the dw-spi foundation.

Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 MAINTAINERS                                   |   1 +
 arch/mips/configs/generic/board-ocelot.config |   2 +-
 drivers/spi/Kconfig                           |   7 +
 drivers/spi/Makefile                          |   1 +
 drivers/spi/spi-dw-mchp.c                     | 232 ++++++++++++++++++
 drivers/spi/spi-dw-mmio.c                     |  93 -------
 6 files changed, 242 insertions(+), 94 deletions(-)
 create mode 100644 drivers/spi/spi-dw-mchp.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 6472240b8391b..de64fd4548697 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2085,6 +2085,7 @@ M:	Steen Hegelund <Steen.Hegelund@microchip.com>
 M:	Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 F:	arch/arm64/boot/dts/microchip/
+F:	drivers/spi/spi-dw-mchp.c
 N:	sparx5
 S:	Supported

diff --git a/arch/mips/configs/generic/board-ocelot.config b/arch/mips/configs/generic/board-ocelot.config
index 7626f2a75b03f..6dbae76268a49 100644
--- a/arch/mips/configs/generic/board-ocelot.config
+++ b/arch/mips/configs/generic/board-ocelot.config
@@ -38,7 +38,7 @@ CONFIG_I2C_DESIGNWARE_PLATFORM=y
 CONFIG_SPI=y
 CONFIG_SPI_BITBANG=y
 CONFIG_SPI_DESIGNWARE=y
-CONFIG_SPI_DW_MMIO=y
+CONFIG_SPI_DW_MCHP=y
 CONFIG_SPI_SPIDEV=y

 CONFIG_PINCTRL=y
diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
index 741b9140992a8..77eb580b9f51f 100644
--- a/drivers/spi/Kconfig
+++ b/drivers/spi/Kconfig
@@ -238,6 +238,13 @@ config SPI_DW_MMIO
 	tristate "Memory-mapped io interface driver for DW SPI core"
 	depends on SPI_DESIGNWARE

+config SPI_DW_MCHP
+	tristate "Memory-mapped io interface driver using DW SPI core of MSCC SoCs"
+	default y if ARCH_SPARX5
+	default y if SOC_VCOREIII
+	select SPI_DESIGNWARE
+	select SPI_DW_MMIO
+
 config SPI_DLN2
        tristate "Diolan DLN-2 USB SPI adapter"
        depends on MFD_DLN2
diff --git a/drivers/spi/Makefile b/drivers/spi/Makefile
index 28f601327f8c7..be8a52d90721b 100644
--- a/drivers/spi/Makefile
+++ b/drivers/spi/Makefile
@@ -37,6 +37,7 @@ obj-$(CONFIG_SPI_DAVINCI)		+= spi-davinci.o
 obj-$(CONFIG_SPI_DLN2)			+= spi-dln2.o
 obj-$(CONFIG_SPI_DESIGNWARE)		+= spi-dw.o
 obj-$(CONFIG_SPI_DW_MMIO)		+= spi-dw-mmio.o
+obj-$(CONFIG_SPI_DW_MCHP)		+= spi-dw-mchp.o
 obj-$(CONFIG_SPI_DW_PCI)		+= spi-dw-midpci.o
 spi-dw-midpci-objs			:= spi-dw-pci.o spi-dw-mid.o
 obj-$(CONFIG_SPI_EFM32)			+= spi-efm32.o
diff --git a/drivers/spi/spi-dw-mchp.c b/drivers/spi/spi-dw-mchp.c
new file mode 100644
index 0000000000000..0828a7616d9ab
--- /dev/null
+++ b/drivers/spi/spi-dw-mchp.c
@@ -0,0 +1,232 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Memory-mapped interface driver for MSCC SoCs
+ *
+ * Copyright (c) 2020 Microchip Technology Inc. and its subsidiaries.
+ */
+
+#include <linux/clk.h>
+#include <linux/err.h>
+#include <linux/interrupt.h>
+#include <linux/platform_device.h>
+#include <linux/slab.h>
+#include <linux/spi/spi.h>
+#include <linux/mtd/spi-nor.h>
+#include <linux/spi/spi-mem.h>
+#include <linux/mfd/syscon.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_irq.h>
+#include <linux/of_gpio.h>
+#include <linux/of_platform.h>
+#include <linux/property.h>
+#include <linux/regmap.h>
+
+#include "spi-dw.h"
+
+#define DRIVER_NAME "dw_spi_mchp"
+
+#define MAX_CS		4
+
+#define MSCC_CPU_SYSTEM_CTRL_GENERAL_CTRL	0x24
+#define OCELOT_IF_SI_OWNER_OFFSET		4
+#define JAGUAR2_IF_SI_OWNER_OFFSET		6
+#define MSCC_IF_SI_OWNER_MASK			GENMASK(1, 0)
+#define MSCC_IF_SI_OWNER_SISL			0
+#define MSCC_IF_SI_OWNER_SIBM			1
+#define MSCC_IF_SI_OWNER_SIMC			2
+
+#define MSCC_SPI_MST_SW_MODE			0x14
+#define MSCC_SPI_MST_SW_MODE_SW_PIN_CTRL_MODE	BIT(13)
+#define MSCC_SPI_MST_SW_MODE_SW_SPI_CS(x)	(x << 5)
+
+struct dw_spi_mchp_props {
+	const char *syscon_name;
+	u32 si_owner_bit;
+};
+
+struct dw_spi_mchp {
+	struct dw_spi  dws;
+	struct clk     *clk;
+	void __iomem   *read_map;
+	struct regmap			*syscon;
+	void __iomem			*spi_mst;
+	const struct dw_spi_mchp_props	*props;
+	u32				gen_owner;
+};
+
+static const struct dw_spi_mchp_props dw_spi_mchp_props_ocelot = {
+	.syscon_name		= "mscc,ocelot-cpu-syscon",
+	.si_owner_bit		= 4,
+};
+
+static const struct dw_spi_mchp_props dw_spi_mchp_props_jaguar2 = {
+	.syscon_name		= "mscc,ocelot-cpu-syscon",
+	.si_owner_bit		= 6,
+};
+
+/*
+ * The Designware SPI controller (referred to as master in the documentation)
+ * automatically deasserts chip select when the tx fifo is empty. The chip
+ * selects then needs to be either driven as GPIOs or, for the first 4 using the
+ * the SPI boot controller registers. the final chip select is an OR gate
+ * between the Designware SPI controller and the SPI boot controller.
+ */
+static void dw_spi_mchp_set_cs(struct spi_device *spi, bool enable)
+{
+	struct dw_spi *dws = spi_master_get_devdata(spi->master);
+	struct dw_spi_mchp *dwsmchp = container_of(dws, struct dw_spi_mchp,
+						   dws);
+	u32 cs = spi->chip_select;
+
+	if (cs < 4) {
+		u32 sw_mode = MSCC_SPI_MST_SW_MODE_SW_PIN_CTRL_MODE;
+
+		if (!enable)
+			sw_mode |= MSCC_SPI_MST_SW_MODE_SW_SPI_CS(BIT(cs));
+
+		writel(sw_mode, dwsmchp->spi_mst + MSCC_SPI_MST_SW_MODE);
+	}
+
+	dw_spi_set_cs(spi, enable);
+}
+
+static int dw_spi_mchp_init(struct platform_device *pdev,
+			    struct dw_spi *dws,
+			    struct dw_spi_mchp *dwsmchp,
+			    const struct dw_spi_mchp_props *props)
+{
+	struct resource *res;
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
+	if (res && resource_size(res) > 0) {
+		dwsmchp->spi_mst = devm_ioremap_resource(&pdev->dev, res);
+		if (IS_ERR(dwsmchp->spi_mst)) {
+			dev_err(&pdev->dev, "SPI_MST region map failed\n");
+			return PTR_ERR(dwsmchp->spi_mst);
+		}
+	}
+
+	dwsmchp->syscon =
+		syscon_regmap_lookup_by_compatible(props->syscon_name);
+	if (IS_ERR(dwsmchp->syscon)) {
+		dev_err(&pdev->dev, "No syscon map %s\n", props->syscon_name);
+		return PTR_ERR(dwsmchp->syscon);
+	}
+	dwsmchp->props = props;
+
+	/* Deassert all CS */
+	if (dwsmchp->spi_mst)
+		writel(0, dwsmchp->spi_mst + MSCC_SPI_MST_SW_MODE);
+
+	/* Select the owner of the SI interface */
+	regmap_update_bits(dwsmchp->syscon, MSCC_CPU_SYSTEM_CTRL_GENERAL_CTRL,
+			   MSCC_IF_SI_OWNER_MASK << props->si_owner_bit,
+			   MSCC_IF_SI_OWNER_SIMC << props->si_owner_bit);
+
+	dwsmchp->dws.set_cs = dw_spi_mchp_set_cs;
+
+	return 0;
+}
+
+static int dw_spi_mchp_probe(struct platform_device *pdev)
+{
+	const struct dw_spi_mchp_props *props;
+	struct dw_spi_mchp *dwsmchp;
+	struct dw_spi *dws;
+	int ret;
+	int num_cs, rx_sample_dly;
+
+	dwsmchp = devm_kzalloc(&pdev->dev, sizeof(struct dw_spi_mchp),
+			GFP_KERNEL);
+	if (!dwsmchp)
+		return -ENOMEM;
+
+	dws = &dwsmchp->dws;
+
+	/* Get basic io resource and map it */
+	dws->regs = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(dws->regs)) {
+		dev_err(&pdev->dev, "SPI region map failed\n");
+		return PTR_ERR(dws->regs);
+	}
+
+	dws->irq = of_irq_get(pdev->dev.of_node, 0);
+	if (dws->irq < 0)
+		dev_info(&pdev->dev, "no irq, using polled mode\n");
+
+	dwsmchp->clk = devm_clk_get(&pdev->dev, NULL);
+	if (IS_ERR(dwsmchp->clk))
+		return PTR_ERR(dwsmchp->clk);
+	ret = clk_prepare_enable(dwsmchp->clk);
+	if (ret)
+		return ret;
+
+	dws->bus_num = pdev->id;
+
+	dws->max_freq = clk_get_rate(dwsmchp->clk);
+
+	device_property_read_u32(&pdev->dev, "reg-io-width",
+				 &dws->reg_io_width);
+
+	num_cs = MAX_CS;
+
+	device_property_read_u32(&pdev->dev, "num-cs", &num_cs);
+
+	dws->num_cs = num_cs;
+
+	rx_sample_dly = 0;
+	device_property_read_u32(&pdev->dev, "spi-rx-delay-us", &rx_sample_dly);
+	dws->rx_sample_dly = DIV_ROUND_UP(rx_sample_dly,
+					  (dws->max_freq / 1000000));
+
+	props = device_get_match_data(&pdev->dev);
+	if (props)
+		ret = dw_spi_mchp_init(pdev, dws, dwsmchp, props);
+	else
+		ret = -EINVAL;
+	if (ret)
+		goto out;
+
+	ret = dw_spi_add_host(&pdev->dev, dws);
+	if (ret)
+		goto out;
+
+	platform_set_drvdata(pdev, dwsmchp);
+	return 0;
+
+out:
+	clk_disable_unprepare(dwsmchp->clk);
+	return ret;
+}
+
+static int dw_spi_mchp_remove(struct platform_device *pdev)
+{
+	struct dw_spi_mchp *dwsmchp = platform_get_drvdata(pdev);
+
+	dw_spi_remove_host(&dwsmchp->dws);
+	clk_disable_unprepare(dwsmchp->clk);
+
+	return 0;
+}
+
+static const struct of_device_id dw_spi_mchp_of_match[] = {
+	{ .compatible = "mscc,ocelot-spi", .data = &dw_spi_mchp_props_ocelot},
+	{ .compatible = "mscc,jaguar2-spi", .data = &dw_spi_mchp_props_jaguar2},
+	{ /* end of table */}
+};
+MODULE_DEVICE_TABLE(of, dw_spi_mchp_of_match);
+
+static struct platform_driver dw_spi_mchp_driver = {
+	.probe		= dw_spi_mchp_probe,
+	.remove		= dw_spi_mchp_remove,
+	.driver		= {
+		.name	= DRIVER_NAME,
+		.of_match_table = dw_spi_mchp_of_match,
+	},
+};
+module_platform_driver(dw_spi_mchp_driver);
+
+MODULE_AUTHOR("Lars Povlsen <lars.povlsen@microchip.com>");
+MODULE_DESCRIPTION("Memory-mapped I/O interface DW SPI driver for MSCC SoCs");
+MODULE_LICENSE("GPL v2");
diff --git a/drivers/spi/spi-dw-mmio.c b/drivers/spi/spi-dw-mmio.c
index 384a3ab6dc2d0..dc5db548fbcbc 100644
--- a/drivers/spi/spi-dw-mmio.c
+++ b/drivers/spi/spi-dw-mmio.c
@@ -32,97 +32,6 @@ struct dw_spi_mmio {
 	void           *priv;
 };

-#define MSCC_CPU_SYSTEM_CTRL_GENERAL_CTRL	0x24
-#define OCELOT_IF_SI_OWNER_OFFSET		4
-#define JAGUAR2_IF_SI_OWNER_OFFSET		6
-#define MSCC_IF_SI_OWNER_MASK			GENMASK(1, 0)
-#define MSCC_IF_SI_OWNER_SISL			0
-#define MSCC_IF_SI_OWNER_SIBM			1
-#define MSCC_IF_SI_OWNER_SIMC			2
-
-#define MSCC_SPI_MST_SW_MODE			0x14
-#define MSCC_SPI_MST_SW_MODE_SW_PIN_CTRL_MODE	BIT(13)
-#define MSCC_SPI_MST_SW_MODE_SW_SPI_CS(x)	(x << 5)
-
-struct dw_spi_mscc {
-	struct regmap       *syscon;
-	void __iomem        *spi_mst;
-};
-
-/*
- * The Designware SPI controller (referred to as master in the documentation)
- * automatically deasserts chip select when the tx fifo is empty. The chip
- * selects then needs to be either driven as GPIOs or, for the first 4 using the
- * the SPI boot controller registers. the final chip select is an OR gate
- * between the Designware SPI controller and the SPI boot controller.
- */
-static void dw_spi_mscc_set_cs(struct spi_device *spi, bool enable)
-{
-	struct dw_spi *dws = spi_master_get_devdata(spi->master);
-	struct dw_spi_mmio *dwsmmio = container_of(dws, struct dw_spi_mmio, dws);
-	struct dw_spi_mscc *dwsmscc = dwsmmio->priv;
-	u32 cs = spi->chip_select;
-
-	if (cs < 4) {
-		u32 sw_mode = MSCC_SPI_MST_SW_MODE_SW_PIN_CTRL_MODE;
-
-		if (!enable)
-			sw_mode |= MSCC_SPI_MST_SW_MODE_SW_SPI_CS(BIT(cs));
-
-		writel(sw_mode, dwsmscc->spi_mst + MSCC_SPI_MST_SW_MODE);
-	}
-
-	dw_spi_set_cs(spi, enable);
-}
-
-static int dw_spi_mscc_init(struct platform_device *pdev,
-			    struct dw_spi_mmio *dwsmmio,
-			    const char *cpu_syscon, u32 if_si_owner_offset)
-{
-	struct dw_spi_mscc *dwsmscc;
-
-	dwsmscc = devm_kzalloc(&pdev->dev, sizeof(*dwsmscc), GFP_KERNEL);
-	if (!dwsmscc)
-		return -ENOMEM;
-
-	dwsmscc->spi_mst = devm_platform_ioremap_resource(pdev, 1);
-	if (IS_ERR(dwsmscc->spi_mst)) {
-		dev_err(&pdev->dev, "SPI_MST region map failed\n");
-		return PTR_ERR(dwsmscc->spi_mst);
-	}
-
-	dwsmscc->syscon = syscon_regmap_lookup_by_compatible(cpu_syscon);
-	if (IS_ERR(dwsmscc->syscon))
-		return PTR_ERR(dwsmscc->syscon);
-
-	/* Deassert all CS */
-	writel(0, dwsmscc->spi_mst + MSCC_SPI_MST_SW_MODE);
-
-	/* Select the owner of the SI interface */
-	regmap_update_bits(dwsmscc->syscon, MSCC_CPU_SYSTEM_CTRL_GENERAL_CTRL,
-			   MSCC_IF_SI_OWNER_MASK << if_si_owner_offset,
-			   MSCC_IF_SI_OWNER_SIMC << if_si_owner_offset);
-
-	dwsmmio->dws.set_cs = dw_spi_mscc_set_cs;
-	dwsmmio->priv = dwsmscc;
-
-	return 0;
-}
-
-static int dw_spi_mscc_ocelot_init(struct platform_device *pdev,
-				   struct dw_spi_mmio *dwsmmio)
-{
-	return dw_spi_mscc_init(pdev, dwsmmio, "mscc,ocelot-cpu-syscon",
-				OCELOT_IF_SI_OWNER_OFFSET);
-}
-
-static int dw_spi_mscc_jaguar2_init(struct platform_device *pdev,
-				    struct dw_spi_mmio *dwsmmio)
-{
-	return dw_spi_mscc_init(pdev, dwsmmio, "mscc,jaguar2-cpu-syscon",
-				JAGUAR2_IF_SI_OWNER_OFFSET);
-}
-
 static int dw_spi_alpine_init(struct platform_device *pdev,
 			      struct dw_spi_mmio *dwsmmio)
 {
@@ -225,8 +134,6 @@ static int dw_spi_mmio_remove(struct platform_device *pdev)

 static const struct of_device_id dw_spi_mmio_of_match[] = {
 	{ .compatible = "snps,dw-apb-ssi", },
-	{ .compatible = "mscc,ocelot-spi", .data = dw_spi_mscc_ocelot_init},
-	{ .compatible = "mscc,jaguar2-spi", .data = dw_spi_mscc_jaguar2_init},
 	{ .compatible = "amazon,alpine-dw-apb-ssi", .data = dw_spi_alpine_init},
 	{ .compatible = "renesas,rzn1-spi", },
 	{ /* end of table */}
--
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
