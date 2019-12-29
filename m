Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A0112CAE8
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Dec 2019 21:46:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5HIsRWF1CAc9/d0ipxQpFI2lYh7Nk6APvUdPGyuzrNU=; b=q7aXXkOe7GbDOr
	GcYMaylIvUB6DEpeotiwORK2ue+m5M5M7Eq2cxB75jDSnIQT+f8o/cy8oN+jyMTnRUBwiQmE2YLZR
	pbnIJwkP/vMxipH+9YlUKZKBq00nIzEjTZOtGKSRFau1mFXeLXBEuWKqoc+Oj8Gwib8D+8sy1ERHG
	vO3sAUtO5HRk0j2TiNtoouwpomKLHgHHcgt3gr1g1039pFbiIFZ2HPt7IyL828EBip38Kux9oKpmg
	DEfMHYHCb9FWGiWlW9ZJGkJK/x9YM+LMXkivAOp4IHlxX6A6Hp3JKAlmEkSraKE0o0JTcibOgovm4
	CmYVN5H/+0ytaNdpsEVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilfSg-0002Xj-A2; Sun, 29 Dec 2019 20:46:54 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilfRJ-0001aO-P0
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Dec 2019 20:45:32 +0000
X-Originating-IP: 92.184.100.83
Received: from localhost (unknown [92.184.100.83])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 897D9E0003;
 Sun, 29 Dec 2019 20:45:27 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: linux-rtc@vger.kernel.org
Subject: [PATCH 7/9] rtc: at91rm9200: add correction support
Date: Sun, 29 Dec 2019 21:44:19 +0100
Message-Id: <20191229204421.337612-7-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191229204421.337612-1-alexandre.belloni@bootlin.com>
References: <20191229204421.337612-1-alexandre.belloni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_124530_135756_D7A25B43 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
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

The sama5d4 and sama5d2 RTCs are able to correct for imprecise crystals, up
to 1953 ppm.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 drivers/rtc/rtc-at91rm9200.c | 95 ++++++++++++++++++++++++++++++++++--
 1 file changed, 91 insertions(+), 4 deletions(-)

diff --git a/drivers/rtc/rtc-at91rm9200.c b/drivers/rtc/rtc-at91rm9200.c
index 5e811e04cb21..fe4823e1fd60 100644
--- a/drivers/rtc/rtc-at91rm9200.c
+++ b/drivers/rtc/rtc-at91rm9200.c
@@ -36,6 +36,10 @@
 #define		AT91_RTC_UPDCAL		BIT(1)		/* Update Request Calendar Register */
 
 #define	AT91_RTC_MR		0x04			/* Mode Register */
+#define		AT91_RTC_HRMOD		BIT(0)		/* 12/24 hour mode */
+#define		AT91_RTC_NEGPPM		BIT(4)		/* Negative PPM correction */
+#define		AT91_RTC_CORRECTION	GENMASK(14, 8)	/* Slow clock correction */
+#define		AT91_RTC_HIGHPPM	BIT(15)		/* High PPM correction */
 
 #define	AT91_RTC_TIMR		0x08			/* Time Register */
 #define		AT91_RTC_SEC		GENMASK(6, 0)	/* Current Second */
@@ -77,6 +81,9 @@
 #define		AT91_RTC_NVTIMALR	BIT(2)		/* Non valid Time Alarm */
 #define		AT91_RTC_NVCALALR	BIT(3)		/* Non valid Calendar Alarm */
 
+#define AT91_RTC_CORR_STEP		1526
+#define AT91_RTC_CORR_STEP_HIGH		30516
+
 #define at91_rtc_read(field) \
 	readl_relaxed(at91_rtc_regs + field)
 #define at91_rtc_write(field, val) \
@@ -84,6 +91,7 @@
 
 struct at91_rtc_config {
 	bool use_shadow_imr;
+	bool has_correction;
 };
 
 static const struct at91_rtc_config *at91_rtc_config;
@@ -293,6 +301,66 @@ static int at91_rtc_alarm_irq_enable(struct device *dev, unsigned int enabled)
 	return 0;
 }
 
