Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 138C312CAE6
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Dec 2019 21:46:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QWOgT0YCRqg1/NEHnyCgQ91Nux6M9TaeFRludmkd4M0=; b=Yj+OQjXQdZjrgf
	WUDQ0PneJXJvzDJDb4qXcsycJjtv5NZPV2YmOUoiEvCIMzePl6qjl1z9JVWYUyZ/3YZzvHzf41fLM
	ofuxtj0gNjLZGdtlLXw0V/DV6Mh5IeaJo7MlVL7VrAHiSCpE8xep6OZKW4+jsgl13MErkgrgABT4W
	up4KSWVXKyIFRthPlj2GmT01u5WqJ37PVebTZSw9jDynxH4ZOZwmMgY1p/hdI+d+awyKKLhKzp69+
	vNvJlh7KA1qoTTHwkh4fj3EHUYy5z+XTm47wx/qS6kk6ahGBBPWlTT6SjAA45//WhugcLEkDmom/8
	PNSNdQIfubvm79Mik3zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilfSC-00024E-QY; Sun, 29 Dec 2019 20:46:24 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilfR1-0000nr-CM
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Dec 2019 20:45:14 +0000
X-Originating-IP: 92.184.100.83
Received: from localhost (unknown [92.184.100.83])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 22C1D240004;
 Sun, 29 Dec 2019 20:45:08 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: linux-rtc@vger.kernel.org
Subject: [PATCH 5/9] rtc: at91rm9200: avoid time readout in at91_rtc_setalarm
Date: Sun, 29 Dec 2019 21:44:17 +0100
Message-Id: <20191229204421.337612-5-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191229204421.337612-1-alexandre.belloni@bootlin.com>
References: <20191229204421.337612-1-alexandre.belloni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_124511_632527_C05952BE 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

The current rtc time is read out in at91_rtc_setalarm but it it immediately
overwritten by the alarm time. Remove the readout.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 drivers/rtc/rtc-at91rm9200.c | 20 ++++++--------------
 1 file changed, 6 insertions(+), 14 deletions(-)

diff --git a/drivers/rtc/rtc-at91rm9200.c b/drivers/rtc/rtc-at91rm9200.c
index 997734ed9a5b..30b77e0f39ef 100644
--- a/drivers/rtc/rtc-at91rm9200.c
+++ b/drivers/rtc/rtc-at91rm9200.c
@@ -255,25 +255,17 @@ static int at91_rtc_readalarm(struct device *dev, struct rtc_wkalrm *alrm)
  */
 static int at91_rtc_setalarm(struct device *dev, struct rtc_wkalrm *alrm)
 {
-	struct rtc_time tm;
-
-	at91_rtc_decodetime(AT91_RTC_TIMR, AT91_RTC_CALR, &tm);
-
-	tm.tm_mon = alrm->time.tm_mon;
-	tm.tm_mday = alrm->time.tm_mday;
-	tm.tm_hour = alrm->time.tm_hour;
-	tm.tm_min = alrm->time.tm_min;
-	tm.tm_sec = alrm->time.tm_sec;
+	struct rtc_time tm = alrm->time;
 
 	at91_rtc_write_idr(AT91_RTC_ALARM);
 	at91_rtc_write(AT91_RTC_TIMALR,
-		  bin2bcd(tm.tm_sec) << 0
-		| bin2bcd(tm.tm_min) << 8
-		| bin2bcd(tm.tm_hour) << 16
+		  bin2bcd(alrm->time.tm_sec) << 0
+		| bin2bcd(alrm->time.tm_min) << 8
+		| bin2bcd(alrm->time.tm_hour) << 16
 		| AT91_RTC_HOUREN | AT91_RTC_MINEN | AT91_RTC_SECEN);
 	at91_rtc_write(AT91_RTC_CALALR,
-		  bin2bcd(tm.tm_mon + 1) << 16		/* tm_mon starts at zero */
-		| bin2bcd(tm.tm_mday) << 24
+		  bin2bcd(alrm->time.tm_mon + 1) << 16		/* tm_mon starts at zero */
+		| bin2bcd(alrm->time.tm_mday) << 24
 		| AT91_RTC_DATEEN | AT91_RTC_MTHEN);
 
 	if (alrm->enabled) {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
