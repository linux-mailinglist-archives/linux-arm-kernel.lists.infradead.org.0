Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2AFA33ECE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 08:09:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vJOD5pTh9ukEJBQKhlUd/GcQSTDjWq7fsk2mBqDDdjw=; b=pM5eOcTUWS9h1K
	U3y9R5N/OCtMICfQAGGv+zEYyoBJl8wM1ZKU1O7oZxvEi3wVdx9+59250jqCVIFXz2LmDvVXf4EQA
	+GUR5jcAAJMNCjQTGN8bUlYuhOXzcJw2KnOYCYPRxQTcdCbfdQKuIQwGmnwENUWaCbweqnrWz3A8w
	fCLEFciECmJ8qIc+Ty9r6zlchHUzFa89WLePPDqoqaUDSvKJKc+oQIl589+ujkVqwGiLhGGXdavSA
	/N3cMpb72EyrjnB+7wF4rqlRk0yFn2ZbHDLB77PoVhQn0oxyZXQA6K6u5ZCqszd68ioDO7G7U/mBR
	ubZO5azSIGJwKAZRVqvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY2dl-0000po-UD; Tue, 04 Jun 2019 06:09:45 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY2dE-0000FE-Nh
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 06:09:17 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x54699RQ055098;
 Tue, 4 Jun 2019 01:09:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559628549;
 bh=EwMjfxbdZ67MOV238mzXBA+vboF/qkV+iZzwm4Hf6nc=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=a0Xx114pOolNTxTHvgY8gmjoqH1mu63Z2flV8dbrI5QU1gdsCKd629QfIygKNLkwr
 O+LEgdz5HXbxeRXhO3mCoUNfCh2QM6Bhh1YTAPEk3ffKCnGsXotdgjWbxUvqjF+2DK
 w0aX8RmUC8nmlRUYhHUD5yONWvFon7HMmdjTVHs8=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x54699ZC023292
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 4 Jun 2019 01:09:09 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 4 Jun
 2019 01:09:09 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 4 Jun 2019 01:09:09 -0500
Received: from a0230074-OptiPlex-7010.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5468pZ2049516;
 Tue, 4 Jun 2019 01:09:05 -0500
From: Faiz Abbas <faiz_abbas@ti.com>
To: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-mmc@vger.kernel.org>
Subject: [PATCH 3/4] mmc: sdhci_am654: Add Support for 4 bit IP on J721E
Date: Tue, 4 Jun 2019 11:39:13 +0530
Message-ID: <20190604060914.10886-4-faiz_abbas@ti.com>
X-Mailer: git-send-email 2.19.2
In-Reply-To: <20190604060914.10886-1-faiz_abbas@ti.com>
References: <20190604060914.10886-1-faiz_abbas@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_230913_163693_F1552FF4 
X-CRM114-Status: GOOD (  18.34  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
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

Add support for 4 bit instances on TI's J721E devices. Because these
instances have no DLL, introduce a DLL_PRESENT flag and make sure DLL
related registers are only accessed when it is present. Also add a
separate set_clock callback for this compatible.

Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
---
 drivers/mmc/host/sdhci_am654.c | 124 +++++++++++++++++++++++----------
 1 file changed, 86 insertions(+), 38 deletions(-)

diff --git a/drivers/mmc/host/sdhci_am654.c b/drivers/mmc/host/sdhci_am654.c
index 4575aeb435ec..3b3948144591 100644
--- a/drivers/mmc/host/sdhci_am654.c
+++ b/drivers/mmc/host/sdhci_am654.c
@@ -91,6 +91,7 @@ struct sdhci_am654_driver_data {
 #define IOMUX_PRESENT	(1 << 0)
 #define FREQSEL_2_BIT	(1 << 1)
 #define STRBSEL_4_BIT	(1 << 2)
+#define DLL_PRESENT	(1 << 3)
 };
 
 static void sdhci_am654_set_clock(struct sdhci_host *host, unsigned int clock)
@@ -188,6 +189,20 @@ static void sdhci_am654_set_clock(struct sdhci_host *host, unsigned int clock)
 	}
 }
 
