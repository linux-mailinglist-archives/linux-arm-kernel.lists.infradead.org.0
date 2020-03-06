Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E478317B348
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 01:59:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w/KxRblgsv6YvTmM4U7/quCaIGR7LbxRH3d3myhC0Uo=; b=Kf+/9xZbz50c3I
	73BBmyVN4/GJ6k3ogmR3CFQ/goHvgF8030++vEFPgQd8opgkCiug29NBPOrEr+1zadm8JL6yYx1qA
	mEMoT+L9lZrvjasfmB9UMh5KFH8uB/vbeV+YJNOnaKnY7a4v6u0Sb+tlsnoxUni2ThGq1q5gERk+9
	C/CwmWdMYL8ZzcK+71Kc5HjggzCBOC74sWfYap9eMH+VFt/Vp4mdkPYj5kkJGPWuhvVlko73WUR9Q
	ySHKQlKS/tFHHdWo/L5ijQB3AX8ZsnZy+oSMIph7jCS3l9tYRufUh1t1K8ulxjd5FiITbOCe9sjsU
	CyXLvU8HqgqeYDW/t79Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA1KQ-0004Tu-0e; Fri, 06 Mar 2020 00:59:02 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA1Jo-000441-Iw
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 00:58:26 +0000
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 96059200003;
 Fri,  6 Mar 2020 00:58:14 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Linus Walleij <linus.walleij@linaro.org>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [PATCH 2/3] rtc: pl031: set range
Date: Fri,  6 Mar 2020 01:58:08 +0100
Message-Id: <20200306005809.38530-2-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200306005809.38530-1-alexandre.belloni@bootlin.com>
References: <20200306005809.38530-1-alexandre.belloni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_165824_755925_7B08FF07 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-rtc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The PL031 and ST v1 RTC are 32bit seconds counters. STv2 is a BCD RTC
apparently going from 0000 to 9999, hopefully handling the leap days
properly until then.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 drivers/rtc/rtc-pl031.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/rtc/rtc-pl031.c b/drivers/rtc/rtc-pl031.c
index 2e8e019a6e4c..07dc0f264100 100644
--- a/drivers/rtc/rtc-pl031.c
+++ b/drivers/rtc/rtc-pl031.c
@@ -80,6 +80,8 @@ struct pl031_vendor_data {
 	bool clockwatch;
 	bool st_weekday;
 	unsigned long irqflags;
+	time64_t range_min;
+	timeu64_t range_max;
 };
 
 struct pl031_local {
@@ -375,6 +377,8 @@ static int pl031_probe(struct amba_device *adev, const struct amba_id *id)
 		return PTR_ERR(ldata->rtc);
 
 	ldata->rtc->ops = ops;
+	ldata->rtc->range_min = vendor->range_min;
+	ldata->rtc->range_max = vendor->range_max;
 
 	ret = rtc_register_device(ldata->rtc);
 	if (ret)
@@ -405,6 +409,7 @@ static struct pl031_vendor_data arm_pl031 = {
 		.set_alarm = pl031_set_alarm,
 		.alarm_irq_enable = pl031_alarm_irq_enable,
 	},
+	.range_max = U32_MAX,
 };
 
 /* The First ST derivative */
@@ -418,6 +423,7 @@ static struct pl031_vendor_data stv1_pl031 = {
 	},
 	.clockwatch = true,
 	.st_weekday = true,
+	.range_max = U32_MAX,
 };
 
 /* And the second ST derivative */
@@ -438,6 +444,8 @@ static struct pl031_vendor_data stv2_pl031 = {
 	 * remove IRQF_COND_SUSPEND
 	 */
 	.irqflags = IRQF_SHARED | IRQF_COND_SUSPEND,
+	.range_min = RTC_TIMESTAMP_BEGIN_0000,
+	.range_max = RTC_TIMESTAMP_END_9999,
 };
 
 static const struct amba_id pl031_ids[] = {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
