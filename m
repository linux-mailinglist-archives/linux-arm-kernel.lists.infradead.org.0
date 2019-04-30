Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B3ABF2DE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 11:29:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YO/VVyI8nitGbTkRi12YXn1mpHryjox9KbgJELG6UH4=; b=FMsGyBhSYp2T+R
	IEP02LHEDd6y5KS0T6aSiKUzfRkd6x6hhUy6spPkg3lPrZV8iUxKnal5rOCts3RKV+MKYXpWm/Xyl
	BMwipFc5oa9h1rEoDCEC7wwjq82hXdLVA4Prdhy0DQJGKC/Fs2CB4kx8mLgsuYEVAu64OyGGARrbu
	2KJQacdVEt1KL+PbN3akkzp9slwVjbuOKeRa2muULv8vYSPQyEYWafskBQ6lR8Jay2oMeljh4ZtUR
	uukZhso8peyyu4wMqH6JsF7bbbvvuiNJMzk7U4ZOjxMRtajRfaCe/MFX3eOiJZe3mH7bX+tdA0s1L
	EmGHjJ0jwLgWLy3libcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLP4c-0007J2-PO; Tue, 30 Apr 2019 09:29:14 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLP3z-0006X4-Qo
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 09:28:38 +0000
X-Originating-IP: 109.213.14.175
Received: from localhost (alyon-652-1-31-175.w109-213.abo.wanadoo.fr
 [109.213.14.175])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 0943E1BF21C;
 Tue, 30 Apr 2019 09:28:30 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: linux-rtc@vger.kernel.org
Subject: [PATCH v2 6/7] rtc: jz4740: rework invalid time detection
Date: Tue, 30 Apr 2019 11:28:20 +0200
Message-Id: <20190430092821.27963-6-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190430092821.27963-1-alexandre.belloni@bootlin.com>
References: <20190430092821.27963-1-alexandre.belloni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_022836_028218_2909F84B 
X-CRM114-Status: GOOD (  12.88  )
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

The scratchpad register is used to detect an invalid time when power to the
RTC has been lost. Instead of deleting that precious information and set
the time to the UNIX epoch, forward it to userspace.

Tested-by: Mathieu Malaterre <malat@debian.org>
Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 drivers/rtc/rtc-jz4740.c | 21 +++++++++------------
 1 file changed, 9 insertions(+), 12 deletions(-)

diff --git a/drivers/rtc/rtc-jz4740.c b/drivers/rtc/rtc-jz4740.c
index 32e6b6270efd..6dd00b654f93 100644
--- a/drivers/rtc/rtc-jz4740.c
+++ b/drivers/rtc/rtc-jz4740.c
@@ -157,6 +157,9 @@ static int jz4740_rtc_read_time(struct device *dev, struct rtc_time *time)
 	uint32_t secs, secs2;
 	int timeout = 5;
 
+	if (jz4740_rtc_reg_read(rtc, JZ_REG_RTC_SCRATCHPAD) != 0x12345678)
+		return -EINVAL;
+
 	/* If the seconds register is read while it is updated, it can contain a
 	 * bogus value. This can be avoided by making sure that two consecutive
 	 * reads have the same value.
@@ -180,8 +183,13 @@ static int jz4740_rtc_read_time(struct device *dev, struct rtc_time *time)
 static int jz4740_rtc_set_time(struct device *dev, struct rtc_time *time)
 {
 	struct jz4740_rtc *rtc = dev_get_drvdata(dev);
+	int ret;
+
+	ret = jz4740_rtc_reg_write(rtc, JZ_REG_RTC_SEC, rtc_tm_to_time64(time));
+	if (ret)
+		return ret;
 
-	return jz4740_rtc_reg_write(rtc, JZ_REG_RTC_SEC, rtc_tm_to_time64(time));
+	return jz4740_rtc_reg_write(rtc, JZ_REG_RTC_SCRATCHPAD, 0x12345678);
 }
 
 static int jz4740_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alrm)
@@ -308,7 +316,6 @@ static int jz4740_rtc_probe(struct platform_device *pdev)
 {
 	int ret;
 	struct jz4740_rtc *rtc;
-	uint32_t scratchpad;
 	struct resource *mem;
 	const struct platform_device_id *id = platform_get_device_id(pdev);
 	const struct of_device_id *of_id = of_match_device(
@@ -376,16 +383,6 @@ static int jz4740_rtc_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	scratchpad = jz4740_rtc_reg_read(rtc, JZ_REG_RTC_SCRATCHPAD);
-	if (scratchpad != 0x12345678) {
-		ret = jz4740_rtc_reg_write(rtc, JZ_REG_RTC_SCRATCHPAD, 0x12345678);
-		ret = jz4740_rtc_reg_write(rtc, JZ_REG_RTC_SEC, 0);
-		if (ret) {
-			dev_err(&pdev->dev, "Could not write to RTC registers\n");
-			return ret;
-		}
-	}
-
 	if (np && of_device_is_system_power_controller(np)) {
 		if (!pm_power_off) {
 			/* Default: 60ms */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
