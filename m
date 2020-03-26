Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 318D919404A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 14:49:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z3gAN8yNOGZ6o97huLjumY4zJrvnmeHKGUowwgRcFi8=; b=e4/KdXLLKgNxbJ
	q+/BxfAK+qydk4l/DydnxHGI7+WOVDXjxyGRdGWgSz1wCfNCYQsLPP3A3FQ0MZBGL3hGWg32eit/R
	t+8rtoZ0PwxXZ0o9dyiczjAEYEHTRgfx+EhYoaK1FzvZz4OInhYRYcZxu+ENbXhXG0Kc2rKzHmJXv
	hRdKT41C0B4ruqkAk32hidG/yBcLtIu7SMgkEASLdO6hYo7wmh6AlrjopezM/zDNZG/LKXi0oojps
	PyVm6U7Alw7O3DGdHx/CNYzy8pABnOgEzD3cXWDzXwpPg/tSRIjmJnp1UrSJBc0v/TrGqYNNe+7U3
	7FSIxK5jMTtnyhMJVeqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHSsf-0000vD-RL; Thu, 26 Mar 2020 13:49:09 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHSp5-0005oN-GD
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 13:45:31 +0000
Received: by mail-wr1-x442.google.com with SMTP id j17so7788314wru.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 06:45:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oXkBYd4V4W64LS9ISD8dorCWAfaBaYZOOMUdMnWPJPM=;
 b=f33PjVGPmUuw9faJLl92kal8HzZ5G1Vcg5FKE1JxW9/zmKq/4IHWFf7bKQOeKMXEr2
 rs0xrZlKoME+WXiBg+dcj5Jj6epi1U87X40fcGvrJkOZAVzvSSKidLktGOUow4vi62Ea
 DWEeijShTqVgWKpDHvpT4DQqx7OBWqo6enuP6Jdj5IscYVkRl08sfoype1sxdw3U8QwO
 gMOdgKbkep8nNV2NjZtVOHB3OLtfbwnNiLIDf1G0ySD1AXh4p1+32Z838KoXrVQIngZq
 5EYJomaPxeIJNc2+JGkjFo6N1tQJEN57Yk/Px8SwWAwxfnCg9WYcAICyHt1SxTJCBA+c
 XXmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oXkBYd4V4W64LS9ISD8dorCWAfaBaYZOOMUdMnWPJPM=;
 b=T6S9xpN4hi2S0js11oldP8qAaveIyPd9AD1djGKg8vaRLaDPXlWlWNWLW+k0boo3o/
 DMhPPwOl/qPf4PbLvP+Y8OH3C0rDqVM8rdDxh0Gw4k9oJXL4aA5l8cJBklJFBw+mDF0Y
 1T1uyJlBTdp/Ua4U9tDRJJkmkBgKBeC3p51X+urLFPkAOhlbWOJ/bV9iwQl8+OweUigC
 qmF6FCSqicrYeXBGMjBTi357MA8Zg0cLVEK2b9mVoJzBc0UJexTLjzZGNVVEwrP5Q9oJ
 kOzcxxHSuu/xlp/pOJXqbEGK4QhxrJ2wMZABsGE58T7O0pBmomXiPwD7+UHs6L0IuKvg
 F6Pw==
X-Gm-Message-State: ANhLgQ347XiAyCDwDfWshcbDErUxFkepnXsbzAGgZKbj658SMmO6iurj
 O/YR6bcDQNiUxGh0nf0wzYWOsA==
X-Google-Smtp-Source: ADFU+vs2nN2JZmqUzExvKClL3u4ZWqO+GJoLwvPMWIs9n2egBGktQR88HRrnkxNuvt0ylQyh8jpREQ==
X-Received: by 2002:adf:ea03:: with SMTP id q3mr9105587wrm.267.1585230325724; 
 Thu, 26 Mar 2020 06:45:25 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2])
 by smtp.gmail.com with ESMTPSA id h29sm4079617wrc.64.2020.03.26.06.45.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 06:45:25 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: kishon@ti.com, balbi@kernel.org, khilman@baylibre.com,
 martin.blumenstingl@googlemail.com
Subject: [PATCH v2 11/14] phy: amlogic: meson-gxl-usb3: remove code for
 non-existing PHY
