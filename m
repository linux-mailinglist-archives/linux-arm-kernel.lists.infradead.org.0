Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1E9BEF8C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 12:26:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YfBiEadDN4xXpC7yBdn3vTRtTx+3UegAVF8qprIEwH0=; b=fYLMJJTNxoXxhl
	8nq9+i4aPZkAtFomXGmEDrWtTNpSvfIuPSLoyGxWE3Byxil1a7ENfpH6XiPYoVkaAoIO9HIJakuZ2
	xk2XCWUn21qahv8n4zAl9tQTFNZ4J1DVgkoeqmK7tPXA80ZboURAYmVat5IJjkPpSfvaUrUZtVRv+
	XU9jq8DrCNVvhSKCdEnpiBt41eriYZ8cFSHkJ9AGqlansnUJJFJveIDHMSbdHEh/eZ+L0hUUDK/oI
	J88jyIP/Am5h0n/jIaetKSTzqXXl3Rr+da4VskABoTMvfvs3J9+qFezJIdUqyOf/MT5f79GXLy22X
	Yt1Qyrq6YkLwb/T/6+4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDQyG-0005Xq-9f; Thu, 26 Sep 2019 10:26:00 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDQy2-0005Wy-Fy
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 10:25:50 +0000
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
IronPort-SDR: kuTEBVO5mat0bWcf8a4WUFA2aMY97JikdthveT3f7hfCRrFI6dxZimH9+Ggbq37CCurs4kZuq1
 n20IDb0F/EZESYspkqd53q3qEvfnA2iDUKzmBESHmKbTyy369vzKNx43tB6q/KPjFVPmj+JGlJ
 spItzd1r66BppXGV6cAqYN5fbt6aSuRfSn5zW6IfFEY5gyDjtIfCn+VHiyOR9jawoSZAanr7iv
 TWn6rTz7xRoFsJPu4Zpn1Gw0qhu8hN1F6JKJd3OZTfpuldGHw00QvvQkXHG7xxcdxuLLNpu4eu
 lWQ=
X-IronPort-AV: E=Sophos;i="5.64,551,1559545200"; d="scan'208";a="50409875"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 26 Sep 2019 03:25:43 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 26 Sep 2019 03:25:43 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Thu, 26 Sep 2019 03:25:41 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <nicolas.ferre@microchip.com>, <sre@kernel.org>,
 <alexandre.belloni@bootlin.com>, <ludovic.desroches@microchip.com>
Subject: [PATCH] power: reset: at91-poweroff: lookup for proper PMC DT node
Date: Thu, 26 Sep 2019 13:25:37 +0300
Message-ID: <1569493537-7612-1-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_032546_567916_D7024199 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
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
Cc: Claudiu Beznea <claudiu.beznea@microchip.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Driver has been enabled also for SAM9X60. At the moment the patch which did
this has been sent to mainline the PMC for SAM9X60 wasn't integrated.
SAM9X60 has a new PMC compatible (see commit 01e2113de9a5
("clk: at91: add sam9x60 pmc driver")). Do to this we have to
look for proper PMC compatible here, in SHDWC driver.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 drivers/power/reset/at91-sama5d2_shdwc.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/power/reset/at91-sama5d2_shdwc.c b/drivers/power/reset/at91-sama5d2_shdwc.c
index e341cc5c0ea6..1c18f465a245 100644
--- a/drivers/power/reset/at91-sama5d2_shdwc.c
+++ b/drivers/power/reset/at91-sama5d2_shdwc.c
@@ -269,6 +269,12 @@ static const struct of_device_id at91_shdwc_of_match[] = {
 };
 MODULE_DEVICE_TABLE(of, at91_shdwc_of_match);
 
+static const struct of_device_id at91_pmc_ids[] = {
+	{ .compatible = "atmel,sama5d2-pmc" },
+	{ .compatible = "microchip,sam9x60-pmc" },
+	{ /* Sentinel. */ }
+};
+
 static int __init at91_shdwc_probe(struct platform_device *pdev)
 {
 	struct resource *res;
@@ -313,7 +319,7 @@ static int __init at91_shdwc_probe(struct platform_device *pdev)
 
 	at91_shdwc_dt_configure(pdev);
 
-	np = of_find_compatible_node(NULL, NULL, "atmel,sama5d2-pmc");
+	np = of_find_matching_node(NULL, at91_pmc_ids);
 	if (!np) {
 		ret = -ENODEV;
 		goto clk_disable;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
