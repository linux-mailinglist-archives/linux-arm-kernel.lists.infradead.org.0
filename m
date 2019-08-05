Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A5F81067
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 04:52:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gY8VAaXQeNaU9EHg0LhrL7hecBgPpXGSZeqbYNDZP7w=; b=OmQ/ED0kI6n8f5
	1pImEjNi6ViqG34vHmKzOShcsMndLPsftqrlcea7W+4pJnu2pXQjzpiiKTmv+lRnfsbDHYxf+QSz2
	tMuQdj0q9qbXg+T4w+I6PNcUA5YxnkNfOe80GA9ur1Vr0krILTBprSCzJHUXfUFlrgDRltwAk+BfR
	/Hu18rhaHHROVdZjchAJ9QX+9/MOGgLSYi66CHKom8jB8dcq3VDYyUcdsgM7TeBpM4mtDUWK/0ZyZ
	aJkFrJ0lCn8riYVVqLJcTuJofvQX+s04dYm7FDavXGB2XbafBn6ka52zd8nAKPzC0CyNmJWzgjxNo
	diIG1seZvQ0htoHjcM5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huT6u-00021s-P7; Mon, 05 Aug 2019 02:52:33 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huT6J-0001cz-BB
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 02:51:57 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id BAB29BC6;
 Sun,  4 Aug 2019 22:51:54 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Sun, 04 Aug 2019 22:51:54 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=H0YqPSA7zlxt7
 ujglU9jkwAjGr6m8Mo0xHXZiPD14Xs=; b=X4sVRuTsIbSVtpWTN9QzIpKiCHeU+
 77JbhV5dJxdD7UZM0VZDB63v65mcLQHgfwj54zbuXoUkFHqOoggfpEBR4s/9JJCW
 1avE2ZIK8tU0UEXQDhGGSMLUc8UHnxNSk5BS6GWdTnRYsLiUBvADKb1OddG6W69L
 jdsvBqgAAq2TSRZxKweIuBmOzjW13Le8Avh7csUvml+dhKoatofpF9qm7gENshEz
 lFwKZUohRizHzBBNmyDFBcC553Cx3iYiBwfnQB2aW/sz3pUmcUxJRLjIWlwlEAlg
 RjylR0NJqp6cZPXRnCPLK5QI9gLivAYgA38mzN3qeHBQ9kBigVD4qcwcg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=H0YqPSA7zlxt7ujglU9jkwAjGr6m8Mo0xHXZiPD14Xs=; b=TCE+cMpS
 abzO09DkG/vnO9HSIiEpKD7V2Oo72Rt+Jjs/v8nTXkwQm6InnCF+8g2GOCziiajV
 QQyprgLC/XOOF8vB3DfcG+X8jwXUmh4JcQAQ+WJ0t1dmvYBOaLfOCOCfBosq+wnp
 ym56yDr6MmDEb3QEnbt3slf9ZsvlHOxwrBPxObgEdY58SQdrTU4C0ACJkz6WlToO
 PCVbH/lC53tzPSP1v1uyWo8OyrFPxUDAOVe43YXb55D2i09MJMCO8rUNaHwAcKjj
 /4S+qqDCI98oh94+ewCYjDWEd75JHRLcXOfPbcdPbZGRWN7kag0W2ptXIpwcQHVq
 56ykzQ3qo3Ek+w==
X-ME-Sender: <xms:yplHXcRi5-sXxI4rhawxPAiNxfALVxZWFRjliBjkTegUx8eRtnpL6w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddruddtiedgiedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecukfhppeduudekrddvuddtrddugeefrdduvdehnecurfgrrhgrmh
 epmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfu
 ihiivgeptd
X-ME-Proxy: <xmx:yplHXfAu8GclPcV-U9ImJPmt1H1V3CZkoy1gYDufKD5nuGheNEBleA>
 <xmx:yplHXbg7Q0m-ki1OsHzfBL7wVcPrzdh8kpD8Sumg6E9FtOvrE4j7YQ>
 <xmx:yplHXYOzMGuG5ZZebGUUUkqHaywYQ1cmye1YFGhKcOw2LqXL5R3qCw>
 <xmx:yplHXSm63_27nirISdXRXH-i62g0GIIn6TnUtYaPkdNp1A_7x6xiYw>
