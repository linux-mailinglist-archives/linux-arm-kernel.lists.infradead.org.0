Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F43A190ABE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 11:23:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NTDkC1vMg9BVAear1iaXvCF1R7SNtGiim5im/ZEw1uQ=; b=iim36IHpQ3P6uB
	uI4+IJGHo0VbLTZr+2eTCf6pAbXUQ3O3m6xxoPj/z55mIRkn5oo2koz2+7MrjbBeg7ULtnHYvpz5g
	S0q2/CS9LLOnZEfurmQroCgDg9q+mrkWFpsaOA3ZhRqZawvLcN87CTL19I2Do7SsoCBQ3cCDsRYkF
	MD4rzRdkeX+dmU9x65oSM8p0paV34rb/R8h1gPsHc52lP1bSUg2jgNpbjk8nnM23IpUN+LLi0OKEF
	q7AbPh+McZC0GUZ29grOADIpRjjOOfboTruG0+8j/hKl7IF70tHt4Io4AjVuP37GF6jA1GnrFxJPQ
	WCZYYtngnjV+wLzFMBQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGgi2-0003ce-IA; Tue, 24 Mar 2020 10:22:58 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGgfu-0001tj-9J
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 10:20:49 +0000
Received: by mail-wm1-x342.google.com with SMTP id b12so2542962wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 03:20:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Hou80d0MTLDZlmlJ355AXofbOfe1zM2AnQR9J4KSFMs=;
 b=BDdKQ/eg8GJU3rw7bt27fdm7JD3LunTPYvS5foLjXlk4+2x7IYUyC7tnZt6YzZhH2r
 9uf+TxyolQ+b4d2ef/p/TCQzFfXAof7MK/MNyf1ecfF35Wzp0YGJXE20TnTghPKI4Tgc
 GamPL4GSpVlSgFzZqzk4KgESYQRvNR3ipm7ci5zm8oT1ImNDZz0c2/Kji2v93/U3iiKI
 QhgMoCZmRNAper4dB07FIQHCj5k4nF+chUBp4THzOSSXtHZ17q6+H5lbj7QcN1jzt4gT
 BLzaXw2yw0qAmTxEhoraNq4/z9QdkzP9g6PSxxlcyWn4YYNfdydP6KGuC+232xsszbq7
 VIhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Hou80d0MTLDZlmlJ355AXofbOfe1zM2AnQR9J4KSFMs=;
 b=BVFWpAQlFd8MXc5glaxsjc8zu/LjwdrjNoiQCHJmCYZcrKFbK7dwqGV7SgM+HbVzsT
 aEHybHUU+rmHV1Dr/2mb3fksJ+y9H0EQqfDI8JbJqbbTvlIZL0ZL9i/7HwfAYkTKR/2r
 BQQnjNvaWxrkOd1eIsYYjgLl8HOT3WNxztQQQS4xTH8if9OLsVQQQnegQlyz+PkjxMrv
 7z6beNYEFrMx2um6fzrl3o9xFoQ3oyg5w/gZIYoulH2w41EB0sSl/c7I9wltfQh54fhW
 0oBJeMjz6ND1+k7013ZM97oSzaFalk8dzRpS56LR1x2nvXyvTOXoBV1OoHkpjVDXDKZ6
 rchA==
X-Gm-Message-State: ANhLgQ2c+5h66AtXnocmVpHgOWaEnAxVGviqN0heei5mQ336n4UP7+6N
 ZUy8LSGsFUsvk3bg2iWbk8SvAw==
X-Google-Smtp-Source: ADFU+vtln9Fd09Sl/Kyd/Fvp8vW2oxUjrs33nYEZF8jMY4c/JzrfP10IB/KaIRhHlM25wSbaiW9FkA==
X-Received: by 2002:a1c:5604:: with SMTP id k4mr4510320wmb.57.1585045244803;
 Tue, 24 Mar 2020 03:20:44 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2])
 by smtp.gmail.com with ESMTPSA id h5sm2879527wro.83.2020.03.24.03.20.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 03:20:44 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: kishon@ti.com, balbi@kernel.org, khilman@baylibre.com,
 martin.blumenstingl@googlemail.com
