Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E24250629
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 11:52:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GDoBtgaJyt1Pkg5h8CdkHU3jwYn15W0WHRR8W5GRCkE=; b=W0NDjMHZuuCPk5
	kwQM7+8LWL9xM8Kr879HgeaKXayictX5zIbw5MJiUZMikG5LeLVsroY4JUMrNgMzkvPl1BTOobP2Y
	ZKEliqjmW6hT5Pw0IQSFi7QIyCaGh0DC3tZrJohbOqdw/nEQ0ZXyo8Yr4gX12RioPqlJittHiwfYK
	G3m2GZvpk2tSNGCuLdSgpAQGeYPxORHZ2V54m+SkIlNjm6uAMWukyuDWYO3cbDi1vzv5XFY4Xdu7x
	qsNdU+a/mMV2R4D5bA2TOmKm75cQXW5RIqCnnFadw1srqTmmSRxSdIdMfuvkCMlmmQNJa3ZJ/htZa
	YVodYVBsDUk0I2TlIQLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfLdm-00032P-AM; Mon, 24 Jun 2019 09:51:58 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfLcs-0002XQ-Ky
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 09:51:04 +0000
Received: by mail-wr1-x441.google.com with SMTP id n9so13219272wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 02:51:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ERvP18ElM9iGQv4olP0pOB1DAN2oRrtEk4GL0uEhELg=;
 b=aL+jleWNR+s/HGePYfp2hzCjk2Cqss5aN1Pen0BBQN/vvUB2MtZAwiaXDd1M7KTXK2
 dp8xePAr7iXNbH9xwG6K5YZYiiG2rVXFn4qBOND+t6nS3CIqWKjOTLWfBe3/wazN2VG4
 dNOHnlU+uBHvguLS4e2jDcFyWlKi4iKR01RTIEA1Y1pPP6xFg7pv2imo/gE+jvDzIRiC
 M+rFjrO9TMCKl4n4nMmZ6qqGHRQDi0YMKS4VcP016Dc6VCAuG05BYxW6iWrBUGZPi4w6
 ck8YYiDxICHLiYKqZJbiXu++E7d2x64v4SOjmhRqPIHOXpc+bWET8F4b4Wz9vppO7HMq
 ZBcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ERvP18ElM9iGQv4olP0pOB1DAN2oRrtEk4GL0uEhELg=;
 b=bBDaT4KJsGh48MuG9og3FEWaWin+zWqzGD2zGkSQz7TNC782n/gPhSDudyqDKXxHAd
 HVaHisdLcWpao96AET6ctyaNzMPhCDzIss97sQDuaJ67Yc88Weeag1Nvu7fW58Zm2BbY
 NtXysOLgS1+czJjmCfBAaQ/EdMBs4NzBmjGupSu0NtyRZiRVazWGvjM5a7JL5DEWPw6d
 /Wv4gV09Gf1UzBhi/BcrnQI159GNj2qnqH9TwjPnD5STraYpOGDthOCHe6L7ukOEeELk
 9lVTqxkhA5sjQuX6ZNBzi7jtwDvaps/Oihph1dqLzX5CDUaqeodMLo6Sl87pRySU3slg
 O9zQ==
X-Gm-Message-State: APjAAAWMO/YYRfFcBsicWqFUio1ewGuRqd73QT47DgNxQSC7m8ODYe5Y
 D7DyY+F7h4xL3+IrvTS+7+xmrQ==
X-Google-Smtp-Source: APXvYqzkwcamwoa1d7Z8HD1hnxyuHpQAATvcOA4Jo91j164N2alX6vLeBu5frBqlmjPNEN0HlFqwiA==
X-Received: by 2002:adf:eb4e:: with SMTP id u14mr10825792wrn.168.1561369861508; 
 Mon, 24 Jun 2019 02:51:01 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id y17sm17364483wrg.18.2019.06.24.02.51.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 02:51:00 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, David Lechner <david@lechnology.com>
