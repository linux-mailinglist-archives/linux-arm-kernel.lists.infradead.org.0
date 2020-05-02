Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 896A11C24EC
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 13:50:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F49mHqe0XgaP5UzJE3ia3PfdyH3luVnq0rL5b1xbmaA=; b=ZwBLWCrmBhaJKm
	dFP0ABn874NoHdSZ5MsHarzm2+zJlbMZl2RqLoLkjf+Rq4wgl0BeZ/tMwlbaZOIEn71ot10q1TvKj
	hlbwqsjMdUbrP1bfF9QWk8jQkZ0Vs5sStX2+oJ3gOb0XqeBY42rlSxdhqeQ2tz81c6PPFd/c+h0gf
	oHYg4pfXlNKWOkgxcNhu1pXGCR/8QAAGDpkd5M8o54T7+TIPmicfJQGsnKeYRiSwV2UMI78QXiq0W
	d3G8+u3hHcjfBpwtJRjGwlqBLyupKzCYbNGMHXsMVrheuifsfFoaSO645nJG/6QviJgrokshBbun1
	Vj2O0Y4dHEmnPD5/POFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUqea-0000mR-SF; Sat, 02 May 2020 11:49:56 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUqdF-0007eX-OD; Sat, 02 May 2020 11:48:35 +0000
Received: by mail-wr1-x444.google.com with SMTP id s8so4662237wrt.9;
 Sat, 02 May 2020 04:48:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QpUpEujYS3y0hvmmOxoZ9pqLQStnivHijsveQ/+4bak=;
 b=d5CPJSeE3aFq5WtPqTb6wdqcCX9i7DU8YSqB5iEs959ykns7HVLaeyVkCO4mSqi6sE
 OZ04VLxDQuI9fe5s+73mLcQcR868KB+YDPc1ShQ718L5udF+JjVW6cbW367ebyNMWUYS
 Z4igW0VfMt28CEGrL25xRyA4DOYzgy4+pzRex1PkQ/s1IeAPgFF28VGNE3iZHiY5oSqM
 n3L9A2+Sjy87ran5QaMgfcj01DX9AvROhEro0r48FyaZBwR0hvjtdktjIHtdZQjr6Qsg
 nxz9DM4ot2CMpLSjy936cdLI9D2vWpfkPp/811I2uM7zLce764dCbHkgRGD+I2hw+9qD
 7XGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QpUpEujYS3y0hvmmOxoZ9pqLQStnivHijsveQ/+4bak=;
 b=nKRCchNwnepgy/LkaJyrqEDQ0ml5xkw0AB58sSykhLBozW5HLrHAX9CTIWben/OijE
 QiaI1zZjAN4XURT0j68sgQzUA5nBcnrvhfA9/Cg7l52hvHGjreMiu/YDGmmbMOx6NzF4
 6EHpP7MxSN0/qToCVMmIgURnZyweG5Ju0ibnW5dHbUOxzEckIaH/BAmxOOpHeZ2O0zvv
 20IPHviMatz+Wu2TKCmU6tmFYWa6Bgpc0+yx9Cv7YZTklUZFL3I7XrukBNdualWZnT38
 00bRTRqn9V9lJSJSI/et+dx59vAdZbq8iu2fNO5nY7aUdUNeX8TIpzhZjBVWOu+VB5TS
 gQlg==
X-Gm-Message-State: AGi0PuY+zdoTx4d+hVdPNcIr5uJFKaLwqc6bsEacLwDXP07oQNKjBVD7
 D2gJQLmsBSbpTvXwrvyn6Fs=
X-Google-Smtp-Source: APiQypLFmVcYXXF7loumlfnuG3OukAXkPJPXAtWSaBqPWtktFqwqCJZzKf9WGy/aDZCb8D/T/7kbeA==
X-Received: by 2002:adf:9564:: with SMTP id 91mr9301488wrs.246.1588420111297; 
 Sat, 02 May 2020 04:48:31 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137142E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3714:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id s17sm3801599wmc.48.2020.05.02.04.48.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 May 2020 04:48:30 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: kishon@ti.com, robh+dt@kernel.org, vkoul@kernel.org,
 devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org
Subject: [PATCH 4/6] phy: amlogic: meson8b-usb2: Don't set
 REG_ADP_BC_ACA_ENABLE on Meson8
Date: Sat,  2 May 2020 13:47:50 +0200
Message-Id: <20200502114752.1048500-5-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200502114752.1048500-1-martin.blumenstingl@googlemail.com>
References: <20200502114752.1048500-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_044833_788925_CA56E69A 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

