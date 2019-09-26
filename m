Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB4EBF2B8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 14:15:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LV7QwfopDIu7/IB/+dCVYHFcamWs5CtSUOcc/qOwzmA=; b=Qcoe6PdfH6S1ly
	j6PPxRUn7vACWseKT3VSqaAKku6+DmUREF+9f2uNFHFogDFH34rod8uoZkYpLPThQ69pGI3cnBKp5
	1EqtdbjtxigJAr/Nj6T1WdOpWOq0e/B1/V2hBr2PzIrJFSvq0PREVMOJxxThpJRY+wstW+9Dr1TMi
	JvajawF4ULLLx4Yt0GUYXu+no6wsGqwXeTlqMv0e7eTpuD/HIieKGoL9QMQe6XT3GBGOfMCxRE8Wl
	uDQy1HQIAFmtc3200rCSLxr4s8N2GT3uFthvbOhKxnLn93/xtXmvDGUU0p6UOatwk8XOzGFBRtsAn
	bjee76TYfhVBDM9t8v+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDSgX-0003Gm-5H; Thu, 26 Sep 2019 12:15:49 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDSgN-0003Fu-VQ
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 12:15:43 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
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
IronPort-SDR: 0TiS9fIcdcyV9inCyL6awYTBqCeAB47Y4vUBe6VSskTJHwuRiBvGgrPOuq17nKJvQ3vV9G5tpm
 eG7TTnxDdGBrMkjbXYsYishcE8/yKsvGEN9t3SfBQ+bQ83i/24RlIAIzWvjSjjBgUA/U7INWtY
 2Gv4gI/KUxz82u4HzHk9w3shhs4XnkllpU3lA0s6MwhDxgHrxfdblzPZaZqu9DZlg9tshkX3WJ
 JpWkpEYn+BqjExgzHmh28uVSMIKtHEHIg3IS+zfjfhaY2BIKZDhqPsw7Xkk0PY82uh0ztlXXpO
 2Uk=
X-IronPort-AV: E=Sophos;i="5.64,551,1559545200"; d="scan'208";a="50424041"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 26 Sep 2019 05:15:37 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 26 Sep 2019 05:15:36 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Thu, 26 Sep 2019 05:15:34 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <a.zummo@towertech.it>, <alexandre.belloni@bootlin.com>,
 <nicolas.ferre@microchip.com>, <ludovic.desroches@microchip.com>
Subject: [PATCH] rtc: at91rm9200: use of_device_get_match_data()
Date: Thu, 26 Sep 2019 15:15:32 +0300
Message-ID: <1569500132-21164-1-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_051540_041003_1FCD9DA7 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rtc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Claudiu Beznea <claudiu.beznea@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use of_device_get_match_data() since all platforms should now use DT
bindings. AVR32 architecture has been removed in
commit 26202873bb51 ("avr32: remove support for AVR32 architecture").

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 drivers/rtc/Kconfig          |  1 +
 drivers/rtc/rtc-at91rm9200.c | 19 +------------------
 2 files changed, 2 insertions(+), 18 deletions(-)

diff --git a/drivers/rtc/Kconfig b/drivers/rtc/Kconfig
index e72f65b61176..d0b08b1ebcdf 100644
--- a/drivers/rtc/Kconfig
+++ b/drivers/rtc/Kconfig
@@ -1433,6 +1433,7 @@ config RTC_DRV_PL031
 config RTC_DRV_AT91RM9200
 	tristate "AT91RM9200 or some AT91SAM9 RTC"
 	depends on ARCH_AT91 || COMPILE_TEST
+	depends on OF
 	help
 	  Driver for the internal RTC (Realtime Clock) module found on
 	  Atmel AT91RM9200's and some  AT91SAM9 chips. On AT91SAM9 chips
diff --git a/drivers/rtc/rtc-at91rm9200.c b/drivers/rtc/rtc-at91rm9200.c
index 82a54e93ff04..4dc413d07138 100644
--- a/drivers/rtc/rtc-at91rm9200.c
+++ b/drivers/rtc/rtc-at91rm9200.c
@@ -319,7 +319,6 @@ static const struct at91_rtc_config at91sam9x5_config = {
 	.use_shadow_imr	= true,
 };
 
-#ifdef CONFIG_OF
 static const struct of_device_id at91_rtc_dt_ids[] = {
 	{
 		.compatible = "atmel,at91rm9200-rtc",
@@ -332,22 +331,6 @@ static const struct of_device_id at91_rtc_dt_ids[] = {
 	}
 };
 MODULE_DEVICE_TABLE(of, at91_rtc_dt_ids);
-#endif
-
-static const struct at91_rtc_config *
-at91_rtc_get_config(struct platform_device *pdev)
-{
-	const struct of_device_id *match;
-
-	if (pdev->dev.of_node) {
-		match = of_match_node(at91_rtc_dt_ids, pdev->dev.of_node);
-		if (!match)
-			return NULL;
-		return (const struct at91_rtc_config *)match->data;
-	}
-
-	return &at91rm9200_config;
-}
 
 static const struct rtc_class_ops at91_rtc_ops = {
 	.read_time	= at91_rtc_readtime,
@@ -367,7 +350,7 @@ static int __init at91_rtc_probe(struct platform_device *pdev)
 	struct resource *regs;
 	int ret = 0;
 
-	at91_rtc_config = at91_rtc_get_config(pdev);
+	at91_rtc_config = of_device_get_match_data(&pdev->dev);
 	if (!at91_rtc_config)
 		return -ENODEV;
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
