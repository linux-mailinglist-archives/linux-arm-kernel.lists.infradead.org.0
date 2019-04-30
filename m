Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08CEAF2E2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 11:29:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cFyRnghoiTukRLv1kYtigyvw0JndlMPIjckVLo0fHhI=; b=sYg6EnCHFsZ9r6
	J+sry9w1fC2nUO+a1aJGl3KGSlruk5Lbz7kUDIi50dblbbAEjCwSq5FbOAnZucmhUV+y9+tDTfkVs
	kdRneTJZyNB8jXV86kW+hvNbI4n8C1/+HoQCM8Sydp1/O2oXnIOdY3mJeTsmiEy4F1AWqPmI/BdlE
	z8hj6QLIo4I7f1sGUk4rZCzTOYz98FK13gjzi4xP/LJgaIHsXKk2+WblK7KGQ9JNayEbIuDJZT7Id
	wN5piyGXq15S5q11YGOOzH1Uevqp5LDF1NywfQqkhYYXH6Xr9grAnPujcr1PmE0Tdg/bwOUH7BG8/
	RyOIHauMp0Qvlp3KypAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLP4w-0007eA-CO; Tue, 30 Apr 2019 09:29:34 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLP40-0006X6-0c
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 09:28:38 +0000
Received: from localhost (alyon-652-1-31-175.w109-213.abo.wanadoo.fr
 [109.213.14.175])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id B0AE710001C;
 Tue, 30 Apr 2019 09:28:29 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: linux-rtc@vger.kernel.org
Subject: [PATCH v2 5/7] rtc: jz4740: use dev_pm_set_wake_irq() to simplify code
Date: Tue, 30 Apr 2019 11:28:19 +0200
Message-Id: <20190430092821.27963-5-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190430092821.27963-1-alexandre.belloni@bootlin.com>
References: <20190430092821.27963-1-alexandre.belloni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_022836_203379_7021E927 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Paul Cercueil <paul@crapouillou.net>, Mathieu Malaterre <malat@debian.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use dev_pm_set_wake_irq() to set the RTC as a wakeup source for suspend.
This allows to remove the whole dev_pm_ops structure.

Tested-by: Mathieu Malaterre <malat@debian.org>
Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 drivers/rtc/rtc-jz4740.c | 37 +++++++------------------------------
 1 file changed, 7 insertions(+), 30 deletions(-)

diff --git a/drivers/rtc/rtc-jz4740.c b/drivers/rtc/rtc-jz4740.c
index 077670ffde01..32e6b6270efd 100644
--- a/drivers/rtc/rtc-jz4740.c
+++ b/drivers/rtc/rtc-jz4740.c
@@ -20,6 +20,7 @@
 #include <linux/module.h>
 #include <linux/of_device.h>
 #include <linux/platform_device.h>
+#include <linux/pm_wakeirq.h>
 #include <linux/reboot.h>
 #include <linux/rtc.h>
 #include <linux/slab.h>
@@ -346,6 +347,12 @@ static int jz4740_rtc_probe(struct platform_device *pdev)
 
 	device_init_wakeup(&pdev->dev, 1);
 
+	ret = dev_pm_set_wake_irq(&pdev->dev, rtc->irq);
+	if (ret) {
+		dev_err(&pdev->dev, "Failed to set wake irq: %d\n", ret);
+		return ret;
+	}
+
 	rtc->rtc = devm_rtc_allocate_device(&pdev->dev);
 	if (IS_ERR(rtc->rtc)) {
 		ret = PTR_ERR(rtc->rtc);
@@ -403,35 +410,6 @@ static int jz4740_rtc_probe(struct platform_device *pdev)
 	return 0;
 }
 
-#ifdef CONFIG_PM
-static int jz4740_rtc_suspend(struct device *dev)
-{
-	struct jz4740_rtc *rtc = dev_get_drvdata(dev);
-
-	if (device_may_wakeup(dev))
-		enable_irq_wake(rtc->irq);
-	return 0;
-}
-
-static int jz4740_rtc_resume(struct device *dev)
-{
-	struct jz4740_rtc *rtc = dev_get_drvdata(dev);
-
-	if (device_may_wakeup(dev))
-		disable_irq_wake(rtc->irq);
-	return 0;
-}
-
-static const struct dev_pm_ops jz4740_pm_ops = {
-	.suspend = jz4740_rtc_suspend,
-	.resume  = jz4740_rtc_resume,
-};
-#define JZ4740_RTC_PM_OPS (&jz4740_pm_ops)
-
-#else
-#define JZ4740_RTC_PM_OPS NULL
-#endif  /* CONFIG_PM */
-
 static const struct platform_device_id jz4740_rtc_ids[] = {
 	{ "jz4740-rtc", ID_JZ4740 },
 	{ "jz4780-rtc", ID_JZ4780 },
@@ -443,7 +421,6 @@ static struct platform_driver jz4740_rtc_driver = {
 	.probe	 = jz4740_rtc_probe,
 	.driver	 = {
 		.name  = "jz4740-rtc",
-		.pm    = JZ4740_RTC_PM_OPS,
 		.of_match_table = of_match_ptr(jz4740_rtc_of_match),
 	},
 	.id_table = jz4740_rtc_ids,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
