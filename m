Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D7866505
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 05:33:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YBmGx1bR4uXTl4x5Z/AkbLqeRDDvqCXv3d7iX0bqxgc=; b=jcq67OspiXJyW+
	oNoOa7fPQpPf5hJcyvCMRwAp00ZraSPaNd/Fzmgd5T9Ig1Vo9GSSaYRt/872yURBJe769qbtQ59+Y
	K9NkNok4kwe65L+29kAR4Aab2GgjTidL+6hH04OcKHVaRjoNuMKB3+oWMdN99MbEn+z+bXP/EvZ0i
	OXEleFELiHdSXlXneLSe4L0J52OPk0G9k7TJli4IUngh79kSSoWro0Lmuyih/41Kn315vaLhCmHMw
	WnQWmGzfqDJcy0/V+H4cXVRY5D3QjJWuXvDeRZz80hNm7lhhT+qTuVpswhvGql0ZALi1r/u4ISWSG
	giT+zS9NKeMOgjnPE0LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlmJA-00019e-IT; Fri, 12 Jul 2019 03:33:16 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlmIO-0000iz-R0
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 03:32:31 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 3E0BC251A;
 Thu, 11 Jul 2019 23:32:28 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 11 Jul 2019 23:32:28 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=fkSuP+7fVHlE/
 E6moUmSwJxuks6N6jMHu6Z3svSfOro=; b=TMrQRiPYcQZh9ddMx0CvOQL2Q54zH
 1iJNxbhsC0VFdUla1MZYBYcbILrURSPkaC52rP0IkCsuDMviuCpxCXSlkU43zwvB
 tMU2Zsy9q5sGx19/A0bUrBSpwyIF94KopWD8fP1RaNhv7tkL4N+0rsHBD3rIcvPu
 PTwKrkB/ObV7FVhVxDn7Hc2OLLCRpiHu9Nj/hBWfPCq8H+3Otd5AIerZDLBCxcae
 ALw1nNHXGbfC6V3nQUKxPVwoUAUx4FjFKI3/YzDoFyhLWWUkOojFTSZ2xOXlKJmx
 o+wNtwfKyyFP2mf/5db0lnMiGIH+CnPSCk8KYJ4b0AO5DliWP7cMzH5jA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=fkSuP+7fVHlE/E6moUmSwJxuks6N6jMHu6Z3svSfOro=; b=wOYFd+hZ
 +JLOKPE36lxUuqni8q9y7JlCVgB7X1nhFZF0VxYXMfTsqGreVtDiJkNYMtwEPfs1
 r5i8s5L0lM0UfOesOJLJmCU8pei4Q9Zi4/kULRCDL4mqyFZFxyBuFUvER7yNL5N0
 dV9HMXJlJM71vl+lvYFi8acVjSaJ2K7mt4G55sZKnMoBdEArk8+Enry79Z5GXkVJ
 bnESR47DtL+SuV/pb6dQRVTKh5YK1p2Vet9AnnDy1ICxIAWo4BPudp9H0fsRqmk7
 ira7RsGehkbHVUwWQgB0bE794H6Qv8+RIrgusjYcRrl+NzmTTKKHX32iCaZualbR
 BbYbdOf+1vHHQw==
X-ME-Sender: <xms:S_8nXTQMkuM2MlLGjVfw1LrvUVi2bjBVeCYKxqV-TH78MRSMgElqtw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrgeelgdejfecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghj
 rdhiugdrrghuqeenucfkphepvddtvddrkedurddukedrfedtnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgep
 td
X-ME-Proxy: <xmx:TP8nXd_zxsMwdHT3aqhsf5Gg4j86jvj7UASUJzIFneEVuNSaRl6hjA>
 <xmx:TP8nXS8REkwBWDD6nHo8daDBPevmBrtu6ejJeakw-z1sgMwPJX_GCg>
 <xmx:TP8nXT7emHXBBj2BcuewkAYvmhqeRvbDBmGcipbq77ksfvbTdL0AQw>
 <xmx:TP8nXa5nLBD4BAD1oQDnlCH4U3nsoJezC1OsdBhXaQz-PEQF5DRlAQ>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id DC4168005A;
 Thu, 11 Jul 2019 23:32:23 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-mmc@vger.kernel.org
