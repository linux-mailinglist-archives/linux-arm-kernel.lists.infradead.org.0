Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97FE1169C77
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 03:57:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xXgBys8ykdnudjRuRC59cWxeNniHJXzg06/MoPCqH7c=; b=ucN
	n21tcPfADY6F6Sr0+Z0yhHgkqc7if/wpiqHDdRJxBEYQ48H7tEfsVEPe1CMyLHo0jt61ooRxJNXsu
	VaQ5Iwl9DTsJ1EnYi9rMNHzCgD4etdDl9hkzEewB14SpqjfvwCiCDO2FkA1NatE8kaZqgIvd8LOt1
	ZXbtkjQTZfoUkh2xMNp4o8B1ykSNKz1sxdxRERq56EErtxqMQ2AXodzzD8gggbk7Z7d4ZpsvBjcXF
	jhqRLVax0synga0kcT5cqoulsC++3V5Q1CG4zT7fJgevV7NfJglx8wl3weRpQ3hmZ901m0A3RjQLi
	Y1RJB3gOvlcROOEYge+e4Cyqaa7pWZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j63wF-0004T2-R1; Mon, 24 Feb 2020 02:57:43 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j63w6-0004SW-Q4
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 02:57:36 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 7EDB020CD73;
 Mon, 24 Feb 2020 03:57:32 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 36B8C204377;
 Mon, 24 Feb 2020 03:57:27 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 8E19E402B3;
 Mon, 24 Feb 2020 10:57:20 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: wim@linux-watchdog.org, linux@roeck-us.net, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-watchdog@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] watchdog: imx2_wdt: Drop .remove callback
Date: Mon, 24 Feb 2020 10:51:27 +0800
Message-Id: <1582512687-13312-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_185734_985527_D376ABE7 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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

.remove callback implementation doesn' call clk_disable_unprepare() which
is buggy, actually, we can just use devm_watchdog_register_device() and
devm_add_action_or_reset() to handle all necessary operations for remove
action, then .remove callback can be dropped.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/watchdog/imx2_wdt.c | 37 ++++++++++---------------------------
 1 file changed, 10 insertions(+), 27 deletions(-)

diff --git a/drivers/watchdog/imx2_wdt.c b/drivers/watchdog/imx2_wdt.c
index f8d58bf..1fe472f 100644
--- a/drivers/watchdog/imx2_wdt.c
+++ b/drivers/watchdog/imx2_wdt.c
@@ -244,6 +244,11 @@ static const struct regmap_config imx2_wdt_regmap_config = {
 	.max_register = 0x8,
 };
 
+static void imx2_wdt_action(void *data)
+{
+	clk_disable_unprepare(data);
+}
+
 static int __init imx2_wdt_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -292,6 +297,10 @@ static int __init imx2_wdt_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
+	ret = devm_add_action_or_reset(dev, imx2_wdt_action, wdev->clk);
+	if (ret)
+		return ret;
+
 	regmap_read(wdev->regmap, IMX2_WDT_WRSR, &val);
 	wdog->bootstatus = val & IMX2_WDT_WRSR_TOUT ? WDIOF_CARDRESET : 0;
 
@@ -315,32 +324,7 @@ static int __init imx2_wdt_probe(struct platform_device *pdev)
 	 */
 	regmap_write(wdev->regmap, IMX2_WDT_WMCR, 0);
 
-	ret = watchdog_register_device(wdog);
-	if (ret)
-		goto disable_clk;
-
-	dev_info(dev, "timeout %d sec (nowayout=%d)\n",
-		 wdog->timeout, nowayout);
-
-	return 0;
-
-disable_clk:
-	clk_disable_unprepare(wdev->clk);
-	return ret;
-}
-
-static int __exit imx2_wdt_remove(struct platform_device *pdev)
-{
-	struct watchdog_device *wdog = platform_get_drvdata(pdev);
-	struct imx2_wdt_device *wdev = watchdog_get_drvdata(wdog);
-
-	watchdog_unregister_device(wdog);
-
-	if (imx2_wdt_is_running(wdev)) {
-		imx2_wdt_ping(wdog);
-		dev_crit(&pdev->dev, "Device removed: Expect reboot!\n");
-	}
-	return 0;
+	return devm_watchdog_register_device(dev, wdog);
 }
 
 static void imx2_wdt_shutdown(struct platform_device *pdev)
@@ -417,7 +401,6 @@ static const struct of_device_id imx2_wdt_dt_ids[] = {
 MODULE_DEVICE_TABLE(of, imx2_wdt_dt_ids);
 
 static struct platform_driver imx2_wdt_driver = {
-	.remove		= __exit_p(imx2_wdt_remove),
 	.shutdown	= imx2_wdt_shutdown,
 	.driver		= {
 		.name	= DRIVER_NAME,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