Subject: [PATCH v8 2/2] clocksource: timer-davinci: add support for clocksource
Date: Mon, 24 Jun 2019 11:50:56 +0200
Message-Id: <20190624095056.21296-3-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190624095056.21296-1-brgl@bgdev.pl>
References: <20190624095056.21296-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_025102_736256_7B5F49B8 
X-CRM114-Status: GOOD (  15.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Extend the davinci-timer driver to also register a clock source.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 drivers/clocksource/timer-davinci.c | 85 +++++++++++++++++++++++++++++
 1 file changed, 85 insertions(+)

diff --git a/drivers/clocksource/timer-davinci.c b/drivers/clocksource/timer-davinci.c
index 246a5564495d..62745c962049 100644
--- a/drivers/clocksource/timer-davinci.c
+++ b/drivers/clocksource/timer-davinci.c
@@ -43,6 +43,8 @@
 #define DAVINCI_TIMER_MIN_DELTA			0x01
 #define DAVINCI_TIMER_MAX_DELTA			0xfffffffe
 
+#define DAVINCI_TIMER_CLKSRC_BITS		32
+
 #define DAVINCI_TIMER_TGCR_DEFAULT \
 		(DAVINCI_TIMER_TIMMODE_32BIT_UNCHAINED | DAVINCI_TIMER_UNRESET)
 
@@ -52,6 +54,16 @@ struct davinci_clockevent {
 	unsigned int cmp_off;
 };
 
+/*
+ * This must be globally accessible by davinci_timer_read_sched_clock(), so
+ * let's keep it here.
+ */
+static struct {
+	struct clocksource dev;
+	void __iomem *base;
+	unsigned int tim_off;
+} davinci_clocksource;
+
 static struct davinci_clockevent *
 to_davinci_clockevent(struct clock_event_device *clockevent)
 {
@@ -166,6 +178,53 @@ static irqreturn_t davinci_timer_irq_timer(int irq, void *data)
 	return IRQ_HANDLED;
 }
 
+static u64 notrace davinci_timer_read_sched_clock(void)
+{
+	return readl_relaxed(davinci_clocksource.base +
+			     davinci_clocksource.tim_off);
+}
+
+static u64 davinci_clocksource_read(struct clocksource *dev)
+{
+	return davinci_timer_read_sched_clock();
+}
+
+/*
+ * Standard use-case: we're using tim12 for clockevent and tim34 for
+ * clocksource. The default is making the former run in oneshot mode
+ * and the latter in periodic mode.
+ */
+static void davinci_clocksource_init_tim34(void __iomem *base)
+{
+	int tcr;
+
+	tcr = DAVINCI_TIMER_ENAMODE_PERIODIC <<
+		DAVINCI_TIMER_ENAMODE_SHIFT_TIM34;
+	tcr |= DAVINCI_TIMER_ENAMODE_ONESHOT <<
+		DAVINCI_TIMER_ENAMODE_SHIFT_TIM12;
+
+	writel_relaxed(0x0, base + DAVINCI_TIMER_REG_TIM34);
+	writel_relaxed(UINT_MAX, base + DAVINCI_TIMER_REG_PRD34);
+	writel_relaxed(tcr, base + DAVINCI_TIMER_REG_TCR);
+}
+
+/*
+ * Special use-case on da830: the DSP may use tim34. We're using tim12 for
+ * both clocksource and clockevent. We set tim12 to periodic and don't touch
+ * tim34.
+ */
+static void davinci_clocksource_init_tim12(void __iomem *base)
+{
+	unsigned int tcr;
+
+	tcr = DAVINCI_TIMER_ENAMODE_PERIODIC <<
+		DAVINCI_TIMER_ENAMODE_SHIFT_TIM12;
+
+	writel_relaxed(0x0, base + DAVINCI_TIMER_REG_TIM12);
+	writel_relaxed(UINT_MAX, base + DAVINCI_TIMER_REG_PRD12);
+	writel_relaxed(tcr, base + DAVINCI_TIMER_REG_TCR);
+}
+
 static void davinci_timer_init(void __iomem *base)
 {
 	/* Set clock to internal mode and disable it. */
@@ -247,6 +306,32 @@ int __init davinci_timer_register(struct clk *clk,
 					DAVINCI_TIMER_MIN_DELTA,
 					DAVINCI_TIMER_MAX_DELTA);
 
+	davinci_clocksource.dev.rating = 300;
+	davinci_clocksource.dev.read = davinci_clocksource_read;
+	davinci_clocksource.dev.mask =
+			CLOCKSOURCE_MASK(DAVINCI_TIMER_CLKSRC_BITS);
+	davinci_clocksource.dev.flags = CLOCK_SOURCE_IS_CONTINUOUS;
+	davinci_clocksource.base = base;
+
+	if (timer_cfg->cmp_off) {
+		davinci_clocksource.dev.name = "tim12";
+		davinci_clocksource.tim_off = DAVINCI_TIMER_REG_TIM12;
+		davinci_clocksource_init_tim12(base);
+	} else {
+		davinci_clocksource.dev.name = "tim34";
+		davinci_clocksource.tim_off = DAVINCI_TIMER_REG_TIM34;
+		davinci_clocksource_init_tim34(base);
+	}
+
+	rv = clocksource_register_hz(&davinci_clocksource.dev, tick_rate);
+	if (rv) {
+		pr_err("Unable to register clocksource");
+		return rv;
+	}
+
+	sched_clock_register(davinci_timer_read_sched_clock,
+			     DAVINCI_TIMER_CLKSRC_BITS, tick_rate);
+
 	return 0;
 }
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