Subject: [PATCH v2 2/2] mmc: Add support for the ASPEED SD controller
Date: Fri, 12 Jul 2019 13:02:14 +0930
Message-Id: <20190712033214.24713-3-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190712033214.24713-1-andrew@aj.id.au>
References: <20190712033214.24713-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_203229_051296_481BBF76 
X-CRM114-Status: GOOD (  21.04  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, ulf.hansson@linaro.org,
 linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 ryanchen.aspeed@gmail.com, adrian.hunter@intel.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, joel@jms.id.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a minimal driver for ASPEED's SD controller, which exposes two
SDHCIs.

The ASPEED design implements a common register set for the SDHCIs, and
moves some of the standard configuration elements out to this common
area (e.g. 8-bit mode, and card detect configuration which is not
currently supported).

The SD controller has a dedicated hardware interrupt that is shared
between the slots. The common register set exposes information on which
slot triggered the interrupt; early revisions of the patch introduced an
irqchip for the register, but reality is it doesn't behave as an
irqchip, and the result fits awkwardly into the irqchip APIs. Instead
I've taken the simple approach of using the IRQ as a shared IRQ with
some minor performance impact for the second slot.

Ryan was the original author of the patch - I've taken his work and
massaged it to drop the irqchip support and rework the devicetree
integration. The driver has been smoke tested under qemu against a
minimal SD controller model and lightly tested on an ast2500-evb.

Signed-off-by: Ryan Chen <ryanchen.aspeed@gmail.com>
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
In v2:

* Drop unnecesasry MODULE_DEVICE_TABLE()
* Rename sd-controller compatible
* Add IBM copyright
* Drop unnecesary data assignment in of match table entries
* Derive the slot from the SDHCI offset

 drivers/mmc/host/Kconfig           |  12 ++
 drivers/mmc/host/Makefile          |   1 +
 drivers/mmc/host/sdhci-of-aspeed.c | 326 +++++++++++++++++++++++++++++
 3 files changed, 339 insertions(+)
 create mode 100644 drivers/mmc/host/sdhci-of-aspeed.c

diff --git a/drivers/mmc/host/Kconfig b/drivers/mmc/host/Kconfig
index 931770f17087..2bb5e1264b3d 100644
--- a/drivers/mmc/host/Kconfig
+++ b/drivers/mmc/host/Kconfig
@@ -154,6 +154,18 @@ config MMC_SDHCI_OF_ARASAN
 
 	  If unsure, say N.
 
+config MMC_SDHCI_OF_ASPEED
+	tristate "SDHCI OF support for the ASPEED SDHCI controller"
+	depends on MMC_SDHCI_PLTFM
+	depends on OF
+	help
+	  This selects the ASPEED Secure Digital Host Controller Interface.
+
+	  If you have a controller with this interface, say Y or M here. You
+	  also need to enable an appropriate bus interface.
+
+	  If unsure, say N.
+
 config MMC_SDHCI_OF_AT91
 	tristate "SDHCI OF support for the Atmel SDMMC controller"
 	depends on MMC_SDHCI_PLTFM
diff --git a/drivers/mmc/host/Makefile b/drivers/mmc/host/Makefile
index 73578718f119..390ee162fe71 100644
--- a/drivers/mmc/host/Makefile
+++ b/drivers/mmc/host/Makefile
@@ -84,6 +84,7 @@ obj-$(CONFIG_MMC_SDHCI_ESDHC_IMX)	+= sdhci-esdhc-imx.o
 obj-$(CONFIG_MMC_SDHCI_DOVE)		+= sdhci-dove.o
 obj-$(CONFIG_MMC_SDHCI_TEGRA)		+= sdhci-tegra.o
 obj-$(CONFIG_MMC_SDHCI_OF_ARASAN)	+= sdhci-of-arasan.o
+obj-$(CONFIG_MMC_SDHCI_OF_ASPEED)	+= sdhci-of-aspeed.o
 obj-$(CONFIG_MMC_SDHCI_OF_AT91)		+= sdhci-of-at91.o
 obj-$(CONFIG_MMC_SDHCI_OF_ESDHC)	+= sdhci-of-esdhc.o
 obj-$(CONFIG_MMC_SDHCI_OF_HLWD)		+= sdhci-of-hlwd.o
diff --git a/drivers/mmc/host/sdhci-of-aspeed.c b/drivers/mmc/host/sdhci-of-aspeed.c
new file mode 100644
index 000000000000..9528e43c257d
--- /dev/null
+++ b/drivers/mmc/host/sdhci-of-aspeed.c
@@ -0,0 +1,326 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/* Copyright (C) 2019 ASPEED Technology Inc. */
+/* Copyright (C) 2019 IBM Corp. */
+
+#include <linux/clk.h>
+#include <linux/delay.h>
+#include <linux/device.h>
+#include <linux/io.h>
+#include <linux/mmc/host.h>
+#include <linux/module.h>
+#include <linux/of_address.h>
+#include <linux/of.h>
+#include <linux/of_platform.h>
+#include <linux/platform_device.h>
+#include <linux/spinlock.h>
+
+#include "sdhci-pltfm.h"
+
+#define ASPEED_SDC_INFO		0x00
+#define   ASPEED_SDC_S1MMC8	BIT(25)
+#define   ASPEED_SDC_S0MMC8	BIT(24)
+
+struct aspeed_sdc {
+	struct clk *clk;
+	struct resource *res;
+
+	spinlock_t lock;
+	void __iomem *regs;
+};
+
+struct aspeed_sdhci {
+	struct aspeed_sdc *parent;
+	u32 width_mask;
+};
+
+static void aspeed_sdc_bus_width(struct aspeed_sdc *sdc,
+				 struct aspeed_sdhci *sdhci, bool bus8)
+{
+	u32 info;
+
+	/* Set/clear 8 bit mode */
+	spin_lock(&sdc->lock);
+	info = readl(sdc->regs + ASPEED_SDC_INFO);
+	if (bus8)
+		info |= sdhci->width_mask;
+	else
+		info &= ~sdhci->width_mask;
+	writel(info, sdc->regs + ASPEED_SDC_INFO);
+	spin_unlock(&sdc->lock);
+}
+
+static void aspeed_sdhci_set_clock(struct sdhci_host *host, unsigned int clock)
+{
+	unsigned long timeout;
+	int div;
+	u16 clk;
+
+	if (clock == host->clock)
+		return;
+
+	sdhci_writew(host, 0, SDHCI_CLOCK_CONTROL);
+
+	if (clock == 0)
+		goto out;
+
+	for (div = 1; div < 256; div *= 2) {
+		if ((host->max_clk / div) <= clock)
+			break;
+	}
+	div >>= 1;
+
+	clk = div << SDHCI_DIVIDER_SHIFT;
+	clk |= SDHCI_CLOCK_INT_EN;
+	sdhci_writew(host, clk, SDHCI_CLOCK_CONTROL);
+
+	/* Wait max 20 ms */
+	timeout = 20;
+	while (!((clk = sdhci_readw(host, SDHCI_CLOCK_CONTROL))
+		 & SDHCI_CLOCK_INT_STABLE)) {
+		if (timeout == 0) {
+			pr_err("%s: Internal clock never stabilised.\n",
+			       mmc_hostname(host->mmc));
+			return;
+		}
+		timeout--;
+		mdelay(1);
+	}
+
+	clk |= SDHCI_CLOCK_CARD_EN;
+	sdhci_writew(host, clk, SDHCI_CLOCK_CONTROL);
+
+out:
+	host->clock = clock;
+}
+
+static void aspeed_sdhci_set_bus_width(struct sdhci_host *host, int width)
+{
+	struct sdhci_pltfm_host *pltfm_priv;
+	struct aspeed_sdhci *aspeed_sdhci;
+	struct aspeed_sdc *aspeed_sdc;
+	u8 ctrl;
+
+	pltfm_priv = sdhci_priv(host);
+	aspeed_sdhci = sdhci_pltfm_priv(pltfm_priv);
+	aspeed_sdc = aspeed_sdhci->parent;
+
+	/* Set/clear 8-bit mode */
+	aspeed_sdc_bus_width(aspeed_sdc, aspeed_sdhci,
+			     width == MMC_BUS_WIDTH_8);
+
+	/* Set/clear 1 or 4 bit mode */
+	ctrl = sdhci_readb(host, SDHCI_HOST_CONTROL);
+	if (width == MMC_BUS_WIDTH_4)
+		ctrl |= SDHCI_CTRL_4BITBUS;
+	else
+		ctrl &= ~SDHCI_CTRL_4BITBUS;
+	sdhci_writeb(host, ctrl, SDHCI_HOST_CONTROL);
+}
+
+static const struct sdhci_ops aspeed_sdhci_ops = {
+	.set_clock = aspeed_sdhci_set_clock,
+	.get_max_clock = sdhci_pltfm_clk_get_max_clock,
+	.set_bus_width = aspeed_sdhci_set_bus_width,
+	.get_timeout_clock = sdhci_pltfm_clk_get_max_clock,
+	.reset = sdhci_reset,
+	.set_uhs_signaling = sdhci_set_uhs_signaling,
+};
+
+static const struct sdhci_pltfm_data aspeed_sdc_pdata = {
+	.ops = &aspeed_sdhci_ops,
+	.quirks = SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN,
+	.quirks2 = SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN,
+};
+
+static inline int aspeed_sdhci_calculate_slot(struct aspeed_sdhci *dev,
+					      struct resource *res)
+{
+	resource_size_t delta;
+
+	if (!res || resource_type(res) != IORESOURCE_MEM)
+		return -EINVAL;
+
+	if (res->start < dev->parent->res->start)
+		return -EINVAL;
+
+	delta = res->start - dev->parent->res->start;
+	if (delta & (0x100 - 1))
+		return -EINVAL;
+
+	return (delta / 0x100) - 1;
+}
+
+static int aspeed_sdhci_probe(struct platform_device *pdev)
+{
+	struct sdhci_pltfm_host *pltfm_host;
+	struct aspeed_sdhci *dev;
+	struct sdhci_host *host;
+	struct resource *res;
+	int slot;
+	int ret;
+
+	host = sdhci_pltfm_init(pdev, &aspeed_sdc_pdata, sizeof(*dev));
+	if (IS_ERR(host))
+		return PTR_ERR(host);
+
+	pltfm_host = sdhci_priv(host);
+	dev = sdhci_pltfm_priv(pltfm_host);
+	dev->parent = dev_get_drvdata(pdev->dev.parent);
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	slot = aspeed_sdhci_calculate_slot(dev, res);
+	if (slot < 0)
+		return slot;
+	dev_info(&pdev->dev, "Configuring for slot %d\n", slot);
+	dev->width_mask = !slot ? ASPEED_SDC_S0MMC8 : ASPEED_SDC_S1MMC8;
+
+	sdhci_get_of_property(pdev);
+
+	pltfm_host->clk = devm_clk_get(&pdev->dev, NULL);
+	if (IS_ERR(pltfm_host->clk))
+		return PTR_ERR(pltfm_host->clk);
+
+	ret = clk_prepare_enable(pltfm_host->clk);
+	if (ret) {
+		dev_err(&pdev->dev, "Unable to enable SDIO clock\n");
+		goto err_pltfm_free;
+	}
+
+	ret = mmc_of_parse(host->mmc);
+	if (ret)
+		goto err_sdhci_add;
+
+	ret = sdhci_add_host(host);
+	if (ret)
+		goto err_sdhci_add;
+
+	return 0;
+
+err_sdhci_add:
+	clk_disable_unprepare(pltfm_host->clk);
+err_pltfm_free:
+	sdhci_pltfm_free(pdev);
+	return ret;
+}
+
+static int aspeed_sdhci_remove(struct platform_device *pdev)
+{
+	struct sdhci_pltfm_host *pltfm_host;
+	struct sdhci_host *host;
+	int dead;
+
+	host = platform_get_drvdata(pdev);
+	pltfm_host = sdhci_priv(host);
+
+	dead = readl(host->ioaddr + SDHCI_INT_STATUS) == 0xffffffff;
+
+	sdhci_remove_host(host, dead);
+
+	clk_disable_unprepare(pltfm_host->clk);
+
+	sdhci_pltfm_free(pdev);
+
+	return 0;
+}
+
+static const struct of_device_id aspeed_sdhci_of_match[] = {
+	{ .compatible = "aspeed,ast2400-sdhci", },
+	{ .compatible = "aspeed,ast2500-sdhci", },
+	{ }
+};
+
+static struct platform_driver aspeed_sdhci_driver = {
+	.driver		= {
+		.name	= "sdhci-aspeed",
+		.of_match_table = aspeed_sdhci_of_match,
+	},
+	.probe		= aspeed_sdhci_probe,
+	.remove		= aspeed_sdhci_remove,
+};
+
+module_platform_driver(aspeed_sdhci_driver);
+
+static int aspeed_sdc_probe(struct platform_device *pdev)
+
+{
+	struct device_node *parent, *child;
+	struct aspeed_sdc *sdc;
+	int ret;
+
+	sdc = devm_kzalloc(&pdev->dev, sizeof(*sdc), GFP_KERNEL);
+	if (!sdc)
+		return -ENOMEM;
+
+	spin_lock_init(&sdc->lock);
+
+	sdc->clk = devm_clk_get(&pdev->dev, NULL);
+	if (IS_ERR(sdc->clk))
+		return PTR_ERR(sdc->clk);
+
+	ret = clk_prepare_enable(sdc->clk);
+	if (ret) {
+		dev_err(&pdev->dev, "Unable to enable SDCLK\n");
+		return ret;
+	}
+
+	sdc->res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	sdc->regs = devm_ioremap_resource(&pdev->dev, sdc->res);
+	if (IS_ERR(sdc->regs)) {
+		ret = PTR_ERR(sdc->regs);
+		goto err_clk;
+	}
+
+	dev_set_drvdata(&pdev->dev, sdc);
+
+	parent = pdev->dev.of_node;
+	for_each_available_child_of_node(parent, child) {
+		struct platform_device *cpdev;
+
+		cpdev = of_platform_device_create(child, NULL, &pdev->dev);
+		if (IS_ERR(cpdev)) {
+			of_node_put(child);
+			ret = PTR_ERR(pdev);
+			goto err_clk;
+		}
+	}
+
+	return 0;
+
+err_clk:
+	clk_disable_unprepare(sdc->clk);
+	return ret;
+}
+
+static int aspeed_sdc_remove(struct platform_device *pdev)
+{
+	struct aspeed_sdc *sdc = dev_get_drvdata(&pdev->dev);
+
+	clk_disable_unprepare(sdc->clk);
+
+	return 0;
+}
+
+static const struct of_device_id aspeed_sdc_of_match[] = {
+	{ .compatible = "aspeed,ast2400-sd-controller", },
+	{ .compatible = "aspeed,ast2500-sd-controller", },
+	{ }
+};
+
+MODULE_DEVICE_TABLE(of, aspeed_sdc_of_match);
+
+static struct platform_driver aspeed_sdc_driver = {
+	.driver		= {
+		.name	= "sd-controller-aspeed",
+		.pm	= &sdhci_pltfm_pmops,
+		.of_match_table = aspeed_sdc_of_match,
+	},
+	.probe		= aspeed_sdc_probe,
+	.remove		= aspeed_sdc_remove,
+};
+
+module_platform_driver(aspeed_sdc_driver);
+
+MODULE_DESCRIPTION("Driver for the ASPEED SD/SDIO/SDHCI Controllers");
+MODULE_AUTHOR("Ryan Chen <ryan_chen@aspeedtech.com>");
+MODULE_AUTHOR("Andrew Jeffery <andrew@aj.id.au>");
+MODULE_LICENSE("GPL v2");
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
