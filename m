Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D8C1F64AC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 11:24:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lQtBJOULd3X1jBLU9j+1mzvvka+WlyFR4PDd10eZSBs=; b=i75aeETbdeX2cw
	LD/KeFmtPnc7UedGVQ1NZK2ZE2kFXdEGYSCjponvzaKN6S3llN1bDTZy8+0GfSBfCjfvovcrbTogq
	27zb8Vfzu+tYBxtes5tUpsoDMJ5Ovbhkzs4Z7PN+cAb4OvLC1icfTD98nRkvbt42JCePpXWAeUjMb
	WxFiYE2FuoVMrBruHHMxSSgvZsGE87IFS6zdxJDKmdIq2yAfnWkASKsUbp1qlK6+17heoLKzseKXl
	OA5b2lWXlvyj7op66/4uDJbWtC0wv6Cn9WzwZ2Hr/6hGpReyVdWswm6kOB8ZmEZI5puZvm7KtX9J1
	GfgHNLE7XzqLlS5GQy1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjJRi-0006lD-Pp; Thu, 11 Jun 2020 09:24:26 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjJQq-00061I-7C; Thu, 11 Jun 2020 09:23:35 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 9FF8E58018C;
 Thu, 11 Jun 2020 05:23:24 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 11 Jun 2020 05:23:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=QD3GhGiJSRsvy
 2pCu0WuGqCL6TVaJvBfh2DHBpnRXUk=; b=T+rx8kcqimT22+c3GpAae1Z7jVMQB
 19i5eYvIqcfwEuPKpNuLEP8rWnzC8kJ+21D2I+UeHjH79vO7Usg2nKjMG+aQlPwz
 aTUy0o+3Ofpuj/ScKy0dOOnJSBUHL7VXJLkaJP/Qjlb5g8GgerfQbXUDbRQGQ6ul
 8UoO6xdTe7DALL40TcDwYd+37APwkdiee2BGqawX27ihfwlXdDje/eQF87lQwJjD
 aj/hX6jC8m61TFwP94pONCqX7zc1xvtTHF93sa3tGFm+nPPgatJXIuo1/hTFUn9W
 PzRXvuhz93r3AxgZWdoPGBa7zhm6LrrlrqCwBrCBNqbC9KHVs30HtjfRQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=QD3GhGiJSRsvy2pCu0WuGqCL6TVaJvBfh2DHBpnRXUk=; b=EcQO1mx/
 +1xsva6T2yJUdqrtLRdY0B/SJS50uVpIJrwVgpkMwLPkaF665pEew5vhYacuqyYV
 x9nN38bXbbQDaqbMGcT695DJdOHhvpZgTRHk/3JpXczVDol1jUBLjU/TKB34MnNU
 y9L9Kj5vzQWA46QQPLjQCCM7j5AQ8MW3pqXJCqOGRt/BOPdB5eVkDJHJlmcK8GoQ
 c7qixyuGYPmzZrV0t0P+yHlx5sErGsGWs2naTlsB2Sf2u7Dv95dOw1Kaiw34LYj8
 xEXMvX+qyCLRKv2ZIj6oJ0CuRmj9UMIlsdp1gHxSc2yyLVkdDV4PxyBymtPvsEqu
 6o4xn2LgILtxUg==
X-ME-Sender: <xms:DPjhXvqA9Ry3f_k6ckRERiHI9syb7CKKHaPX17Ftg7Ur8AW9gF136Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehkedgudeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdevjeduiedtuddtteeuiefgiedukeevjeevuddttddvtdefkedvleeufeej
 leeknecuffhomhgrihhnpehrtgguvghvrdhnrhenucfkphepledtrdekledrieekrdejie
 enucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgig
 ihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:DPjhXpqi1uCyLJcnue49WOldiG0asfoiREw5scIFAvscFtsGGrRHjg>
 <xmx:DPjhXsPv0foGnYajT1jxSFAfi6seIJxZZ1F4k7FaXGAz1MqlrOiHOA>
 <xmx:DPjhXi60c88vj0zduY2ToWEyo0klbi4a-cRVg_4VmbA7CrPfNXPvHw>
 <xmx:DPjhXmiFbFwzZ-Ghnz4mXG2WbZrTCGWbYRpo3VGiiOWfyFsXtPKPJQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 390F43280059;
 Thu, 11 Jun 2020 05:23:24 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v4 2/3] clk: bcm: Add BCM2711 DVP driver
