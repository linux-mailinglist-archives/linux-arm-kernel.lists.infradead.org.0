Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4219E10D75D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 15:47:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BlphDeXeLx3l4yWneSHXbwz9clMx1/8L44Uoqt8TtR4=; b=WpNTdUQGu+i9LP
	iCFnPv8YyI+kYHIV8vWzSMaOAe2VLDk8NjfAt+H91quwAQPnp7RWCUpoXjlJmFk1K9MYrDp8cAsDN
	wOWqRjKRY1qMB0TUTkEUCQM8AtxNhbIIi9vIuVwuyZj9R1L93jTkn2eV4c6HdMdhCIrIZXi1wvGwX
	+gQNsIySD99teSvc68oKeS6cKdP444Qr63wmmopA1F62O7BiZoJS0IHgbSdOshBu5RGR7AuNr9w47
	NxjO5tdjsq8hig5bl/SYrUqUPbEdm9jrAPl40XKCcpmg6hEr/UcDajFS2tyuUZyHXZNhQ9B6CgY0M
	gGId/MNEFYTooTgNJJaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iahYg-0004cE-D3; Fri, 29 Nov 2019 14:47:46 +0000
Received: from mail-sz.amlogic.com ([211.162.65.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iahXk-0003gZ-GU; Fri, 29 Nov 2019 14:46:50 +0000
Received: from droid15-sz.amlogic.com (10.28.8.25) by mail-sz.amlogic.com
 (10.28.11.5) with Microsoft SMTP Server id 15.1.1591.10; Fri, 29 Nov 2019
 22:46:37 +0800
From: Jian Hu <jian.hu@amlogic.com>
To: Jerome Brunet <jbrunet@baylibre.com>, Neil Armstrong
 <narmstrong@baylibre.com>
Subject: [PATCH v3 3/7] clk: meson: eeclk: refactor eeclk common driver to
 support A1
Date: Fri, 29 Nov 2019 22:46:01 +0800
Message-ID: <20191129144605.182774-4-jian.hu@amlogic.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191129144605.182774-1-jian.hu@amlogic.com>
References: <20191129144605.182774-1-jian.hu@amlogic.com>
MIME-Version: 1.0
X-Originating-IP: [10.28.8.25]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_064648_642903_781A1420 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Rob Herring <robh@kernel.org>, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Jian Hu <jian.hu@amlogic.com>,
 linux-arm-kernel@lists.infradead.org, Qiufang Dai <qiufang.dai@amlogic.com>,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 Chandle Zou <chandle.zou@amlogic.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduce a common probe function for A1 series, the way to get
regmap is different between A1 series and the previous series.
The register region is only for one clock driver, the function of
meson_eeclkc_probe is not fit for A1, So it is necessary to
introduce a new function.
---
 drivers/clk/meson/meson-eeclk.c | 59 +++++++++++++++++++++++++++------
 drivers/clk/meson/meson-eeclk.h |  2 ++
 2 files changed, 51 insertions(+), 10 deletions(-)

diff --git a/drivers/clk/meson/meson-eeclk.c b/drivers/clk/meson/meson-eeclk.c
index a7cb1e7aedc4..6f9c8ee38c20 100644
--- a/drivers/clk/meson/meson-eeclk.c
+++ b/drivers/clk/meson/meson-eeclk.c
@@ -13,25 +13,37 @@
 #include "clk-regmap.h"
 #include "meson-eeclk.h"
 
-int meson_eeclkc_probe(struct platform_device *pdev)
+static struct regmap_config clkc_regmap_config = {
+	.reg_bits       = 32,
+	.val_bits       = 32,
+	.reg_stride     = 4,
+};
+
+struct regmap *meson_regmap_resource(struct platform_device *pdev)
+{
+	struct resource *res;
+	void __iomem *base;
+	struct device *dev = &pdev->dev;
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+
+	base = devm_ioremap_resource(dev, res);
+	if (IS_ERR(base))
+		return ERR_CAST(base);
+
+	return devm_regmap_init_mmio(dev, base, &clkc_regmap_config);
+}
+
+int meson_common_probe(struct platform_device *pdev, struct regmap *map)
 {
 	const struct meson_eeclkc_data *data;
 	struct device *dev = &pdev->dev;
-	struct regmap *map;
 	int ret, i;
 
 	data = of_device_get_match_data(dev);
 	if (!data)
 		return -EINVAL;
 
-	/* Get the hhi system controller node */
-	map = syscon_node_to_regmap(of_get_parent(dev->of_node));
-	if (IS_ERR(map)) {
-		dev_err(dev,
-			"failed to get HHI regmap\n");
-		return PTR_ERR(map);
-	}
-
 	if (data->init_count)
 		regmap_multi_reg_write(map, data->init_regs, data->init_count);
 
@@ -54,3 +66,30 @@ int meson_eeclkc_probe(struct platform_device *pdev)
 	return devm_of_clk_add_hw_provider(dev, of_clk_hw_onecell_get,
 					   data->hw_onecell_data);
 }
+
+int meson_eeclkc_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct regmap *map;
+
+	/* Get the hhi system controller node */
+	map = syscon_node_to_regmap(of_get_parent(dev->of_node));
+	if (IS_ERR(map)) {
+		dev_err(dev,
+			"failed to get HHI regmap\n");
+		return PTR_ERR(map);
+	}
+
+	return meson_common_probe(pdev, map);
+}
+
+int meson_clkc_probe(struct platform_device *pdev)
+{
+	struct regmap *map;
+
+	map = meson_regmap_resource(pdev);
+	if (IS_ERR(map))
+		return PTR_ERR(map);
+
+	return meson_common_probe(pdev, map);
+}
diff --git a/drivers/clk/meson/meson-eeclk.h b/drivers/clk/meson/meson-eeclk.h
index 77316207bde1..db0bfba8f6b3 100644
--- a/drivers/clk/meson/meson-eeclk.h
+++ b/drivers/clk/meson/meson-eeclk.h
@@ -20,6 +20,8 @@ struct meson_eeclkc_data {
 	struct clk_hw_onecell_data	*hw_onecell_data;
 };
 
+struct regmap *meson_regmap_resource(struct platform_device *pdev);
 int meson_eeclkc_probe(struct platform_device *pdev);
+int meson_clkc_probe(struct platform_device *pdev);
 
 #endif /* __MESON_CLKC_H */
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
