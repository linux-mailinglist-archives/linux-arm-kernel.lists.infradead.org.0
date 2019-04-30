Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA3EF2CE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 11:28:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xzmigh6YvsNeavZZxD1NwLek398w5NLMtXWnWZSKsfc=; b=pxzYx4wmS1L2IQ
	WlCxm7/XfOEuKKWPa8x65/xNTaHFjFZOMoYJR7ZCMLJOho0LxbhP6Zij/LyppY3F8jTPAWwmtXUpw
	diaDB2AYpFT8fVJGVdsvNT66sEk37Rr24vXmHa74TaXPuYyMbXcrfQG9ibwfeuiBUohKiEFyAA/eU
	cg73HYQ6PzIhAySCAUeEdBw9Vdho/MPsR/8ivUqtYmOAp3R/EvbXZ4Kkbu3buFJJjPbd8SZgBM2KC
	m0r/X970Aj/tNqyvIHXTNf63lGU6MXW/f6l66r20Z23rTbFsd1rIpXjJYB1hfg9MiM3IkwiyIIVl6
	crzXTTLXNqqGRQ63/PpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLP4I-0006jt-8w; Tue, 30 Apr 2019 09:28:54 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLP3z-0006X3-3r
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 09:28:36 +0000
X-Originating-IP: 109.213.14.175
Received: from localhost (alyon-652-1-31-175.w109-213.abo.wanadoo.fr
 [109.213.14.175])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 560231BF210;
 Tue, 30 Apr 2019 09:28:25 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: linux-rtc@vger.kernel.org
Subject: [PATCH v2 2/7] rtc: jz4740: switch to
 rtc_time64_to_tm/rtc_tm_to_time64
Date: Tue, 30 Apr 2019 11:28:16 +0200
Message-Id: <20190430092821.27963-2-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190430092821.27963-1-alexandre.belloni@bootlin.com>
References: <20190430092821.27963-1-alexandre.belloni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_022835_358937_ABECC568 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
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

Call the 64bit versions of rtc_tm time conversion now that the range is
enforced by the core.

Tested-by: Mathieu Malaterre <malat@debian.org>
Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 drivers/rtc/rtc-jz4740.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/rtc/rtc-jz4740.c b/drivers/rtc/rtc-jz4740.c
index 079469627bd7..428376639870 100644
--- a/drivers/rtc/rtc-jz4740.c
+++ b/drivers/rtc/rtc-jz4740.c
@@ -171,7 +171,7 @@ static int jz4740_rtc_read_time(struct device *dev, struct rtc_time *time)
 	if (timeout == 0)
 		return -EIO;
 
-	rtc_time_to_tm(secs, time);
+	rtc_time64_to_tm(secs, time);
 
 	return 0;
 }
@@ -196,7 +196,7 @@ static int jz4740_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alrm)
 	alrm->enabled = !!(ctrl & JZ_RTC_CTRL_AE);
 	alrm->pending = !!(ctrl & JZ_RTC_CTRL_AF);
 
-	rtc_time_to_tm(secs, &alrm->time);
+	rtc_time64_to_tm(secs, &alrm->time);
 
 	return rtc_valid_tm(&alrm->time);
 }
@@ -205,9 +205,7 @@ static int jz4740_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alrm)
 {
 	int ret;
 	struct jz4740_rtc *rtc = dev_get_drvdata(dev);
-	unsigned long secs;
-
-	rtc_tm_to_time(&alrm->time, &secs);
+	uint32_t secs = lower_32_bits(rtc_tm_to_time64(&alrm->time));
 
 	ret = jz4740_rtc_reg_write(rtc, JZ_REG_RTC_SEC_ALARM, secs);
 	if (!ret)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
