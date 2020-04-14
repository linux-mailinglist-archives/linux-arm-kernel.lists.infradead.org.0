Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A723C1A79B7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 13:38:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AxzPbz3LpboZ5oDkq3p2ubRw2egPxmjfphwfMokaYYI=; b=VP6ACZRy+X9cNj
	kjVkJ+XbZkPRR3/c7vRvv/hFrswIISdkl+ln9LXXwf64Mnv4VYRJ0qaqOzGgatC00LwiTPIo3VM3I
	mdj6A1X70sWZqoqdN+kBzHoysfv2OC8Nsr9mrSi4uz8xKQy1WwDGQTInDwldUStyw06pgHVN1oP7a
	uWoWXt8BjMzyp8d3Xc9EHG13Aqey84Z5SJrH9NIbJBTC3Zigo6y0zDrGO1gFm9T6vg2sXeTcNVqa+
	PA5P+c3/m+DEG7N5/r6cEd5OnZXMS5xU9VtDoCKBE/QpP0vuHMabXkllqV4zgI44k2ybIMiX+bMuH
	rSEB9SawcWIT0wpziWKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOJth-0005nD-QW; Tue, 14 Apr 2020 11:38:33 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOJta-0005lQ-B8
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 11:38:27 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 72E5C9490E1CDCE6EB0C;
 Tue, 14 Apr 2020 19:36:21 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.487.0; Tue, 14 Apr 2020
 19:36:11 +0800
From: Jason Yan <yanaijie@huawei.com>
To: <daniel.lezcano@linaro.org>, <tglx@linutronix.de>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH] clocksource: atmel-st: remove useless 'status'
Date: Tue, 14 Apr 2020 20:02:38 +0800
Message-ID: <20200414120238.35704-1-yanaijie@huawei.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-Originating-IP: [10.175.124.28]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_043826_550242_34BEF6FA 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Jason Yan <yanaijie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix the following coccicheck warning:

drivers/clocksource/timer-atmel-st.c:142:6-12: Unneeded variable:
"status". Return "0" on line 166

Signed-off-by: Jason Yan <yanaijie@huawei.com>
---
 drivers/clocksource/timer-atmel-st.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/clocksource/timer-atmel-st.c b/drivers/clocksource/timer-atmel-st.c
index ab0aabfae5f0..73e8aee445da 100644
--- a/drivers/clocksource/timer-atmel-st.c
+++ b/drivers/clocksource/timer-atmel-st.c
@@ -139,7 +139,6 @@ static int
 clkevt32k_next_event(unsigned long delta, struct clock_event_device *dev)
 {
 	u32		alm;
-	int		status = 0;
 	unsigned int	val;
 
 	BUG_ON(delta < 2);
@@ -163,7 +162,7 @@ clkevt32k_next_event(unsigned long delta, struct clock_event_device *dev)
 	alm += delta;
 	regmap_write(regmap_st, AT91_ST_RTAR, alm);
 
-	return status;
+	return 0;
 }
 
 static struct clock_event_device clkevt = {
-- 
2.21.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
