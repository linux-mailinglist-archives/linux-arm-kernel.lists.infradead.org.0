Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F12212CAE7
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Dec 2019 21:46:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AJpEbXdFozDETdVAkL9u8lyv6Ni9ZumdgL2HjKR0YFs=; b=qKUXIJ2GMLzfl0
	1Z0l7Lw4FXCKVoSwU9n2mZVSjpOWJRPr6O5fHRPpF5B7wtv8kc/kYxtmp/C7K1V5i/A33C5wH/q5X
	Brl7Y27+ssGcDYqnASr5W9rA9ydbxvSe8IWtKIURp2wjM/KJ2VGo4RdymDHXJjep3lp+rnFTtcOkO
	us9RyvSOFtZKvX9OZjpxio4OuJRmN1ZjsbhBdrsEebjv/DWxy7N+vaJgErQn6WdFrhEoYk8jNcFKM
	LNdqJbo9eNo5bi0JLWeaCtOKRx5I2Avtqsj2lK3pdmzJtkj9xe127duh108uawP/JUGSVDf4+rLlK
	FFY77BZe7FaE8SNyUUKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilfSR-0002JX-R2; Sun, 29 Dec 2019 20:46:39 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilfRE-0001VV-FC
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Dec 2019 20:45:26 +0000
Received: from localhost (unknown [92.184.100.83])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 266CC200002;
 Sun, 29 Dec 2019 20:45:10 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: linux-rtc@vger.kernel.org
Subject: [PATCH 6/9] rtc: at91rm9200: use FIELD_PREP/FIELD_GET
Date: Sun, 29 Dec 2019 21:44:18 +0100
Message-Id: <20191229204421.337612-6-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191229204421.337612-1-alexandre.belloni@bootlin.com>
References: <20191229204421.337612-1-alexandre.belloni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_124524_801109_995DD231 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Eugen.Hristev@microchip.com,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use FIELD_PREP and FIELD_GET instead of hardcoding already defined values.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 drivers/rtc/rtc-at91rm9200.c | 42 +++++++++++++++++++-----------------
 1 file changed, 22 insertions(+), 20 deletions(-)

diff --git a/drivers/rtc/rtc-at91rm9200.c b/drivers/rtc/rtc-at91rm9200.c
index 30b77e0f39ef..5e811e04cb21 100644
--- a/drivers/rtc/rtc-at91rm9200.c
+++ b/drivers/rtc/rtc-at91rm9200.c
@@ -14,6 +14,7 @@
  */
 
 #include <linux/bcd.h>
+#include <linux/bitfield.h>
 #include <linux/clk.h>
 #include <linux/completion.h>
 #include <linux/interrupt.h>
@@ -161,20 +162,20 @@ static void at91_rtc_decodetime(unsigned int timereg, unsigned int calreg,
 	} while ((time != at91_rtc_read(timereg)) ||
 			(date != at91_rtc_read(calreg)));
 
-	tm->tm_sec  = bcd2bin((time & AT91_RTC_SEC) >> 0);
-	tm->tm_min  = bcd2bin((time & AT91_RTC_MIN) >> 8);
-	tm->tm_hour = bcd2bin((time & AT91_RTC_HOUR) >> 16);
+	tm->tm_sec  = bcd2bin(FIELD_GET(AT91_RTC_SEC, time));
+	tm->tm_min  = bcd2bin(FIELD_GET(AT91_RTC_MIN, time));
+	tm->tm_hour = bcd2bin(FIELD_GET(AT91_RTC_HOUR, time));
 
 	/*
 	 * The Calendar Alarm register does not have a field for
 	 * the year - so these will return an invalid value.
 	 */
 	tm->tm_year  = bcd2bin(date & AT91_RTC_CENT) * 100;	/* century */
-	tm->tm_year += bcd2bin((date & AT91_RTC_YEAR) >> 8);	/* year */
+	tm->tm_year += bcd2bin(FIELD_GET(AT91_RTC_YEAR, date));	/* year */
 
