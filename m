Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6FEE114CD0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 08:42:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bNMjmG02I6Fez8sUXOyccCaJyixSZr8OLEGoeXq3vBE=; b=WTba5x4q76GBVm
	PAqx/vWXPm3bChaDQIwu5eMahNK+ICL+MxALZnKkxsVAV0L4ln5IrnqemUdVKPwxHLsI6uuboSOYR
	rDf1QINdRK0SrCjMEqEWkhYLLY3b1ogaUW0nKVuKV2ABwBcvl1LbN6nNlUlWabTZJYD6LyB2okd39
	nCkS70y7PsG2ZnYS0QBAHns9ALzfxwIhWWiMb5yiwBBz4DiOUCa/8evTdw2RFhvVEztBEQLXI1xGB
	u85qglojpjcB46ZrfB5QIi4fHliXkfSPuXWeapBGeaehPR6lH09OCpO7l7hpoztF3BYta/Kb6iVqV
	CYtUT3t878vU0c0Ga6qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1id8Fn-0002Zu-Cu; Fri, 06 Dec 2019 07:42:19 +0000
Received: from mail-sz.amlogic.com ([211.162.65.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1id8Ep-0001eX-TW; Fri, 06 Dec 2019 07:41:21 +0000
Received: from droid15-sz.amlogic.com (10.28.8.25) by mail-sz.amlogic.com
 (10.28.11.5) with Microsoft SMTP Server id 15.1.1591.10; Fri, 6 Dec 2019
 15:41:36 +0800
From: Jian Hu <jian.hu@amlogic.com>
To: Jerome Brunet <jbrunet@baylibre.com>, Neil Armstrong
 <narmstrong@baylibre.com>
Subject: [PATCH v4 3/6] clk: meson: eeclk: refactor eeclk common driver to
 support A1
Date: Fri, 6 Dec 2019 15:40:49 +0800
Message-ID: <20191206074052.15557-4-jian.hu@amlogic.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191206074052.15557-1-jian.hu@amlogic.com>
References: <20191206074052.15557-1-jian.hu@amlogic.com>
MIME-Version: 1.0
X-Originating-IP: [10.28.8.25]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_234119_958428_93468453 
X-CRM114-Status: GOOD (  10.48  )
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

Signed-off-by: Jian Hu <jian.hu@amlogic.com>
---
 drivers/clk/meson/meson-eeclk.c | 59 +++++++++++++++++++++++++++------
 drivers/clk/meson/meson-eeclk.h |  1 +
 2 files changed, 50 insertions(+), 10 deletions(-)

diff --git a/drivers/clk/meson/meson-eeclk.c b/drivers/clk/meson/meson-eeclk.c
index a7cb1e7aedc4..12ceb1caabd8 100644
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
+static struct regmap *meson_regmap_resource(struct platform_device *pdev)
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
+static int meson_common_probe(struct platform_device *pdev, struct regmap *map)
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
index 77316207bde1..a2e9ab3a4f6b 100644
--- a/drivers/clk/meson/meson-eeclk.h
+++ b/drivers/clk/meson/meson-eeclk.h
@@ -21,5 +21,6 @@ struct meson_eeclkc_data {
 };
 
 int meson_eeclkc_probe(struct platform_device *pdev);
+int meson_clkc_probe(struct platform_device *pdev);
 
 #endif /* __MESON_CLKC_H */
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
