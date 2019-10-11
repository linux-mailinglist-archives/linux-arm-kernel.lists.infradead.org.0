Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4F51D3D7A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 12:34:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BVIwbA0isvLSWksK758px4ypCs/pXLPc1S3uM1TM0jM=; b=t8brL+ZmK9CvIm
	s+17HE8AtWPNG1VOzm60Dc/Xtik9SbrGEU1L803pZGMRo8NKrNiR5Wq6IrXUNGstCr6pDRhz5GrFG
	7jvbXwIB1gEk9+HtA1TFOc2fXXZAv79WnOvxzpWUN2WxR6NtSFryVQfYe9tF52GTc2AOUNDVFChkl
	1h0g67SOdZJqoLEUs5Fy+x17svzzI5mn74v/fDPQB0OePyCuTWwiUlcb3qB6prWl8DTgn93QRUb4Q
	aPGYIZ+t+snmv/tNeNoLKs2/LPJuJoq6VoG8InWUBaxJlps2hlDt1wook4BfS3UeBX5TK1dsfYBbM
	h0CnQdpLZbDoxVwngrOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIsFY-0001SH-4U; Fri, 11 Oct 2019 10:34:20 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIsF8-0001IS-Gs
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 10:33:56 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: gKaFq8PiWtbATwRSxgeMPvGe34IpCG3fGY/817I02Kkp86wymEL7VjlecHQl3xbQAVRt5UY8Wy
 IppBVbBtoO8YatIpAmS+qcAR03rPavbzXHtdCvtRRlpURP4kSh7bwlGQ0cTX771RIyxQwBzoDZ
 TwKQrFYeIFXiE+VCATCVTm9pJbVJ0Zx7ohFWBzMb/0ooGW7uWUnwhdsHZtdpuEXlGO/Iht56sk
 A0t/vabZy2acLaXCOa3GX3j7PhwpJSRgmydBUZV4Y8whRTfyrT/MjIZoYuI4m0nIaxtXdeN9lz
 nvk=
X-IronPort-AV: E=Sophos;i="5.67,283,1566889200"; d="scan'208";a="51107476"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 11 Oct 2019 03:33:51 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 11 Oct 2019 03:33:50 -0700
Received: from M43218.corp.atmel.com (10.10.85.251) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 11 Oct 2019 03:33:47 -0700
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: <linux-arm-kernel@lists.infradead.org>, <linux-mmc@vger.kernel.org>,
 <devicetree@vger.kernel.org>
Subject: [PATCH v2 2/3] mmc: sdhci-of-at91: rework clocks management to
 support SAM9x60 device
