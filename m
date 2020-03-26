Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E30194035
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 14:46:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5LnEcJyhFrYa3yTJHiHCxxNfzi1HcHQHdCGZmZgVp/8=; b=R/ilxRdR0X2+t8
	jyNOW4SGi5e3G3DscGrcgsiwGNtVk+KAJKbWQoDLhQ/kKU6EBV0gWGnY5RaHJinfnKpeVrW1q3tfQ
	IW3ekQDiXKDpPDtDIW4HUMD2cXZNN8xV9SzCJsMXRQg602COY/edXGB48CGSeiTEIq3nrJsjMfgyD
	huRw/Tm7Qr3ODk71c9ww3Y8DIjWJ6r7mAcFGyLWafIiHqN/511spHY0nC7/QvqnmQBft69A/9vb3P
	I01V/HGBbgjobMznzJyLhkfeCQN5DDdY29cfmhKhnNHjKoEJDjQ5qcGBwLRrIHDo65VwdgtkHdbHe
	+hmwz2+s5J+fY0+opf3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHSqE-0006Xj-QG; Thu, 26 Mar 2020 13:46:38 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHSos-0005ap-B9
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 13:45:17 +0000
Received: by mail-wr1-x441.google.com with SMTP id w10so7890326wrm.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 06:45:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=K9eFb8D2phR1YQNJRTJuZvG3GmqU7Jbt0/WyqKmz+bw=;
 b=oWILPA9p7zgoY1wf0zlh6GXe8ZRRFY/8EwWnOTVNji6p4fwPkPjwdQwSe4GxMkrUbM
 +GghmZZnkWrN9amFiQ14DTU0Nu5rreLb3ZddKS9HH2fe8M66EYpbMux/z7vai3lW/DKn
 TBQ0PQE6FMCLwLDtPvPz5JPQ1girW7B3m50WIBCdBoq/KYSYyszbVeuc3o1c2nuAoWFy
 AS7dYqMPVnRUC2M6bWUM1qlUqc6aFIjPj4lT8voW3zk0KAXbSfNj1JIciPwcIDDTHcYk
 qrhWxwz1pY6KIoKvdnQFcGAj3J5OEXI3b5kdxnhjeCx6FVahrrmpsZ4fA4xZBL+Xz7lR
 SIkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=K9eFb8D2phR1YQNJRTJuZvG3GmqU7Jbt0/WyqKmz+bw=;
 b=dcALKe2R1WiGRVAbLgEcs5ai/PqNH25D//+KUAajaX+JMMeVL70k/ZnqDvrVie256N
 YVadPWPy9aLUm2FwExhY8EoLF+oOWtLbePc3iVJqN6Hzk7f7riO7f65/iHyRp2icq+1c
 dW0jRzTeDQVOg0hwzGeKeaNFuMZkQsGygAhCHUiYe/2bekkGlIIQLF/JCnp40CaGmCZp
 iDJ42MAMPcmV6QL36fbLIYJjNuGDJTImU5Hht40EzUqhHOIo4A+6hImFiRJqe+S/zJsA
 Lb/LdA40ipb6XaZFDG2ejZAACHLVxZpiD8sNFAKOi/eT/jpQ/3rm3CNs3F8z/nxUDDVB
 Cisw==
X-Gm-Message-State: ANhLgQ1RSae+LX0dHma1BfhGNeLfn5IYxBP3JHMIrUY6z4oiRTMBMkiu
 tv0UbLJyTgLV0bkHiPmVSA485Q==
X-Google-Smtp-Source: ADFU+vtM0R7NzPeN50a5ioxfIdmokzaZSGvJW1Jh6vLjUU1awtkchisbAhgq+T3/5PhaKBK5GWOieg==
X-Received: by 2002:adf:b35d:: with SMTP id k29mr9626299wrd.239.1585230312894; 
 Thu, 26 Mar 2020 06:45:12 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2])
 by smtp.gmail.com with ESMTPSA id h29sm4079617wrc.64.2020.03.26.06.45.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 06:45:12 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: kishon@ti.com, balbi@kernel.org, khilman@baylibre.com,
 martin.blumenstingl@googlemail.com
Subject: [PATCH v2 02/14] usb: dwc3: meson-g12a: specify phy names in soc data
Date: Thu, 26 Mar 2020 14:44:54 +0100
Message-Id: <20200326134507.4808-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200326134507.4808-1-narmstrong@baylibre.com>
References: <20200326134507.4808-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_064514_408488_477CF328 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
Cc: Hanjie Lin <hanjie.lin@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To handle the variable USB2 PHY counts on GXL and GXM SoCs, add the
possible PHY names for each SoC in the compatible match data.

Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Acked-by: Hanjie Lin <hanjie.lin@amlogic.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/usb/dwc3/dwc3-meson-g12a.c | 47 +++++++++++++++++++++---------
 1 file changed, 33 insertions(+), 14 deletions(-)