Subject: [PATCH 05/13] usb: dwc3: meson-g12a: refactor usb2 phy init
Date: Tue, 24 Mar 2020 11:20:22 +0100
Message-Id: <20200324102030.31000-6-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200324102030.31000-1-narmstrong@baylibre.com>
References: <20200324102030.31000-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_032046_367056_F619D830 
X-CRM114-Status: GOOD (  16.08  )
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

Refactor the USB2 PHY init code patch to handle the Amlogic GXL/GXM
not having the PHY mode control registers in the Glue but in the PHY
registers.

The Amlogic GXL/GXM will call phy_set_mode() instead of programming the
PHY mode control registers, thus add two new callbacks to the SoC match
data.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/usb/dwc3/dwc3-meson-g12a.c | 78 +++++++++++++++++++++---------
 1 file changed, 56 insertions(+), 22 deletions(-)

diff --git a/drivers/usb/dwc3/dwc3-meson-g12a.c b/drivers/usb/dwc3/dwc3-meson-g12a.c
index 24a50dde685c..74d07ded8a7e 100644
--- a/drivers/usb/dwc3/dwc3-meson-g12a.c
+++ b/drivers/usb/dwc3/dwc3-meson-g12a.c
@@ -128,11 +128,21 @@ struct dwc3_meson_g12a_drvdata {
 	const char **phy_names;
 	int num_phys;
 	int (*setup_regmaps)(struct dwc3_meson_g12a *priv, void __iomem *base);
+	int (*usb2_init_phy)(struct dwc3_meson_g12a *priv, int i,
+			     enum phy_mode mode);
+	int (*set_phy_mode)(struct dwc3_meson_g12a *priv, int i,
+			    enum phy_mode mode);
 };
 
 static int dwc3_meson_g12a_setup_regmaps(struct dwc3_meson_g12a *priv,
 					 void __iomem *base);
 
