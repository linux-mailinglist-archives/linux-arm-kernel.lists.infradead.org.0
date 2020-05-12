Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 975261D0245
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 00:26:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j3Mplw9bR8XrVXQ9UUNZDbJ58Hwzenibun3HqWlqWAE=; b=sR6hIl/jNdnOZM
	O1pDAc5rgRX12L530rdvJRZbuw8X3F4mh3p7gF0JZAcRD/qFP++UK8obAl35d+Dv2bKWzp1zLXQfc
	C6ckBIUfIKGpXPh/UjJnQmv8iO71sPPX5q8fEZkYLtsMCjzpNXh1Z6hQMsSGrUniC2DVCPD+iaSI3
	tjh2kvHA9CJnqzovchMSUflPSbxmLMEc5sgV16u4rJm+nEXUBW+R6R0cq/i1mA/S0HU6SsOsD0mlt
	EynwDKssekmEOZPAh6AYOxwqzmRBLvm5XdEMH5mWpa+RF1rUAFOlR/hPct3CI4wJ0Kpwo5pVv7VIM
	Z16sOzvSRron/wtK9NXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYdMB-0007bG-8w; Tue, 12 May 2020 22:26:35 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYdKL-0003eL-IH; Tue, 12 May 2020 22:24:43 +0000
Received: by mail-wm1-x342.google.com with SMTP id e26so24132055wmk.5;
 Tue, 12 May 2020 15:24:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fWp37uKUDpwomXWa/aIQXLmU2FLlzJyWeA81xl/sOwk=;
 b=tC62i/6xkzIkxqgPl9BJqQyxGIvTg5pd3zHGsIWyYc1BB2pk+poW0X33w5qgL8af3U
 MoQ2pX+pua0szFl29Qhlmsea5fayxALBOtqBV7+8GGbNLq6qKJzGOVtYKLk0LHzt8J1o
 svg9uEpuoNrqkCK0e7sH2caNhMztgiWR9sFgPXSPuVZY1LFm+hLsYzRRjnw1SBolXJ+W
 l9VuNS+WuUvSFJTBFFl6F65Z++OVIyl0EPTvNXmDLYeEMhJePd4JBBPThfQ8VRak/Ef9
 ytG6OOgWMbshtPdYywM1cc8tiH4sjPqCN0oLBzBID9TOqM1i2O1a45bV2YkXsHaCkB6P
 s0tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fWp37uKUDpwomXWa/aIQXLmU2FLlzJyWeA81xl/sOwk=;
 b=D/A3DbGBskysqVtyvMbZZGGUJiEWtNtb7B1F4Y+QNiSOuxMiVPw0Kul5Lg5fwTz6Ty
 8RAtmDRCaSTG0aTXoK/5NHFYcrldBXN+EGR73H51NVQdo8THYE4KnjizwqYPD3C2Gys9
 YUg9YRX8lo9eJaHEDWxwiubbkn0dJUkriX+fPSe8jPCK02IfcRcK3nwxPUtyXB9Odf97
 2tJXiyrl6tgDzQL3bTUEggzxtg0Cwihh1PsMZQ79VEVC6CMVB4a8FCyf4Wr/Vf1fFo8h
 5hGF2mJMtAWzgTeeJXlE1aOC+RBFX6inx6dGVrNt5RrybrFjGOAaSyVD9ZdZoA6VAWvV
 ISxA==
X-Gm-Message-State: AGi0PubHB0S4fV8B2BOerU5BrAmlPyj8ZXYAmtpilQCH8EfxrTW4VzQW
 rIBVwryRIPlBkm/+rcmWF9o=
X-Google-Smtp-Source: APiQypI8HaPJS6tn/3p1+VJ3j0duckvAyujR9VAElNDzCa/9oefAMAjeT0RqFgb8MsChyKF/SDPM9g==
X-Received: by 2002:a1c:f416:: with SMTP id z22mr39644193wma.32.1589322279649; 
 Tue, 12 May 2020 15:24:39 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137132E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3713:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id b2sm21758758wrm.30.2020.05.12.15.24.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 15:24:39 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: kishon@ti.com, robh+dt@kernel.org, vkoul@kernel.org,
 devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org
Subject: [PATCH v2 5/6] phy: amlogic: meson8b-usb2: unset the IDDQ bit during
 PHY power-on
Date: Wed, 13 May 2020 00:24:23 +0200
Message-Id: <20200512222424.549351-6-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200512222424.549351-1-martin.blumenstingl@googlemail.com>
References: <20200512222424.549351-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_152441_644079_0467A841 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