Date: Fri, 11 Oct 2019 12:33:38 +0200
Message-ID: <20191011103340.26749-2-ludovic.desroches@microchip.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191011103340.26749-1-ludovic.desroches@microchip.com>
References: <20191011103340.26749-1-ludovic.desroches@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_033354_585261_B820BAB8 
X-CRM114-Status: GOOD (  19.17  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, ulf.hansson@linaro.org, linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>, robh+dt@kernel.org,
 Eugen.Hristev@microchip.com, adrian.hunter@intel.com,
 claudiu.beznea@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the SAM9x60 SoC, there are only two clocks instead of three for the
SDHCI device. The base clk is no longer provided, it is generated
internally from the mult clk.

The values of the base clk and mul in the capabilities registers may not
reflect the reality as the mult clk is a programmable clock which can take
several rates. As we can't trust those values, take them from the clock
tree and update the capabilities according to.

As we can have the same pitfall, in some cases, with the SAMA5D2 Soc,
stop relying on capabilities too.

Signed-off-by: Ludovic Desroches <ludovic.desroches@microchip.com>
---

Changes:
- v2: write caps0

 drivers/mmc/host/sdhci-of-at91.c | 105 +++++++++++++++++--------------
 1 file changed, 58 insertions(+), 47 deletions(-)

diff --git a/drivers/mmc/host/sdhci-of-at91.c b/drivers/mmc/host/sdhci-of-at91.c
index e7d1920729fb..9a1ae16a5417 100644
--- a/drivers/mmc/host/sdhci-of-at91.c
+++ b/drivers/mmc/host/sdhci-of-at91.c
@@ -30,7 +30,14 @@
 
 #define SDHCI_AT91_PRESET_COMMON_CONF	0x400 /* drv type B, programmable clock mode */
 
+struct sdhci_at91_soc_data {
+	const struct sdhci_pltfm_data *pdata;
+	bool baseclk_is_generated_internally;
+	unsigned int divider_for_baseclk;
+};
+
 struct sdhci_at91_priv {
+	const struct sdhci_at91_soc_data *soc_data;
 	struct clk *hclock;
 	struct clk *gck;
 	struct clk *mainck;
@@ -130,12 +137,24 @@ static const struct sdhci_ops sdhci_at91_sama5d2_ops = {
 	.set_power		= sdhci_at91_set_power,
 };
 
-static const struct sdhci_pltfm_data soc_data_sama5d2 = {
+static const struct sdhci_pltfm_data sdhci_sama5d2_pdata = {
 	.ops = &sdhci_at91_sama5d2_ops,
 };
 
+static const struct sdhci_at91_soc_data soc_data_sama5d2 = {
+	.pdata = &sdhci_sama5d2_pdata,
+	.baseclk_is_generated_internally = false,
+};
+
+static const struct sdhci_at91_soc_data soc_data_sam9x60 = {
+	.pdata = &sdhci_sama5d2_pdata,
+	.baseclk_is_generated_internally = true,
+	.divider_for_baseclk = 2,
+};
+
 static const struct of_device_id sdhci_at91_dt_match[] = {
 	{ .compatible = "atmel,sama5d2-sdhci", .data = &soc_data_sama5d2 },
+	{ .compatible = "microchip,sam9x60-sdhci", .data = &soc_data_sam9x60 },
 	{}
 };
 MODULE_DEVICE_TABLE(of, sdhci_at91_dt_match);
@@ -145,50 +164,37 @@ static int sdhci_at91_set_clks_presets(struct device *dev)
 	struct sdhci_host *host = dev_get_drvdata(dev);
 	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 	struct sdhci_at91_priv *priv = sdhci_pltfm_priv(pltfm_host);
-	int ret;
 	unsigned int			caps0, caps1;
 	unsigned int			clk_base, clk_mul;
-	unsigned int			gck_rate, real_gck_rate;
+	unsigned int			gck_rate, clk_base_rate;
 	unsigned int			preset_div;
 
-	/*
-	 * The mult clock is provided by as a generated clock by the PMC
-	 * controller. In order to set the rate of gck, we have to get the
-	 * base clock rate and the clock mult from capabilities.
-	 */
 	clk_prepare_enable(priv->hclock);
 	caps0 = readl(host->ioaddr + SDHCI_CAPABILITIES);
 	caps1 = readl(host->ioaddr + SDHCI_CAPABILITIES_1);
-	clk_base = (caps0 & SDHCI_CLOCK_V3_BASE_MASK) >> SDHCI_CLOCK_BASE_SHIFT;
-	clk_mul = (caps1 & SDHCI_CLOCK_MUL_MASK) >> SDHCI_CLOCK_MUL_SHIFT;
-	gck_rate = clk_base * 1000000 * (clk_mul + 1);
-	ret = clk_set_rate(priv->gck, gck_rate);
-	if (ret < 0) {
-		dev_err(dev, "failed to set gck");
-		clk_disable_unprepare(priv->hclock);
-		return ret;
-	}
-	/*
-	 * We need to check if we have the requested rate for gck because in
-	 * some cases this rate could be not supported. If it happens, the rate
-	 * is the closest one gck can provide. We have to update the value
-	 * of clk mul.
-	 */
-	real_gck_rate = clk_get_rate(priv->gck);
-	if (real_gck_rate != gck_rate) {
-		clk_mul = real_gck_rate / (clk_base * 1000000) - 1;
-		caps1 &= (~SDHCI_CLOCK_MUL_MASK);
-		caps1 |= ((clk_mul << SDHCI_CLOCK_MUL_SHIFT) &
-			  SDHCI_CLOCK_MUL_MASK);
-		/* Set capabilities in r/w mode. */
-		writel(SDMMC_CACR_KEY | SDMMC_CACR_CAPWREN,
-		       host->ioaddr + SDMMC_CACR);
-		writel(caps1, host->ioaddr + SDHCI_CAPABILITIES_1);
-		/* Set capabilities in ro mode. */
-		writel(0, host->ioaddr + SDMMC_CACR);
-		dev_info(dev, "update clk mul to %u as gck rate is %u Hz\n",
-			 clk_mul, real_gck_rate);
-	}
+
+	gck_rate = clk_get_rate(priv->gck);
+	if (priv->soc_data->baseclk_is_generated_internally)
+		clk_base_rate = gck_rate / priv->soc_data->divider_for_baseclk;
+	else
+		clk_base_rate = clk_get_rate(priv->mainck);
+
+	clk_base = clk_base_rate / 1000000;
+	clk_mul = gck_rate / clk_base_rate - 1;
+
+	caps0 &= (~SDHCI_CLOCK_V3_BASE_MASK);
+	caps0 |= ((clk_base << SDHCI_CLOCK_BASE_SHIFT) & SDHCI_CLOCK_V3_BASE_MASK);
+	caps1 &= (~SDHCI_CLOCK_MUL_MASK);
+	caps1 |= ((clk_mul << SDHCI_CLOCK_MUL_SHIFT) & SDHCI_CLOCK_MUL_MASK);
+	/* Set capabilities in r/w mode. */
+	writel(SDMMC_CACR_KEY | SDMMC_CACR_CAPWREN, host->ioaddr + SDMMC_CACR);
+	writel(caps0, host->ioaddr + SDHCI_CAPABILITIES_1);
+	writel(caps1, host->ioaddr + SDHCI_CAPABILITIES_1);
+	/* Set capabilities in ro mode. */
+	writel(0, host->ioaddr + SDMMC_CACR);
+
+	dev_info(dev, "update clk mul to %u as gck rate is %u Hz and clk base is %u Hz\n",
+		 clk_mul, gck_rate, clk_base_rate);
 
 	/*
 	 * We have to set preset values because it depends on the clk_mul
@@ -196,19 +202,19 @@ static int sdhci_at91_set_clks_presets(struct device *dev)
 	 * maximum sd clock value is 120 MHz instead of 208 MHz. For that
 	 * reason, we need to use presets to support SDR104.
 	 */
-	preset_div = DIV_ROUND_UP(real_gck_rate, 24000000) - 1;
+	preset_div = DIV_ROUND_UP(gck_rate, 24000000) - 1;
 	writew(SDHCI_AT91_PRESET_COMMON_CONF | preset_div,
 	       host->ioaddr + SDHCI_PRESET_FOR_SDR12);
-	preset_div = DIV_ROUND_UP(real_gck_rate, 50000000) - 1;
+	preset_div = DIV_ROUND_UP(gck_rate, 50000000) - 1;
 	writew(SDHCI_AT91_PRESET_COMMON_CONF | preset_div,
 	       host->ioaddr + SDHCI_PRESET_FOR_SDR25);
-	preset_div = DIV_ROUND_UP(real_gck_rate, 100000000) - 1;
+	preset_div = DIV_ROUND_UP(gck_rate, 100000000) - 1;
 	writew(SDHCI_AT91_PRESET_COMMON_CONF | preset_div,
 	       host->ioaddr + SDHCI_PRESET_FOR_SDR50);
-	preset_div = DIV_ROUND_UP(real_gck_rate, 120000000) - 1;
+	preset_div = DIV_ROUND_UP(gck_rate, 120000000) - 1;
 	writew(SDHCI_AT91_PRESET_COMMON_CONF | preset_div,
 	       host->ioaddr + SDHCI_PRESET_FOR_SDR104);
-	preset_div = DIV_ROUND_UP(real_gck_rate, 50000000) - 1;
+	preset_div = DIV_ROUND_UP(gck_rate, 50000000) - 1;
 	writew(SDHCI_AT91_PRESET_COMMON_CONF | preset_div,
 	       host->ioaddr + SDHCI_PRESET_FOR_DDR50);
 
@@ -303,7 +309,7 @@ static const struct dev_pm_ops sdhci_at91_dev_pm_ops = {
 static int sdhci_at91_probe(struct platform_device *pdev)
 {
 	const struct of_device_id	*match;
-	const struct sdhci_pltfm_data	*soc_data;
+	const struct sdhci_at91_soc_data	*soc_data;
 	struct sdhci_host		*host;
 	struct sdhci_pltfm_host		*pltfm_host;
 	struct sdhci_at91_priv		*priv;
@@ -314,17 +320,22 @@ static int sdhci_at91_probe(struct platform_device *pdev)
 		return -EINVAL;
 	soc_data = match->data;
 
-	host = sdhci_pltfm_init(pdev, soc_data, sizeof(*priv));
+	host = sdhci_pltfm_init(pdev, soc_data->pdata, sizeof(*priv));
 	if (IS_ERR(host))
 		return PTR_ERR(host);
 
 	pltfm_host = sdhci_priv(host);
 	priv = sdhci_pltfm_priv(pltfm_host);
+	priv->soc_data = soc_data;
 
 	priv->mainck = devm_clk_get(&pdev->dev, "baseclk");
 	if (IS_ERR(priv->mainck)) {
-		dev_err(&pdev->dev, "failed to get baseclk\n");
-		return PTR_ERR(priv->mainck);
+		if (soc_data->baseclk_is_generated_internally) {
+			priv->mainck = NULL;
+		} else {
+			dev_err(&pdev->dev, "failed to get baseclk\n");
+			return PTR_ERR(priv->mainck);
+		}
 	}
 
 	priv->hclock = devm_clk_get(&pdev->dev, "hclock");
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
