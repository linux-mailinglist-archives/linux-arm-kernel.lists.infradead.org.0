Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 655A933ECD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 08:09:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6FqP2GZhEKiqV2O/8EKoXWeX/+N0UB/qBKFtPjZGR+U=; b=BAkC09PmpTFPWx
	ACU7PYi8sA6VxKQAuYjfsv2h20jevme7ymDnw7WyHo1FGWX+VC8gE8+p2cAf8J5bJBLu38ol2Lh0W
	tt//Dxu2sxpUrwgTZhSqNdyIQB/mQK96dWpahgn2cVkz+4H6JonfJINjIdsLqwRfjSS/EgN+AA/SV
	jjoqQ6V6jIm2q5XTlY2bRAc1DD2IkiirFCi6dyWFPq6QbAKTeY8VHovwPM9YNmH4Enddwn/TurzVX
	yE/PpVjjkIk0+7rQbAPF2bHgLXMJrWJtjVE3iJYhv25S2d8c+BJNc5CsO8VpDemEvoA5uoda1t2VA
	lOzCCdMhAivNsq8QVnOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY2da-0000bT-VB; Tue, 04 Jun 2019 06:09:34 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY2d9-0000BY-Pd
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 06:09:10 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x54695u0114273;
 Tue, 4 Jun 2019 01:09:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559628545;
 bh=sW8z7++qxYMl53z0Rc6lL4lSyWrXEWJ/yjX+OCLuvRg=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=aZ7GtjbMm1xxT5t2/fLW0EFXDXt3r6qgz8amLPNDXpKljo5RmP3EYvewvRltM5HlH
 p4JjCm4vZajShpeI9PO4uU04J4TZ0hGssdRkw613ZHGsRD4hzjM2ip0bRlFuJ+IN+v
 ybK6MJc/6ZiLUkwYqf2jyshiU+VSv3OpZTg8Gdz8=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x54695H4035043
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 4 Jun 2019 01:09:05 -0500
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 4 Jun
 2019 01:09:04 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 4 Jun 2019 01:09:04 -0500
Received: from a0230074-OptiPlex-7010.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5468pZ1049516;
 Tue, 4 Jun 2019 01:09:01 -0500
