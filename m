Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D685117B346
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 01:58:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LfgTfTEThMZhROSHQOqLckdkoHfReRxW9iAsxvDT0jw=; b=VwhYFCWtxTnGiH
	zMsBnhNnIad74/E2C2YC3alTxsa7Z5LyK0GhdNy/nq1trFuPlKk5sBMX6vhKat9YRLoanmXyl3VlK
	80pttU2azMSg3exudvtvRQOh4I5GQxN+9Pc/CHyG53MPB68DgQDJ09wT8YOPyQX56McQPfgQcUPLT
	e8u87TNmB3zRl1ZpqJ87vthwiVMk/XK2wX4m+irGB5afjm11zjsD6uoS8YX06RTSZC2Su3rYbInCg
	CHxr3KbpOacN2t7RaFzAVIJhVc0Z1XkwBF4Tqmvyc18SbROumD/F9tTf+vG/YuB5z7aWM6W7Y7D8K
	61sDu25DyVhPWqz6Wbgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA1Jv-00045L-HJ; Fri, 06 Mar 2020 00:58:31 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA1Jn-00043s-OT
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 00:58:25 +0000
X-Originating-IP: 86.202.105.35
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 83124E0005;
 Fri,  6 Mar 2020 00:58:13 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Linus Walleij <linus.walleij@linaro.org>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [PATCH 1/3] rtc: pl031: remove useless invalid alarm handling
Date: Fri,  6 Mar 2020 01:58:07 +0100
Message-Id: <20200306005809.38530-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_165823_930742_D1D150B4 
X-CRM114-Status: GOOD (  12.12  )
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

The core will never pass an invalid alarm to .set_alarm, it is not
necessary to check for its validity.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 drivers/rtc/rtc-pl031.c | 24 ++++++++----------------
 1 file changed, 8 insertions(+), 16 deletions(-)

diff --git a/drivers/rtc/rtc-pl031.c b/drivers/rtc/rtc-pl031.c
index 180caebbd355..2e8e019a6e4c 100644
--- a/drivers/rtc/rtc-pl031.c
+++ b/drivers/rtc/rtc-pl031.c
@@ -210,17 +210,13 @@ static int pl031_stv2_set_alarm(struct device *dev, struct rtc_wkalrm *alarm)
 	unsigned long bcd_year;
 	int ret;
 
-	/* At the moment, we can only deal with non-wildcarded alarm times. */
-	ret = rtc_valid_tm(&alarm->time);
+	ret = pl031_stv2_tm_to_time(dev, &alarm->time,
+				    &time, &bcd_year);
 	if (ret == 0) {
-		ret = pl031_stv2_tm_to_time(dev, &alarm->time,
-					    &time, &bcd_year);
-		if (ret == 0) {
-			writel(bcd_year, ldata->base + RTC_YMR);
-			writel(time, ldata->base + RTC_MR);
+		writel(bcd_year, ldata->base + RTC_YMR);
+		writel(time, ldata->base + RTC_MR);
 
-			pl031_alarm_irq_enable(dev, alarm->enabled);
-		}
+		pl031_alarm_irq_enable(dev, alarm->enabled);
 	}
 
 	return ret;
@@ -285,14 +281,10 @@ static int pl031_set_alarm(struct device *dev, struct rtc_wkalrm *alarm)
 	unsigned long time;
 	int ret;
 
-	/* At the moment, we can only deal with non-wildcarded alarm times. */
-	ret = rtc_valid_tm(&alarm->time);
+	ret = rtc_tm_to_time(&alarm->time, &time);
 	if (ret == 0) {
-		ret = rtc_tm_to_time(&alarm->time, &time);
-		if (ret == 0) {
-			writel(time, ldata->base + RTC_MR);
-			pl031_alarm_irq_enable(dev, alarm->enabled);
-		}
+		writel(time, ldata->base + RTC_MR);
+		pl031_alarm_irq_enable(dev, alarm->enabled);
 	}
 
 	return ret;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
