Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F61190AB0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 11:22:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W5mi5lfgURWfc4E//DzUdNj6+16K3Phi6Hff2hi5fF4=; b=hGygOl3eiO0oUL
	js1ki+P+03YWHKXgoRzMQpIT59A7LXlEwbFV4TZEqaMpZaLBWoQRdGdAy6LTLUMGFO+eZSxnK/GX0
	NG6aYN/c2tiWyMApsHUIHYM9eg/MisZWKZN20abd8E8PjEWbGh3kSJZAFzzctlG3s2f+lLIDg4RzS
	CFBCMnv6NeFWKGRILA54VpPGoYno5KD+2UWSQeX159gJEUzH0TIQHPRbX4bsIPYhwGLEDaTxzxbQG
	AF58ltsjX8Oy0px52lC2aPYWGfRAQpZmoBx/pS/Ms/bI5sHBaYGqcND/sF83T+GnqHPavlQxtyZwf
	cSloLHsbRorI0GHdPgbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGghG-0002s3-Et; Tue, 24 Mar 2020 10:22:10 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGgfr-0001rd-U1
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 10:20:46 +0000
Received: by mail-wm1-x342.google.com with SMTP id v25so700865wmh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 03:20:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qIi6DStEnKK85qo3VXkqHwhPK4JPG6SYpmkviudAtgo=;
 b=yNB0vrfUae1bLhDDueD6IvkRVuFx+DHjpDQpIGvD4juprP0hNjyDUcYTYlHtAYEBaa
 JYMCZ5rqzkKBY4RU8VZGe/4ogm+t3lVUycNOlOe0hMxkL6hGtULugWapBH5LuuBDiC4J
 eMiRw3sCcfZ6v295bJaMwl7DVXRi/eYGwzR2h4yqY8xbXPDxiJFrkVGw90PHdtbJqz2j
 vCyYwxM/QpwIUiHNzKTACYLt6C0/a8qCm7zgESBPnaD1r/lG1b/Z00GGwAdZ37BtlOhK
 gKBEqHbFQu4pkd1QGRZFfLtafMnT1LH25i9laotZDmv6xjjx9h5kbgTL85731DtzFr5w
 Ghig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qIi6DStEnKK85qo3VXkqHwhPK4JPG6SYpmkviudAtgo=;
 b=dyWZ2CC9qCgkbYzkTJ8MXyibiKenyHouvGzbNFGIqosh54AoYxOfbqpYkp3RLymrVN
 B7O1M7MIl9Ouftips0tSb8bLwo7KkhPPUixwVhwcExXiLPYz+RtT9YwW/ZCRG9DU76Gq
 fcEHmcrIIcWe/4atTJFcwj1JuhxoDdW+0/20p3Fs2zux4HvDwEslcrivXFWi7aR8HHKw
 D8SVy5hMteCx+BDLgO/8mGWzTEz30S2oi5GaQiEBdySF4Yr2nGrdGwH3FvQIzjZoLveD
 xBSBQNkmTccRE98TgvIDAnFNjO9+5q9kDQgzT2zrJaOTUKhot88rm3vn6JhpEzzP8AMK
 r/dg==
X-Gm-Message-State: ANhLgQ1DSEgrOR03bmwHCfk/B8hXGNBHb24j4Svsbk9hFYoEn8RN+M05
 Idq7waibwdIWF8hzokKf8xv7xQ==
X-Google-Smtp-Source: ADFU+vtmo5MWC9IiaCXoDBxQdHzo7bTNA0LL3bh8P71KLYlXVHnAQvVAEFRZ9ikMDI6Ar21/Htk4Hw==
X-Received: by 2002:a1c:bc84:: with SMTP id m126mr4669314wmf.171.1585045242170; 
 Tue, 24 Mar 2020 03:20:42 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2])
 by smtp.gmail.com with ESMTPSA id h5sm2879527wro.83.2020.03.24.03.20.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 03:20:41 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: kishon@ti.com, balbi@kernel.org, khilman@baylibre.com,
 martin.blumenstingl@googlemail.com
Subject: [PATCH 03/13] usb: dwc3: meson-g12a: handle the phy and glue
 registers separately
