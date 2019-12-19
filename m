Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44BA01264A4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 15:28:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0fmANp7kCZqnm8mfm/XrukUtx9464KH0a83hrk7VR9k=; b=bOtskrpDBmqpB+
	IN4QM2aiwaOAbCNks4j41P92v6EvIF3YmdOJmH9DqUGEOJbTbBHacyUNlF+319M3CUJwJQFwAejJH
	lSkqh4kfTtiHZR1GtsWnHE8uSZdIZUFZruGnwgfwTL+rq4Fi1NMHRUfXx/dOcxF/mY0cgfghf30To
	c8VHowOFAeqYTsOn/IBiK2TSU9hw5TiSIQzmhfnOwpPBN486KlLuAd+cD0eyiQMhe+hE0sT52Z1AX
	J9XKdI82X6FvI7epf1U8vgYOrBeU513MYNmU8kU1D8jb4qoYvdlGJCLK2p3Tjb3fdWZtMpFvb+1Jg
	KN3sWJSoqSqR0UO29Ojg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihwn2-0001F8-4i; Thu, 19 Dec 2019 14:28:32 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihwme-00013g-Gf
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 14:28:10 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: sxIgeFeoF4HxD177Xhe7f9l55UHFm0LTKNIU6tP0aRriyxmeD355tCqlOgbIOJaQIXaPJOQ/Yz
 5y4/ODfAy2WchxVdb91WMDzaEk5gPFv3TucHmUDozSoPehrhxM5NiFO7mNDxr/qjDI02xCurAe
 a1oYIkX6i7nFbYRRnqdt/wBWE2D8yq0AIrrSMxDQ7c/iU46917n29C89i1BpOzQbl4z1Ib5ZMt
 +uK5Pn5WyGmPTQ++gebBJwT+R9LJaxEO/n/3AmWSWaWFjiaZw9qUUxZyncV85TeaoevLpOfulG
 sKw=
X-IronPort-AV: E=Sophos;i="5.69,332,1571727600"; d="scan'208";a="60355281"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 19 Dec 2019 07:28:07 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 19 Dec 2019 07:28:07 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Thu, 19 Dec 2019 07:28:09 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <nicolas.ferre@microchip.com>, <sre@kernel.org>,
 <alexandre.belloni@bootlin.com>
Subject: [PATCH 1/2] power: reset: at91-sama5d2_shdwc: introduce struct
 shdwc_reg_config
Date: Thu, 19 Dec 2019 16:27:53 +0200
Message-ID: <1576765674-22070-2-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576765674-22070-1-git-send-email-claudiu.beznea@microchip.com>
References: <1576765674-22070-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_062808_586538_4AFFE6BA 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Claudiu Beznea <claudiu.beznea@microchip.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This driver uses AT91_PMC_MCKR in poweroff() function. But the
SAM9X60's PMC versions maps AT91_PMC_MCKR functionality at different
offset compared to the SAMA5D2's one. This patch prepares the field
so that different AT91_PMC_MCKR's offsets to be introduced in
struct reg_config so that proper offset to be used for AT91_PMC_MCKR
based on compatible string.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 drivers/power/reset/at91-sama5d2_shdwc.c | 54 +++++++++++++++++++-------------
 1 file changed, 32 insertions(+), 22 deletions(-)

diff --git a/drivers/power/reset/at91-sama5d2_shdwc.c b/drivers/power/reset/at91-sama5d2_shdwc.c
index e341cc5c0ea6..836957f17169 100644
--- a/drivers/power/reset/at91-sama5d2_shdwc.c
+++ b/drivers/power/reset/at91-sama5d2_shdwc.c
@@ -66,7 +66,7 @@
 
 #define SHDW_CFG_NOT_USED	(32)
 