+void sdhci_j721e_4bit_set_clock(struct sdhci_host *host, unsigned int clock)
+{
+	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
+	struct sdhci_am654_data *sdhci_am654 = sdhci_pltfm_priv(pltfm_host);
+	int val, mask;
+
+	mask = OTAPDLYENA_MASK | OTAPDLYSEL_MASK;
+	val = (1 << OTAPDLYENA_SHIFT) |
+	      (sdhci_am654->otap_del_sel << OTAPDLYSEL_SHIFT);
+	regmap_update_bits(sdhci_am654->base, PHY_CTRL4, mask, val);
+
+	sdhci_set_clock(host, clock);
+}
+
 static void sdhci_am654_set_power(struct sdhci_host *host, unsigned char mode,
 				  unsigned short vdd)
 {
@@ -240,7 +255,7 @@ static const struct sdhci_pltfm_data sdhci_am654_pdata = {
 
 static const struct sdhci_am654_driver_data sdhci_am654_drvdata = {
 	.pdata = &sdhci_am654_pdata,
-	.flags = IOMUX_PRESENT | FREQSEL_2_BIT | STRBSEL_4_BIT,
+	.flags = IOMUX_PRESENT | FREQSEL_2_BIT | STRBSEL_4_BIT | DLL_PRESENT,
 };
 
 struct sdhci_ops sdhci_j721e_8bit_ops = {
@@ -263,8 +278,31 @@ static const struct sdhci_pltfm_data sdhci_j721e_8bit_pdata = {
 
 static const struct sdhci_am654_driver_data sdhci_j721e_8bit_drvdata = {
 	.pdata = &sdhci_j721e_8bit_pdata,
+	.flags = DLL_PRESENT,
+};
+
+struct sdhci_ops sdhci_j721e_4bit_ops = {
+	.get_max_clock = sdhci_pltfm_clk_get_max_clock,
+	.get_timeout_clock = sdhci_pltfm_clk_get_max_clock,
+	.set_uhs_signaling = sdhci_set_uhs_signaling,
+	.set_bus_width = sdhci_set_bus_width,
+	.set_power = sdhci_am654_set_power,
+	.set_clock = sdhci_j721e_4bit_set_clock,
+	.write_b = sdhci_am654_write_b,
+	.reset = sdhci_reset,
+};
+
+static const struct sdhci_pltfm_data sdhci_j721e_4bit_pdata = {
+	.ops = &sdhci_j721e_4bit_ops,
+	.quirks = SDHCI_QUIRK_INVERTED_WRITE_PROTECT |
+		  SDHCI_QUIRK_MULTIBLOCK_READ_ACMD12,
+	.quirks2 = SDHCI_QUIRK2_PRESET_VALUE_BROKEN,
 };
 
+static const struct sdhci_am654_driver_data sdhci_j721e_4bit_drvdata = {
+	.pdata = &sdhci_j721e_4bit_pdata,
+	.flags = IOMUX_PRESENT,
+};
 static int sdhci_am654_init(struct sdhci_host *host)
 {
 	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
@@ -278,15 +316,19 @@ static int sdhci_am654_init(struct sdhci_host *host)
 	mask = OTAPDLYENA_MASK | OTAPDLYSEL_MASK;
 	regmap_update_bits(sdhci_am654->base, PHY_CTRL4, mask, 0x0);
 
-	regmap_read(sdhci_am654->base, PHY_STAT1, &val);
-	if (~val & CALDONE_MASK) {
-		/* Calibrate IO lines */
-		regmap_update_bits(sdhci_am654->base, PHY_CTRL1,
-				   PDB_MASK, PDB_MASK);
-		ret = regmap_read_poll_timeout(sdhci_am654->base, PHY_STAT1,
-					       val, val & CALDONE_MASK, 1, 20);
-		if (ret)
-			return ret;
+	if (sdhci_am654->flags & DLL_PRESENT) {
+		regmap_read(sdhci_am654->base, PHY_STAT1, &val);
+		if (~val & CALDONE_MASK) {
+			/* Calibrate IO lines */
+			regmap_update_bits(sdhci_am654->base, PHY_CTRL1,
+					   PDB_MASK, PDB_MASK);
+			ret = regmap_read_poll_timeout(sdhci_am654->base,
+						       PHY_STAT1, val,
+						       val & CALDONE_MASK,
+						       1, 20);
+			if (ret)
+				return ret;
+		}
 	}
 
 	/* Enable pins by setting IO mux to 0 */
@@ -311,40 +353,42 @@ static int sdhci_am654_get_of_property(struct platform_device *pdev,
 	int drv_strength;
 	int ret;
 
-	ret = device_property_read_u32(dev, "ti,trm-icp",
-				       &sdhci_am654->trm_icp);
-	if (ret)
-		return ret;
-
 	ret = device_property_read_u32(dev, "ti,otap-del-sel",
 				       &sdhci_am654->otap_del_sel);
 	if (ret)
 		return ret;
 
-	ret = device_property_read_u32(dev, "ti,driver-strength-ohm",
-				       &drv_strength);
-	if (ret)
-		return ret;
+	if (sdhci_am654->flags & DLL_PRESENT) {
+		ret = device_property_read_u32(dev, "ti,trm-icp",
+					       &sdhci_am654->trm_icp);
+		if (ret)
+			return ret;
+
+		ret = device_property_read_u32(dev, "ti,driver-strength-ohm",
+					       &drv_strength);
+		if (ret)
+			return ret;
 
-	switch (drv_strength) {
-	case 50:
-		sdhci_am654->drv_strength = DRIVER_STRENGTH_50_OHM;
-		break;
-	case 33:
-		sdhci_am654->drv_strength = DRIVER_STRENGTH_33_OHM;
-		break;
-	case 66:
-		sdhci_am654->drv_strength = DRIVER_STRENGTH_66_OHM;
-		break;
-	case 100:
-		sdhci_am654->drv_strength = DRIVER_STRENGTH_100_OHM;
-		break;
-	case 40:
-		sdhci_am654->drv_strength = DRIVER_STRENGTH_40_OHM;
-		break;
-	default:
-		dev_err(dev, "Invalid driver strength\n");
-		return -EINVAL;
+		switch (drv_strength) {
+		case 50:
+			sdhci_am654->drv_strength = DRIVER_STRENGTH_50_OHM;
+			break;
+		case 33:
+			sdhci_am654->drv_strength = DRIVER_STRENGTH_33_OHM;
+			break;
+		case 66:
+			sdhci_am654->drv_strength = DRIVER_STRENGTH_66_OHM;
+			break;
+		case 100:
+			sdhci_am654->drv_strength = DRIVER_STRENGTH_100_OHM;
+			break;
+		case 40:
+			sdhci_am654->drv_strength = DRIVER_STRENGTH_40_OHM;
+			break;
+		default:
+			dev_err(dev, "Invalid driver strength\n");
+			return -EINVAL;
+		}
 	}
 
 	device_property_read_u32(dev, "ti,strobe-sel", &sdhci_am654->strb_sel);
@@ -363,6 +407,10 @@ static const struct of_device_id sdhci_am654_of_match[] = {
 		.compatible = "ti,j721e-sdhci-8bit",
 		.data = &sdhci_j721e_8bit_drvdata,
 	},
+	{
+		.compatible = "ti,j721e-sdhci-4bit",
+		.data = &sdhci_j721e_4bit_drvdata,
+	},
 	{ /* sentinel */ }
 };
 
-- 
2.19.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