+static int dwc3_meson_g12a_usb2_init_phy(struct dwc3_meson_g12a *priv, int i,
+					  enum phy_mode mode);
+
+static int dwc3_meson_g12a_set_phy_mode(struct dwc3_meson_g12a *priv,
+					int i, enum phy_mode mode);
+
 static struct dwc3_meson_g12a_drvdata g12a_drvdata = {
 	.otg_switch_supported = true,
 	.clks = meson_g12a_clocks,
@@ -140,6 +150,8 @@ static struct dwc3_meson_g12a_drvdata g12a_drvdata = {
 	.phy_names = meson_g12a_phy_names,
 	.num_phys = ARRAY_SIZE(meson_g12a_phy_names),
 	.setup_regmaps = dwc3_meson_g12a_setup_regmaps,
+	.usb2_init_phy = dwc3_meson_g12a_usb2_init_phy,
+	.set_phy_mode = dwc3_meson_g12a_set_phy_mode,
 };
 
 static struct dwc3_meson_g12a_drvdata a1_drvdata = {
@@ -149,6 +161,8 @@ static struct dwc3_meson_g12a_drvdata a1_drvdata = {
 	.phy_names = meson_a1_phy_names,
 	.num_phys = ARRAY_SIZE(meson_a1_phy_names),
 	.setup_regmaps = dwc3_meson_g12a_setup_regmaps,
+	.usb2_init_phy = dwc3_meson_g12a_usb2_init_phy,
+	.set_phy_mode = dwc3_meson_g12a_set_phy_mode,
 };
 
 struct dwc3_meson_g12a {
@@ -167,8 +181,8 @@ struct dwc3_meson_g12a {
 	const struct dwc3_meson_g12a_drvdata *drvdata;
 };
 
-static void dwc3_meson_g12a_usb2_set_mode(struct dwc3_meson_g12a *priv,
-					  int i, enum phy_mode mode)
+static int dwc3_meson_g12a_set_phy_mode(struct dwc3_meson_g12a *priv,
+					 int i, enum phy_mode mode)
 {
 	if (mode == PHY_MODE_USB_HOST)
 		regmap_update_bits(priv->u2p_regmap[i], U2P_R0,
@@ -177,11 +191,41 @@ static void dwc3_meson_g12a_usb2_set_mode(struct dwc3_meson_g12a *priv,
 	else
 		regmap_update_bits(priv->u2p_regmap[i], U2P_R0,
 				U2P_R0_HOST_DEVICE, 0);
+
+	return 0;
+}
+
+static int dwc3_meson_g12a_usb2_init_phy(struct dwc3_meson_g12a *priv, int i,
+					 enum phy_mode mode)
+{
+	int ret;
+
+	regmap_update_bits(priv->u2p_regmap[i], U2P_R0,
+			U2P_R0_POWER_ON_RESET,
+			U2P_R0_POWER_ON_RESET);
+
+	if (priv->drvdata->otg_switch_supported && i == USB2_OTG_PHY) {
+		regmap_update_bits(priv->u2p_regmap[i], U2P_R0,
+				   U2P_R0_ID_PULLUP | U2P_R0_DRV_VBUS,
+				   U2P_R0_ID_PULLUP | U2P_R0_DRV_VBUS);
+
+		ret = priv->drvdata->set_phy_mode(priv, i, mode);
+	} else
+		ret = priv->drvdata->set_phy_mode(priv, i,
+						  PHY_MODE_USB_HOST);
+
+	if (ret)
+		return ret;
+
+	regmap_update_bits(priv->u2p_regmap[i], U2P_R0,
+			U2P_R0_POWER_ON_RESET, 0);
+
+	return 0;
 }
 
 static int dwc3_meson_g12a_usb2_init(struct dwc3_meson_g12a *priv)
 {
-	int i;
+	int i, ret;
 
 	if (priv->otg_mode == USB_DR_MODE_PERIPHERAL)
 		priv->otg_phy_mode = PHY_MODE_USB_DEVICE;
@@ -195,23 +239,9 @@ static int dwc3_meson_g12a_usb2_init(struct dwc3_meson_g12a *priv)
 		if (!strstr(priv->drvdata->phy_names[i], "usb2"))
 			continue;
 
-		regmap_update_bits(priv->u2p_regmap[i], U2P_R0,
-				   U2P_R0_POWER_ON_RESET,
-				   U2P_R0_POWER_ON_RESET);
-
-		if (priv->drvdata->otg_switch_supported && i == USB2_OTG_PHY) {
-			regmap_update_bits(priv->u2p_regmap[i], U2P_R0,
-				U2P_R0_ID_PULLUP | U2P_R0_DRV_VBUS,
-				U2P_R0_ID_PULLUP | U2P_R0_DRV_VBUS);
-
-			dwc3_meson_g12a_usb2_set_mode(priv, i,
-						      priv->otg_phy_mode);
-		} else
-			dwc3_meson_g12a_usb2_set_mode(priv, i,
-						      PHY_MODE_USB_HOST);
-
-		regmap_update_bits(priv->u2p_regmap[i], U2P_R0,
-				   U2P_R0_POWER_ON_RESET, 0);
+		ret = priv->drvdata->usb2_init_phy(priv, i, mode);
+		if (ret)
+			return ret;
 	}
 
 	return 0;
@@ -364,7 +394,9 @@ static int dwc3_meson_g12a_otg_mode_set(struct dwc3_meson_g12a *priv,
 
 	priv->otg_phy_mode = mode;
 
-	dwc3_meson_g12a_usb2_set_mode(priv, USB2_OTG_PHY, mode);
+	ret = priv->drvdata->set_phy_mode(priv, USB2_OTG_PHY, mode);
+	if (ret)
+		return ret;
 
 	dwc3_meson_g12a_usb_otg_apply_mode(priv);
 
@@ -580,7 +612,9 @@ static int dwc3_meson_g12a_probe(struct platform_device *pdev)
 	/* Get dr_mode */
 	priv->otg_mode = usb_get_dr_mode(dev);
 
-	dwc3_meson_g12a_usb_init(priv);
+	ret = dwc3_meson_g12a_usb_init(priv);
+	if (ret)
+		goto err_disable_clks;
 
 	/* Init PHYs */
 	for (i = 0 ; i < PHY_COUNT ; ++i) {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