Date: Thu, 26 Mar 2020 14:45:03 +0100
Message-Id: <20200326134507.4808-12-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200326134507.4808-1-narmstrong@baylibre.com>
References: <20200326134507.4808-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_064527_778735_F03641A2 
X-CRM114-Status: GOOD (  17.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

The registers which are managed by the meson-gxl-usb3 PHY driver are
actually "USB control" registers (which are "glue" registers which
manage OTG detection and routing of the OTG capable port between the
DWC2 peripheral-only controller and the DWC3 host-only controller).

Drop the meson-gxl-usb3 PHY driver now that the dwc3-meson-g12a-usb
driver supports the USB control registers on GXL and GXM SoCs (these
were previously managed by the meson-gxl-usb3 PHY driver).

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../bindings/phy/meson-gxl-usb3-phy.txt       |  31 --
 drivers/phy/amlogic/Kconfig                   |  12 -
 drivers/phy/amlogic/Makefile                  |   1 -
 drivers/phy/amlogic/phy-meson-gxl-usb3.c      | 283 ------------------
 4 files changed, 327 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/meson-gxl-usb3-phy.txt
 delete mode 100644 drivers/phy/amlogic/phy-meson-gxl-usb3.c

diff --git a/Documentation/devicetree/bindings/phy/meson-gxl-usb3-phy.txt b/Documentation/devicetree/bindings/phy/meson-gxl-usb3-phy.txt
deleted file mode 100644
index 114947e1de3d..000000000000
--- a/Documentation/devicetree/bindings/phy/meson-gxl-usb3-phy.txt
+++ /dev/null
@@ -1,31 +0,0 @@
-* Amlogic Meson GXL and GXM USB3 PHY and OTG detection binding
-
-Required properties:
-- compatible:	Should be "amlogic,meson-gxl-usb3-phy"
-- #phys-cells:	must be 0 (see phy-bindings.txt in this directory)
-- reg:		The base address and length of the registers
-- interrupts:	the interrupt specifier for the OTG detection
-- clocks:	phandles to the clocks for
-		- the USB3 PHY
-		- and peripheral mode/OTG detection
-- clock-names:	must contain "phy" and "peripheral"
-- resets:	phandle to the reset lines for:
-		- the USB3 PHY and
-		- peripheral mode/OTG detection
-- reset-names:	must contain "phy" and "peripheral"
-
-Optional properties:
-- phy-supply:	see phy-bindings.txt in this directory
-
-
-Example:
-	usb3_phy0: phy@78080 {
-		compatible = "amlogic,meson-gxl-usb3-phy";
-		#phy-cells = <0>;
-		reg = <0x0 0x78080 0x0 0x20>;
-		interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&clkc CLKID_USB_OTG>, <&clkc_AO CLKID_AO_CEC_32K>;
-		clock-names = "phy", "peripheral";
-		resets = <&reset RESET_USB_OTG>, <&reset RESET_USB_OTG>;
-		reset-names = "phy", "peripheral";
-	};
diff --git a/drivers/phy/amlogic/Kconfig b/drivers/phy/amlogic/Kconfig
index af774ac2b934..77db9535ac6d 100644
--- a/drivers/phy/amlogic/Kconfig
+++ b/drivers/phy/amlogic/Kconfig
@@ -26,18 +26,6 @@ config PHY_MESON_GXL_USB2
 	  GXL and GXM SoCs.
 	  If unsure, say N.
 
-config PHY_MESON_GXL_USB3
-	tristate "Meson GXL and GXM USB3 PHY drivers"
-	default ARCH_MESON
-	depends on OF && (ARCH_MESON || COMPILE_TEST)
-	depends on USB_SUPPORT
-	select GENERIC_PHY
-	select REGMAP_MMIO
-	help
-	  Enable this to support the Meson USB3 PHY and OTG detection
-	  IP block found in Meson GXL and GXM SoCs.
-	  If unsure, say N.
-
 config PHY_MESON_G12A_USB2
 	tristate "Meson G12A USB2 PHY driver"
 	default ARCH_MESON
diff --git a/drivers/phy/amlogic/Makefile b/drivers/phy/amlogic/Makefile
index 11d1c42ac2be..8552e7153b99 100644
--- a/drivers/phy/amlogic/Makefile
+++ b/drivers/phy/amlogic/Makefile
@@ -2,5 +2,4 @@
 obj-$(CONFIG_PHY_MESON8B_USB2)		+= phy-meson8b-usb2.o
 obj-$(CONFIG_PHY_MESON_GXL_USB2)	+= phy-meson-gxl-usb2.o
 obj-$(CONFIG_PHY_MESON_G12A_USB2)	+= phy-meson-g12a-usb2.o
-obj-$(CONFIG_PHY_MESON_GXL_USB3)	+= phy-meson-gxl-usb3.o
 obj-$(CONFIG_PHY_MESON_G12A_USB3_PCIE)	+= phy-meson-g12a-usb3-pcie.o
diff --git a/drivers/phy/amlogic/phy-meson-gxl-usb3.c b/drivers/phy/amlogic/phy-meson-gxl-usb3.c
deleted file mode 100644
index c0e9e4c16149..000000000000
--- a/drivers/phy/amlogic/phy-meson-gxl-usb3.c
+++ /dev/null
@@ -1,283 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-/*
- * Meson GXL USB3 PHY and OTG mode detection driver
- *
- * Copyright (C) 2018 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
- */
-
-#include <linux/bitfield.h>
-#include <linux/bitops.h>
-#include <linux/clk.h>
-#include <linux/module.h>
-#include <linux/of_device.h>
-#include <linux/phy/phy.h>
-#include <linux/regmap.h>
-#include <linux/reset.h>
-#include <linux/platform_device.h>
-
-#define USB_R0							0x00
-	#define USB_R0_P30_FSEL_MASK				GENMASK(5, 0)
-	#define USB_R0_P30_PHY_RESET				BIT(6)
-	#define USB_R0_P30_TEST_POWERDOWN_HSP			BIT(7)
-	#define USB_R0_P30_TEST_POWERDOWN_SSP			BIT(8)
-	#define USB_R0_P30_ACJT_LEVEL_MASK			GENMASK(13, 9)
-	#define USB_R0_P30_TX_BOOST_LEVEL_MASK			GENMASK(16, 14)
-	#define USB_R0_P30_LANE0_TX2RX_LOOPBACK			BIT(17)
-	#define USB_R0_P30_LANE0_EXT_PCLK_REQ			BIT(18)
-	#define USB_R0_P30_PCS_RX_LOS_MASK_VAL_MASK		GENMASK(28, 19)
-	#define USB_R0_U2D_SS_SCALEDOWN_MODE_MASK		GENMASK(30, 29)
-	#define USB_R0_U2D_ACT					BIT(31)
-
-#define USB_R1							0x04
-	#define USB_R1_U3H_BIGENDIAN_GS				BIT(0)
-	#define USB_R1_U3H_PME_ENABLE				BIT(1)
-	#define USB_R1_U3H_HUB_PORT_OVERCURRENT_MASK		GENMASK(6, 2)
-	#define USB_R1_U3H_HUB_PORT_PERM_ATTACH_MASK		GENMASK(11, 7)
-	#define USB_R1_U3H_HOST_U2_PORT_DISABLE_MASK		GENMASK(15, 12)
-	#define USB_R1_U3H_HOST_U3_PORT_DISABLE			BIT(16)
-	#define USB_R1_U3H_HOST_PORT_POWER_CONTROL_PRESENT	BIT(17)
-	#define USB_R1_U3H_HOST_MSI_ENABLE			BIT(18)
-	#define USB_R1_U3H_FLADJ_30MHZ_REG_MASK			GENMASK(24, 19)
-	#define USB_R1_P30_PCS_TX_SWING_FULL_MASK		GENMASK(31, 25)
-
-#define USB_R2							0x08
-	#define USB_R2_P30_CR_DATA_IN_MASK			GENMASK(15, 0)
-	#define USB_R2_P30_CR_READ				BIT(16)
-	#define USB_R2_P30_CR_WRITE				BIT(17)
-	#define USB_R2_P30_CR_CAP_ADDR				BIT(18)
-	#define USB_R2_P30_CR_CAP_DATA				BIT(19)
-	#define USB_R2_P30_PCS_TX_DEEMPH_3P5DB_MASK		GENMASK(25, 20)
-	#define USB_R2_P30_PCS_TX_DEEMPH_6DB_MASK		GENMASK(31, 26)
-
-#define USB_R3							0x0c
-	#define USB_R3_P30_SSC_ENABLE				BIT(0)
-	#define USB_R3_P30_SSC_RANGE_MASK			GENMASK(3, 1)
-	#define USB_R3_P30_SSC_REF_CLK_SEL_MASK			GENMASK(12, 4)
-	#define USB_R3_P30_REF_SSP_EN				BIT(13)
-	#define USB_R3_P30_LOS_BIAS_MASK			GENMASK(18, 16)
-	#define USB_R3_P30_LOS_LEVEL_MASK			GENMASK(23, 19)
-	#define USB_R3_P30_MPLL_MULTIPLIER_MASK			GENMASK(30, 24)
-
-#define USB_R4							0x10
-	#define USB_R4_P21_PORT_RESET_0				BIT(0)
-	#define USB_R4_P21_SLEEP_M0				BIT(1)
-	#define USB_R4_MEM_PD_MASK				GENMASK(3, 2)
-	#define USB_R4_P21_ONLY					BIT(4)
-
-#define USB_R5							0x14
-	#define USB_R5_ID_DIG_SYNC				BIT(0)
-	#define USB_R5_ID_DIG_REG				BIT(1)
-	#define USB_R5_ID_DIG_CFG_MASK				GENMASK(3, 2)
-	#define USB_R5_ID_DIG_EN_0				BIT(4)
-	#define USB_R5_ID_DIG_EN_1				BIT(5)
-	#define USB_R5_ID_DIG_CURR				BIT(6)
-	#define USB_R5_ID_DIG_IRQ				BIT(7)
-	#define USB_R5_ID_DIG_TH_MASK				GENMASK(15, 8)
-	#define USB_R5_ID_DIG_CNT_MASK				GENMASK(23, 16)
-
-/* read-only register */
-#define USB_R6							0x18
-	#define USB_R6_P30_CR_DATA_OUT_MASK			GENMASK(15, 0)
-	#define USB_R6_P30_CR_ACK				BIT(16)
-
-struct phy_meson_gxl_usb3_priv {
-	struct regmap		*regmap;
-	enum phy_mode		mode;
-	struct clk		*clk_phy;
-	struct clk		*clk_peripheral;
-	struct reset_control	*reset;
-};
-
-static const struct regmap_config phy_meson_gxl_usb3_regmap_conf = {
-	.reg_bits = 8,
-	.val_bits = 32,
-	.reg_stride = 4,
-	.max_register = USB_R6,
-};
-
-static int phy_meson_gxl_usb3_power_on(struct phy *phy)
-{
-	struct phy_meson_gxl_usb3_priv *priv = phy_get_drvdata(phy);
-
-	regmap_update_bits(priv->regmap, USB_R5, USB_R5_ID_DIG_EN_0,
-			   USB_R5_ID_DIG_EN_0);
-	regmap_update_bits(priv->regmap, USB_R5, USB_R5_ID_DIG_EN_1,
-			   USB_R5_ID_DIG_EN_1);
-	regmap_update_bits(priv->regmap, USB_R5, USB_R5_ID_DIG_TH_MASK,
-			   FIELD_PREP(USB_R5_ID_DIG_TH_MASK, 0xff));
-
-	return 0;
-}
-
-static int phy_meson_gxl_usb3_power_off(struct phy *phy)
-{
-	struct phy_meson_gxl_usb3_priv *priv = phy_get_drvdata(phy);
-
-	regmap_update_bits(priv->regmap, USB_R5, USB_R5_ID_DIG_EN_0, 0);
-	regmap_update_bits(priv->regmap, USB_R5, USB_R5_ID_DIG_EN_1, 0);
-
-	return 0;
-}
-
-static int phy_meson_gxl_usb3_set_mode(struct phy *phy,
-				       enum phy_mode mode, int submode)
-{
-	struct phy_meson_gxl_usb3_priv *priv = phy_get_drvdata(phy);
-
-	switch (mode) {
-	case PHY_MODE_USB_HOST:
-		regmap_update_bits(priv->regmap, USB_R0, USB_R0_U2D_ACT, 0);
-		regmap_update_bits(priv->regmap, USB_R4, USB_R4_P21_SLEEP_M0,
-				   0);
-		break;
-
-	case PHY_MODE_USB_DEVICE:
-		regmap_update_bits(priv->regmap, USB_R0, USB_R0_U2D_ACT,
-				   USB_R0_U2D_ACT);
-		regmap_update_bits(priv->regmap, USB_R4, USB_R4_P21_SLEEP_M0,
-				   USB_R4_P21_SLEEP_M0);
-		break;
-
-	default:
-		dev_err(&phy->dev, "unsupported PHY mode %d\n", mode);
-		return -EINVAL;
-	}
-
-	priv->mode = mode;
-
-	return 0;
-}
-
-static int phy_meson_gxl_usb3_init(struct phy *phy)
-{
-	struct phy_meson_gxl_usb3_priv *priv = phy_get_drvdata(phy);
-	int ret;
-
-	ret = reset_control_reset(priv->reset);
-	if (ret)
-		goto err;
-
-	ret = clk_prepare_enable(priv->clk_phy);
-	if (ret)
-		goto err;
-
-	ret = clk_prepare_enable(priv->clk_peripheral);
-	if (ret)
-		goto err_disable_clk_phy;
-
-	ret = phy_meson_gxl_usb3_set_mode(phy, priv->mode, 0);
-	if (ret)
-		goto err_disable_clk_peripheral;
-
-	regmap_update_bits(priv->regmap, USB_R1,
-			   USB_R1_U3H_FLADJ_30MHZ_REG_MASK,
-			   FIELD_PREP(USB_R1_U3H_FLADJ_30MHZ_REG_MASK, 0x20));
-
-	return 0;
-
-err_disable_clk_peripheral:
-	clk_disable_unprepare(priv->clk_peripheral);
-err_disable_clk_phy:
-	clk_disable_unprepare(priv->clk_phy);
-err:
-	return ret;
-}
-
-static int phy_meson_gxl_usb3_exit(struct phy *phy)
-{
-	struct phy_meson_gxl_usb3_priv *priv = phy_get_drvdata(phy);
-
-	clk_disable_unprepare(priv->clk_peripheral);
-	clk_disable_unprepare(priv->clk_phy);
-
-	return 0;
-}
-
-static const struct phy_ops phy_meson_gxl_usb3_ops = {
-	.power_on	= phy_meson_gxl_usb3_power_on,
-	.power_off	= phy_meson_gxl_usb3_power_off,
-	.set_mode	= phy_meson_gxl_usb3_set_mode,
-	.init		= phy_meson_gxl_usb3_init,
-	.exit		= phy_meson_gxl_usb3_exit,
-	.owner		= THIS_MODULE,
-};
-
-static int phy_meson_gxl_usb3_probe(struct platform_device *pdev)
-{
-	struct device *dev = &pdev->dev;
-	struct device_node *np = dev->of_node;
-	struct phy_meson_gxl_usb3_priv *priv;
-	struct resource *res;
-	struct phy *phy;
-	struct phy_provider *phy_provider;
-	void __iomem *base;
-	int ret;
-
-	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
-	if (!priv)
-		return -ENOMEM;
-
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	base = devm_ioremap_resource(dev, res);
-	if (IS_ERR(base))
-		return PTR_ERR(base);
-
-	priv->regmap = devm_regmap_init_mmio(dev, base,
-					     &phy_meson_gxl_usb3_regmap_conf);
-	if (IS_ERR(priv->regmap))
-		return PTR_ERR(priv->regmap);
-
-	priv->clk_phy = devm_clk_get(dev, "phy");
-	if (IS_ERR(priv->clk_phy))
-		return PTR_ERR(priv->clk_phy);
-
-	priv->clk_peripheral = devm_clk_get(dev, "peripheral");
-	if (IS_ERR(priv->clk_peripheral))
-		return PTR_ERR(priv->clk_peripheral);
-
-	priv->reset = devm_reset_control_array_get_shared(dev);
-	if (IS_ERR(priv->reset))
-		return PTR_ERR(priv->reset);
-
-	/*
-	 * default to host mode as hardware defaults and/or boot-loader
-	 * behavior can result in this PHY starting up in device mode. this
-	 * default and the initialization in phy_meson_gxl_usb3_init ensure
-	 * that we reproducibly start in a known mode on all devices.
-	 */
-	priv->mode = PHY_MODE_USB_HOST;
-
-	phy = devm_phy_create(dev, np, &phy_meson_gxl_usb3_ops);
-	if (IS_ERR(phy)) {
-		ret = PTR_ERR(phy);
-		if (ret != -EPROBE_DEFER)
-			dev_err(dev, "failed to create PHY\n");
-
-		return ret;
-	}
-
-	phy_set_drvdata(phy, priv);
-
-	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
-
-	return PTR_ERR_OR_ZERO(phy_provider);
-}
-
-static const struct of_device_id phy_meson_gxl_usb3_of_match[] = {
-	{ .compatible = "amlogic,meson-gxl-usb3-phy", },
-	{ },
-};
-MODULE_DEVICE_TABLE(of, phy_meson_gxl_usb3_of_match);
-
-static struct platform_driver phy_meson_gxl_usb3_driver = {
-	.probe	= phy_meson_gxl_usb3_probe,
-	.driver	= {
-		.name		= "phy-meson-gxl-usb3",
-		.of_match_table	= phy_meson_gxl_usb3_of_match,
-	},
-};
-module_platform_driver(phy_meson_gxl_usb3_driver);
-
-MODULE_AUTHOR("Martin Blumenstingl <martin.blumenstingl@googlemail.com>");
-MODULE_DESCRIPTION("Meson GXL USB3 PHY and OTG detection driver");
-MODULE_LICENSE("GPL v2");
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
