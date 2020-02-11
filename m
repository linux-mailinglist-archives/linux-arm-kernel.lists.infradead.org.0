Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A418158D50
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 12:12:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q+IyoJ1T1UhfWWgAmFHOm2FWGvdeJxbdyFWGN1q8Apg=; b=bNBkjFKSdmmO8d
	VBGNN7H66Bl3wyFc0/u0p1Kuea0FHFXHtb/ptIbzcMvVhJD/uvzXUzt8oAHcc/MQhWHYdQKu2T5JC
	Kf7BvZQ4iNMTeHBSsUbT/aOQeFMY+FiZKBOmkb3BHB+xAMoVMACrFArhUwz0eRnLcczYIVa4LlpNI
	nxFzoeghXx1jkpQUd0k2Wde/ghq6TPdhY1loJx7SZwICJoZJZ0nu2EENTRZ4PrNW0C5gDYjlhTRCu
	IK7pGHvyCY2DdRgN3HV/iXnOl/YhcDFShukCba0yHOCyafyayDUQjMyxdUqXBoKBzLTzL8QGvOIlp
	qjZ9tkljYTvp/HCcPNdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1TTJ-0008Iq-PK; Tue, 11 Feb 2020 11:12:53 +0000
Received: from mail-sh.amlogic.com ([58.32.228.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1TSm-0007mL-TB; Tue, 11 Feb 2020 11:12:22 +0000
Received: from droid10.amlogic.com (10.18.11.213) by mail-sh.amlogic.com
 (10.18.11.5) with Microsoft SMTP Server id 15.1.1591.10; Tue, 11 Feb 2020
 19:12:47 +0800
From: Hanjie Lin <hanjie.lin@amlogic.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Jerome Brunet
 <jbrunet@baylibre.com>, Neil Armstrong <narmstrong@baylibre.com>, Rob Herring
 <robh@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Kevin
 Hilman <khilman@baylibre.com>
Subject: [PATCH v8 2/3] phy: amlogic: Add Amlogic A1 USB2 PHY Driver
Date: Tue, 11 Feb 2020 19:10:53 +0800
Message-ID: <1581419454-12667-3-git-send-email-hanjie.lin@amlogic.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1581419454-12667-1-git-send-email-hanjie.lin@amlogic.com>
References: <1581419454-12667-1-git-send-email-hanjie.lin@amlogic.com>
MIME-Version: 1.0
X-Originating-IP: [10.18.11.213]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_031220_947464_DAD9A2A1 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Victor Wan <victor.wan@amlogic.com>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-usb@vger.kernel.org, Yue Wang <yue.wang@amlogic.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Liang Yang <liang.yang@amlogic.com>, Qiufang Dai <qiufang.dai@amlogic.com>,
 Xingyu Chen <xingyu.chen@amlogic.com>, Carlo Caione <carlo@caione.org>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Jian Hu <jian.hu@amlogic.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds support for the USB2 PHY found in the Amlogic A1 SoC Family.

It supports host mode only.

Signed-off-by: Yue Wang <yue.wang@amlogic.com>
Signed-off-by: Hanjie Lin <hanjie.lin@amlogic.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/phy/amlogic/phy-meson-g12a-usb2.c | 85 +++++++++++++++++++++----------
 1 file changed, 59 insertions(+), 26 deletions(-)

diff --git a/drivers/phy/amlogic/phy-meson-g12a-usb2.c b/drivers/phy/amlogic/phy-meson-g12a-usb2.c
index 9065ffc..33296f8 100644
--- a/drivers/phy/amlogic/phy-meson-g12a-usb2.c
+++ b/drivers/phy/amlogic/phy-meson-g12a-usb2.c
@@ -146,11 +146,17 @@
 #define RESET_COMPLETE_TIME					1000
 #define PLL_RESET_COMPLETE_TIME					100
 
+enum meson_soc_id {
+	MESON_SOC_G12A  = 0,
+	MESON_SOC_A1,
+};
+
 struct phy_meson_g12a_usb2_priv {
 	struct device		*dev;
 	struct regmap		*regmap;
 	struct clk		*clk;
 	struct reset_control	*reset;
+	int                     soc_id;
 };
 
 static const struct regmap_config phy_meson_g12a_usb2_regmap_conf = {
@@ -164,6 +170,7 @@ static int phy_meson_g12a_usb2_init(struct phy *phy)
 {
 	struct phy_meson_g12a_usb2_priv *priv = phy_get_drvdata(phy);
 	int ret;
+	unsigned int value;
 
 	ret = reset_control_reset(priv->reset);
 	if (ret)
@@ -192,18 +199,22 @@ static int phy_meson_g12a_usb2_init(struct phy *phy)
 		     FIELD_PREP(PHY_CTRL_R17_MPLL_FILTER_PVT2, 2) |
 		     FIELD_PREP(PHY_CTRL_R17_MPLL_FILTER_PVT1, 9));
 
-	regmap_write(priv->regmap, PHY_CTRL_R18,
-		     FIELD_PREP(PHY_CTRL_R18_MPLL_LKW_SEL, 1) |
-		     FIELD_PREP(PHY_CTRL_R18_MPLL_LK_W, 9) |
-		     FIELD_PREP(PHY_CTRL_R18_MPLL_LK_S, 0x27) |
-		     FIELD_PREP(PHY_CTRL_R18_MPLL_PFD_GAIN, 1) |
-		     FIELD_PREP(PHY_CTRL_R18_MPLL_ROU, 7) |
-		     FIELD_PREP(PHY_CTRL_R18_MPLL_DATA_SEL, 3) |
-		     FIELD_PREP(PHY_CTRL_R18_MPLL_BIAS_ADJ, 1) |
-		     FIELD_PREP(PHY_CTRL_R18_MPLL_BB_MODE, 0) |
-		     FIELD_PREP(PHY_CTRL_R18_MPLL_ALPHA, 3) |
-		     FIELD_PREP(PHY_CTRL_R18_MPLL_ADJ_LDO, 1) |
-		     PHY_CTRL_R18_MPLL_ACG_RANGE);
+	value = FIELD_PREP(PHY_CTRL_R18_MPLL_LKW_SEL, 1) |
+		FIELD_PREP(PHY_CTRL_R18_MPLL_LK_W, 9) |
+		FIELD_PREP(PHY_CTRL_R18_MPLL_LK_S, 0x27) |
+		FIELD_PREP(PHY_CTRL_R18_MPLL_PFD_GAIN, 1) |
+		FIELD_PREP(PHY_CTRL_R18_MPLL_ROU, 7) |
+		FIELD_PREP(PHY_CTRL_R18_MPLL_DATA_SEL, 3) |
+		FIELD_PREP(PHY_CTRL_R18_MPLL_BIAS_ADJ, 1) |
+		FIELD_PREP(PHY_CTRL_R18_MPLL_BB_MODE, 0) |
+		FIELD_PREP(PHY_CTRL_R18_MPLL_ALPHA, 3) |
+		FIELD_PREP(PHY_CTRL_R18_MPLL_ADJ_LDO, 1) |
+		PHY_CTRL_R18_MPLL_ACG_RANGE;
+
+	if (priv->soc_id == MESON_SOC_A1)
+		value |= PHY_CTRL_R18_MPLL_DCO_CLK_SEL;
+
+	regmap_write(priv->regmap, PHY_CTRL_R18, value);
 
 	udelay(PLL_RESET_COMPLETE_TIME);
 
@@ -227,13 +238,24 @@ static int phy_meson_g12a_usb2_init(struct phy *phy)
 		     FIELD_PREP(PHY_CTRL_R20_USB2_BGR_VREF_4_0, 0) |
 		     FIELD_PREP(PHY_CTRL_R20_USB2_BGR_DBG_1_0, 0));
 
-	regmap_write(priv->regmap, PHY_CTRL_R4,
-		     FIELD_PREP(PHY_CTRL_R4_CALIB_CODE_7_0, 0xf) |
-		     FIELD_PREP(PHY_CTRL_R4_CALIB_CODE_15_8, 0xf) |
-		     FIELD_PREP(PHY_CTRL_R4_CALIB_CODE_23_16, 0xf) |
-		     PHY_CTRL_R4_TEST_BYPASS_MODE_EN |
-		     FIELD_PREP(PHY_CTRL_R4_I_C2L_BIAS_TRIM_1_0, 0) |
-		     FIELD_PREP(PHY_CTRL_R4_I_C2L_BIAS_TRIM_3_2, 0));
+	if (priv->soc_id == MESON_SOC_G12A)
+		regmap_write(priv->regmap, PHY_CTRL_R4,
+			     FIELD_PREP(PHY_CTRL_R4_CALIB_CODE_7_0, 0xf) |
+			     FIELD_PREP(PHY_CTRL_R4_CALIB_CODE_15_8, 0xf) |
+			     FIELD_PREP(PHY_CTRL_R4_CALIB_CODE_23_16, 0xf) |
+			     PHY_CTRL_R4_TEST_BYPASS_MODE_EN |
+			     FIELD_PREP(PHY_CTRL_R4_I_C2L_BIAS_TRIM_1_0, 0) |
+			     FIELD_PREP(PHY_CTRL_R4_I_C2L_BIAS_TRIM_3_2, 0));
+	else if (priv->soc_id == MESON_SOC_A1) {
+		regmap_write(priv->regmap, PHY_CTRL_R21,
+			     PHY_CTRL_R21_USB2_CAL_ACK_EN |
+			     PHY_CTRL_R21_USB2_TX_STRG_PD |
+			     FIELD_PREP(PHY_CTRL_R21_USB2_OTG_ACA_TRIM_1_0, 2));
+
+		/* Analog Settings */
+		regmap_write(priv->regmap, PHY_CTRL_R13,
+			     FIELD_PREP(PHY_CTRL_R13_MIN_COUNT_FOR_SYNC_DET, 7));
+	}
 
 	/* Tuning Disconnect Threshold */
 	regmap_write(priv->regmap, PHY_CTRL_R3,
@@ -241,11 +263,13 @@ static int phy_meson_g12a_usb2_init(struct phy *phy)
 		     FIELD_PREP(PHY_CTRL_R3_HSDIC_REF, 1) |
 		     FIELD_PREP(PHY_CTRL_R3_DISC_THRESH, 3));
 
-	/* Analog Settings */
-	regmap_write(priv->regmap, PHY_CTRL_R14, 0);
-	regmap_write(priv->regmap, PHY_CTRL_R13,
-		     PHY_CTRL_R13_UPDATE_PMA_SIGNALS |
-		     FIELD_PREP(PHY_CTRL_R13_MIN_COUNT_FOR_SYNC_DET, 7));
+	if (priv->soc_id == MESON_SOC_G12A) {
+		/* Analog Settings */
+		regmap_write(priv->regmap, PHY_CTRL_R14, 0);
+		regmap_write(priv->regmap, PHY_CTRL_R13,
+			     PHY_CTRL_R13_UPDATE_PMA_SIGNALS |
+			     FIELD_PREP(PHY_CTRL_R13_MIN_COUNT_FOR_SYNC_DET, 7));
+	}
 
 	return 0;
 }
@@ -286,6 +310,8 @@ static int phy_meson_g12a_usb2_probe(struct platform_device *pdev)
 	if (IS_ERR(base))
 		return PTR_ERR(base);
 
+	priv->soc_id = (enum meson_soc_id)of_device_get_match_data(&pdev->dev);
+
 	priv->regmap = devm_regmap_init_mmio(dev, base,
 					     &phy_meson_g12a_usb2_regmap_conf);
 	if (IS_ERR(priv->regmap))
@@ -321,8 +347,15 @@ static int phy_meson_g12a_usb2_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id phy_meson_g12a_usb2_of_match[] = {
-	{ .compatible = "amlogic,g12a-usb2-phy", },
-	{ },
+	{
+		.compatible = "amlogic,g12a-usb2-phy",
+		.data = (void *)MESON_SOC_G12A,
+	},
+	{
+		.compatible = "amlogic,a1-usb2-phy",
+		.data = (void *)MESON_SOC_A1,
+	},
+	{ /* Sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, phy_meson_g12a_usb2_of_match);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
