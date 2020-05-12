Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C14BA1D0242
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 00:26:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y3F97+GMyNjKAVrJB14a1thhzMUmVlBKbH8z1c+2Rs0=; b=PvS0DID0BWU009
	8duRzmAKI4uGDwk4Q5D3TGmQaDuN/8zez7S4wfm91cz6IicFq1ckEHB4wPNhYKe/amGONut3crJYp
	ItvseqiAZVeTsRCcW4b6O0gI2NmNoB1/9ke50/B32eiBfjIlDrigPGsLFPU66YcTkrN8vd+HcT/Sw
	9duBVE6f1jtj7nnwgvj99qc7k9lFeVmp87b+1SxeFCBMdkQbwBnqv7QB4bpXrFyBkAr9fRvsbm4so
	py3EIUFWTerNSvqG0TAvRCMoUbFocUuMtrF6FXD+dYL+ymGNukq4t3YFxiqDevjcI6oUsg8SCcuse
	BldUHlbd9owIqFwP6AaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYdLd-0006ze-1F; Tue, 12 May 2020 22:26:01 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYdKI-0003bI-NW; Tue, 12 May 2020 22:24:40 +0000
Received: by mail-wm1-x341.google.com with SMTP id w19so11095184wmc.1;
 Tue, 12 May 2020 15:24:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PjJLkn9PoPDXRl4+jY4u2mwSqR91lgzHQdcLZQFcvtw=;
 b=sXzujmneDvKtWimMIKGU6JMKfbjB6Ol4KRmuhfTQBHl1w+F4CnrMRDOwjoG47CskiG
 d7gnwknBYen2iiPHjHFJBtk4N4QfiNjwg+3f1RuhEUCDEiJmm1pMssgzTsHRUHZNujIU
 +/2N8a4FeAJzcjvxw9cEtxUusZnr/4HgLjAlXwipu/gDNoPuWAYVmg1PAe3OfPtb3far
 g/Fb3qg2CuzCF/vmvAEM59Xc/A2X6gm6p21MZJAVDCcxpF6/AGj9VSVof+gBjVeaokjf
 7Nqj8uLBqRdzconWE2YTdQpE5erNsBy80ZTGBCZAP4KBIFhhilgUwYKS0XMUmFMkVf9p
 YUhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PjJLkn9PoPDXRl4+jY4u2mwSqR91lgzHQdcLZQFcvtw=;
 b=f8LBj3COF4lnDOX7mfWbJ/BWVeydk8KtvgWp1dQ4tv5rc0WfVHKvjH0TFfGk6VlgMC
 Y/OX44s2HhOaoFz/ump+u0sCKhEtSspEB0Qhhbqa0GvXqWF26DcV4WkDqj7RmrX0pOsz
 v4chgpfSsaOKSiQ0CkxwGrrK5g0sBgwkn7RciIawRc7xeR3KMiHA1HTSpYdmKLg5N5Mz
 pBR/fBuzyRPMCJHJyQarCUYfkFacLabvGZWBZxOq8+yByHPtdefJ7JT0IizM2kfLqIO4
 52iiUg9B7vNMJQyglSfAmdIVJldAX4qdxhFqyjr3ig+I0q2iUW7SvOi23rUNLpr5BV0J
 ko2A==
X-Gm-Message-State: AGi0PubPj/SSMJNGmzuCWchA8Tw3VuRU4wyUekL+vxclFqh+ywhqcWEY
 r8M7qn1vy7PQNCCCQmXpPSM=
X-Google-Smtp-Source: APiQypK5Co/sSecmnb8Pg+BTKxMJYZynYQrKN0eBRku8rZYr9eaJGjy5BjtcYQplq4sjlCVvi1mXEQ==
X-Received: by 2002:a1c:e305:: with SMTP id a5mr22450878wmh.1.1589322276996;
 Tue, 12 May 2020 15:24:36 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137132E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3713:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id b2sm21758758wrm.30.2020.05.12.15.24.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 15:24:36 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: kishon@ti.com, robh+dt@kernel.org, vkoul@kernel.org,
 devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org