-struct shdwc_config {
+struct shdwc_reg_config {
 	u8 wkup_pin_input;
 	u8 mr_rtcwk_shift;
 	u8 mr_rttwk_shift;
@@ -74,8 +74,12 @@ struct shdwc_config {
 	u8 sr_rttwk_shift;
 };
 
+struct reg_config {
+	struct shdwc_reg_config shdwc;
+};
+
 struct shdwc {
-	const struct shdwc_config *cfg;
+	const struct reg_config *rcfg;
 	struct clk *sclk;
 	void __iomem *shdwc_base;
 	void __iomem *mpddrc_base;
@@ -95,6 +99,7 @@ static const unsigned long long sdwc_dbc_period[] = {
 static void __init at91_wakeup_status(struct platform_device *pdev)
 {
 	struct shdwc *shdw = platform_get_drvdata(pdev);
+	const struct reg_config *rcfg = shdw->rcfg;
 	u32 reg;
 	char *reason = "unknown";
 
@@ -106,11 +111,11 @@ static void __init at91_wakeup_status(struct platform_device *pdev)
 	if (!reg)
 		return;
 
-	if (SHDW_WK_PIN(reg, shdw->cfg))
+	if (SHDW_WK_PIN(reg, &rcfg->shdwc))
 		reason = "WKUP pin";
-	else if (SHDW_RTCWK(reg, shdw->cfg))
+	else if (SHDW_RTCWK(reg, &rcfg->shdwc))
 		reason = "RTC";
-	else if (SHDW_RTTWK(reg, shdw->cfg))
+	else if (SHDW_RTTWK(reg, &rcfg->shdwc))
 		reason = "RTT";
 
 	pr_info("AT91: Wake-Up source: %s\n", reason);
@@ -215,6 +220,7 @@ static u32 at91_shdwc_get_wakeup_input(struct platform_device *pdev,
 static void at91_shdwc_dt_configure(struct platform_device *pdev)
 {
 	struct shdwc *shdw = platform_get_drvdata(pdev);
+	const struct reg_config *rcfg = shdw->rcfg;
 	struct device_node *np = pdev->dev.of_node;
 	u32 mode = 0, tmp, input;
 
@@ -227,10 +233,10 @@ static void at91_shdwc_dt_configure(struct platform_device *pdev)
 		mode |= AT91_SHDW_WKUPDBC(at91_shdwc_debouncer_value(pdev, tmp));
 
 	if (of_property_read_bool(np, "atmel,wakeup-rtc-timer"))
-		mode |= SHDW_RTCWKEN(shdw->cfg);
+		mode |= SHDW_RTCWKEN(&rcfg->shdwc);
 
 	if (of_property_read_bool(np, "atmel,wakeup-rtt-timer"))
-		mode |= SHDW_RTTWKEN(shdw->cfg);
+		mode |= SHDW_RTTWKEN(&rcfg->shdwc);
 
 	dev_dbg(&pdev->dev, "%s: mode = %#x\n", __func__, mode);
 	writel(mode, shdw->shdwc_base + AT91_SHDW_MR);
@@ -239,30 +245,34 @@ static void at91_shdwc_dt_configure(struct platform_device *pdev)
 	writel(input, shdw->shdwc_base + AT91_SHDW_WUIR);
 }
 
-static const struct shdwc_config sama5d2_shdwc_config = {
-	.wkup_pin_input = 0,
-	.mr_rtcwk_shift = 17,
-	.mr_rttwk_shift	= SHDW_CFG_NOT_USED,
-	.sr_rtcwk_shift = 5,
-	.sr_rttwk_shift = SHDW_CFG_NOT_USED,
+static const struct reg_config sama5d2_reg_config = {
+	.shdwc = {
+		.wkup_pin_input = 0,
+		.mr_rtcwk_shift = 17,
+		.mr_rttwk_shift	= SHDW_CFG_NOT_USED,
+		.sr_rtcwk_shift = 5,
+		.sr_rttwk_shift = SHDW_CFG_NOT_USED,
+	},
 };
 
-static const struct shdwc_config sam9x60_shdwc_config = {
-	.wkup_pin_input = 0,
-	.mr_rtcwk_shift = 17,
-	.mr_rttwk_shift = 16,
-	.sr_rtcwk_shift = 5,
-	.sr_rttwk_shift = 4,
+static const struct reg_config sam9x60_reg_config = {
+	.shdwc = {
+		.wkup_pin_input = 0,
+		.mr_rtcwk_shift = 17,
+		.mr_rttwk_shift = 16,
+		.sr_rtcwk_shift = 5,
+		.sr_rttwk_shift = 4,
+	},
 };
 
 static const struct of_device_id at91_shdwc_of_match[] = {
 	{
 		.compatible = "atmel,sama5d2-shdwc",
-		.data = &sama5d2_shdwc_config,
+		.data = &sama5d2_reg_config,
 	},
 	{
 		.compatible = "microchip,sam9x60-shdwc",
-		.data = &sam9x60_shdwc_config,
+		.data = &sam9x60_reg_config,
 	}, {
 		/*sentinel*/
 	}
@@ -297,7 +307,7 @@ static int __init at91_shdwc_probe(struct platform_device *pdev)
 	}
 
 	match = of_match_node(at91_shdwc_of_match, pdev->dev.of_node);
-	at91_shdwc->cfg = match->data;
+	at91_shdwc->rcfg = match->data;
 
 	at91_shdwc->sclk = devm_clk_get(&pdev->dev, NULL);
 	if (IS_ERR(at91_shdwc->sclk))
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