Received: from localhost.localdomain
 (ppp118-210-143-125.adl-adc-lon-bras33.tpg.internode.on.net
 [118.210.143.125])
 by mail.messagingengine.com (Postfix) with ESMTPA id DFD79380083;
 Sun,  4 Aug 2019 22:51:49 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-mmc@vger.kernel.org
Subject: [PATCH v4 2/2] mmc: Add support for the ASPEED SD controller
Date: Mon,  5 Aug 2019 12:21:55 +0930
Message-Id: <20190805025155.9020-3-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190805025155.9020-1-andrew@aj.id.au>
References: <20190805025155.9020-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_195155_654073_AE0F7842 
X-CRM114-Status: GOOD (  20.94  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
v3: No change
v2:
* Add AST2600 compatible
* Drop SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN
* Ensure slot number is valid
* Fix build with CONFIG_MODULES
* Fix module license string
* Non-PCI devices won't die
* Rename aspeed_sdc_configure_8bit_mode()
* Rename aspeed_sdhci_pdata
* Switch to sdhci_enable_clk()
* Use PTR_ERR() on the right `struct platform_device *`
---
 drivers/mmc/host/Kconfig           |  12 ++
 drivers/mmc/host/Makefile          |   1 +
 drivers/mmc/host/sdhci-of-aspeed.c | 328 +++++++++++++++++++++++++++++
 3 files changed, 341 insertions(+)
 create mode 100644 drivers/mmc/host/sdhci-of-aspeed.c

diff --git a/drivers/mmc/host/Kconfig b/drivers/mmc/host/Kconfig
index 14d89a108edd..0f8a230de2f3 100644
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
index 000000000000..d31785ec90d7
--- /dev/null
+++ b/drivers/mmc/host/sdhci-of-aspeed.c
@@ -0,0 +1,328 @@
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
+static void aspeed_sdc_configure_8bit_mode(struct aspeed_sdc *sdc,
+					   struct aspeed_sdhci *sdhci,
+					   bool bus8)
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
+
+	sdhci_enable_clk(host, clk);
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
+	aspeed_sdc_configure_8bit_mode(aspeed_sdc, aspeed_sdhci,
+				       width == MMC_BUS_WIDTH_8);
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
+static const struct sdhci_pltfm_data aspeed_sdhci_pdata = {
+	.ops = &aspeed_sdhci_ops,
+	.quirks = SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN,
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
+	host = sdhci_pltfm_init(pdev, &aspeed_sdhci_pdata, sizeof(*dev));
+	if (IS_ERR(host))
+		return PTR_ERR(host);
+
+	pltfm_host = sdhci_priv(host);
+	dev = sdhci_pltfm_priv(pltfm_host);
+	dev->parent = dev_get_drvdata(pdev->dev.parent);
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	slot = aspeed_sdhci_calculate_slot(dev, res);
+
+	if (slot < 0)
+		return slot;
+	else if (slot >= 2)
+		return -EINVAL;
+
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
+	int dead = 0;
+
+	host = platform_get_drvdata(pdev);
+	pltfm_host = sdhci_priv(host);
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
+	{ .compatible = "aspeed,ast2600-sdhci", },
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
+			ret = PTR_ERR(cpdev);
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
+	{ .compatible = "aspeed,ast2600-sd-controller", },
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
+static int __init aspeed_sdc_init(void)
+{
+	int rc;
+
+	rc = platform_driver_register(&aspeed_sdhci_driver);
+	if (rc < 0)
+		return rc;
+
+	return platform_driver_register(&aspeed_sdc_driver);
+}
+module_init(aspeed_sdc_init);
+
+static void __exit aspeed_sdc_exit(void)
+{
+	platform_driver_unregister(&aspeed_sdc_driver);
+	platform_driver_unregister(&aspeed_sdhci_driver);
+}
+module_exit(aspeed_sdc_exit);
+
+MODULE_DESCRIPTION("Driver for the ASPEED SD/SDIO/SDHCI Controllers");
+MODULE_AUTHOR("Ryan Chen <ryan_chen@aspeedtech.com>");
+MODULE_AUTHOR("Andrew Jeffery <andrew@aj.id.au>");
+MODULE_LICENSE("GPL");
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
