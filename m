Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB66BC25C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 09:11:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=slEWaz6Lkd3llaDB6kwwwxZRslxlIK81t3IHVfTFd2Q=; b=Txv/bil4FJcg7vNjrXiJic6Se9
	d01fSr0axbB764NiLRX5+VtlUW7r5zuXRyEfwFTyAVRdhKQu0uCyhOC9w/J9jRFbP4Y9ZVgQOxnMy
	v081P+FuBgVz/9ga/eQfbo/wHaWYiKpwiw2jBH5kKZ3Cj+z8nzhKbD7bv7udLXonxEbV5ebWLpKaB
	e0z2wGMk+csABCirB8P/LOn1plaLO6ffPR3oR4VSCnhL8JlIjCXwriihuO5xH//AI0K0lb78QlmvS
	TMO8H+OrdAYVxPTwR2YxAcPAeK+qn/R+s4vf/OQHM5MVa59Iv9tdeNAtmXQuKOmAVigVrCw0S77gQ
	JPZygUlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCezC-0005UL-07; Tue, 24 Sep 2019 07:11:46 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCewN-0003kr-8d
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 07:08:54 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 9E5312003B4;
 Tue, 24 Sep 2019 09:08:47 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 0B45E2001AD;
 Tue, 24 Sep 2019 09:08:43 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 238E54029F;
 Tue, 24 Sep 2019 15:08:37 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: wim@linux-watchdog.org, linux@roeck-us.net, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-watchdog@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] watchdog: imx2_wdt: Use 'dev' instead of dereferencing it
 repeatedly
Date: Tue, 24 Sep 2019 15:07:08 +0800
Message-Id: <1569308828-8320-3-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569308828-8320-1-git-send-email-Anson.Huang@nxp.com>
References: <1569308828-8320-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_000852_430048_F676509B 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add helper variable dev = &pdev->dev to simply the code.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/watchdog/imx2_wdt.c | 23 ++++++++++++-----------
 1 file changed, 12 insertions(+), 11 deletions(-)

diff --git a/drivers/watchdog/imx2_wdt.c b/drivers/watchdog/imx2_wdt.c
index 034f32c..f8d58bf 100644
--- a/drivers/watchdog/imx2_wdt.c
+++ b/drivers/watchdog/imx2_wdt.c
@@ -246,13 +246,14 @@ static const struct regmap_config imx2_wdt_regmap_config = {
 
 static int __init imx2_wdt_probe(struct platform_device *pdev)
 {
+	struct device *dev = &pdev->dev;
 	struct imx2_wdt_device *wdev;
 	struct watchdog_device *wdog;
 	void __iomem *base;
 	int ret;
 	u32 val;
 
-	wdev = devm_kzalloc(&pdev->dev, sizeof(*wdev), GFP_KERNEL);
+	wdev = devm_kzalloc(dev, sizeof(*wdev), GFP_KERNEL);
 	if (!wdev)
 		return -ENOMEM;
 
@@ -260,16 +261,16 @@ static int __init imx2_wdt_probe(struct platform_device *pdev)
 	if (IS_ERR(base))
 		return PTR_ERR(base);
 
-	wdev->regmap = devm_regmap_init_mmio_clk(&pdev->dev, NULL, base,
+	wdev->regmap = devm_regmap_init_mmio_clk(dev, NULL, base,
 						 &imx2_wdt_regmap_config);
 	if (IS_ERR(wdev->regmap)) {
-		dev_err(&pdev->dev, "regmap init failed\n");
+		dev_err(dev, "regmap init failed\n");
 		return PTR_ERR(wdev->regmap);
 	}
 
-	wdev->clk = devm_clk_get(&pdev->dev, NULL);
+	wdev->clk = devm_clk_get(dev, NULL);
 	if (IS_ERR(wdev->clk)) {
-		dev_err(&pdev->dev, "can't get Watchdog clock\n");
+		dev_err(dev, "can't get Watchdog clock\n");
 		return PTR_ERR(wdev->clk);
 	}
 
@@ -279,12 +280,12 @@ static int __init imx2_wdt_probe(struct platform_device *pdev)
 	wdog->min_timeout	= 1;
 	wdog->timeout		= IMX2_WDT_DEFAULT_TIME;
 	wdog->max_hw_heartbeat_ms = IMX2_WDT_MAX_TIME * 1000;
-	wdog->parent		= &pdev->dev;
+	wdog->parent		= dev;
 
 	ret = platform_get_irq(pdev, 0);
 	if (ret > 0)
-		if (!devm_request_irq(&pdev->dev, ret, imx2_wdt_isr, 0,
-				      dev_name(&pdev->dev), wdog))
+		if (!devm_request_irq(dev, ret, imx2_wdt_isr, 0,
+				      dev_name(dev), wdog))
 			wdog->info = &imx2_wdt_pretimeout_info;
 
 	ret = clk_prepare_enable(wdev->clk);
@@ -294,13 +295,13 @@ static int __init imx2_wdt_probe(struct platform_device *pdev)
 	regmap_read(wdev->regmap, IMX2_WDT_WRSR, &val);
 	wdog->bootstatus = val & IMX2_WDT_WRSR_TOUT ? WDIOF_CARDRESET : 0;
 
-	wdev->ext_reset = of_property_read_bool(pdev->dev.of_node,
+	wdev->ext_reset = of_property_read_bool(dev->of_node,
 						"fsl,ext-reset-output");
 	platform_set_drvdata(pdev, wdog);
 	watchdog_set_drvdata(wdog, wdev);
 	watchdog_set_nowayout(wdog, nowayout);
 	watchdog_set_restart_priority(wdog, 128);
-	watchdog_init_timeout(wdog, timeout, &pdev->dev);
+	watchdog_init_timeout(wdog, timeout, dev);
 
 	if (imx2_wdt_is_running(wdev)) {
 		imx2_wdt_set_timeout(wdog, wdog->timeout);
@@ -318,7 +319,7 @@ static int __init imx2_wdt_probe(struct platform_device *pdev)
 	if (ret)
 		goto disable_clk;
 
-	dev_info(&pdev->dev, "timeout %d sec (nowayout=%d)\n",
+	dev_info(dev, "timeout %d sec (nowayout=%d)\n",
 		 wdog->timeout, nowayout);
 
 	return 0;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