The vendor driver unsets the set_iddig bit during power-on as well and
sets it when suspending the PHY. I did not notice this in the vendor
driver first, because it's part of the dwc_otg driver there (instead of
their PHY code). While here, also add all other REG_DBG_UART register
bit definitions.

Tested-by: Thomas Graichen <thomas.graichen@gmail.com>
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/phy/amlogic/phy-meson8b-usb2.c | 44 +++++++++++++++++++-------
 1 file changed, 32 insertions(+), 12 deletions(-)

diff --git a/drivers/phy/amlogic/phy-meson8b-usb2.c b/drivers/phy/amlogic/phy-meson8b-usb2.c
index 7236b8885f07..436dfa1a8a04 100644
--- a/drivers/phy/amlogic/phy-meson8b-usb2.c
+++ b/drivers/phy/amlogic/phy-meson8b-usb2.c
@@ -78,6 +78,17 @@
 	#define REG_ADP_BC_ACA_PIN_FLOAT		BIT(26)
 
 #define REG_DBG_UART					0x10
+	#define REG_DBG_UART_BYPASS_SEL			BIT(0)
+	#define REG_DBG_UART_BYPASS_DM_EN		BIT(1)
+	#define REG_DBG_UART_BYPASS_DP_EN		BIT(2)
+	#define REG_DBG_UART_BYPASS_DM_DATA		BIT(3)
+	#define REG_DBG_UART_BYPASS_DP_DATA		BIT(4)
+	#define REG_DBG_UART_FSV_MINUS			BIT(5)
+	#define REG_DBG_UART_FSV_PLUS			BIT(6)
+	#define REG_DBG_UART_FSV_BURN_IN_TEST		BIT(7)
+	#define REG_DBG_UART_LOOPBACK_EN_B		BIT(8)
+	#define REG_DBG_UART_SET_IDDQ			BIT(9)
+	#define REG_DBG_UART_ATE_RESET			BIT(10)
 
 #define REG_TEST					0x14
 	#define REG_TEST_DATA_IN_MASK			GENMASK(3, 0)
@@ -172,20 +183,24 @@ static int phy_meson8b_usb2_power_on(struct phy *phy)
 	regmap_update_bits(priv->regmap, REG_CTRL, REG_CTRL_SOF_TOGGLE_OUT,
 			   REG_CTRL_SOF_TOGGLE_OUT);
 
-	if (priv->dr_mode == USB_DR_MODE_HOST &&
-	    priv->match->host_enable_aca) {
-		regmap_update_bits(priv->regmap, REG_ADP_BC,
-				   REG_ADP_BC_ACA_ENABLE,
-				   REG_ADP_BC_ACA_ENABLE);
+	if (priv->dr_mode == USB_DR_MODE_HOST) {
+		regmap_update_bits(priv->regmap, REG_DBG_UART,
+				   REG_DBG_UART_SET_IDDQ, 0);
 
-		udelay(ACA_ENABLE_COMPLETE_TIME);
+		if (priv->match->host_enable_aca) {
+			regmap_update_bits(priv->regmap, REG_ADP_BC,
+					   REG_ADP_BC_ACA_ENABLE,
+					   REG_ADP_BC_ACA_ENABLE);
 
-		regmap_read(priv->regmap, REG_ADP_BC, &reg);
-		if (reg & REG_ADP_BC_ACA_PIN_FLOAT) {
-			dev_warn(&phy->dev, "USB ID detect failed!\n");
-			clk_disable_unprepare(priv->clk_usb);
-			clk_disable_unprepare(priv->clk_usb_general);
-			return -EINVAL;
+			udelay(ACA_ENABLE_COMPLETE_TIME);
+
+			regmap_read(priv->regmap, REG_ADP_BC, &reg);
+			if (reg & REG_ADP_BC_ACA_PIN_FLOAT) {
+				dev_warn(&phy->dev, "USB ID detect failed!\n");
+				clk_disable_unprepare(priv->clk_usb);
+				clk_disable_unprepare(priv->clk_usb_general);
+				return -EINVAL;
+			}
 		}
 	}
 
@@ -196,6 +211,11 @@ static int phy_meson8b_usb2_power_off(struct phy *phy)
 {
 	struct phy_meson8b_usb2_priv *priv = phy_get_drvdata(phy);
 
+	if (priv->dr_mode == USB_DR_MODE_HOST)
+		regmap_update_bits(priv->regmap, REG_DBG_UART,
+				   REG_DBG_UART_SET_IDDQ,
+				   REG_DBG_UART_SET_IDDQ);
+
 	clk_disable_unprepare(priv->clk_usb);
 	clk_disable_unprepare(priv->clk_usb_general);
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
