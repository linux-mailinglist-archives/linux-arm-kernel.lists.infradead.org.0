Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 259951C24EE
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 13:50:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1pzdRwR2S6AniiNkKIsN3W9F71rFlwcy7O/W9DoafVo=; b=AbMf2I2ClYLWOR
	O55BuuNmsclGk1jptewQEdzvIwSwHCjo25tFq3FYZF+tXQYzoYvQG52tcvT/ONyUy+ZlSuK+gA63m
	QbRuS/k3tf7/2VzdDCCkYXG/c6nIrc9Txdjwr2XbH8C5bzewGB0dJSbcd2DiW7vJAe4EWy5JwP5a0
	Nc0WKH0up2gtn4Jaxsgig13plIKO31Q7k5oqOSBpxNfzTgQ0t0MIhmetozBMWLc1PBec9b2TW8kte
	5uRIQSL7E1QdOBC7MlNjR6v9hN4kVeC5sYVj5a5Xj88jXDr5ihhrc2ktNdm3sJkMBRBTCZDD4phqw
	DFrfrYRDSaB0sj2+175g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUqel-0000yL-I0; Sat, 02 May 2020 11:50:07 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUqdG-0007er-0p; Sat, 02 May 2020 11:48:35 +0000
Received: by mail-wm1-x342.google.com with SMTP id x25so2883678wmc.0;
 Sat, 02 May 2020 04:48:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kFrTvx+NxMxb/mwf/W0nW+oiG0vsywqTnE4GJN3UIxU=;
 b=mQO1vAah1awiL1cd9B9FKjUGKvTguiIo6ue62NQGEd/SAs/xmnzmR6H7yJ5jmQmXC8
 /lyyWRHwBccwKHjnXSW+EvnTCWBs754KrmhDJT+ZW+5RZ/0LMCRk00jU46T0PCIr/IMv
 nVmYZzHIF4FN672ObxrKtElXfJxAC+8YBRtN/sFuTcBnOxe78gtlv6m6gafZ3n7S49LL
 0JMCSIzmdsnDLC+6uv9/5fN301Dd2oPe2PkGd2vg+DR4hOoRGnMRDwELBkV0RrDv9SV6
 nej0IZDaze0QLtT95MJ7Ig3vCBHSt0IUM+CabziNLggQz720D1vhoTjsivmkzvhxoHzA
 OyKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kFrTvx+NxMxb/mwf/W0nW+oiG0vsywqTnE4GJN3UIxU=;
 b=R8962NZDUTOUnV3AMupKg7XVgmVfXFwWamn9nQpJdz9BNWvReSBc6ZSOACAVUnB5Mq
 EJQLxdQVxaj71ZHRq1kViKZlGiWZqoHyb0PoJ0kkhrjb2FuGH+eEtyDMMxU8I01oVPIq
 hmJwFE2fZw+PVFIXTNFEA0q8EgKq5XwmQB67vKUsXl+0J9yuJ3zsnMHecLPKVrjiC5h0
 IALD/jT92F5f5c/cMakDBxLLi/CoNgwYhpYOcd0U6wvJZTWZy82hWI0dKon65/GCgC9J
 biMZZDMUlALgrmJ8ta3LGmU04QvtM1bTpFV19SZuRfBxOWAANfcdVy3mDCFDFL787XnB
 f86w==
X-Gm-Message-State: AGi0PubpOJaW2/+IvAajTeGNtpZQnCwyaAJssKxtGclkK8AFt8BN+JsA
 yPQe9ocjp2tVTUwpK1AoPCjrJHn6uYU=
X-Google-Smtp-Source: APiQypL7YhAiOxu75mfXAKcFXx1rybcRr5vEwmJtSmOCxWYmUtuTH4n+LfBfSaYFFNeL5ghXRFiPgQ==
X-Received: by 2002:a05:600c:2214:: with SMTP id
 z20mr4681569wml.189.1588420112261; 
 Sat, 02 May 2020 04:48:32 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137142E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3714:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id s17sm3801599wmc.48.2020.05.02.04.48.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 May 2020 04:48:31 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: kishon@ti.com, robh+dt@kernel.org, vkoul@kernel.org,
 devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org
Subject: [PATCH 5/6] phy: amlogic: meson8b-usb2: unset the IDDQ bit during PHY
 power-on
Date: Sat,  2 May 2020 13:47:51 +0200
Message-Id: <20200502114752.1048500-6-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200502114752.1048500-1-martin.blumenstingl@googlemail.com>
References: <20200502114752.1048500-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_044834_069292_784B1D76 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

The vendor driver unsets the set_iddig bit during power-on as well and
sets it when suspending the PHY. I did not notice this in the vendor
driver first, because it's part of the dwc_otg driver there (instead of
their PHY code). While here, also add all other REG_DBG_UART register
bit definitions.

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
