Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8DC1BE910
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 22:48:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9DLXi+6cGVdeHHw/fb25OqVViPBkDPi+N/2Azi+te+M=; b=D6g55SJvaqexDB
	srqd+PG0BZ7xTAdY1wNJDWJ/07yaiObyxYrGFwKYYf8c9cWVdE1CEGmytOMJ84dcnE16LHaY6f2ry
	9OfW9Ein5mYoXN2hd8CZiQPVy+h/JBBFJUAEw5UgozfOF8jcqq7GwKwk8DIIVFGGogGxHLR0RpZH4
	o3RyQct788LNL1M5q4C7vun69Jm4RikVkUgmnCoo8c2MuKKaHrLpdoD/eWMAcYI6BpB+n5K9ZOwtt
	fbDefC6Nhi/XAQHCUws3JHCCzL59W9QoY14T/zRPBigVa8AwqnP0P2pFT6wSGWwDDLGgiJQtg0Gjl
	wDC0ktu9umoAGYSb2KPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTtcz-0006Jh-P0; Wed, 29 Apr 2020 20:48:21 +0000
Received: from plaes.org ([188.166.43.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTtbh-0005Nc-0m
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 20:47:06 +0000
Received: from localhost (unknown [IPv6:2001:1530:1000:d397:940e:6b9e:3deb:3])
 by plaes.org (Postfix) with ESMTPSA id C509740A4A;
 Wed, 29 Apr 2020 20:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=plaes.org; s=mail;
 t=1588193184; bh=vozgkxdGukZkw97VZxaA46SLq3vMd9Wmn6ITkjlRwzM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=muALmyfmKI5x02+uA4+LCgaYszU/T90rPKS7f7FgI4pIQlHoNk7s5FwLpp4xM67Na
 jJEHh26IsedVkgQUJCl97efrVgZ7RVu5bpO70jDVACHPg+LAJ479am0pxeSV98vGgC
 sY5Fi02A24DqBoH0mNLyVQ+06ZQfGIh3smIr/IXVQbbHCW8FFMG330IPYs3oyHmVNk
 iuU5yBW+CUIDi3KRTWXBZSyPey/ZW47CGomzkHtWQIlz4eNpwmVqAA258nRSZuGi6f
 gUa1Zs62dB4pSgSl8i7j57zVL/suFmKeNOgNohkF1Hefkld6NjUk8fmEJQj0JJGxd0
 +t8DGmoFk2jgQ==
From: Priit Laes <plaes@plaes.org>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-sunxi@googlegroups.com
Subject: [PATCH v2 3/6] net: stmmac: dwmac-sunxi: Implement syscon-based clock
 handling
Date: Wed, 29 Apr 2020 23:46:09 +0300
Message-Id: <20200429204612.31883-4-plaes@plaes.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200429204612.31883-1-plaes@plaes.org>
References: <20200429204612.31883-1-plaes@plaes.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_134701_382989_C443D132 
X-CRM114-Status: GOOD (  19.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

Convert the sun7i-gmac driver to use a regmap-based driver,
instead of relying on the custom clock implementation.

This allows to get rid of the last custom clock in the sun7i
device tree making the sun7i fully CCU-compatible.

Compatibility with existing devicetrees is retained.

Signed-off-by: Priit Laes <plaes@plaes.org>
---
 .../net/ethernet/stmicro/stmmac/dwmac-sunxi.c | 130 ++++++++++++++++--
 1 file changed, 122 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-sunxi.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-sunxi.c
index 0e1ca2cba3c7..206398f7a2af 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-sunxi.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-sunxi.c
@@ -12,8 +12,11 @@
 #include <linux/module.h>
 #include <linux/phy.h>
 #include <linux/platform_device.h>
+#include <linux/of_device.h>
 #include <linux/of_net.h>
 #include <linux/regulator/consumer.h>
+#include <linux/regmap.h>
+#include <linux/mfd/syscon.h>
 
 #include "stmmac_platform.h"
 
@@ -22,11 +25,23 @@ struct sunxi_priv_data {
 	int clk_enabled;
 	struct clk *tx_clk;
 	struct regulator *regulator;
+	struct regmap_field *regmap_field;
+};
+
+/* EMAC clock register @ 0x164 in the CCU address range */
+static const struct reg_field ccu_reg_field = {
+	.reg = 0x164,
+	.lsb = 0,
+	.msb = 31,
 };
 
 #define SUN7I_GMAC_GMII_RGMII_RATE	125000000
 #define SUN7I_GMAC_MII_RATE		25000000
 
+#define SUN7I_A20_CLK_MASK		GENMASK(2, 0)
+#define SUN7I_A20_RGMII_CLK		(BIT(2) | BIT(1))
+#define SUN7I_A20_MII_CLK		0
+
 static int sun7i_gmac_init(struct platform_device *pdev, void *priv)
 {
 	struct sunxi_priv_data *gmac = priv;
@@ -38,7 +53,20 @@ static int sun7i_gmac_init(struct platform_device *pdev, void *priv)
 			return ret;
 	}
 
-	/* Set GMAC interface port mode
+	if (gmac->regmap_field) {
+		if (phy_interface_mode_is_rgmii(gmac->interface)) {
+			regmap_field_update_bits(gmac->regmap_field,
+						 SUN7I_A20_CLK_MASK,
+						 SUN7I_A20_RGMII_CLK);
+			return clk_prepare_enable(gmac->tx_clk);
+		}
+		regmap_field_update_bits(gmac->regmap_field,
+					 SUN7I_A20_CLK_MASK,
+					 SUN7I_A20_MII_CLK);
+		return clk_enable(gmac->tx_clk);
+	}
+
+	/* Legacy devicetree clock (allwinner,sun7i-a20-gmac-clk) support:
 	 *
 	 * The GMAC TX clock lines are configured by setting the clock
 	 * rate, which then uses the auto-reparenting feature of the
@@ -62,9 +90,16 @@ static void sun7i_gmac_exit(struct platform_device *pdev, void *priv)
 {
 	struct sunxi_priv_data *gmac = priv;
 
-	if (gmac->clk_enabled) {
+	if (gmac->regmap_field) {
+		regmap_field_update_bits(gmac->regmap_field,
+					 SUN7I_A20_CLK_MASK, 0);
 		clk_disable(gmac->tx_clk);
-		gmac->clk_enabled = 0;
+	} else {
+		/* Handle legacy devicetree clock (sun7i-a20-gmac-clk) */
+		if (gmac->clk_enabled) {
+			clk_disable(gmac->tx_clk);
+			gmac->clk_enabled = 0;
+		}
 	}
 	clk_unprepare(gmac->tx_clk);
 
@@ -72,10 +107,55 @@ static void sun7i_gmac_exit(struct platform_device *pdev, void *priv)
 		regulator_disable(gmac->regulator);
 }
 
+static struct regmap *sun7i_gmac_get_syscon_from_dev(struct device_node *node)
+{
+	struct device_node *syscon_node;
+	struct platform_device *syscon_pdev;
+	struct regmap *regmap = NULL;
+
+	syscon_node = of_parse_phandle(node, "syscon", 0);
+	if (!syscon_node)
+		return ERR_PTR(-ENODEV);
+
+	syscon_pdev = of_find_device_by_node(syscon_node);
+	if (!syscon_pdev) {
+		/* platform device might not be probed yet */
+		regmap = ERR_PTR(-EPROBE_DEFER);
+		goto out_put_node;
+	}
+
+	/* If no regmap is found then the other device driver is at fault */
+	regmap = dev_get_regmap(&syscon_pdev->dev, NULL);
+	if (!regmap)
+		regmap = ERR_PTR(-EINVAL);
+
+	platform_device_put(syscon_pdev);
+out_put_node:
+	of_node_put(syscon_node);
+	return regmap;
+}
+
 static void sun7i_fix_speed(void *priv, unsigned int speed)
 {
 	struct sunxi_priv_data *gmac = priv;
 
+	if (gmac->regmap_field) {
+		clk_disable(gmac->tx_clk);
+		clk_unprepare(gmac->tx_clk);
+		if (speed == 1000)
+			regmap_field_update_bits(gmac->regmap_field,
+						 SUN7I_A20_CLK_MASK,
+						 SUN7I_A20_RGMII_CLK);
+		else
+			regmap_field_update_bits(gmac->regmap_field,
+						 SUN7I_A20_CLK_MASK,
+						 SUN7I_A20_MII_CLK);
+		clk_prepare_enable(gmac->tx_clk);
+		return;
+	}
+
+	/* Handle legacy devicetree clock (sun7i-a20-gmac-clk) */
+
 	/* only GMII mode requires us to reconfigure the clock lines */
 	if (gmac->interface != PHY_INTERFACE_MODE_GMII)
 		return;
@@ -102,6 +182,8 @@ static int sun7i_gmac_probe(struct platform_device *pdev)
 	struct stmmac_resources stmmac_res;
 	struct sunxi_priv_data *gmac;
 	struct device *dev = &pdev->dev;
+	struct device_node *syscon_node;
+	struct regmap *regmap = NULL;
 	int ret;
 
 	ret = stmmac_get_platform_resources(pdev, &stmmac_res);
@@ -124,11 +206,43 @@ static int sun7i_gmac_probe(struct platform_device *pdev)
 		goto err_remove_config_dt;
 	}
 
-	gmac->tx_clk = devm_clk_get(dev, "allwinner_gmac_tx");
-	if (IS_ERR(gmac->tx_clk)) {
-		dev_err(dev, "could not get tx clock\n");
-		ret = PTR_ERR(gmac->tx_clk);
-		goto err_remove_config_dt;
+	/* Attempt to fetch syscon node... */
+	syscon_node = of_parse_phandle(dev->of_node, "syscon", 0);
+	if (syscon_node) {
+		gmac->tx_clk = devm_clk_get(dev, "stmmaceth");
+		if (IS_ERR(gmac->tx_clk)) {
+			dev_err(dev, "Could not get TX clock\n");
+			ret = PTR_ERR(gmac->tx_clk);
+			goto err_remove_config_dt;
+		}
+
+		regmap = sun7i_gmac_get_syscon_from_dev(pdev->dev.of_node);
+		if (IS_ERR(regmap))
+			regmap = syscon_regmap_lookup_by_phandle(pdev->dev.of_node,
+								 "syscon");
+		if (IS_ERR(regmap)) {
+			ret = PTR_ERR(regmap);
+			dev_err(&pdev->dev, "Unable to map syscon: %d\n", ret);
+			goto err_remove_config_dt;
+		}
+
+		gmac->regmap_field = devm_regmap_field_alloc(dev, regmap,
+							     ccu_reg_field);
+
+		if (IS_ERR(gmac->regmap_field)) {
+			ret = PTR_ERR(gmac->regmap_field);
+			dev_err(dev, "Unable to map syscon register: %d\n", ret);
+			goto err_remove_config_dt;
+		}
+	/* ...or fall back to legacy clock setup */
+	} else {
+		gmac->tx_clk = devm_clk_get(dev, "allwinner_gmac_tx");
+		if (IS_ERR(gmac->tx_clk)) {
+			dev_err(dev, "could not get tx clock\n");
+			ret = PTR_ERR(gmac->tx_clk);
+			goto err_remove_config_dt;
+		}
+		dev_info(dev, "allwinner_gmac_tx support is deprecated!\n");
 	}
 
 	/* Optional regulator for PHY */
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
