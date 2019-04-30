Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE12100B1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 22:20:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/IkBS/W6fiAVlHpVBpryoka2s2B1EdUn625FTaJyyzs=; b=e8539WCa3Gki6/
	zn8bq69OD0VoeLqXdQyJqvhjEDzmrCN3nIWvIFEvpJvSUHJFnC0xJwy5Vy3lGhNr6w0g6Nhn4Th0E
	vWeU+QiLhPmOnilQpCtcya+3W1Okxg766lJzY51jUyj51DUEVUcLRByYQvrqyEgVPk5HvhC9IToHe
	vfrcHteyj7lVVkrPUnnk0boXr2a1qxXuWM0AbtpVulp6zkX/Gmn5bddQsh+KQFpgiYmwk8KaSMmdI
	u0iBgCIekXa/xAlgNuzbXzkDtqZfsb3AU0C5LUYtSD7cM5Oz8gtixYQ9J2DLUDf7cgfXU1oRhDvbC
	YsyGIfApV3n8L5wImurQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLZEU-0006Mh-G4; Tue, 30 Apr 2019 20:20:06 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLZEM-0006MX-TN
 for linux-arm-kernel@bombadil.infradead.org; Tue, 30 Apr 2019 20:19:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AycnaEmXwfvWM6WqlBAVeSp7MdJyKYBDKCun3bdhbCk=; b=t25csXWGtbi9/RT+RrsFyhBeNZ
 E8gYHNvRiPI4Y2MrgiOa3gBEqEMk2DS0g4PzymtJV4cnJELXlIhEQ1gNT7sBpirzji2ymJavnXj3n
 XTYSS6YornevM30mKt+dYZ3k312u6AtTy53w7XUrE/wWoqu8xUvPFXM9mRrNltl5cg2NW4Y30ortb
 CwA30QtK85cxFc8ZybIUOxM1M596uJYEnEAisvftjrL+JK0u/ZDl/9zbFqz6NrzIP8rVYX7fomDe0
 vQdhmh0WEGdhqIUYr3sG1n0XXzxUoUCbaQHPUgMTsdHoVhYsFcpvH47MDa/gtmU+rbTXH+daKmoYg
 e2os8oQg==;
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLZEJ-0002yo-0n
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 20:19:56 +0000
X-Originating-IP: 90.66.53.80
Received: from localhost (lfbn-1-3034-80.w90-66.abo.wanadoo.fr [90.66.53.80])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 5A297E0008;
 Tue, 30 Apr 2019 20:19:02 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: linux-rtc@vger.kernel.org,
	Patrice Chotard <patrice.chotard@st.com>
Subject: [PATCH] rtc: st-lpc: remove unnecessary check
Date: Tue, 30 Apr 2019 22:18:34 +0200
Message-Id: <20190430201834.12634-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_211955_077084_0FB8B106 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The RTC core already ensures the alarm is set to a time in the future, it
is not necessary to check again in the driver.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 drivers/rtc/rtc-st-lpc.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/rtc/rtc-st-lpc.c b/drivers/rtc/rtc-st-lpc.c
index bee75ca7ff79..ce2dae6e2a24 100644
--- a/drivers/rtc/rtc-st-lpc.c
+++ b/drivers/rtc/rtc-st-lpc.c
@@ -166,10 +166,6 @@ static int st_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *t)
 	now_secs = rtc_tm_to_time64(&now);
 	alarm_secs = rtc_tm_to_time64(&t->time);
 
-	/* Invalid alarm time */
-	if (now_secs > alarm_secs)
-		return -EINVAL;
-
 	memcpy(&rtc->alarm, t, sizeof(struct rtc_wkalrm));
 
 	/* Now many secs to fire */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
