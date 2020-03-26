Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B574419403B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 14:47:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gm72x1vvFQdOxetBnU2b+XRu45ipEviYLK2YgG4Xt8A=; b=JgUf2fpTgBOe1q
	29Jx9FLX/GIA/DxsOGowoUTmkf0JU1/CFdn5L3TYuiX8QJ7U4ivGfJg8PjAbX4fumBasoY0uH7BRg
	XM7LvZnDqUW86n6F7mag3p41Q2llaWy4k67yExIsRVzdNyGAqx+079/JEgkcGxU89pd5+Sg8FCnxY
	1gwYcF17nvzGWW6zoJldlNd7I0ihtgeQKfJBW0k/19EShesl/bmFnNf5U+XRj5VhF1RCqPPufrcUX
	jgqL5NxB4oHysfmuhdTxXxxndGDqqkCsBRYT6EuVg4H7H+XaaT75zV8go/QrwH5Sx9W8wgQZEB7NB
	KxVwEz5ypej5iBJ9XU7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHSrO-0007uY-IH; Thu, 26 Mar 2020 13:47:50 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHSoy-0005hC-Vb
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 13:45:24 +0000
Received: by mail-wm1-x341.google.com with SMTP id g62so7081571wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 06:45:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=h4OQGeeefykddJTLyHhR+pmXKSb4WyyElXj03N7FWqg=;
 b=FtpRIc5lQGp8K83aq1yBJ9kHII2tvynMr9OZ1jinKDHRFhKu+pu1lRsB8/ypHmm0sB
 2rNd5Uf7wqk4JllPfjgUO4QdjbgiMucnOFVmi7JmOz7a5rEaxq+cwr+3OI1uMs7cZxS9
 V1xSKr5BaUH7tJA/Jaki3uukc35M2swP5S50gL7AQZFbitadAoEPF0HF4rSnQj09drKs
 Lw4xeykbulQmyPURhw+KjGVPnNniAoYdSZt9TQ/l0UFDnGdQ5FZyxqkvSMlbX+ybckzZ
 TlkvOdAxuQatyA/6VzLxIH1ChGhBZCnKbFceW3Y/6jZ0c67Ht4N0xzyGbnpfLEaI7vvj
 Oymw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=h4OQGeeefykddJTLyHhR+pmXKSb4WyyElXj03N7FWqg=;
 b=DgzcmiWhJ7xVfbLIcypkLBu8/fvGxbworNsp4/ZVNXPUbadVodkS/b61Zje7/3yZT4
 8qipWPeYGCieJ9aYFnvXMCIy96HtdwNeEV022GDI21wYjIQ6ECazvsuUBQG/AbFsIJ5M
 Em+vuZYhxYLU2+ZXMhEOK333jRnT7TVPUX5dwErooT60ffpKo+MDrNNjwNHO8KwnDBmi
 9z9P1uNezDm2ny7uHsEdkvROcQbNZ80kbCpiizypVizm0gX4YwO2BxgNTcFKtylatahW
 luZaw+3kiuIOf/Xt9zdus4TcYQ0J0nr58KUHA9L9yalZLzmV0RcKijYS4VGbCYWBzgiE
 1x0g==
X-Gm-Message-State: ANhLgQ3trlHAqOJ8xiqRt0XD0FfywtEKZKFUczhZvXYBO27XUdFBzQ3o
 VQJksz3Ag2UFuAT9w/VS0k/Vzg==
X-Google-Smtp-Source: ADFU+vtNV2p2MdHTs3Aw9mAjq2g8w1y4nKcuV9ppnHa1G0n4fScralNm+HVi6ta7Q/aw94MiqSd2kA==
X-Received: by 2002:a1c:f60d:: with SMTP id w13mr2519wmc.171.1585230318771;
 Thu, 26 Mar 2020 06:45:18 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2])
 by smtp.gmail.com with ESMTPSA id h29sm4079617wrc.64.2020.03.26.06.45.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 06:45:18 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: kishon@ti.com, balbi@kernel.org, khilman@baylibre.com,
 martin.blumenstingl@googlemail.com
