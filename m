Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35EA017AA1F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 17:05:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=98zRAkEmJmQKxyGh7oyz4WoYamW8LpvdAqgi/z1aWFA=; b=MlPoyUr917Ug8q
	TpHIkfLH1IO7Z6dH7TxWv8Sd78q5CKyu8ieaOLWiUMcWY6jgvQTgb95Fv8jnpQbQF8Cqbz6w9Ae+x
	yjJdtgpp2uewhVhkvXB15syNSYvwvz1BE1lMINzn2K1b65Ta9/aaUjIV2x68BZJzAznMerC/C5xVT
	LJMQTzzDdWUK+krj0PZKTVNTDlBqRNszT0YPMG0IYeY2LwIwNd6KGODbuhkrlO8INjdRa5lR4gZLJ
	G0784C3aESasXBUodoZRApLSi6XWETlQjaataAEfw/tkjcf19z7L7cptViNMgJIx3qYLarpZgQFnn
	WUqvqOd3qkA3ffEDoRJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9t07-0002a8-C7; Thu, 05 Mar 2020 16:05:31 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9szy-0002YR-SF
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 16:05:24 +0000
X-Originating-IP: 86.202.111.97
Received: from localhost (lfbn-lyo-1-16-97.w86-202.abo.wanadoo.fr
 [86.202.111.97])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 3DB26E0015;
 Thu,  5 Mar 2020 16:04:58 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Barry Song <baohua@kernel.org>
Subject: [PATCH 1/3] rtc: sirfsoc: convert to devm_rtc_allocate_device
Date: Thu,  5 Mar 2020 17:04:50 +0100
Message-Id: <20200305160452.27808-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_080523_053131_C08C878F 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This allows further improvement of the driver. Also remove the unnecessary
error string as the core will already display error messages.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 drivers/rtc/rtc-sirfsoc.c | 23 ++++++++---------------
 1 file changed, 8 insertions(+), 15 deletions(-)

diff --git a/drivers/rtc/rtc-sirfsoc.c b/drivers/rtc/rtc-sirfsoc.c
index a2c9c55667cd..b2e72597eee8 100644
--- a/drivers/rtc/rtc-sirfsoc.c
+++ b/drivers/rtc/rtc-sirfsoc.c
@@ -341,28 +341,21 @@ static int sirfsoc_rtc_probe(struct platform_device *pdev)
 	rtcdrv->overflow_rtc =
 		sirfsoc_rtc_readl(rtcdrv, RTC_SW_VALUE);
 
-	rtcdrv->rtc = devm_rtc_device_register(&pdev->dev, pdev->name,
-			&sirfsoc_rtc_ops, THIS_MODULE);
-	if (IS_ERR(rtcdrv->rtc)) {
-		err = PTR_ERR(rtcdrv->rtc);
-		dev_err(&pdev->dev, "can't register RTC device\n");
-		return err;
-	}
+	rtcdrv->rtc = devm_rtc_allocate_device(&pdev->dev);
+	if (IS_ERR(rtcdrv->rtc))
+		return PTR_ERR(rtcdrv->rtc);
+
+	rtcdrv->rtc->ops = &sirfsoc_rtc_ops;
 
 	rtcdrv->irq = platform_get_irq(pdev, 0);
-	err = devm_request_irq(
-			&pdev->dev,
-			rtcdrv->irq,
-			sirfsoc_rtc_irq_handler,
-			IRQF_SHARED,
-			pdev->name,
-			rtcdrv);
+	err = devm_request_irq(&pdev->dev, rtcdrv->irq, sirfsoc_rtc_irq_handler,
+			       IRQF_SHARED, pdev->name, rtcdrv);
 	if (err) {
 		dev_err(&pdev->dev, "Unable to register for the SiRF SOC RTC IRQ\n");
 		return err;
 	}
 
-	return 0;
+	return rtc_register_device(rtcdrv->rtc);
 }
 
 #ifdef CONFIG_PM_SLEEP
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
