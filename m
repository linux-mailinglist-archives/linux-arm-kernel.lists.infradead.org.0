Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E6901C24E9
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 13:49:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hkCa/caEzQUg4WdOsOFEG8lQ+XOGdGf4pIGWWqXC5Gg=; b=JNlg2FT1CzrSSV
	bCJyxtXAidXyUK6UaSvwIgDgDmyaqYn2w6S6DdA8S8j39iT4lSKPHai4uiaxLI00eQ4Y/SFR7osY2
	I84umXOwObW9H7HDsEptchJawTJbW0BVhJYI2BXjL4uYCuY2EoZKdALlAuJaCHSx44LOblhbAc9Cx
	DcFJuLxm/wPA4x6UIdXuastXn65T+6GDAWyykTKwQQk7JOdZC30PaS7M4YfCZ+XEEQJ52Xf0GLnGk
	MFBXtnfHx08orDFGLqj1GnTlW1Kh+QQIhxKLVleYZOTsIPtkiFGsg8/IFfzPHMVWAt+hJBclsrwho
	G/bdWuJGlQNOa8JrFvwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUqeE-0000II-An; Sat, 02 May 2020 11:49:34 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUqdD-0007db-FJ; Sat, 02 May 2020 11:48:33 +0000
Received: by mail-wm1-x341.google.com with SMTP id x25so2883611wmc.0;
 Sat, 02 May 2020 04:48:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QFAHexGEnaXmwLdg5fSsXMiwNK3bsYkuiwFeQ5elT6s=;
 b=pFyhtwMpaZ3o/FB92DRrLDRT1f5GBNI2d/sKErFv2EVY2+CsKvc8/cCVNrW3yF6brL
 V1pY9VsGeka3mBBx8th1Djv31V96dCi8Iu+MKf9FQUKaPTMnLGJ2xSTGjJ5Lyf0R7q1V
 wJxqo9nrSZ2POeZZimRtumpaWPhiXPEeYi8aujAJjpvrdKDqrhfo1LutllVFe9oF4+aR
 YvuNw2BYeL/uKUK1SGZLLBOs6xNsZ8uoWt7u24H5xLrLRF4CUC7KWFy5tAYvLy6QmrT1
 QlhKxWOPZN4d1S3jao31Z3vQXv6Uxa8waUJlK8BlJI0sHJp+5mHg+5CZEy9NxxlNZOpJ
 JKZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QFAHexGEnaXmwLdg5fSsXMiwNK3bsYkuiwFeQ5elT6s=;
 b=fKxv22FJwDGG2RJxa4vpzUuuFKG2DMx8wulhWGL4PVHTtYSsHk6O+7/40xN8lEwpL7
 jyoQdA3GIRB8jF9MgiFTP1fAXOCFWLhFGTYdTJTRDBJD3i4iqd6zwuIH5HvvH6vXFLxs
 chGlo4MwMvIEeSkgNkYe0JQSOwbppTBZbGFSJnshIHpzEkZsF04ZsURQklx7wrQqWwPU
 fOmcv+RS5tgXuVjVhMXtd2Z8nYvVtc4FZp+koDsFCTPKhW541sqQRMURh2AyALpWz+JM
 Jn863jphheX9IgArvibkSepIpDoc64UpfQa7pnttrgZxa7+xHDoiT+tllZAPcDbmWf3x
 HeMA==
X-Gm-Message-State: AGi0PuZzHYGX3dM4hldfdGMnit8qvC0ckaOjcC6W7XuDn2ld4egqBZQB
 wjWQZfiyxKlH29Vxet7lYLU=
X-Google-Smtp-Source: APiQypKFpubL84Iiz7KpmvLOkP1cjAkXYmyfiEm/mgIoIqq/wMO08G1Hjzh42HkwxMtoFbOyDkgMlQ==
X-Received: by 2002:a1c:2383:: with SMTP id j125mr4259706wmj.6.1588420110196; 
 Sat, 02 May 2020 04:48:30 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137142E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3714:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id s17sm3801599wmc.48.2020.05.02.04.48.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 May 2020 04:48:29 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: kishon@ti.com, robh+dt@kernel.org, vkoul@kernel.org,
 devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org
Subject: [PATCH 3/6] phy: amlogic: meson8b-usb2: Use a MMIO regmap
Date: Sat,  2 May 2020 13:47:49 +0200
Message-Id: <20200502114752.1048500-4-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200502114752.1048500-1-martin.blumenstingl@googlemail.com>
References: <20200502114752.1048500-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_044831_521227_E419E700 
X-CRM114-Status: GOOD (  16.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 hexdump0815@googlemail.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, narmstrong@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Using a MMIO regmap and switch to regmap_update_bits() to simplify the
code in the driver. Also switch to devm_platform_ioremap_resource()
instead of open-coding it. No functional changes intended.

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
