Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B93717B35B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 02:02:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Bz//C4XEp/BoSgjKNuOXWZNjH9dh8a3cMvSOVWzohq4=; b=EdEICYhFqbYAFO
	0yFTcXIxV4hiAi6A2/LL1Yszsm5ENNbTX6peuvLzkfbIMZ+Ld4rQWsYKxKXxUpiUs/EeQcCo0NkGK
	mLFwcDfdLGc3aPPfNE2ri2xzvkwbCmDPHbu1CfmEZtl/7lQ1wdSQHhO0BhyQscoFC0qbgAFQ/D1rQ
	t3T9/AsceHDG5KMrry3E+waFgCIKV+o1C+xVgQelt4N5lfKCOJJ9EjhjtR9OBViXAT3zTj//EbO/n
	z0bfpu/H79mGmPZp0tOUJuUseiJtahbQG89LZv5rdsTnDsRppHwHO4qOwsS2i4g7MdKbxdPvBDYRT
	Am6VfiLX6c3L1H6hFyzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA1NA-0006J1-Ol; Fri, 06 Mar 2020 01:01:52 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA1N4-0006Io-H6
 for linux-arm-kernel@bombadil.infradead.org; Fri, 06 Mar 2020 01:01:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=JOU3VM87n/HvCYVSeH/2bfBPM8cXTgBEy9FhN+oOJZI=; b=v2wRJec4M4zj7t1CglVLr2yBvP
 5Pp+yAyPX33q11xOXpgzQGe7ptH4Zj6WgearQJP73Je9nIZOPwMoV6yDcjOiB7BLUoocJmpixtm0u
 /UjTqw0a1FC8X/00km3B7kO8TsILZv8B4zAaWzTLhwjFgbCf8oxp83NYEK3ugGS3laIEuryfjhsJx
 1Ojr3C0ulo7Ht4MW/QcX47dXxIVf07ksJVkjk01lj8gqnYipD0ThYFzjsh0WRGvhvo+mYWd37cwWv
 AXHaKJbuKv/NEKM1BLMl6E3fq1ey57aNX7iGB4j1+naMoekk8xeMnNEgLNzq1XgWAxxAsE78xtC17
 xVvuO08A==;
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA1Mz-0007J2-00
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 01:01:44 +0000
X-Originating-IP: 86.202.105.35
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id E03C420005;
 Fri,  6 Mar 2020 01:01:05 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Linus Walleij <linus.walleij@linaro.org>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [PATCH] rtc: ab8500: switch to rtc_time64_to_tm/rtc_tm_to_time64
Date: Fri,  6 Mar 2020 02:01:01 +0100
Message-Id: <20200306010101.39517-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_010141_211430_148E296E 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: -2.6 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-2.6 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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

Call the 64bit versions of rtc_tm time conversion.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 drivers/rtc/rtc-ab8500.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/rtc/rtc-ab8500.c b/drivers/rtc/rtc-ab8500.c
index 8492ffed4ca6..3d60f3283f11 100644
--- a/drivers/rtc/rtc-ab8500.c
+++ b/drivers/rtc/rtc-ab8500.c
@@ -100,7 +100,7 @@ static int ab8500_rtc_read_time(struct device *dev, struct rtc_time *tm)
 	secs =	secs / COUNTS_PER_SEC;
 	secs =	secs + (mins * 60);
 
-	rtc_time_to_tm(secs, tm);
+	rtc_time64_to_tm(secs, tm);
 	return 0;
 }
 
@@ -110,7 +110,7 @@ static int ab8500_rtc_set_time(struct device *dev, struct rtc_time *tm)
 	unsigned char buf[ARRAY_SIZE(ab8500_rtc_time_regs)];
 	unsigned long no_secs, no_mins, secs = 0;
 
-	rtc_tm_to_time(tm, &secs);
+	secs = rtc_tm_to_time64(tm);
 
 	no_mins = secs / 60;
 
@@ -168,7 +168,7 @@ static int ab8500_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alarm)
 	mins = (buf[0] << 16) | (buf[1] << 8) | (buf[2]);
 	secs = mins * 60;
 
-	rtc_time_to_tm(secs, &alarm->time);
+	rtc_time64_to_tm(secs, &alarm->time);
 
 	return 0;
 }
@@ -188,7 +188,7 @@ static int ab8500_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alarm)
 	struct rtc_time curtm;
 
 	/* Get the number of seconds since 1970 */
-	rtc_tm_to_time(&alarm->time, &secs);
+	secs = rtc_tm_to_time64(&alarm->time);
 
 	/*
 	 * Check whether alarm is set less than 1min.
@@ -196,7 +196,7 @@ static int ab8500_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alarm)
 	 * return -EINVAL, so UIE EMUL can take it up, incase of UIE_ON
 	 */
 	ab8500_rtc_read_time(dev, &curtm); /* Read current time */
-	rtc_tm_to_time(&curtm, &cursec);
+	cursec = rtc_tm_to_time64(&curtm);
 	if ((secs - cursec) < 59) {
 		dev_dbg(dev, "Alarm less than 1 minute not supported\r\n");
 		return -EINVAL;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
