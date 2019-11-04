Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DF7CEE084
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 13:57:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pHtlS95Rfoh0JHw+pLM+lfGZ7yuliF9S3yFhk392Wus=; b=XIUdArk8Q8GnH4
	gdU/zBN0j4Yh+KdGEc/BOxDBLJJhWWKO9u1O4BEvQ6Go29jQIU6LQISRNoC2cKBWcPN24xBi6L1ZH
	lhs2kCfa2KUHx9ANqyUH07WfWE4XsyeicUoaZ+4f9/AoiaflcA5C1jb2UadXAjAQhATmA+LcUuE1D
	ehQashHrzqVgRP3KQW/j+dR82nMqNMJ9FqDZMJqFb+Oq7YIl65hIBcRuiCqa2nvXjimQ0C7HUdnmR
	bEEMn7bnmFRyfEXG7vmvb2BlV2ZRuWA7EOKthq279v0JJPG9TRKJFO+Hu5ZDdW6PQzQDZFusPQTKT
	DEuTjHxCxMiHAbA96Mzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRbuw-0006Ke-Da; Mon, 04 Nov 2019 12:57:10 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRbuZ-00069r-8L
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 12:56:48 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Codrin.Ciubotariu@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="Codrin.Ciubotariu@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Codrin.Ciubotariu@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: dbAug5vvENl8xXGmZB86dPAacdvNNvFH0BLXftjyU665RcYwrlBP5bco/BWV10dqj6MYt4LtaL
 vm53q9uncluOmePQbeXp32euhwjyMxFCy3JwyrcnqFQGMqhPNlt1waOn4/FfZt2v3UQxRqKHx2
 hBm6hX+0nKmTrnrNnyqfj9Vr5eoOGztCUn7HmgYZJBhrf23DQf3PDCFiAQbLRK7N16qDE3NyZe
 Y7yHTDNgiaqkhImm8tsRifaEeFQr5N1LWT9B51poDy8Dr528t9cxd6ydFy6lgEddLyfC3KOK6q
 jqA=
X-IronPort-AV: E=Sophos;i="5.68,267,1569308400"; d="scan'208";a="54041455"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 04 Nov 2019 05:56:45 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 4 Nov 2019 05:56:24 -0700
Received: from rob-ult-m19940.corp.atmel.com (10.10.85.251) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Mon, 4 Nov 2019 05:56:21 -0700
From: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
To: <linux-crypto@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 2/2] hwrng: atmel: add new platform support for sam9x60
Date: Mon, 4 Nov 2019 13:54:57 +0200
Message-ID: <20191104115457.2681-2-codrin.ciubotariu@microchip.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191104115457.2681-1-codrin.ciubotariu@microchip.com>
References: <20191104115457.2681-1-codrin.ciubotariu@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_045647_336909_351FF009 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, alexandre.belloni@bootlin.com,
 herbert@gondor.apana.org.au, arnd@arndb.de, Tudor.Ambarus@microchip.com,
 ludovic.desroches@microchip.com, robh+dt@kernel.org, mpm@selenic.com,
 Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
 Claudiu.Beznea@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add platform support for the new IP found on sam9x60 SoC. For this
version, if the peripheral clk is above 100MHz, the HALFR bit must be
set. This bit is available only if the IP can generate a random number
every 168 cycles (instead of 84).

Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
---

Changes in v2:
 - replaced '*pdata' with '*data';
 - added 'const' to trng_data configs;

 drivers/char/hw_random/atmel-rng.c | 39 ++++++++++++++++++++++++++++--
 1 file changed, 37 insertions(+), 2 deletions(-)

diff --git a/drivers/char/hw_random/atmel-rng.c b/drivers/char/hw_random/atmel-rng.c
index b3138ec26f85..ecb71c4317a5 100644
--- a/drivers/char/hw_random/atmel-rng.c
+++ b/drivers/char/hw_random/atmel-rng.c
@@ -14,14 +14,22 @@
 #include <linux/clk.h>
 #include <linux/io.h>
 #include <linux/hw_random.h>
+#include <linux/of_device.h>
 #include <linux/platform_device.h>
 
 #define TRNG_CR		0x00
+#define TRNG_MR		0x04
 #define TRNG_ISR	0x1c
 #define TRNG_ODATA	0x50
 
 #define TRNG_KEY	0x524e4700 /* RNG */
 
+#define TRNG_HALFR	BIT(0) /* generate RN every 168 cycles */
+
+struct atmel_trng_data {
+	bool has_half_rate;
+};
+
 struct atmel_trng {
 	struct clk *clk;
 	void __iomem *base;
@@ -62,6 +70,7 @@ static void atmel_trng_disable(struct atmel_trng *trng)
 static int atmel_trng_probe(struct platform_device *pdev)
 {
 	struct atmel_trng *trng;
+	const struct atmel_trng_data *data;
 	int ret;
 
 	trng = devm_kzalloc(&pdev->dev, sizeof(*trng), GFP_KERNEL);
@@ -75,6 +84,17 @@ static int atmel_trng_probe(struct platform_device *pdev)
 	trng->clk = devm_clk_get(&pdev->dev, NULL);
 	if (IS_ERR(trng->clk))
 		return PTR_ERR(trng->clk);
+	data = of_device_get_match_data(&pdev->dev);
+	if (!data)
+		return -ENODEV;
+
+	if (data->has_half_rate) {
+		unsigned long rate = clk_get_rate(trng->clk);
+
+		/* if peripheral clk is above 100MHz, set HALFR */
+		if (rate > 100000000)
+			writel(TRNG_HALFR, trng->base + TRNG_MR);
+	}
 
 	ret = clk_prepare_enable(trng->clk);
 	if (ret)
@@ -139,9 +159,24 @@ static const struct dev_pm_ops atmel_trng_pm_ops = {
 };
 #endif /* CONFIG_PM */
 
+static const struct atmel_trng_data at91sam9g45_config = {
+	.has_half_rate = false,
+};
+
+static const struct atmel_trng_data sam9x60_config = {
+	.has_half_rate = true,
+};
+
 static const struct of_device_id atmel_trng_dt_ids[] = {
-	{ .compatible = "atmel,at91sam9g45-trng" },
-	{ /* sentinel */ }
+	{
+		.compatible = "atmel,at91sam9g45-trng",
+		.data = &at91sam9g45_config,
+	}, {
+		.compatible = "microchip,sam9x60-trng",
+		.data = &sam9x60_config,
+	}, {
+		/* sentinel */
+	}
 };
 MODULE_DEVICE_TABLE(of, atmel_trng_dt_ids);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
