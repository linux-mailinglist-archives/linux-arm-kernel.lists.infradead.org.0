Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98FF317B347
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 01:59:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=59SXILWljyvCWgfj+a1YE8swiFlWyTV1BRwswqfk4N4=; b=JzP8w6kgUIfOWW
	nkWCOMtU5+wksIqjyZfQbXvR1yeAZsl1MPt3NM14DXK8TLedLQzwL7jsl/uH49M5qnZBE3EB3+U/F
	TFrX8q8XRGpBnJJhX4pFRFspzM8VsvFqq/g21+kfGyYvpZ3brZLwoCf2QVY+8NK1uWJvEWvQ2rVjX
	ndxck6RiKfx9mVOfJ6yI0Gu+cerrz5QjMnOKF3vxAn1AXSJtfsIJYHd+L5CuiIQOrOCp+o88TrFUL
	9QLPEIctO/MXYryee4PlI29T8x0LKBJit3pNCgalpledjdFvHORkXUtNVCvc9zyBmIEeGyWw55Q5z
	IXkHOvlMs91w3i6Dk1Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA1KD-0004BM-QF; Fri, 06 Mar 2020 00:58:49 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA1Jn-00043u-RI
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 00:58:25 +0000
X-Originating-IP: 86.202.105.35
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id B2565E0004;
 Fri,  6 Mar 2020 00:58:15 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Linus Walleij <linus.walleij@linaro.org>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [PATCH 3/3] rtc: pl031: switch to rtc_time64_to_tm/rtc_tm_to_time64
Date: Fri,  6 Mar 2020 01:58:09 +0100
Message-Id: <20200306005809.38530-3-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200306005809.38530-1-alexandre.belloni@bootlin.com>
References: <20200306005809.38530-1-alexandre.belloni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_165824_012572_81A1DBB5 
X-CRM114-Status: GOOD (  13.66  )
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

Call the 64bit versions of rtc_tm time conversion to allow extending
support after 2106 and properly supporting the STv2 range.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 drivers/rtc/rtc-pl031.c | 27 +++++++--------------------
 1 file changed, 7 insertions(+), 20 deletions(-)

diff --git a/drivers/rtc/rtc-pl031.c b/drivers/rtc/rtc-pl031.c
index 07dc0f264100..40d7450a1ce4 100644
--- a/drivers/rtc/rtc-pl031.c
+++ b/drivers/rtc/rtc-pl031.c
@@ -125,11 +125,9 @@ static int pl031_stv2_tm_to_time(struct device *dev,
 		return -EINVAL;
 	} else if (wday == -1) {
 		/* wday is not provided, calculate it here */
-		unsigned long time;
 		struct rtc_time calc_tm;
 
-		rtc_tm_to_time(tm, &time);
-		rtc_time_to_tm(time, &calc_tm);
+		rtc_time64_to_tm(rtc_tm_to_time64(tm), &calc_tm);
 		wday = calc_tm.tm_wday;
 	}
 
@@ -246,30 +244,25 @@ static int pl031_read_time(struct device *dev, struct rtc_time *tm)
 {
 	struct pl031_local *ldata = dev_get_drvdata(dev);
 
-	rtc_time_to_tm(readl(ldata->base + RTC_DR), tm);
+	rtc_time64_to_tm(readl(ldata->base + RTC_DR), tm);
 
 	return 0;
 }
 
 static int pl031_set_time(struct device *dev, struct rtc_time *tm)
 {
-	unsigned long time;
 	struct pl031_local *ldata = dev_get_drvdata(dev);
-	int ret;
 
-	ret = rtc_tm_to_time(tm, &time);
-
-	if (ret == 0)
-		writel(time, ldata->base + RTC_LR);
+	writel(rtc_tm_to_time64(tm), ldata->base + RTC_LR);
 
-	return ret;
+	return 0;
 }
 
 static int pl031_read_alarm(struct device *dev, struct rtc_wkalrm *alarm)
 {
 	struct pl031_local *ldata = dev_get_drvdata(dev);
 
-	rtc_time_to_tm(readl(ldata->base + RTC_MR), &alarm->time);
+	rtc_time64_to_tm(readl(ldata->base + RTC_MR), &alarm->time);
 
 	alarm->pending = readl(ldata->base + RTC_RIS) & RTC_BIT_AI;
 	alarm->enabled = readl(ldata->base + RTC_IMSC) & RTC_BIT_AI;
@@ -280,16 +273,10 @@ static int pl031_read_alarm(struct device *dev, struct rtc_wkalrm *alarm)
 static int pl031_set_alarm(struct device *dev, struct rtc_wkalrm *alarm)
 {
 	struct pl031_local *ldata = dev_get_drvdata(dev);
-	unsigned long time;
-	int ret;
 
-	ret = rtc_tm_to_time(&alarm->time, &time);
-	if (ret == 0) {
-		writel(time, ldata->base + RTC_MR);
-		pl031_alarm_irq_enable(dev, alarm->enabled);
-	}
+	writel(rtc_tm_to_time64(&alarm->time), ldata->base + RTC_MR);
 
-	return ret;
+	return 0;
 }
 
 static int pl031_remove(struct amba_device *adev)
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