+static int at91_rtc_readoffset(struct device *dev, long *offset)
+{
+	u32 mr = at91_rtc_read(AT91_RTC_MR);
+	long val = FIELD_GET(AT91_RTC_CORRECTION, mr);
+
+	if (!val) {
+		*offset = 0;
+		return 0;
+	}
+
+	val++;
+
+	if (mr & AT91_RTC_NEGPPM)
+		val = -val;
+
+	if (mr & AT91_RTC_HIGHPPM)
+		*offset = val * AT91_RTC_CORR_STEP_HIGH;
+	else
+		*offset = val * AT91_RTC_CORR_STEP;
+
+	return 0;
+}
+
+static int at91_rtc_setoffset(struct device *dev, long offset)
+{
+	long mode0, mode1, error0, error1;
+	u32 mr;
+	
+
+	if (offset > AT91_RTC_CORR_STEP_HIGH * 128)
+		return -ERANGE;
+	if (offset < AT91_RTC_CORR_STEP_HIGH * -128)
+		return -ERANGE;
+
+	mr = at91_rtc_read(AT91_RTC_MR);
+	mr &= ~(AT91_RTC_NEGPPM | AT91_RTC_CORRECTION | AT91_RTC_HIGHPPM);
+
+	if (offset < 0) {
+		mr |= AT91_RTC_NEGPPM;
+		offset = -offset;
+	}
+
+	mode0 = DIV_ROUND_CLOSEST(offset, AT91_RTC_CORR_STEP);
+	mode1 = DIV_ROUND_CLOSEST(offset, AT91_RTC_CORR_STEP_HIGH);
+
+	error0 = abs(offset - (mode0 * AT91_RTC_CORR_STEP));
+	error1 = abs(offset - (mode1 * AT91_RTC_CORR_STEP_HIGH));
+
+	if (mode0 > 128 || error0 > error1) {
+		mr |= AT91_RTC_HIGHPPM;
+		mr |= FIELD_PREP(AT91_RTC_CORRECTION, mode1 - 1);
+	} else {
+		mr |= FIELD_PREP(AT91_RTC_CORRECTION, mode0 - 1);
+	}
+
+	at91_rtc_write(AT91_RTC_MR, mr);
+
+	return 0;
+}
+
 /*
  * IRQ handler for the RTC
  */
@@ -343,6 +411,10 @@ static const struct at91_rtc_config at91sam9x5_config = {
 	.use_shadow_imr	= true,
 };
 
+static const struct at91_rtc_config sama5d4_config = {
+	.has_correction = true,
+};
+
 static const struct of_device_id at91_rtc_dt_ids[] = {
 	{
 		.compatible = "atmel,at91rm9200-rtc",
@@ -352,10 +424,10 @@ static const struct of_device_id at91_rtc_dt_ids[] = {
 		.data = &at91sam9x5_config,
 	}, {
 		.compatible = "atmel,sama5d4-rtc",
-		.data = &at91rm9200_config,
+		.data = &sama5d4_config,
 	}, {
 		.compatible = "atmel,sama5d2-rtc",
-		.data = &at91rm9200_config,
+		.data = &sama5d4_config,
 	}, {
 		/* sentinel */
 	}
@@ -370,6 +442,16 @@ static const struct rtc_class_ops at91_rtc_ops = {
 	.alarm_irq_enable = at91_rtc_alarm_irq_enable,
 };
 
+static const struct rtc_class_ops sama5d4_rtc_ops = {
+	.read_time	= at91_rtc_readtime,
+	.set_time	= at91_rtc_settime,
+	.read_alarm	= at91_rtc_readalarm,
+	.set_alarm	= at91_rtc_setalarm,
+	.alarm_irq_enable = at91_rtc_alarm_irq_enable,
+	.set_offset	= at91_rtc_setoffset,
+	.read_offset	= at91_rtc_readoffset,
+};
+
 /*
  * Initialize and install RTC driver
  */
@@ -416,7 +498,8 @@ static int __init at91_rtc_probe(struct platform_device *pdev)
 	}
 
 	at91_rtc_write(AT91_RTC_CR, 0);
-	at91_rtc_write(AT91_RTC_MR, 0);		/* 24 hour mode */
+	at91_rtc_write(AT91_RTC_MR,
+		       at91_rtc_read(AT91_RTC_MR) & ~AT91_RTC_HRMOD);
 
 	/* Disable all interrupts */
 	at91_rtc_write_idr(AT91_RTC_ACKUPD | AT91_RTC_ALARM |
@@ -437,7 +520,11 @@ static int __init at91_rtc_probe(struct platform_device *pdev)
 	if (!device_can_wakeup(&pdev->dev))
 		device_init_wakeup(&pdev->dev, 1);
 
-	rtc->ops = &at91_rtc_ops;
+	if (at91_rtc_config->has_correction)
+		rtc->ops = &sama5d4_rtc_ops;
+	else
+		rtc->ops = &at91_rtc_ops;
+
 	rtc->range_min = RTC_TIMESTAMP_BEGIN_1900;
 	rtc->range_max = RTC_TIMESTAMP_END_2099;
 	ret = rtc_register_device(rtc);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
