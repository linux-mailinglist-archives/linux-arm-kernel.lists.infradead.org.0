Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F6219853E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 22:16:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8vhBwLJWD6zDY5YQiNSGv1uo5Rdhx19thTlBKSqcEWA=; b=QYvyXJyIBi4bja
	mGvSOJsZocv498q3GzDYCN6AMXL0160AEP+nCAfHC/TNKCw/xXjx1fvT5FdRVKfKEApWCkI3xgoAD
	nJ9NSE2U18STqUcnhrkzAp/zSKH+/9GxlRc2w42N8IGSUrb9kuxcH0V0HAae8FoanBBoJ0LY62yaL
	8RH/RrDM2HUD+vkesOg/2EK4F28neBgM6ckq0O4fiN3ZBgG8+aT8+PCnZ8BRavworCPRnVOv78fT9
	mFONZvQCTz8mOaJjltf4rSPqJgfv3lPm5NQlxNmuGmsJc1t6mz7MYlBk8N0XQ00mRSzsYC/9tdbbN
	UoqefqkdvGEgMTHTYhHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ0pE-0007nL-0L; Mon, 30 Mar 2020 20:16:00 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ0or-0007ao-Ox
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 20:15:39 +0000
X-Originating-IP: 86.202.105.35
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 19A37FF803;
 Mon, 30 Mar 2020 20:15:34 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 2/2] rtc: sun6i: switch to rtc_time64_to_tm/rtc_tm_to_time64
Date: Mon, 30 Mar 2020 22:15:10 +0200
Message-Id: <20200330201510.861217-3-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200330201510.861217-1-alexandre.belloni@bootlin.com>
References: <20200330201510.861217-1-alexandre.belloni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_131537_943074_3132D85D 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
 drivers/rtc/rtc-sun6i.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/rtc/rtc-sun6i.c b/drivers/rtc/rtc-sun6i.c
index 446ce38c1592..e2b8b150bcb4 100644
--- a/drivers/rtc/rtc-sun6i.c
+++ b/drivers/rtc/rtc-sun6i.c
@@ -498,7 +498,7 @@ static int sun6i_rtc_getalarm(struct device *dev, struct rtc_wkalrm *wkalrm)
 
 	wkalrm->enabled = !!(alrm_en & SUN6I_ALRM_EN_CNT_EN);
 	wkalrm->pending = !!(alrm_st & SUN6I_ALRM_EN_CNT_EN);
-	rtc_time_to_tm(chip->alarm, &wkalrm->time);
+	rtc_time64_to_tm(chip->alarm, &wkalrm->time);
 
 	return 0;
 }
@@ -519,8 +519,8 @@ static int sun6i_rtc_setalarm(struct device *dev, struct rtc_wkalrm *wkalrm)
 		return -EINVAL;
 	}
 
-	rtc_tm_to_time(alrm_tm, &time_set);
-	rtc_tm_to_time(&tm_now, &time_now);
+	time_set = rtc_tm_to_time64(alrm_tm);
+	time_now = rtc_tm_to_time64(&tm_now);
 	if (time_set <= time_now) {
 		dev_err(dev, "Date to set in the past\n");
 		return -EINVAL;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