Skip setting REG_ADP_BC_ACA_ENABLE on Meson8 SoCs and polling for the
REG_ADP_BC_ACA_PIN_FLOAT bit. The vendor also skips this part on Meson8
SoCs.
This fixes initialization of the host-only USB PHY on Meson8 which would
otherwise fail with "USB ID detect failed!".

Fixes: 4a3449d1a0a10c ("phy: meson8b-usb2: add support for the USB PHY on Meson8 SoCs")
Reported-by: hexdump <hexdump0815@googlemail.com>
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/phy/amlogic/phy-meson8b-usb2.c | 48 ++++++++++++++++++++------
 1 file changed, 38 insertions(+), 10 deletions(-)

diff --git a/drivers/phy/amlogic/phy-meson8b-usb2.c b/drivers/phy/amlogic/phy-meson8b-usb2.c
index 86824cc21f11..7236b8885f07 100644
--- a/drivers/phy/amlogic/phy-meson8b-usb2.c
+++ b/drivers/phy/amlogic/phy-meson8b-usb2.c
@@ -10,6 +10,7 @@
 #include <linux/io.h>
 #include <linux/module.h>
 #include <linux/of_device.h>
+#include <linux/property.h>
 #include <linux/regmap.h>
 #include <linux/reset.h>
 #include <linux/phy/phy.h>
@@ -105,12 +106,17 @@
 #define RESET_COMPLETE_TIME				500
 #define ACA_ENABLE_COMPLETE_TIME			50
 
+struct phy_meson8b_usb2_match_data {
+	bool			host_enable_aca;
+};
+
 struct phy_meson8b_usb2_priv {
-	struct regmap		*regmap;
-	enum usb_dr_mode	dr_mode;
-	struct clk		*clk_usb_general;
-	struct clk		*clk_usb;
-	struct reset_control	*reset;
+	struct regmap					*regmap;
+	enum usb_dr_mode				dr_mode;
+	struct clk					*clk_usb_general;
+	struct clk					*clk_usb;
+	struct reset_control				*reset;
+	const struct phy_meson8b_usb2_match_data	*match;
 };
 
 static const struct regmap_config phy_meson8b_usb2_regmap_conf = {
@@ -166,7 +172,8 @@ static int phy_meson8b_usb2_power_on(struct phy *phy)
 	regmap_update_bits(priv->regmap, REG_CTRL, REG_CTRL_SOF_TOGGLE_OUT,
 			   REG_CTRL_SOF_TOGGLE_OUT);
 
-	if (priv->dr_mode == USB_DR_MODE_HOST) {
+	if (priv->dr_mode == USB_DR_MODE_HOST &&
+	    priv->match->host_enable_aca) {
 		regmap_update_bits(priv->regmap, REG_ADP_BC,
 				   REG_ADP_BC_ACA_ENABLE,
 				   REG_ADP_BC_ACA_ENABLE);
@@ -216,6 +223,10 @@ static int phy_meson8b_usb2_probe(struct platform_device *pdev)
 	if (IS_ERR(base))
 		return PTR_ERR(base);
 
+	priv->match = device_get_match_data(&pdev->dev);
+	if (!priv->match)
+		return -ENODEV;
+
 	priv->regmap = devm_regmap_init_mmio(&pdev->dev, base,
 					     &phy_meson8b_usb2_regmap_conf);
 	if (IS_ERR(priv->regmap))
@@ -254,11 +265,28 @@ static int phy_meson8b_usb2_probe(struct platform_device *pdev)
 	return PTR_ERR_OR_ZERO(phy_provider);
 }
 
+static const struct phy_meson8b_usb2_match_data phy_meson8_usb2_match_data = {
+	.host_enable_aca = false,
+};
+
+static const struct phy_meson8b_usb2_match_data phy_meson8b_usb2_match_data = {
+	.host_enable_aca = true,
+};
+
 static const struct of_device_id phy_meson8b_usb2_of_match[] = {
-	{ .compatible = "amlogic,meson8-usb2-phy", },
-	{ .compatible = "amlogic,meson8b-usb2-phy", },
-	{ .compatible = "amlogic,meson-gxbb-usb2-phy", },
-	{ },
+	{
+		.compatible = "amlogic,meson8-usb2-phy",
+		.data = &phy_meson8_usb2_match_data
+	},
+	{
+		.compatible = "amlogic,meson8b-usb2-phy",
+		.data = &phy_meson8b_usb2_match_data
+	},
+	{
+		.compatible = "amlogic,meson-gxbb-usb2-phy",
+		.data = &phy_meson8b_usb2_match_data
+	},
+	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, phy_meson8b_usb2_of_match);
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
