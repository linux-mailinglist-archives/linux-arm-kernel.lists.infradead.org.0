Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA2C31AE82A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 00:24:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HGzb24zNHzrJCYURuviss5qj399Nv3KaIg+XNZl6uRI=; b=n0e7Yg6rsAINKp
	XMvOwV1eEWTu/Rq6ew8TnG3TQB4INJctlLDwmgOMuQT6p8FwqG81cw+73dHfgHsauSsAXxnKNnCji
	zqdk8HdGrA85DNvmRMXvREY+RC5BGxGq14aWO6xjBSwlnwF2BdW9qhUsgo5RYqJdeC06vylMFsmiF
	wyPXTUbO7+deHwfEuW70AunmA2l2SYrCeFasigkEgqSZHyH4iUiF1V77LeD5KyfBy7rLq3CbE5iLL
	dQFIWNHk0UT+8kcgi4zgX3gQIa0RUwJKYlLl7TiV2RBooROEKI3E6UvNhGER9Bzy+rq8pfIpRSFIP
	KfbsTaVPBhSk4Q/MKJrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPZPK-00029j-Kn; Fri, 17 Apr 2020 22:24:22 +0000
Received: from plaes.org ([188.166.43.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPZOp-0001qC-J8
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 22:23:53 +0000
Received: from localhost (unknown [IPv6:2001:1530:1000:9d4d:940e:6b9e:3deb:4])
 by plaes.org (Postfix) with ESMTPSA id 14F6940E29;
 Fri, 17 Apr 2020 22:17:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=plaes.org; s=mail;
 t=1587161873; bh=9OnaF3dHK/bJkvPCqojRkILBF7al9aw6MaMXsXHyyK0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=itM0c/NFnkFtDpdiCJTYKu1kSOTX7JKDdQ5nuJrtCDtTfhG+NDleV88SjKY1u+9Va
 lh9zFOm+dMDnbb61MSngQ2qIa4XygmAAUBwF7l0pUeEDEOqybmbOWwwHWyXKiQA4K7
 sqRJcNG9DkpX6x712sQ9AGSOVUUhQgfdUGvR7ofuimj55CiaDGW5LhZkCfz3QGTQRv
 cZjGOMj9N5M03wHFqJ+wUTko95OohNbtP7tfGJ1gsHXkmA/xShDWsgOTx97qRpuE0A
 2Mf/s/+KEeIO2Cq/tcXF+4TjGq5I2riavpZQinnLCE7xstM4cbl2x/kGDNXF/tp+mw
 1Ec/xeamHMIqg==
From: Priit Laes <plaes@plaes.org>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-sunxi@googlegroups.com
Subject: [PATCH 1/4] clk: sunxi-ng: a10/a20: rewrite init code to a platform
 driver
Date: Sat, 18 Apr 2020 01:17:27 +0300
Message-Id: <20200417221730.555954-2-plaes@plaes.org>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <20200417221730.555954-1-plaes@plaes.org>
References: <20200417221730.555954-1-plaes@plaes.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_152351_795443_98E54F6B 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Priit Laes <plaes@plaes.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to register regmap for sun7i CCU, there needs to be
a device structure already bound to the CCU device node.

Convert the sun4i/sun7i CCU setup to platform driver to use
it later as platform device.

Signed-off-by: Priit Laes <plaes@plaes.org>
---
 drivers/clk/sunxi-ng/ccu-sun4i-a10.c | 77 ++++++++++++++++++++--------
 1 file changed, 56 insertions(+), 21 deletions(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun4i-a10.c b/drivers/clk/sunxi-ng/ccu-sun4i-a10.c
index f32366d9336e..839e9d5a1cff 100644
--- a/drivers/clk/sunxi-ng/ccu-sun4i-a10.c
+++ b/drivers/clk/sunxi-ng/ccu-sun4i-a10.c
@@ -7,7 +7,8 @@
 
 #include <linux/clk-provider.h>
 #include <linux/io.h>
-#include <linux/of_address.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
 
 #include "ccu_common.h"
 #include "ccu_reset.h"
@@ -1425,19 +1426,10 @@ static const struct sunxi_ccu_desc sun7i_a20_ccu_desc = {
 	.num_resets	= ARRAY_SIZE(sunxi_a10_a20_ccu_resets),
 };
 
-static void __init sun4i_ccu_init(struct device_node *node,
-				  const struct sunxi_ccu_desc *desc)
+static void bootstrap_clocks(void __iomem *reg)
 {
-	void __iomem *reg;
 	u32 val;
 
-	reg = of_io_request_and_map(node, 0, of_node_full_name(node));
-	if (IS_ERR(reg)) {
-		pr_err("%s: Could not map the clock registers\n",
-		       of_node_full_name(node));
-		return;
-	}
-
 	val = readl(reg + SUN4I_PLL_AUDIO_REG);
 
 	/*
@@ -1463,20 +1455,63 @@ static void __init sun4i_ccu_init(struct device_node *node,
 	val = readl(reg + SUN4I_AHB_REG);
 	val &= ~GENMASK(7, 6);
 	writel(val | (2 << 6), reg + SUN4I_AHB_REG);
-
-	sunxi_ccu_probe(node, reg, desc);
 }
 
-static void __init sun4i_a10_ccu_setup(struct device_node *node)
+static int sun4i_a10_ccu_probe(struct platform_device *pdev)
 {
-	sun4i_ccu_init(node, &sun4i_a10_ccu_desc);
+	struct resource *res;
+	void __iomem *reg;
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	reg = devm_ioremap_resource(&pdev->dev, res);
+	if (IS_ERR(reg))
+		return PTR_ERR(reg);
+
+	bootstrap_clocks(reg);
+
+	return sunxi_ccu_probe(pdev->dev.of_node, reg, &sun4i_a10_ccu_desc);
 }
-CLK_OF_DECLARE(sun4i_a10_ccu, "allwinner,sun4i-a10-ccu",
-	       sun4i_a10_ccu_setup);
 
-static void __init sun7i_a20_ccu_setup(struct device_node *node)
+static int sun7i_a20_ccu_probe(struct platform_device *pdev)
 {
-	sun4i_ccu_init(node, &sun7i_a20_ccu_desc);
+	struct resource *res;
+	void __iomem *reg;
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	reg = devm_ioremap_resource(&pdev->dev, res);
+	if (IS_ERR(reg))
+		return PTR_ERR(reg);
+
+	bootstrap_clocks(reg);
+
+	return sunxi_ccu_probe(pdev->dev.of_node, reg, &sun7i_a20_ccu_desc);
 }
-CLK_OF_DECLARE(sun7i_a20_ccu, "allwinner,sun7i-a20-ccu",
-	       sun7i_a20_ccu_setup);
+
+
+static const struct of_device_id sun4i_a10_ccu_ids[] = {
+	{ .compatible = "allwinner,sun4i-a10-ccu"},
+	{ }
+};
+
+static struct platform_driver sun4i_a10_ccu_driver = {
+	.probe = sun4i_a10_ccu_probe,
+	.driver = {
+		.name = "sun4i-a10-ccu",
+		.of_match_table = sun4i_a10_ccu_ids,
+	},
+};
+builtin_platform_driver(sun4i_a10_ccu_driver);
+
+static const struct of_device_id sun7i_a20_ccu_ids[] = {
+	{ .compatible = "allwinner,sun7i-a20-ccu"},
+	{ }
+};
+
+static struct platform_driver sun7i_a20_ccu_driver = {
+	.probe = sun7i_a20_ccu_probe,
+	.driver = {
+		.name = "sun7i-a20-ccu",
+		.of_match_table = sun7i_a20_ccu_ids,
+	},
+};
+builtin_platform_driver(sun7i_a20_ccu_driver);
-- 
2.25.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