Date: Thu, 11 Jun 2020 11:23:16 +0200
Message-Id: <bb60d97fc76b61c2eabef5a02ebd664c0f57ede0.1591867332.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.4c4625a8e076f3163b800b3d8986b282ee98d908.1591867332.git-series.maxime@cerno.tech>
References: <cover.4c4625a8e076f3163b800b3d8986b282ee98d908.1591867332.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_022332_416029_29F36552 
X-CRM114-Status: GOOD (  14.04  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Mike Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The HDMI block has a block that controls clocks and reset signals to the
HDMI0 and HDMI1 controllers.

Let's expose that through a clock driver implementing a clock and reset
provider.

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: linux-clk@vger.kernel.org
Cc: devicetree@vger.kernel.org
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/Kconfig           |  11 +++-
 drivers/clk/bcm/Makefile          |   1 +-
 drivers/clk/bcm/clk-bcm2711-dvp.c | 120 +++++++++++++++++++++++++++++++-
 3 files changed, 132 insertions(+)
 create mode 100644 drivers/clk/bcm/clk-bcm2711-dvp.c

diff --git a/drivers/clk/bcm/Kconfig b/drivers/clk/bcm/Kconfig
index 8c83977a7dc4..784f12c72365 100644
--- a/drivers/clk/bcm/Kconfig
+++ b/drivers/clk/bcm/Kconfig
@@ -1,4 +1,15 @@
 # SPDX-License-Identifier: GPL-2.0-only
+
+config CLK_BCM2711_DVP
+	tristate "Broadcom BCM2711 DVP support"
+	depends on ARCH_BCM2835 ||COMPILE_TEST
+	depends on COMMON_CLK
+	default ARCH_BCM2835
+	select RESET_SIMPLE
+	help
+	  Enable common clock framework support for the Broadcom BCM2711
+	  DVP Controller.
+
 config CLK_BCM2835
 	bool "Broadcom BCM2835 clock support"
 	depends on ARCH_BCM2835 || ARCH_BRCMSTB || COMPILE_TEST
diff --git a/drivers/clk/bcm/Makefile b/drivers/clk/bcm/Makefile
index 0070ddf6cdd2..edb66b44cb27 100644
--- a/drivers/clk/bcm/Makefile
+++ b/drivers/clk/bcm/Makefile
@@ -6,6 +6,7 @@ obj-$(CONFIG_CLK_BCM_KONA)	+= clk-kona-setup.o
 obj-$(CONFIG_CLK_BCM_KONA)	+= clk-bcm281xx.o
 obj-$(CONFIG_CLK_BCM_KONA)	+= clk-bcm21664.o
 obj-$(CONFIG_COMMON_CLK_IPROC)	+= clk-iproc-armpll.o clk-iproc-pll.o clk-iproc-asiu.o
+obj-$(CONFIG_CLK_BCM2711_DVP)	+= clk-bcm2711-dvp.o
 obj-$(CONFIG_CLK_BCM2835)	+= clk-bcm2835.o
 obj-$(CONFIG_CLK_BCM2835)	+= clk-bcm2835-aux.o
 obj-$(CONFIG_CLK_RASPBERRYPI)	+= clk-raspberrypi.o
diff --git a/drivers/clk/bcm/clk-bcm2711-dvp.c b/drivers/clk/bcm/clk-bcm2711-dvp.c
new file mode 100644
index 000000000000..84dbc886e303
--- /dev/null
+++ b/drivers/clk/bcm/clk-bcm2711-dvp.c
@@ -0,0 +1,120 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// Copyright 2020 Cerno
+
+#include <linux/clk-provider.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/reset-controller.h>
+#include <linux/reset/reset-simple.h>
+
+#define DVP_HT_RPI_SW_INIT	0x04
+#define DVP_HT_RPI_MISC_CONFIG	0x08
+
+#define NR_CLOCKS	2
+#define NR_RESETS	6
+
+struct clk_dvp {
+	struct clk_hw_onecell_data	*data;
+	struct reset_simple_data	reset;
+};
+
+static const struct clk_parent_data clk_dvp_parent = {
+	.index	= 0,
+};
+
+static int clk_dvp_probe(struct platform_device *pdev)
+{
+	struct clk_hw_onecell_data *data;
+	struct resource *res;
+	struct clk_dvp *dvp;
+	void __iomem *base;
+	int ret;
+
+	dvp = devm_kzalloc(&pdev->dev, sizeof(*dvp), GFP_KERNEL);
+	if (!dvp)
+		return -ENOMEM;
+	platform_set_drvdata(pdev, dvp);
+
+	dvp->data = devm_kzalloc(&pdev->dev,
+				 struct_size(dvp->data, hws, NR_CLOCKS),
+				 GFP_KERNEL);
+	if (!dvp->data)
+		return -ENOMEM;
+	data = dvp->data;
+
+	base = devm_platform_get_and_ioremap_resource(pdev, 0, &res);
+	if (IS_ERR(base))
+		return PTR_ERR(base);
+
+	dvp->reset.rcdev.owner = THIS_MODULE;
+	dvp->reset.rcdev.nr_resets = NR_RESETS;
+	dvp->reset.rcdev.ops = &reset_simple_ops;
+	dvp->reset.rcdev.of_node = pdev->dev.of_node;
+	dvp->reset.membase = base + DVP_HT_RPI_SW_INIT;
+	spin_lock_init(&dvp->reset.lock);
+
+	ret = devm_reset_controller_register(&pdev->dev, &dvp->reset.rcdev);
+	if (ret)
+		return ret;
+
+	data->hws[0] = clk_hw_register_gate_parent_data(&pdev->dev,
+							"hdmi0-108MHz",
+							&clk_dvp_parent, 0,
+							base + DVP_HT_RPI_MISC_CONFIG, 3,
+							CLK_GATE_SET_TO_DISABLE,
+							&dvp->reset.lock);
+	if (IS_ERR(data->hws[0]))
+		return PTR_ERR(data->hws[0]);
+
+	data->hws[1] = clk_hw_register_gate_parent_data(&pdev->dev,
+							"hdmi1-108MHz",
+							&clk_dvp_parent, 0,
+							base + DVP_HT_RPI_MISC_CONFIG, 4,
+							CLK_GATE_SET_TO_DISABLE,
+							&dvp->reset.lock);
+	if (IS_ERR(data->hws[1])) {
+		ret = PTR_ERR(data->hws[1]);
+		goto unregister_clk0;
+	}
+
+	data->num = NR_CLOCKS;
+	ret = of_clk_add_hw_provider(pdev->dev.of_node, of_clk_hw_onecell_get,
+				     data);
+	if (ret)
+		goto unregister_clk1;
+
+	return 0;
+
+unregister_clk1:
+	clk_hw_unregister_gate(data->hws[1]);
+
+unregister_clk0:
+	clk_hw_unregister_gate(data->hws[0]);
+	return ret;
+};
+
+static int clk_dvp_remove(struct platform_device *pdev)
+{
+	struct clk_dvp *dvp = platform_get_drvdata(pdev);
+	struct clk_hw_onecell_data *data = dvp->data;
+
+	clk_hw_unregister_gate(data->hws[1]);
+	clk_hw_unregister_gate(data->hws[0]);
+
+	return 0;
+}
+
+static const struct of_device_id clk_dvp_dt_ids[] = {
+	{ .compatible = "brcm,brcm2711-dvp", },
+	{ /* sentinel */ }
+};
+
+static struct platform_driver clk_dvp_driver = {
+	.probe	= clk_dvp_probe,
+	.remove	= clk_dvp_remove,
+	.driver	= {
+		.name		= "brcm2711-dvp",
+		.of_match_table	= clk_dvp_dt_ids,
+	},
+};
+module_platform_driver(clk_dvp_driver);
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