Subject: [PATCH v2 3/6] phy: amlogic: meson8b-usb2: Use a MMIO regmap
Date: Wed, 13 May 2020 00:24:21 +0200
Message-Id: <20200512222424.549351-4-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200512222424.549351-1-martin.blumenstingl@googlemail.com>
References: <20200512222424.549351-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_152438_789217_FF6391A0 
X-CRM114-Status: GOOD (  16.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: narmstrong@baylibre.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Thomas Graichen <thomas.graichen@gmail.com>, hexdump0815@googlemail.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Using a MMIO regmap and switch to regmap_update_bits() to simplify the
code in the driver. Also switch to devm_platform_ioremap_resource()
instead of open-coding it. No functional changes intended.

Tested-by: Thomas Graichen <thomas.graichen@gmail.com>
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/phy/amlogic/Kconfig            |  1 +
 drivers/phy/amlogic/phy-meson8b-usb2.c | 73 ++++++++++++--------------
 2 files changed, 35 insertions(+), 39 deletions(-)

diff --git a/drivers/phy/amlogic/Kconfig b/drivers/phy/amlogic/Kconfig
index 71801e30d601..3495b23af797 100644
--- a/drivers/phy/amlogic/Kconfig
+++ b/drivers/phy/amlogic/Kconfig
@@ -9,6 +9,7 @@ config PHY_MESON8B_USB2
 	depends on USB_SUPPORT
 	select USB_COMMON
 	select GENERIC_PHY
+	select REGMAP_MMIO
 	help
 	  Enable this to support the Meson USB2 PHYs found in Meson8,
 	  Meson8b and GXBB SoCs.
diff --git a/drivers/phy/amlogic/phy-meson8b-usb2.c b/drivers/phy/amlogic/phy-meson8b-usb2.c
index bd66bd723e4a..86824cc21f11 100644
--- a/drivers/phy/amlogic/phy-meson8b-usb2.c
+++ b/drivers/phy/amlogic/phy-meson8b-usb2.c
@@ -10,6 +10,7 @@
 #include <linux/io.h>
 #include <linux/module.h>
 #include <linux/of_device.h>
+#include <linux/regmap.h>
 #include <linux/reset.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
@@ -105,34 +106,24 @@
 #define ACA_ENABLE_COMPLETE_TIME			50
 
 struct phy_meson8b_usb2_priv {
-	void __iomem		*regs;
+	struct regmap		*regmap;
 	enum usb_dr_mode	dr_mode;
 	struct clk		*clk_usb_general;
 	struct clk		*clk_usb;
 	struct reset_control	*reset;
 };
 
-static u32 phy_meson8b_usb2_read(struct phy_meson8b_usb2_priv *phy_priv,
-				 u32 reg)
-{
-	return readl(phy_priv->regs + reg);
-}
-
-static void phy_meson8b_usb2_mask_bits(struct phy_meson8b_usb2_priv *phy_priv,
-				       u32 reg, u32 mask, u32 value)
-{
-	u32 data;
-
-	data = phy_meson8b_usb2_read(phy_priv, reg);
-	data &= ~mask;
-	data |= (value & mask);
-
-	writel(data, phy_priv->regs + reg);
-}
+static const struct regmap_config phy_meson8b_usb2_regmap_conf = {
+	.reg_bits = 8,
+	.val_bits = 32,
+	.reg_stride = 4,
+	.max_register = REG_TUNE,
+};
 
 static int phy_meson8b_usb2_power_on(struct phy *phy)
 {
 	struct phy_meson8b_usb2_priv *priv = phy_get_drvdata(phy);
+	u32 reg;
 	int ret;
 
 	if (!IS_ERR_OR_NULL(priv->reset)) {
@@ -156,34 +147,34 @@ static int phy_meson8b_usb2_power_on(struct phy *phy)
 		return ret;
 	}
 
-	phy_meson8b_usb2_mask_bits(priv, REG_CONFIG, REG_CONFIG_CLK_32k_ALTSEL,
-				   REG_CONFIG_CLK_32k_ALTSEL);
+	regmap_update_bits(priv->regmap, REG_CONFIG, REG_CONFIG_CLK_32k_ALTSEL,
+			   REG_CONFIG_CLK_32k_ALTSEL);
 
-	phy_meson8b_usb2_mask_bits(priv, REG_CTRL, REG_CTRL_REF_CLK_SEL_MASK,
-				   0x2 << REG_CTRL_REF_CLK_SEL_SHIFT);
+	regmap_update_bits(priv->regmap, REG_CTRL, REG_CTRL_REF_CLK_SEL_MASK,
+			   0x2 << REG_CTRL_REF_CLK_SEL_SHIFT);
 
-	phy_meson8b_usb2_mask_bits(priv, REG_CTRL, REG_CTRL_FSEL_MASK,
-				   0x5 << REG_CTRL_FSEL_SHIFT);
+	regmap_update_bits(priv->regmap, REG_CTRL, REG_CTRL_FSEL_MASK,
+			   0x5 << REG_CTRL_FSEL_SHIFT);
 
 	/* reset the PHY */
-	phy_meson8b_usb2_mask_bits(priv, REG_CTRL, REG_CTRL_POWER_ON_RESET,
-				   REG_CTRL_POWER_ON_RESET);
+	regmap_update_bits(priv->regmap, REG_CTRL, REG_CTRL_POWER_ON_RESET,
+			   REG_CTRL_POWER_ON_RESET);
 	udelay(RESET_COMPLETE_TIME);
-	phy_meson8b_usb2_mask_bits(priv, REG_CTRL, REG_CTRL_POWER_ON_RESET, 0);
+	regmap_update_bits(priv->regmap, REG_CTRL, REG_CTRL_POWER_ON_RESET, 0);
 	udelay(RESET_COMPLETE_TIME);
 
-	phy_meson8b_usb2_mask_bits(priv, REG_CTRL, REG_CTRL_SOF_TOGGLE_OUT,
-				   REG_CTRL_SOF_TOGGLE_OUT);
+	regmap_update_bits(priv->regmap, REG_CTRL, REG_CTRL_SOF_TOGGLE_OUT,
+			   REG_CTRL_SOF_TOGGLE_OUT);
 
 	if (priv->dr_mode == USB_DR_MODE_HOST) {
-		phy_meson8b_usb2_mask_bits(priv, REG_ADP_BC,
-					   REG_ADP_BC_ACA_ENABLE,
-					   REG_ADP_BC_ACA_ENABLE);
+		regmap_update_bits(priv->regmap, REG_ADP_BC,
+				   REG_ADP_BC_ACA_ENABLE,
+				   REG_ADP_BC_ACA_ENABLE);
 
 		udelay(ACA_ENABLE_COMPLETE_TIME);
 
-		if (phy_meson8b_usb2_read(priv, REG_ADP_BC) &
-			REG_ADP_BC_ACA_PIN_FLOAT) {
+		regmap_read(priv->regmap, REG_ADP_BC, &reg);
+		if (reg & REG_ADP_BC_ACA_PIN_FLOAT) {
 			dev_warn(&phy->dev, "USB ID detect failed!\n");
 			clk_disable_unprepare(priv->clk_usb);
 			clk_disable_unprepare(priv->clk_usb_general);
@@ -213,18 +204,22 @@ static const struct phy_ops phy_meson8b_usb2_ops = {
 static int phy_meson8b_usb2_probe(struct platform_device *pdev)
 {
 	struct phy_meson8b_usb2_priv *priv;
-	struct resource *res;
 	struct phy *phy;
 	struct phy_provider *phy_provider;
+	void __iomem *base;
 
 	priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
 	if (!priv)
 		return -ENOMEM;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	priv->regs = devm_ioremap_resource(&pdev->dev, res);
-	if (IS_ERR(priv->regs))
-		return PTR_ERR(priv->regs);
+	base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(base))
+		return PTR_ERR(base);
+
+	priv->regmap = devm_regmap_init_mmio(&pdev->dev, base,
+					     &phy_meson8b_usb2_regmap_conf);
+	if (IS_ERR(priv->regmap))
+		return PTR_ERR(priv->regmap);
 
 	priv->clk_usb_general = devm_clk_get(&pdev->dev, "usb_general");
 	if (IS_ERR(priv->clk_usb_general))
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