Date: Tue, 24 Mar 2020 11:20:20 +0100
Message-Id: <20200324102030.31000-4-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200324102030.31000-1-narmstrong@baylibre.com>
References: <20200324102030.31000-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_032043_969123_1A6644C1 
X-CRM114-Status: GOOD (  18.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On the Amlogic GXL/GXM SoCs, only the USB control registers are available,
the PHY mode being handled in the PHY registers.

Thus, handle the PHY mode registers in separate regmaps and prepare
support for Amlogic GXL/GXM SoCs by moving the regmap setup in a callback
set in the SoC match data.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/usb/dwc3/dwc3-meson-g12a.c | 124 ++++++++++++++++++++---------
 1 file changed, 85 insertions(+), 39 deletions(-)

diff --git a/drivers/usb/dwc3/dwc3-meson-g12a.c b/drivers/usb/dwc3/dwc3-meson-g12a.c
index 7ba5fb3d0e22..f608ffb059b3 100644
--- a/drivers/usb/dwc3/dwc3-meson-g12a.c
+++ b/drivers/usb/dwc3/dwc3-meson-g12a.c
@@ -30,7 +30,7 @@
 #include <linux/usb/role.h>
 #include <linux/regulator/consumer.h>
 
-/* USB2 Ports Control Registers */
+/* USB2 Ports Control Registers, offsets are per-port */
 
 #define U2P_REG_SIZE						0x20
 
@@ -50,14 +50,16 @@
 
 /* USB Glue Control Registers */
 
-#define USB_R0							0x80
+#define G12A_GLUE_OFFSET					0x80
+
+#define USB_R0							0x00
 	#define USB_R0_P30_LANE0_TX2RX_LOOPBACK			BIT(17)
 	#define USB_R0_P30_LANE0_EXT_PCLK_REQ			BIT(18)
 	#define USB_R0_P30_PCS_RX_LOS_MASK_VAL_MASK		GENMASK(28, 19)
 	#define USB_R0_U2D_SS_SCALEDOWN_MODE_MASK		GENMASK(30, 29)
 	#define USB_R0_U2D_ACT					BIT(31)
 
-#define USB_R1							0x84
+#define USB_R1							0x04
 	#define USB_R1_U3H_BIGENDIAN_GS				BIT(0)
 	#define USB_R1_U3H_PME_ENABLE				BIT(1)
 	#define USB_R1_U3H_HUB_PORT_OVERCURRENT_MASK		GENMASK(4, 2)
@@ -69,23 +71,23 @@
 	#define USB_R1_U3H_FLADJ_30MHZ_REG_MASK			GENMASK(24, 19)
 	#define USB_R1_P30_PCS_TX_SWING_FULL_MASK		GENMASK(31, 25)
 
-#define USB_R2							0x88
+#define USB_R2							0x08
 	#define USB_R2_P30_PCS_TX_DEEMPH_3P5DB_MASK		GENMASK(25, 20)
 	#define USB_R2_P30_PCS_TX_DEEMPH_6DB_MASK		GENMASK(31, 26)
 
-#define USB_R3							0x8c
+#define USB_R3							0x0c
 	#define USB_R3_P30_SSC_ENABLE				BIT(0)
 	#define USB_R3_P30_SSC_RANGE_MASK			GENMASK(3, 1)
 	#define USB_R3_P30_SSC_REF_CLK_SEL_MASK			GENMASK(12, 4)
 	#define USB_R3_P30_REF_SSP_EN				BIT(13)
 
-#define USB_R4							0x90
+#define USB_R4							0x10
 	#define USB_R4_P21_PORT_RESET_0				BIT(0)
 	#define USB_R4_P21_SLEEP_M0				BIT(1)
 	#define USB_R4_MEM_PD_MASK				GENMASK(3, 2)
 	#define USB_R4_P21_ONLY					BIT(4)
 
-#define USB_R5							0x94
+#define USB_R5							0x14
 	#define USB_R5_ID_DIG_SYNC				BIT(0)
 	#define USB_R5_ID_DIG_REG				BIT(1)
 	#define USB_R5_ID_DIG_CFG_MASK				GENMASK(3, 2)
@@ -117,20 +119,27 @@ static const char *meson_a1_phy_names[] = {
 	"usb2-phy0", "usb2-phy1"
 };
 
+struct dwc3_meson_g12a;
+
 struct dwc3_meson_g12a_drvdata {
 	bool otg_switch_supported;
 	struct clk_bulk_data *clks;
 	int num_clks;
 	const char **phy_names;
 	int num_phys;
+	int (*setup_regmaps)(struct dwc3_meson_g12a *priv, void __iomem *base);
 };
 
+static int dwc3_meson_g12a_setup_regmaps(struct dwc3_meson_g12a *priv,
+					 void __iomem *base);
+
 static struct dwc3_meson_g12a_drvdata g12a_drvdata = {
 	.otg_switch_supported = true,
 	.clks = meson_g12a_clocks,
 	.num_clks = ARRAY_SIZE(meson_g12a_clocks),
 	.phy_names = meson_g12a_phy_names,
 	.num_phys = ARRAY_SIZE(meson_g12a_phy_names),
+	.setup_regmaps = dwc3_meson_g12a_setup_regmaps,
 };
 
 static struct dwc3_meson_g12a_drvdata a1_drvdata = {
@@ -139,11 +148,13 @@ static struct dwc3_meson_g12a_drvdata a1_drvdata = {
 	.num_clks = ARRAY_SIZE(meson_a1_clocks),
 	.phy_names = meson_a1_phy_names,
 	.num_phys = ARRAY_SIZE(meson_a1_phy_names),
+	.setup_regmaps = dwc3_meson_g12a_setup_regmaps,
 };
 
 struct dwc3_meson_g12a {
 	struct device		*dev;
-	struct regmap		*regmap;
+	struct regmap		*u2p_regmap[PHY_COUNT];
+	struct regmap		*usb_glue_regmap;
 	struct reset_control	*reset;
 	struct phy		*phys[PHY_COUNT];
 	enum usb_dr_mode	otg_mode;
@@ -160,11 +171,11 @@ static void dwc3_meson_g12a_usb2_set_mode(struct dwc3_meson_g12a *priv,
 					  int i, enum phy_mode mode)
 {
 	if (mode == PHY_MODE_USB_HOST)
-		regmap_update_bits(priv->regmap, U2P_R0 + (U2P_REG_SIZE * i),
+		regmap_update_bits(priv->u2p_regmap[i], U2P_R0,
 				U2P_R0_HOST_DEVICE,
 				U2P_R0_HOST_DEVICE);
 	else
-		regmap_update_bits(priv->regmap, U2P_R0 + (U2P_REG_SIZE * i),
+		regmap_update_bits(priv->u2p_regmap[i], U2P_R0,
 				U2P_R0_HOST_DEVICE, 0);
 }
 
@@ -184,13 +195,12 @@ static int dwc3_meson_g12a_usb2_init(struct dwc3_meson_g12a *priv)
 		if (!strstr(priv->drvdata->phy_names[i], "usb2"))
 			continue;
 
-		regmap_update_bits(priv->regmap, U2P_R0 + (U2P_REG_SIZE * i),
+		regmap_update_bits(priv->u2p_regmap[i], U2P_R0,
 				   U2P_R0_POWER_ON_RESET,
 				   U2P_R0_POWER_ON_RESET);
 
 		if (priv->drvdata->otg_switch_supported && i == USB2_OTG_PHY) {
-			regmap_update_bits(priv->regmap,
-				U2P_R0 + (U2P_REG_SIZE * i),
+			regmap_update_bits(priv->u2p_regmap[i], U2P_R0,
 				U2P_R0_ID_PULLUP | U2P_R0_DRV_VBUS,
 				U2P_R0_ID_PULLUP | U2P_R0_DRV_VBUS);
 
@@ -200,7 +210,7 @@ static int dwc3_meson_g12a_usb2_init(struct dwc3_meson_g12a *priv)
 			dwc3_meson_g12a_usb2_set_mode(priv, i,
 						      PHY_MODE_USB_HOST);
 
-		regmap_update_bits(priv->regmap, U2P_R0 + (U2P_REG_SIZE * i),
+		regmap_update_bits(priv->u2p_regmap[i], U2P_R0,
 				   U2P_R0_POWER_ON_RESET, 0);
 	}
 
@@ -209,7 +219,7 @@ static int dwc3_meson_g12a_usb2_init(struct dwc3_meson_g12a *priv)
 
 static void dwc3_meson_g12a_usb3_init(struct dwc3_meson_g12a *priv)
 {
-	regmap_update_bits(priv->regmap, USB_R3,
+	regmap_update_bits(priv->usb_glue_regmap, USB_R3,
 			USB_R3_P30_SSC_RANGE_MASK |
 			USB_R3_P30_REF_SSP_EN,
 			USB_R3_P30_SSC_ENABLE |
@@ -217,21 +227,21 @@ static void dwc3_meson_g12a_usb3_init(struct dwc3_meson_g12a *priv)
 			USB_R3_P30_REF_SSP_EN);
 	udelay(2);
 
-	regmap_update_bits(priv->regmap, USB_R2,
+	regmap_update_bits(priv->usb_glue_regmap, USB_R2,
 			USB_R2_P30_PCS_TX_DEEMPH_3P5DB_MASK,
 			FIELD_PREP(USB_R2_P30_PCS_TX_DEEMPH_3P5DB_MASK, 0x15));
 
-	regmap_update_bits(priv->regmap, USB_R2,
+	regmap_update_bits(priv->usb_glue_regmap, USB_R2,
 			USB_R2_P30_PCS_TX_DEEMPH_6DB_MASK,
 			FIELD_PREP(USB_R2_P30_PCS_TX_DEEMPH_6DB_MASK, 0x20));
 
 	udelay(2);
 
-	regmap_update_bits(priv->regmap, USB_R1,
+	regmap_update_bits(priv->usb_glue_regmap, USB_R1,
 			USB_R1_U3H_HOST_PORT_POWER_CONTROL_PRESENT,
 			USB_R1_U3H_HOST_PORT_POWER_CONTROL_PRESENT);
 
-	regmap_update_bits(priv->regmap, USB_R1,
+	regmap_update_bits(priv->usb_glue_regmap, USB_R1,
 			USB_R1_P30_PCS_TX_SWING_FULL_MASK,
 			FIELD_PREP(USB_R1_P30_PCS_TX_SWING_FULL_MASK, 127));
 }
@@ -239,16 +249,16 @@ static void dwc3_meson_g12a_usb3_init(struct dwc3_meson_g12a *priv)
 static void dwc3_meson_g12a_usb_otg_apply_mode(struct dwc3_meson_g12a *priv)
 {
 	if (priv->otg_phy_mode == PHY_MODE_USB_DEVICE) {
-		regmap_update_bits(priv->regmap, USB_R0,
+		regmap_update_bits(priv->usb_glue_regmap, USB_R0,
 				USB_R0_U2D_ACT, USB_R0_U2D_ACT);
-		regmap_update_bits(priv->regmap, USB_R0,
+		regmap_update_bits(priv->usb_glue_regmap, USB_R0,
 				USB_R0_U2D_SS_SCALEDOWN_MODE_MASK, 0);
-		regmap_update_bits(priv->regmap, USB_R4,
+		regmap_update_bits(priv->usb_glue_regmap, USB_R4,
 				USB_R4_P21_SLEEP_M0, USB_R4_P21_SLEEP_M0);
 	} else {
-		regmap_update_bits(priv->regmap, USB_R0,
+		regmap_update_bits(priv->usb_glue_regmap, USB_R0,
 				USB_R0_U2D_ACT, 0);
-		regmap_update_bits(priv->regmap, USB_R4,
+		regmap_update_bits(priv->usb_glue_regmap, USB_R4,
 				USB_R4_P21_SLEEP_M0, 0);
 	}
 }
@@ -261,17 +271,17 @@ static int dwc3_meson_g12a_usb_init(struct dwc3_meson_g12a *priv)
 	if (ret)
 		return ret;
 
-	regmap_update_bits(priv->regmap, USB_R1,
+	regmap_update_bits(priv->usb_glue_regmap, USB_R1,
 			USB_R1_U3H_FLADJ_30MHZ_REG_MASK,
 			FIELD_PREP(USB_R1_U3H_FLADJ_30MHZ_REG_MASK, 0x20));
 
-	regmap_update_bits(priv->regmap, USB_R5,
+	regmap_update_bits(priv->usb_glue_regmap, USB_R5,
 			USB_R5_ID_DIG_EN_0,
 			USB_R5_ID_DIG_EN_0);
-	regmap_update_bits(priv->regmap, USB_R5,
+	regmap_update_bits(priv->usb_glue_regmap, USB_R5,
 			USB_R5_ID_DIG_EN_1,
 			USB_R5_ID_DIG_EN_1);
-	regmap_update_bits(priv->regmap, USB_R5,
+	regmap_update_bits(priv->usb_glue_regmap, USB_R5,
 			USB_R5_ID_DIG_TH_MASK,
 			FIELD_PREP(USB_R5_ID_DIG_TH_MASK, 0xff));
 
@@ -284,7 +294,8 @@ static int dwc3_meson_g12a_usb_init(struct dwc3_meson_g12a *priv)
 	return 0;
 }
 
-static const struct regmap_config phy_meson_g12a_usb3_regmap_conf = {
+static const struct regmap_config phy_meson_g12a_usb_glue_regmap_conf = {
+	.name = "usb-glue",
 	.reg_bits = 8,
 	.val_bits = 32,
 	.reg_stride = 4,
@@ -321,7 +332,7 @@ static enum phy_mode dwc3_meson_g12a_get_id(struct dwc3_meson_g12a *priv)
 {
 	u32 reg;
 
-	regmap_read(priv->regmap, USB_R5, &reg);
+	regmap_read(priv->usb_glue_regmap, USB_R5, &reg);
 
 	if (reg & (USB_R5_ID_DIG_SYNC | USB_R5_ID_DIG_REG))
 		return PHY_MODE_USB_DEVICE;
@@ -396,7 +407,8 @@ static irqreturn_t dwc3_meson_g12a_irq_thread(int irq, void *data)
 			dev_warn(priv->dev, "Failed to switch OTG mode\n");
 	}
 
-	regmap_update_bits(priv->regmap, USB_R5, USB_R5_ID_DIG_IRQ, 0);
+	regmap_update_bits(priv->usb_glue_regmap, USB_R5,
+			   USB_R5_ID_DIG_IRQ, 0);
 
 	return IRQ_HANDLED;
 }
@@ -431,7 +443,7 @@ static int dwc3_meson_g12a_otg_init(struct platform_device *pdev,
 
 	if (priv->otg_mode == USB_DR_MODE_OTG) {
 		/* Ack irq before registering */
-		regmap_update_bits(priv->regmap, USB_R5,
+		regmap_update_bits(priv->usb_glue_regmap, USB_R5,
 				   USB_R5_ID_DIG_IRQ, 0);
 
 		irq = platform_get_irq(pdev, 0);
@@ -466,6 +478,41 @@ static int dwc3_meson_g12a_otg_init(struct platform_device *pdev,
 	return 0;
 }
 
+static int dwc3_meson_g12a_setup_regmaps(struct dwc3_meson_g12a *priv,
+					 void __iomem *base)
+{
+	int i;
+
+	priv->usb_glue_regmap = devm_regmap_init_mmio(priv->dev,
+					base + G12A_GLUE_OFFSET,
+					&phy_meson_g12a_usb_glue_regmap_conf);
+	if (IS_ERR(priv->usb_glue_regmap))
+		return PTR_ERR(priv->usb_glue_regmap);
+
+	/* Create a regmap for each USB2 PHY control register set */
+	for (i = 0; i < priv->usb2_ports; i++) {
+		struct regmap_config u2p_regmap_config = {
+			.reg_bits = 8,
+			.val_bits = 32,
+			.reg_stride = 4,
+			.max_register = U2P_R1,
+		};
+
+		u2p_regmap_config.name = devm_kasprintf(priv->dev, GFP_KERNEL,
+							"u2p-%d", i);
+		if (!u2p_regmap_config.name)
+			return -ENOMEM;
+
+		priv->u2p_regmap[i] = devm_regmap_init_mmio(priv->dev,
+						base + (i * U2P_REG_SIZE),
+						&u2p_regmap_config);
+		if (IS_ERR(priv->u2p_regmap[i]))
+			return PTR_ERR(priv->u2p_regmap[i]);
+	}
+
+	return 0;
+}
+
 static int dwc3_meson_g12a_probe(struct platform_device *pdev)
 {
 	struct dwc3_meson_g12a	*priv;
@@ -482,10 +529,12 @@ static int dwc3_meson_g12a_probe(struct platform_device *pdev)
 	if (IS_ERR(base))
 		return PTR_ERR(base);
 
-	priv->regmap = devm_regmap_init_mmio(dev, base,
-					     &phy_meson_g12a_usb3_regmap_conf);
-	if (IS_ERR(priv->regmap))
-		return PTR_ERR(priv->regmap);
+	priv->drvdata = of_device_get_match_data(&pdev->dev);
+
+	priv->dev = dev;
+	ret = priv->drvdata->setup_regmaps(priv, base);
+	if (ret)
+		return ret;
 
 	priv->vbus = devm_regulator_get_optional(dev, "vbus");
 	if (IS_ERR(priv->vbus)) {
@@ -494,8 +543,6 @@ static int dwc3_meson_g12a_probe(struct platform_device *pdev)
 		priv->vbus = NULL;
 	}
 
-	priv->drvdata = of_device_get_match_data(&pdev->dev);
-
 	ret = devm_clk_bulk_get(dev,
 				priv->drvdata->num_clks,
 				priv->drvdata->clks);
@@ -508,7 +555,6 @@ static int dwc3_meson_g12a_probe(struct platform_device *pdev)
 		return ret;
 
 	platform_set_drvdata(pdev, priv);
-	priv->dev = dev;
 
 	priv->reset = devm_reset_control_get(dev, NULL);
 	if (IS_ERR(priv->reset)) {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
