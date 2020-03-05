Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4A117AA22
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 17:05:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jqs69g4eMXPVuGhVWcQUTvj68iFo9wn/KLiN5rOfb2U=; b=mCX6otg18j0aSd
	55L88MBg8fz8Xl61oCcTzwc1IaxPZohDMYBe7V9+D2a24kbcR3Fu9TKCnCEtvgJM1/rVO1VEg1Tyv
	o+XZm1t028939GdmsOgDx1OyREAsnMxIDic7r4B5CTMAbblWjlgBtT1toB2LsPbpPdr6GGKjj4SaB
	3AFQK7Tu3qlZF4R3xJ0Kw1tf5whor8NbaBEIxuPbZsXK6V6iTcc2ugqmr9mX2M6niH3V7rcppx8VJ
	MzrQkrF6RDjzb1V10wEOPK6TDjY+KlksLgSZ81zrFZIRVfmyRhpt+R4t0yo5otD8ldD5tB5+FV29q
	CtYdfBWdmyu5C8iE7dAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9t0O-0002n1-Ok; Thu, 05 Mar 2020 16:05:48 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9t0B-0002ia-4E
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 16:05:37 +0000
Received: from localhost (lfbn-lyo-1-16-97.w86-202.abo.wanadoo.fr
 [86.202.111.97])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 3058B20000B;
 Thu,  5 Mar 2020 16:05:14 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Barry Song <baohua@kernel.org>
Subject: [PATCH 3/3] rtc: sirfsoc: switch to rtc_time64_to_tm/rtc_tm_to_time64
Date: Thu,  5 Mar 2020 17:04:52 +0100
Message-Id: <20200305160452.27808-3-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200305160452.27808-1-alexandre.belloni@bootlin.com>
References: <20200305160452.27808-1-alexandre.belloni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_080535_739745_2029B8EC 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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

Call the 64bit versions of rtc_tm time conversion to avoid the y2106 issue.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 drivers/rtc/rtc-sirfsoc.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/rtc/rtc-sirfsoc.c b/drivers/rtc/rtc-sirfsoc.c
index 8b3c88fb9793..15f4577ddaef 100644
--- a/drivers/rtc/rtc-sirfsoc.c
+++ b/drivers/rtc/rtc-sirfsoc.c
@@ -90,13 +90,13 @@ static int sirfsoc_rtc_read_alarm(struct device *dev,
 	 */
 	/* if alarm is in next overflow cycle */
 	if (rtc_count > rtc_alarm)
-		rtc_time_to_tm((rtcdrv->overflow_rtc + 1)
-				<< (BITS_PER_LONG - RTC_SHIFT)
-				| rtc_alarm >> RTC_SHIFT, &(alrm->time));
+		rtc_time64_to_tm((rtcdrv->overflow_rtc + 1)
+				 << (BITS_PER_LONG - RTC_SHIFT)
+				 | rtc_alarm >> RTC_SHIFT, &alrm->time);
 	else
-		rtc_time_to_tm(rtcdrv->overflow_rtc
-				<< (BITS_PER_LONG - RTC_SHIFT)
-				| rtc_alarm >> RTC_SHIFT, &(alrm->time));
+		rtc_time64_to_tm(rtcdrv->overflow_rtc
+				 << (BITS_PER_LONG - RTC_SHIFT)
+				 | rtc_alarm >> RTC_SHIFT, &alrm->time);
 	if (sirfsoc_rtc_readl(rtcdrv, RTC_STATUS) & SIRFSOC_RTC_AL0E)
 		alrm->enabled = 1;
 
@@ -113,7 +113,7 @@ static int sirfsoc_rtc_set_alarm(struct device *dev,
 	rtcdrv = dev_get_drvdata(dev);
 
 	if (alrm->enabled) {
-		rtc_tm_to_time(&(alrm->time), &rtc_alarm);
+		rtc_alarm = rtc_tm_to_time64(&alrm->time);
 
 		spin_lock_irq(&rtcdrv->lock);
 
@@ -181,8 +181,8 @@ static int sirfsoc_rtc_read_time(struct device *dev,
 		cpu_relax();
 	} while (tmp_rtc != sirfsoc_rtc_readl(rtcdrv, RTC_CN));
 
-	rtc_time_to_tm(rtcdrv->overflow_rtc << (BITS_PER_LONG - RTC_SHIFT) |
-					tmp_rtc >> RTC_SHIFT, tm);
+	rtc_time64_to_tm(rtcdrv->overflow_rtc << (BITS_PER_LONG - RTC_SHIFT)
+			 | tmp_rtc >> RTC_SHIFT, tm);
 	return 0;
 }
 
@@ -193,7 +193,7 @@ static int sirfsoc_rtc_set_time(struct device *dev,
 	struct sirfsoc_rtc_drv *rtcdrv;
 	rtcdrv = dev_get_drvdata(dev);
 
-	rtc_tm_to_time(tm, &rtc_time);
+	rtc_time = rtc_tm_to_time64(tm);
 
 	rtcdrv->overflow_rtc = rtc_time >> (BITS_PER_LONG - RTC_SHIFT);
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