Subject: [PATCH v2 06/14] usb: dwc3: meson-g12a: refactor usb2 phy init
Date: Thu, 26 Mar 2020 14:44:58 +0100
Message-Id: <20200326134507.4808-7-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200326134507.4808-1-narmstrong@baylibre.com>
References: <20200326134507.4808-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_064521_036753_492EC600 
X-CRM114-Status: GOOD (  15.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

Refactor the USB2 PHY init code patch to handle the Amlogic GXL/GXM
not having the PHY mode control registers in the Glue but in the PHY
registers.

The Amlogic GXL/GXM will call phy_set_mode() instead of programming the
PHY mode control registers, thus add two new callbacks to the SoC match
data.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/usb/dwc3/dwc3-meson-g12a.c | 74 +++++++++++++++++++++---------
 1 file changed, 53 insertions(+), 21 deletions(-)

diff --git a/drivers/usb/dwc3/dwc3-meson-g12a.c b/drivers/usb/dwc3/dwc3-meson-g12a.c
index 69381c42a6d3..328e74def56f 100644
--- a/drivers/usb/dwc3/dwc3-meson-g12a.c
+++ b/drivers/usb/dwc3/dwc3-meson-g12a.c
@@ -136,11 +136,21 @@ struct dwc3_meson_g12a_drvdata {
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
@@ -148,6 +158,8 @@ static struct dwc3_meson_g12a_drvdata g12a_drvdata = {
 	.phy_names = meson_g12a_phy_names,
 	.num_phys = ARRAY_SIZE(meson_g12a_phy_names),
 	.setup_regmaps = dwc3_meson_g12a_setup_regmaps,
+	.usb2_init_phy = dwc3_meson_g12a_usb2_init_phy,
+	.set_phy_mode = dwc3_meson_g12a_set_phy_mode,
 };
 
 static struct dwc3_meson_g12a_drvdata a1_drvdata = {
@@ -157,6 +169,8 @@ static struct dwc3_meson_g12a_drvdata a1_drvdata = {
 	.phy_names = meson_a1_phy_names,
 	.num_phys = ARRAY_SIZE(meson_a1_phy_names),
 	.setup_regmaps = dwc3_meson_g12a_setup_regmaps,
+	.usb2_init_phy = dwc3_meson_g12a_usb2_init_phy,
+	.set_phy_mode = dwc3_meson_g12a_set_phy_mode,
 };
 
 struct dwc3_meson_g12a {
@@ -175,8 +189,8 @@ struct dwc3_meson_g12a {
 	const struct dwc3_meson_g12a_drvdata *drvdata;
 };
 
-static void dwc3_meson_g12a_usb2_set_mode(struct dwc3_meson_g12a *priv,
-					  int i, enum phy_mode mode)
+static int dwc3_meson_g12a_set_phy_mode(struct dwc3_meson_g12a *priv,
+					 int i, enum phy_mode mode)
 {
 	if (mode == PHY_MODE_USB_HOST)
 		regmap_update_bits(priv->u2p_regmap[i], U2P_R0,
@@ -185,11 +199,41 @@ static void dwc3_meson_g12a_usb2_set_mode(struct dwc3_meson_g12a *priv,
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
@@ -203,23 +247,9 @@ static int dwc3_meson_g12a_usb2_init(struct dwc3_meson_g12a *priv)
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
+		ret = priv->drvdata->usb2_init_phy(priv, i, priv->otg_phy_mode);
+		if (ret)
+			return ret;
 	}
 
 	return 0;
@@ -372,7 +402,9 @@ static int dwc3_meson_g12a_otg_mode_set(struct dwc3_meson_g12a *priv,
 
 	priv->otg_phy_mode = mode;
 
-	dwc3_meson_g12a_usb2_set_mode(priv, USB2_OTG_PHY, mode);
+	ret = priv->drvdata->set_phy_mode(priv, USB2_OTG_PHY, mode);
+	if (ret)
+		return ret;
 
 	dwc3_meson_g12a_usb_otg_apply_mode(priv);
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
