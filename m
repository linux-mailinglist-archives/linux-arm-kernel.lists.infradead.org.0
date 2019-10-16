Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55892D9BBA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 22:24:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sUOvSB0clTZiZqu0ecqi/ZfWf7eV4Teu+NuWFONA1fU=; b=V+6YG/PjyeZZLu
	aYUG5b0wWZN8ie0HSRhkayVSznAZew+hxbgvqLsN+B5l6w8xQBZqN7zsktXtm0TTHxZYgXd40GpV5
	zILVDbu6AgVZfwQqNo6gb3r56LIvS9jFsYn2n9YbmTX/9G6csqcfbD5Iw0bjy0LvycLnpVGz246wm
	JblKPU+9d2W1BaFJmFZpi4txBHVn1ustJzue6pN9gknB7gpKGYXIocU4suTLX/ksz1Cz2M7UADg8d
	RuusI7mfrOdDOfUk7AcSIESgr5JmScVsyofO6sVxcmW8G6Y+l4O4zWe/sccLLGp/N8sd8ZToZn4Ck
	NJM3qMcoH2DK8G5M1i3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpqM-0003Dx-Og; Wed, 16 Oct 2019 20:24:26 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpit-0003dy-8B
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 20:16:45 +0000
X-Originating-IP: 86.202.229.42
Received: from localhost (lfbn-lyo-1-146-42.w86-202.abo.wanadoo.fr
 [86.202.229.42])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 9BC1140002;
 Wed, 16 Oct 2019 20:16:34 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: linux-rtc@vger.kernel.org
Subject: [PATCH 5/5] rtc: vt8500: let the core handle rtc range
Date: Wed, 16 Oct 2019 22:16:26 +0200
Message-Id: <20191016201626.31309-5-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191016201626.31309-1-alexandre.belloni@bootlin.com>
References: <20191016201626.31309-1-alexandre.belloni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_131643_543772_661BFB62 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Tony Prisk <linux@prisktech.co.nz>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Let the rtc core check the date/time against the RTC range.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 drivers/rtc/rtc-vt8500.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/rtc/rtc-vt8500.c b/drivers/rtc/rtc-vt8500.c
index 0761478861f8..e2588625025f 100644
--- a/drivers/rtc/rtc-vt8500.c
+++ b/drivers/rtc/rtc-vt8500.c
@@ -122,12 +122,6 @@ static int vt8500_rtc_set_time(struct device *dev, struct rtc_time *tm)
 {
 	struct vt8500_rtc *vt8500_rtc = dev_get_drvdata(dev);
 
-	if (tm->tm_year < 100) {
-		dev_warn(dev, "Only years 2000-2199 are supported by the "
-			      "hardware!\n");
-		return -EINVAL;
-	}
-
 	writel((bin2bcd(tm->tm_year % 100) << DATE_YEAR_S)
 		| (bin2bcd(tm->tm_mon + 1) << DATE_MONTH_S)
 		| (bin2bcd(tm->tm_mday))
@@ -227,6 +221,8 @@ static int vt8500_rtc_probe(struct platform_device *pdev)
 		return PTR_ERR(vt8500_rtc->rtc);
 
 	vt8500_rtc->rtc->ops = &vt8500_rtc_ops;
+	vt8500_rtc->rtc->range_min = RTC_TIMESTAMP_BEGIN_2000;
+	vt8500_rtc->rtc->range_max = RTC_TIMESTAMP_END_2199;
 
 	ret = devm_request_irq(&pdev->dev, vt8500_rtc->irq_alarm,
 				vt8500_rtc_irq, 0, "rtc alarm", vt8500_rtc);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