From: Faiz Abbas <faiz_abbas@ti.com>
To: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-mmc@vger.kernel.org>
Subject: [PATCH 2/4] mmc: sdhci_am654: Add Support for 8 bit IP on J721E
Date: Tue, 4 Jun 2019 11:39:12 +0530
Message-ID: <20190604060914.10886-3-faiz_abbas@ti.com>
X-Mailer: git-send-email 2.19.2
In-Reply-To: <20190604060914.10886-1-faiz_abbas@ti.com>
References: <20190604060914.10886-1-faiz_abbas@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_230907_909278_ED7EB379 
X-CRM114-Status: GOOD (  23.08  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: nm@ti.com, ulf.hansson@linaro.org, robh+dt@kernel.org, nsekhar@ti.com,
 adrian.hunter@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The 8 bit IP on the TI's J721E device departs from the AM654x IP in some
ways which require special handling. Create a driver_data structure
which holds the pltfm_data and a flags field which is used to indicate
these differences. These are the following:

1. The pins are not muxed with anything else inside the SoC and hence the
   IOMUX_ENABLE field does not exist. Add a flag which is used to
   indicate the presence of the field.

2. The register field used to select DLL frequency is 3 bit wide as
   compared to 2 bits in AM65x. Add another flag which differentiates
   between 3 bit and 2 bit fields.

3. The strobe select field is 8 bit wide as compared to 4 bits for
   AM65x. Add yet another flag to indicate this difference. Strobe select
   is used only for HS400 speed mode, support for which has not yet been
   added in AM65x.

Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
---
 drivers/mmc/host/sdhci_am654.c | 135 +++++++++++++++++++++++++++------
 1 file changed, 110 insertions(+), 25 deletions(-)

diff --git a/drivers/mmc/host/sdhci_am654.c b/drivers/mmc/host/sdhci_am654.c
index d0b20780dd0f..4575aeb435ec 100644
--- a/drivers/mmc/host/sdhci_am654.c
+++ b/drivers/mmc/host/sdhci_am654.c
@@ -6,6 +6,7 @@
  *
  */
 #include <linux/clk.h>
+#include <linux/of.h>
 #include <linux/module.h>
 #include <linux/pm_runtime.h>
 #include <linux/property.h>
@@ -36,11 +37,14 @@
 #define OTAPDLYSEL_SHIFT	12
 #define OTAPDLYSEL_MASK		GENMASK(15, 12)
 #define STRBSEL_SHIFT		24
-#define STRBSEL_MASK		GENMASK(27, 24)
+#define STRBSEL_4BIT_MASK	GENMASK(27, 24)
+#define STRBSEL_8BIT_MASK	GENMASK(31, 24)
 #define SEL50_SHIFT		8
 #define SEL50_MASK		BIT(SEL50_SHIFT)
 #define SEL100_SHIFT		9
 #define SEL100_MASK		BIT(SEL100_SHIFT)
+#define FREQSEL_SHIFT		8
+#define FREQSEL_MASK		GENMASK(10, 8)
 #define DLL_TRIM_ICP_SHIFT	4
 #define DLL_TRIM_ICP_MASK	GENMASK(7, 4)
 #define DR_TY_SHIFT		20
@@ -77,13 +81,23 @@ struct sdhci_am654_data {
 	int trm_icp;
 	int drv_strength;
 	bool dll_on;
+	int strb_sel;
+	u32 flags;
+};
+
+struct sdhci_am654_driver_data {
+	const struct sdhci_pltfm_data *pdata;
+	u32 flags;
+#define IOMUX_PRESENT	(1 << 0)
+#define FREQSEL_2_BIT	(1 << 1)
+#define STRBSEL_4_BIT	(1 << 2)
 };
 
 static void sdhci_am654_set_clock(struct sdhci_host *host, unsigned int clock)
 {
 	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 	struct sdhci_am654_data *sdhci_am654 = sdhci_pltfm_priv(pltfm_host);
-	int sel50, sel100;
+	int sel50, sel100, freqsel;
 	u32 mask, val;
 	int ret;
 
@@ -101,24 +115,52 @@ static void sdhci_am654_set_clock(struct sdhci_host *host, unsigned int clock)
 		val = (1 << OTAPDLYENA_SHIFT) |
 		      (sdhci_am654->otap_del_sel << OTAPDLYSEL_SHIFT);
 		regmap_update_bits(sdhci_am654->base, PHY_CTRL4, mask, val);
-		switch (clock) {
-		case 200000000:
-			sel50 = 0;
-			sel100 = 0;
-			break;
-		case 100000000:
-			sel50 = 0;
-			sel100 = 1;
-			break;
-		default:
-			sel50 = 1;
-			sel100 = 0;
+		/* Write to STRBSEL for HS400 speed mode */
+		if (host->mmc->ios.timing == MMC_TIMING_MMC_HS400) {
+			if (sdhci_am654->flags & STRBSEL_4_BIT)
+				mask = STRBSEL_4BIT_MASK;
+			else
+				mask = STRBSEL_8BIT_MASK;
+
+			regmap_update_bits(sdhci_am654->base, PHY_CTRL4, mask,
+					   sdhci_am654->strb_sel <<
+					   STRBSEL_SHIFT);
+		}
+
+		if (sdhci_am654->flags & FREQSEL_2_BIT) {
+			switch (clock) {
+			case 200000000:
+				sel50 = 0;
+				sel100 = 0;
+				break;
+			case 100000000:
+				sel50 = 0;
+				sel100 = 1;
+				break;
+			default:
+				sel50 = 1;
+				sel100 = 0;
+			}
+
+			/* Configure PHY DLL frequency */
+			mask = SEL50_MASK | SEL100_MASK;
+			val = (sel50 << SEL50_SHIFT) | (sel100 << SEL100_SHIFT);
+			regmap_update_bits(sdhci_am654->base, PHY_CTRL5, mask,
+					   val);
+		} else {
+			switch (clock) {
+			case 200000000:
+				freqsel = 0x0;
+				break;
+			default:
+				freqsel = 0x4;
+			}
+
+			regmap_update_bits(sdhci_am654->base, PHY_CTRL5,
+					   FREQSEL_MASK,
+					   freqsel << FREQSEL_SHIFT);
 		}
 
-		/* Configure PHY DLL frequency */
-		mask = SEL50_MASK | SEL100_MASK;
-		val = (sel50 << SEL50_SHIFT) | (sel100 << SEL100_SHIFT);
-		regmap_update_bits(sdhci_am654->base, PHY_CTRL5, mask, val);
 		/* Configure DLL TRIM */
 		mask = DLL_TRIM_ICP_MASK;
 		val = sdhci_am654->trm_icp << DLL_TRIM_ICP_SHIFT;
@@ -196,6 +238,33 @@ static const struct sdhci_pltfm_data sdhci_am654_pdata = {
 	.quirks2 = SDHCI_QUIRK2_PRESET_VALUE_BROKEN,
 };
 
+static const struct sdhci_am654_driver_data sdhci_am654_drvdata = {
+	.pdata = &sdhci_am654_pdata,
+	.flags = IOMUX_PRESENT | FREQSEL_2_BIT | STRBSEL_4_BIT,
+};
+
+struct sdhci_ops sdhci_j721e_8bit_ops = {
+	.get_max_clock = sdhci_pltfm_clk_get_max_clock,
+	.get_timeout_clock = sdhci_pltfm_clk_get_max_clock,
+	.set_uhs_signaling = sdhci_set_uhs_signaling,
+	.set_bus_width = sdhci_set_bus_width,
+	.set_power = sdhci_am654_set_power,
+	.set_clock = sdhci_am654_set_clock,
+	.write_b = sdhci_am654_write_b,
+	.reset = sdhci_reset,
+};
+
+static const struct sdhci_pltfm_data sdhci_j721e_8bit_pdata = {
+	.ops = &sdhci_j721e_8bit_ops,
+	.quirks = SDHCI_QUIRK_INVERTED_WRITE_PROTECT |
+		  SDHCI_QUIRK_MULTIBLOCK_READ_ACMD12,
+	.quirks2 = SDHCI_QUIRK2_PRESET_VALUE_BROKEN,
+};
+
+static const struct sdhci_am654_driver_data sdhci_j721e_8bit_drvdata = {
+	.pdata = &sdhci_j721e_8bit_pdata,
+};
+
 static int sdhci_am654_init(struct sdhci_host *host)
 {
 	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
@@ -221,7 +290,9 @@ static int sdhci_am654_init(struct sdhci_host *host)
 	}
 
 	/* Enable pins by setting IO mux to 0 */
-	regmap_update_bits(sdhci_am654->base, PHY_CTRL1, IOMUX_ENABLE_MASK, 0);
+	if (sdhci_am654->flags & IOMUX_PRESENT)
+		regmap_update_bits(sdhci_am654->base, PHY_CTRL1,
+				   IOMUX_ENABLE_MASK, 0);
 
 	/* Set slot type based on SD or eMMC */
 	if (host->mmc->caps & MMC_CAP_NONREMOVABLE)
@@ -276,15 +347,31 @@ static int sdhci_am654_get_of_property(struct platform_device *pdev,
 		return -EINVAL;
 	}
 
+	device_property_read_u32(dev, "ti,strobe-sel", &sdhci_am654->strb_sel);
+
 	sdhci_get_of_property(pdev);
 
 	return 0;
 }
 
+static const struct of_device_id sdhci_am654_of_match[] = {
+	{
+		.compatible = "ti,am654-sdhci-5.1",
+		.data = &sdhci_am654_drvdata,
+	},
+	{
+		.compatible = "ti,j721e-sdhci-8bit",
+		.data = &sdhci_j721e_8bit_drvdata,
+	},
+	{ /* sentinel */ }
+};
+
 static int sdhci_am654_probe(struct platform_device *pdev)
 {
+	const struct sdhci_am654_driver_data *drvdata;
 	struct sdhci_pltfm_host *pltfm_host;
 	struct sdhci_am654_data *sdhci_am654;
+	const struct of_device_id *match;
 	struct sdhci_host *host;
 	struct resource *res;
 	struct clk *clk_xin;
@@ -292,12 +379,15 @@ static int sdhci_am654_probe(struct platform_device *pdev)
 	void __iomem *base;
 	int ret;
 
-	host = sdhci_pltfm_init(pdev, &sdhci_am654_pdata, sizeof(*sdhci_am654));
+	match = of_match_node(sdhci_am654_of_match, pdev->dev.of_node);
+	drvdata = match->data;
+	host = sdhci_pltfm_init(pdev, drvdata->pdata, sizeof(*sdhci_am654));
 	if (IS_ERR(host))
 		return PTR_ERR(host);
 
 	pltfm_host = sdhci_priv(host);
 	sdhci_am654 = sdhci_pltfm_priv(pltfm_host);
+	sdhci_am654->flags = drvdata->flags;
 
 	clk_xin = devm_clk_get(dev, "clk_xin");
 	if (IS_ERR(clk_xin)) {
@@ -372,11 +462,6 @@ static int sdhci_am654_remove(struct platform_device *pdev)
 	return 0;
 }
 
-static const struct of_device_id sdhci_am654_of_match[] = {
-	{ .compatible = "ti,am654-sdhci-5.1" },
-	{ /* sentinel */ }
-};
-
 static struct platform_driver sdhci_am654_driver = {
 	.driver = {
 		.name = "sdhci-am654",
-- 
2.19.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
