Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6858B17AA23
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 17:06:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2+2M7iFiHzfEfy9uQiCJM+or5gEjo+ze39zFShxjBJw=; b=XTOOt8838iU6a5
	77fyZN+RF17mMANYTbDJ1FE/US/RD7veLZXtG0GnYnSlgRhqY/NtdT3mdbVtqDxrISneFkNDjgPwG
	BSmJzvhD7I0NqOkHoxelHk7LQEyyscFnvINYrko+TLwofi7rBSLCMsTkvzI39f/kg+PS6JmG8Pj7N
	7Y71TpmoklZetwTCxoL4e0VPnVrZc9ouN0YYAo9OyyLlF9+K+HcGWSh67eYOmyB8cDcX1uQ64yB5v
	qrItr65k+7dyTsFgyYyMdG3hkXySORc4Ej/GCyMCnw21v4ytXErCT3QNDqDM7iNreu6KMtCXTVZOc
	sTNbwdLVGifblcZZEZtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9t0k-00035S-5C; Thu, 05 Mar 2020 16:06:10 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9t0d-00035B-8i
 for linux-arm-kernel@bombadil.infradead.org; Thu, 05 Mar 2020 16:06:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=pIsw88VH1U+vvXW3xVej+PObKKgnaGezEeRfG6UWs7M=; b=btYxyMTJafxRpCE3HM3+X17ece
 BFjelNQMls7mA8k/qZgLsYnh2qZ4hBCPYMxb/7kAxX4W39ux6OpIO7hZ0Y6uK0SreaU+EFQOQ7/v5
 s32yIprE6gRJvzwZpzACTqPozqCo5W/rWnIiR7CraEBP/mtfOyALcCfLCmdIvcSKvhaWaJ+LqGomo
 KtZddSszWOc+waFA1TWw8Md7ns2AnTOdtfPyhtNSODx7pnHkPl3AUyAQDNEzTq7PnSClWeliBOHwQ
 TfVCfvGCDZKR5f1OG/UcoOutMzYnBJFoVyy9lguZAV89zNfX2Qfo54so32tTi/4ngRU3WNHQ4dCLq
 /Z5jpMlw==;
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9t0Z-000208-5g
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 16:06:01 +0000
Received: from localhost (lfbn-lyo-1-16-97.w86-202.abo.wanadoo.fr
 [86.202.111.97])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id E37DE240005;
 Thu,  5 Mar 2020 16:05:03 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Barry Song <baohua@kernel.org>
Subject: [PATCH 2/3] rtc: sirfsoc: set range
Date: Thu,  5 Mar 2020 17:04:51 +0100
Message-Id: <20200305160452.27808-2-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200305160452.27808-1-alexandre.belloni@bootlin.com>
References: <20200305160452.27808-1-alexandre.belloni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_160559_359527_71FA17DB 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -2.6 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-2.6 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
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
Cc: linux-rtc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This RTC is a 32bit counter running at 16Hz. This overflows every eight
years and a half. However, the driver uses the SW_VALUE register to store
the overflow, extending the counter to 64bit as long as the update happens
before the overflow.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 drivers/rtc/rtc-sirfsoc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/rtc/rtc-sirfsoc.c b/drivers/rtc/rtc-sirfsoc.c
index b2e72597eee8..8b3c88fb9793 100644
--- a/drivers/rtc/rtc-sirfsoc.c
+++ b/drivers/rtc/rtc-sirfsoc.c
@@ -346,6 +346,7 @@ static int sirfsoc_rtc_probe(struct platform_device *pdev)
 		return PTR_ERR(rtcdrv->rtc);
 
 	rtcdrv->rtc->ops = &sirfsoc_rtc_ops;
+	rtcdrv->rtc->range_max = (1ULL << 60) - 1;
 
 	rtcdrv->irq = platform_get_irq(pdev, 0);
 	err = devm_request_irq(&pdev->dev, rtcdrv->irq, sirfsoc_rtc_irq_handler,
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
