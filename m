Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2946C16AA6B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 16:46:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FjYEow4+aexJJioViTLtwgrY8PulYqwjaLJKJLDeX0o=; b=FCDsyxrrTn0iV+
	OZA73AzWAOR/vx0/0rP9U0UNVmceCzI4geXx6PmO45+B/y6GQs9wKiFTsFclsGb1Nz3PoEVM7HO0g
	AiGdLA70mxOTovHl6Z/72CBL9MfHf/NEhjGGIRo+GVX9psOSZYMrbZ9vF48REvDa83EZYf+oVodG0
	JzhsbuSnnvgqOq6PLf3bifoAObdaCyezU/qpeJuoiIO/ElpBeF/lGFldEOO+DSQIRUUU9C2TS/ZvN
	btENg5XStBDb96zcak8wGQ/smVYr0Xn8cyxnEUlox0PDBh+FUbU0yqsUu/PZZm0V5XaiTpSbe3af0
	V3HgL0h0qTjwMzPJfffg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Fw9-000896-S8; Mon, 24 Feb 2020 15:46:25 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Fvo-0007h7-Is
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 15:46:05 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Feb 2020 07:46:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,480,1574150400"; d="scan'208";a="409911176"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga005.jf.intel.com with ESMTP; 24 Feb 2020 07:45:57 -0800
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 156EEFE; Mon, 24 Feb 2020 17:45:56 +0200 (EET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 linux-arm-kernel@lists.infradead.org, Mark Brown <broonie@kernel.org>,
 linux-spi@vger.kernel.org
Subject: [PATCH v1 1/2] spi: pxa2xx: Return error codes from
 pxa2xx_spi_init_pdata()
Date: Mon, 24 Feb 2020 17:45:55 +0200
Message-Id: <20200224154556.11627-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_074604_633170_ACAF100C 
X-CRM114-Status: GOOD (  13.33  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For better understanding what's going on on error path,
return distinguished error codes instead of NULL pointer.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/spi/spi-pxa2xx.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/spi/spi-pxa2xx.c b/drivers/spi/spi-pxa2xx.c
index b0d36dd583f5..e33ef1169491 100644
--- a/drivers/spi/spi-pxa2xx.c
+++ b/drivers/spi/spi-pxa2xx.c
@@ -1553,18 +1553,18 @@ pxa2xx_spi_init_pdata(struct platform_device *pdev)
 	else if (pcidev_id)
 		type = (enum pxa_ssp_type)pcidev_id->driver_data;
 	else
-		return NULL;
+		return ERR_PTR(-EINVAL);
 
 	pdata = devm_kzalloc(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
 	if (!pdata)
-		return NULL;
+		return ERR_PTR(-ENOMEM);
 
 	ssp = &pdata->ssp;
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	ssp->mmio_base = devm_ioremap_resource(&pdev->dev, res);
 	if (IS_ERR(ssp->mmio_base))
-		return NULL;
+		return ERR_CAST(ssp->mmio_base);
 
 	ssp->phys_base = res->start;
 
@@ -1578,11 +1578,11 @@ pxa2xx_spi_init_pdata(struct platform_device *pdev)
 
 	ssp->clk = devm_clk_get(&pdev->dev, NULL);
 	if (IS_ERR(ssp->clk))
-		return NULL;
+		return ERR_CAST(ssp->clk);
 
 	ssp->irq = platform_get_irq(pdev, 0);
 	if (ssp->irq < 0)
-		return NULL;
+		return ERR_PTR(ssp->irq);
 
 	ssp->type = type;
 	ssp->dev = &pdev->dev;
@@ -1639,9 +1639,9 @@ static int pxa2xx_spi_probe(struct platform_device *pdev)
 	platform_info = dev_get_platdata(dev);
 	if (!platform_info) {
 		platform_info = pxa2xx_spi_init_pdata(pdev);
-		if (!platform_info) {
+		if (IS_ERR(platform_info)) {
 			dev_err(&pdev->dev, "missing platform data\n");
-			return -ENODEV;
+			return PTR_ERR(platform_info);
 		}
 	}
 
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
