Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E0C12CADA
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Dec 2019 21:45:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RIzPq2TauQ+FgzVK65U4mx03YxgjPNR9XI7B8WKA9J4=; b=dgeW4RCGmebvHh
	YC7pa17H/wdC8V0Rh6vkAIhYOLzpQvnjXIb3Y7yhGTxDAi03RFr+MTpt8n4Gn59XiiNvPxXiRSzdx
	qbyvf7cJbfklgNvNbG6Q3HXIlcXnm+SDrkzVK62p5RYZlJdDlW6f3UDnPeh2yXzuA2i8kV/IOiWI2
	0jhr38ZcyxyLv9+4JHaEiMBhhQY+cHlqRn6nX49cFSBeuOrp12bfHpKM8vPzA7+2JU5K+4ogga61a
	ZC5Flk/aKpJNHrIgh1F+YFHGOU116Z0I+uuMh5wfaB1G4WyX6iqxH+9xbfDDdw9fP0EO1wgGq31Ox
	qwQ/iJ32tKnPPhjcF/Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilfQr-0008Nu-SV; Sun, 29 Dec 2019 20:45:01 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilfQh-0008NY-8A
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Dec 2019 20:44:52 +0000
X-Originating-IP: 92.184.100.83
Received: from localhost (unknown [92.184.100.83])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 68DC4C0002;
 Sun, 29 Dec 2019 20:44:40 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: linux-rtc@vger.kernel.org
Subject: [PATCH 1/9] rtc: at91rm9200: remove procfs information
Date: Sun, 29 Dec 2019 21:44:13 +0100
Message-Id: <20191229204421.337612-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_124451_426966_60B3B909 
X-CRM114-Status: UNSURE (   8.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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

The RTC procfs interface is deprecated and hasn't been used by userspace
for years.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 drivers/rtc/rtc-at91rm9200.c | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/drivers/rtc/rtc-at91rm9200.c b/drivers/rtc/rtc-at91rm9200.c
index 3b833e02a657..89d91ecd8ccf 100644
--- a/drivers/rtc/rtc-at91rm9200.c
+++ b/drivers/rtc/rtc-at91rm9200.c
@@ -254,20 +254,6 @@ static int at91_rtc_alarm_irq_enable(struct device *dev, unsigned int enabled)
 
 	return 0;
 }
-/*
- * Provide additional RTC information in /proc/driver/rtc
- */
-static int at91_rtc_proc(struct device *dev, struct seq_file *seq)
-{
-	unsigned long imr = at91_rtc_read_imr();
-
-	seq_printf(seq, "update_IRQ\t: %s\n",
-			(imr & AT91_RTC_ACKUPD) ? "yes" : "no");
-	seq_printf(seq, "periodic_IRQ\t: %s\n",
-			(imr & AT91_RTC_SECEV) ? "yes" : "no");
-
-	return 0;
-}
 
 /*
  * IRQ handler for the RTC
@@ -337,7 +323,6 @@ static const struct rtc_class_ops at91_rtc_ops = {
 	.set_time	= at91_rtc_settime,
 	.read_alarm	= at91_rtc_readalarm,
 	.set_alarm	= at91_rtc_setalarm,
-	.proc		= at91_rtc_proc,
 	.alarm_irq_enable = at91_rtc_alarm_irq_enable,
 };
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