diff --git a/drivers/usb/dwc3/dwc3-meson-g12a.c b/drivers/usb/dwc3/dwc3-meson-g12a.c
index 902553f39889..d97ead5aee4e 100644
--- a/drivers/usb/dwc3/dwc3-meson-g12a.c
+++ b/drivers/usb/dwc3/dwc3-meson-g12a.c
@@ -96,16 +96,8 @@
 	#define USB_R5_ID_DIG_TH_MASK				GENMASK(15, 8)
 	#define USB_R5_ID_DIG_CNT_MASK				GENMASK(23, 16)
 
-enum {
-	USB2_HOST_PHY = 0,
-	USB2_OTG_PHY,
-	USB3_HOST_PHY,
-	PHY_COUNT,
-};
-
-static const char *phy_names[PHY_COUNT] = {
-	"usb2-phy0", "usb2-phy1", "usb3-phy0",
-};
+#define PHY_COUNT						3
+#define USB2_OTG_PHY						1
 
 static struct clk_bulk_data meson_g12a_clocks[] = {
 	{ .id = NULL },
@@ -117,22 +109,44 @@ static struct clk_bulk_data meson_a1_clocks[] = {
 	{ .id = "xtal_usb_ctrl" },
 };
 
+static const char *meson_g12a_phy_names[] = {
+	"usb2-phy0", "usb2-phy1", "usb3-phy0",
+};
+
+/*
+ * Amlogic A1 has a single physical PHY, in slot 1, but still has the
+ * two U2 PHY controls register blocks like G12A.
+ * Handling the first PHY on slot 1 would need a large amount of code
+ * changes, and the current management is generic enough to handle it
+ * correctly when only the "usb2-phy1" phy is specified on-par with the
+ * DT bindings.
+ */
+static const char *meson_a1_phy_names[] = {
+	"usb2-phy0", "usb2-phy1"
+};
+
 struct dwc3_meson_g12a_drvdata {
 	bool otg_switch_supported;
 	struct clk_bulk_data *clks;
 	int num_clks;
+	const char **phy_names;
+	int num_phys;
 };
 
 static struct dwc3_meson_g12a_drvdata g12a_drvdata = {
 	.otg_switch_supported = true,
 	.clks = meson_g12a_clocks,
 	.num_clks = ARRAY_SIZE(meson_g12a_clocks),
+	.phy_names = meson_g12a_phy_names,
+	.num_phys = ARRAY_SIZE(meson_g12a_phy_names),
 };
 
 static struct dwc3_meson_g12a_drvdata a1_drvdata = {
 	.otg_switch_supported = false,
 	.clks = meson_a1_clocks,
 	.num_clks = ARRAY_SIZE(meson_a1_clocks),
+	.phy_names = meson_a1_phy_names,
+	.num_phys = ARRAY_SIZE(meson_a1_phy_names),
 };
 
 struct dwc3_meson_g12a {
@@ -171,10 +185,13 @@ static int dwc3_meson_g12a_usb2_init(struct dwc3_meson_g12a *priv)
 	else
 		priv->otg_phy_mode = PHY_MODE_USB_HOST;
 
-	for (i = 0 ; i < USB3_HOST_PHY ; ++i) {
+	for (i = 0; i < priv->drvdata->num_phys; ++i) {
 		if (!priv->phys[i])
 			continue;
 
+		if (!strstr(priv->drvdata->phy_names[i], "usb2"))
+			continue;
+
 		regmap_update_bits(priv->regmap, U2P_R0 + (U2P_REG_SIZE * i),
 				   U2P_R0_POWER_ON_RESET,
 				   U2P_R0_POWER_ON_RESET);
@@ -284,17 +301,19 @@ static const struct regmap_config phy_meson_g12a_usb3_regmap_conf = {
 
 static int dwc3_meson_g12a_get_phys(struct dwc3_meson_g12a *priv)
 {
+	const char *phy_name;
 	int i;
 
-	for (i = 0 ; i < PHY_COUNT ; ++i) {
-		priv->phys[i] = devm_phy_optional_get(priv->dev, phy_names[i]);
+	for (i = 0 ; i < priv->drvdata->num_phys ; ++i) {
+		phy_name = priv->drvdata->phy_names[i];
+		priv->phys[i] = devm_phy_optional_get(priv->dev, phy_name);
 		if (!priv->phys[i])
 			continue;
 
 		if (IS_ERR(priv->phys[i]))
 			return PTR_ERR(priv->phys[i]);
 
-		if (i == USB3_HOST_PHY)
+		if (strstr(phy_name, "usb3"))
 			priv->usb3_ports++;
 		else
 			priv->usb2_ports++;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