-	tm->tm_wday = bcd2bin((date & AT91_RTC_DAY) >> 21) - 1;	/* day of the week [0-6], Sunday=0 */
-	tm->tm_mon  = bcd2bin((date & AT91_RTC_MONTH) >> 16) - 1;
-	tm->tm_mday = bcd2bin((date & AT91_RTC_DATE) >> 24);
+	tm->tm_wday = bcd2bin(FIELD_GET(AT91_RTC_DAY, date)) - 1;	/* day of the week [0-6], Sunday=0 */
+	tm->tm_mon  = bcd2bin(FIELD_GET(AT91_RTC_MONTH, date)) - 1;
+	tm->tm_mday = bcd2bin(FIELD_GET(AT91_RTC_DATE, date));
 }
 
 /*
@@ -211,16 +212,17 @@ static int at91_rtc_settime(struct device *dev, struct rtc_time *tm)
 	at91_rtc_write_idr(AT91_RTC_ACKUPD);
 
 	at91_rtc_write(AT91_RTC_TIMR,
-			  bin2bcd(tm->tm_sec) << 0
-			| bin2bcd(tm->tm_min) << 8
-			| bin2bcd(tm->tm_hour) << 16);
+			  FIELD_PREP(AT91_RTC_SEC, bin2bcd(tm->tm_sec))
+			| FIELD_PREP(AT91_RTC_MIN, bin2bcd(tm->tm_min))
+			| FIELD_PREP(AT91_RTC_HOUR, bin2bcd(tm->tm_hour)));
 
 	at91_rtc_write(AT91_RTC_CALR,
-			  bin2bcd((tm->tm_year + 1900) / 100)	/* century */
-			| bin2bcd(tm->tm_year % 100) << 8	/* year */
-			| bin2bcd(tm->tm_mon + 1) << 16		/* tm_mon starts at zero */
-			| bin2bcd(tm->tm_wday + 1) << 21	/* day of the week [0-6], Sunday=0 */
-			| bin2bcd(tm->tm_mday) << 24);
+			  FIELD_PREP(AT91_RTC_CENT,
+				     bin2bcd((tm->tm_year + 1900) / 100))
+			| FIELD_PREP(AT91_RTC_YEAR, bin2bcd(tm->tm_year % 100))
+			| FIELD_PREP(AT91_RTC_MONTH, bin2bcd(tm->tm_mon + 1))
+			| FIELD_PREP(AT91_RTC_DAY, bin2bcd(tm->tm_wday + 1))
+			| FIELD_PREP(AT91_RTC_DATE, bin2bcd(tm->tm_mday)));
 
 	/* Restart Time/Calendar */
 	cr = at91_rtc_read(AT91_RTC_CR);
@@ -259,13 +261,13 @@ static int at91_rtc_setalarm(struct device *dev, struct rtc_wkalrm *alrm)
 
 	at91_rtc_write_idr(AT91_RTC_ALARM);
 	at91_rtc_write(AT91_RTC_TIMALR,
-		  bin2bcd(alrm->time.tm_sec) << 0
-		| bin2bcd(alrm->time.tm_min) << 8
-		| bin2bcd(alrm->time.tm_hour) << 16
+		  FIELD_PREP(AT91_RTC_SEC, bin2bcd(alrm->time.tm_sec))
+		| FIELD_PREP(AT91_RTC_MIN, bin2bcd(alrm->time.tm_min))
+		| FIELD_PREP(AT91_RTC_HOUR, bin2bcd(alrm->time.tm_hour))
 		| AT91_RTC_HOUREN | AT91_RTC_MINEN | AT91_RTC_SECEN);
 	at91_rtc_write(AT91_RTC_CALALR,
-		  bin2bcd(alrm->time.tm_mon + 1) << 16		/* tm_mon starts at zero */
-		| bin2bcd(alrm->time.tm_mday) << 24
+		  FIELD_PREP(AT91_RTC_MONTH, bin2bcd(alrm->time.tm_mon + 1))
+		| FIELD_PREP(AT91_RTC_DATE, bin2bcd(alrm->time.tm_mday))
 		| AT91_RTC_DATEEN | AT91_RTC_MTHEN);
 
 	if (alrm->enabled) {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
