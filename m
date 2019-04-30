Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7E3F2FD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 11:33:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hNJ0OTvp44tdsJuqbfPVD+12Aw9+eZMyN6rLDDnF4EM=; b=OrNbHdAoG/Oag7
	t/NBb1ANg7Ih2jnspx5ixI72+ghdeZbeujYede6dOKG37ur+OgOGrKqYsnRn/POjUmeyrt/O6tx9W
	Jcsd6Q/pQEevtrx3ip/TrGQYmhnVmBP6y2b7STQGxusgo7mw7FFqNyGQYwnCk0RK7q2jiSAF2wf4U
	4K4Xc+j5wcScKdts1x2WhHYoOLhiVDfjW2URJijQy4Lx5GWzSFRjlP3Ffk5zhzninazOi7fpXgxyD
	W8ClIAM/OR+nqIhggOrKoV+a6Sy22XeWrVWyVEnt/Q8PUDWqxoZ3ny6lBQiv5chzWbjtVj14+JkMi
	yetPLaMyWL/1IlobDtKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLP8R-000217-K7; Tue, 30 Apr 2019 09:33:11 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLP7j-0001PJ-6z
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 09:32:30 +0000
Received: from localhost (alyon-652-1-31-175.w109-213.abo.wanadoo.fr
 [109.213.14.175])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 5D53B200003;
 Tue, 30 Apr 2019 09:32:17 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: linux-rtc@vger.kernel.org
Subject: [PATCH 3/4] rtc: digicolor: use .set_time
Date: Tue, 30 Apr 2019 11:32:11 +0200
Message-Id: <20190430093212.28425-3-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190430093212.28425-1-alexandre.belloni@bootlin.com>
References: <20190430093212.28425-1-alexandre.belloni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_023227_718463_D442B2FA 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Baruch Siach <baruch@tkos.co.il>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use .set_time instead of the deprecated .set_mmss.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 drivers/rtc/rtc-digicolor.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/rtc/rtc-digicolor.c b/drivers/rtc/rtc-digicolor.c
index e6e16aaac254..ed2fc1adafd5 100644
--- a/drivers/rtc/rtc-digicolor.c
+++ b/drivers/rtc/rtc-digicolor.c
@@ -106,11 +106,11 @@ static int dc_rtc_read_time(struct device *dev, struct rtc_time *tm)
 	return 0;
 }
 
-static int dc_rtc_set_mmss(struct device *dev, unsigned long secs)
+static int dc_rtc_set_time(struct device *dev, struct rtc_time *tm)
 {
 	struct dc_rtc *rtc = dev_get_drvdata(dev);
 
-	return dc_rtc_write(rtc, secs);
+	return dc_rtc_write(rtc, rtc_tm_to_time64(tm));
 }
 
 static int dc_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alarm)
@@ -161,7 +161,7 @@ static int dc_rtc_alarm_irq_enable(struct device *dev, unsigned int enabled)
 
 static const struct rtc_class_ops dc_rtc_ops = {
 	.read_time		= dc_rtc_read_time,
-	.set_mmss		= dc_rtc_set_mmss,
+	.set_time		= dc_rtc_set_time,
 	.read_alarm		= dc_rtc_read_alarm,
 	.set_alarm		= dc_rtc_set_alarm,
 	.alarm_irq_enable	= dc_rtc_alarm_irq_enable,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
