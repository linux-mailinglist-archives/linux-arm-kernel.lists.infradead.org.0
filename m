Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD28E394B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 19:05:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1+VmqBzMCR/y2OJnEANQz+Eg2t81DnGgKiGXkaQIyVs=; b=IdflgiDcVsO/ck
	dudZqpL+8Wc7LciX5gfIBiQ3oPWZoSxAjNRYQBbArLtDBlKDmJ6lkedWrFn88oYdi6HjFZPAO+F8t
	c9aNnGpoNC7OnVtNqw2vBYfwQ8NDzBn/pq2L8/w5QbuSWDK6gYFMIJbNldzozcIqekZvs2uqQSWnb
	YMRqHfXLQgYfdTuRThgMF8HGyjmUiAaZAE/hhREHmL8CPwexfW15Gipcf7DVrYNis0LcqhLX7iMYB
	yfpj5v6hVSNXbUV7pox5HeO0Aff2nareMlK0mLD86U02Y9CXhfX3qRstc3xmQap3K91ep8jeV9hCN
	jxOK6ZO35BoZ5lYWg+yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNgYc-00056T-Ez; Thu, 24 Oct 2019 17:05:54 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNgYB-0004sH-0c
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 17:05:28 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Codrin.Ciubotariu@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="Codrin.Ciubotariu@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Codrin.Ciubotariu@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: dTzbzup2PDTL1ft7e2VxNAcemzw2cAxVjj32wRrm9+7FzrcmgC6IggiOGjXpht6kLf8o8r+uBh
 wb2H0ecdo1UisR+/q2pMKgKS86ZbuMT1zvNtej1xLG5f0Vp43hnrIZjtoescD/bIqhlI+wcCWv
 YCNejmVQr6JaeO9DNCoqFWnV9AippM1dkIk0QbXIoG6aNkH1tqaxUXgo+3/UZcoQsmjT25bk2J
 2tC13Gc6O8etHnASx70oUdhx2Qoyo95kKvK6537HVy1GSHHvkQ/p1JYckbR5a3fTvmuIDJah6s
 T3M=
X-IronPort-AV: E=Sophos;i="5.68,225,1569308400"; d="scan'208";a="52806866"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 24 Oct 2019 10:05:24 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 24 Oct 2019 10:05:23 -0700
Received: from rob-ult-m19940.microchip.com (10.10.85.251) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Thu, 24 Oct 2019 10:05:20 -0700
From: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
To: <linux-crypto@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 2/2] hwrng: atmel: add new platform support for sam9x60
Date: Thu, 24 Oct 2019 20:04:52 +0300
Message-ID: <20191024170452.2145-2-codrin.ciubotariu@microchip.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191024170452.2145-1-codrin.ciubotariu@microchip.com>
References: <20191024170452.2145-1-codrin.ciubotariu@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_100527_071663_A7ECAAFF 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
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
 Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
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
 drivers/char/hw_random/atmel-rng.c | 39 ++++++++++++++++++++++++++++--
 1 file changed, 37 insertions(+), 2 deletions(-)

diff --git a/drivers/char/hw_random/atmel-rng.c b/drivers/char/hw_random/atmel-rng.c
index e55705745d5e..0aa9425e6c3e 100644
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
+struct atmel_trng_pdata {
+	bool has_half_rate;
+};
+
 struct atmel_trng {
 	struct clk *clk;
 	void __iomem *base;
@@ -63,6 +71,7 @@ static int atmel_trng_probe(struct platform_device *pdev)
 {
 	struct atmel_trng *trng;
 	struct resource *res;
+	const struct atmel_trng_pdata *pdata;
 	int ret;
 
 	trng = devm_kzalloc(&pdev->dev, sizeof(*trng), GFP_KERNEL);
@@ -77,6 +86,17 @@ static int atmel_trng_probe(struct platform_device *pdev)
 	trng->clk = devm_clk_get(&pdev->dev, NULL);
 	if (IS_ERR(trng->clk))
 		return PTR_ERR(trng->clk);
+	pdata = of_device_get_match_data(&pdev->dev);
+	if (!pdata)
+		return -ENODEV;
+
+	if (pdata->has_half_rate) {
+		unsigned long rate = clk_get_rate(trng->clk);
+
+		/* if peripheral clk is above 100MHz, set HALFR */
+		if (rate > 100000000)
+			writel(TRNG_HALFR, trng->base + TRNG_MR);
+	}
 
 	ret = clk_prepare_enable(trng->clk);
 	if (ret)
@@ -141,9 +161,24 @@ static const struct dev_pm_ops atmel_trng_pm_ops = {
 };
 #endif /* CONFIG_PM */
 
+static struct atmel_trng_pdata at91sam9g45_config = {
+	.has_half_rate = false,
+};
+
+static struct atmel_trng_pdata sam9x60_config = {
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
