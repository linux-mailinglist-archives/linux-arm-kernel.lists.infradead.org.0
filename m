Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9953BC25A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 09:11:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/HVdSjPXZ4fU5MbFHgw93C1AiE+BI6YXX/6KrxzxcKo=; b=Aat1aVdneTuPMIGdd8lQQ8LiKx
	CARprLgUuVKeOTe76EYE8QVvLE77HkqyKXBQHwb3KpaPrgVJMXpICS4/mD7gd1yx3OTFkWUdBqXNx
	PSJpCsdJ0bqt3zLrqDiMGkGcp2XzrWtLYrlSRTCbGGXaxdSs1sU+ug0DvMKriWuC5D1LuOTxhuXNR
	R/1myzmRLP1iDwtOY0/nVA9zmp+w2uhsb5vxu/erFUOF4e00o8uLFaI8N/KDTAATYH0MA4utLS2zS
	sWcEIxQqzf1QKNG3ZjbkD+tAT9OSQ3lMUvoTs+2+XVNgoIKefspY1UvsmNR+10YR1qprdlCE9MOdx
	h3UcDCDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCeyl-0005Cd-7x; Tue, 24 Sep 2019 07:11:22 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCewO-0003kz-IW
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 07:08:54 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 9AE031A00B5;
 Tue, 24 Sep 2019 09:08:46 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 087061A03AC;
 Tue, 24 Sep 2019 09:08:42 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 2147A402ED;
 Tue, 24 Sep 2019 15:08:36 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: wim@linux-watchdog.org, linux@roeck-us.net, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-watchdog@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] watchdog: imx2_wdt: Use __maybe_unused instead of #if
 CONFIG_PM_SLEEP
Date: Tue, 24 Sep 2019 15:07:07 +0800
Message-Id: <1569308828-8320-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569308828-8320-1-git-send-email-Anson.Huang@nxp.com>
References: <1569308828-8320-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_000852_923773_4607A1E0 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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

Use __maybe_unused for power management related functions instead
of #if CONFIG_PM_SLEEP to simply the code.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/watchdog/imx2_wdt.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/watchdog/imx2_wdt.c b/drivers/watchdog/imx2_wdt.c
index 6711b4e..034f32c 100644
--- a/drivers/watchdog/imx2_wdt.c
+++ b/drivers/watchdog/imx2_wdt.c
@@ -358,9 +358,8 @@ static void imx2_wdt_shutdown(struct platform_device *pdev)
 	}
 }
 
-#ifdef CONFIG_PM_SLEEP
 /* Disable watchdog if it is active or non-active but still running */
-static int imx2_wdt_suspend(struct device *dev)
+static int __maybe_unused imx2_wdt_suspend(struct device *dev)
 {
 	struct watchdog_device *wdog = dev_get_drvdata(dev);
 	struct imx2_wdt_device *wdev = watchdog_get_drvdata(wdog);
@@ -381,7 +380,7 @@ static int imx2_wdt_suspend(struct device *dev)
 }
 
 /* Enable watchdog and configure it if necessary */
-static int imx2_wdt_resume(struct device *dev)
+static int __maybe_unused imx2_wdt_resume(struct device *dev)
 {
 	struct watchdog_device *wdog = dev_get_drvdata(dev);
 	struct imx2_wdt_device *wdev = watchdog_get_drvdata(wdog);
@@ -406,7 +405,6 @@ static int imx2_wdt_resume(struct device *dev)
 
 	return 0;
 }
-#endif
 
 static SIMPLE_DEV_PM_OPS(imx2_wdt_pm_ops, imx2_wdt_suspend,
 			 imx2_wdt_resume);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
