Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8F327D74
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 14:58:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7xPx6acHU3C8F6TOnym9W+/AEKOXuNx15WwIkl93Hr8=; b=aVK66f0Fr+H/U7
	G8ZIDvgIqUkqV6+Dov60UAwQEjvaEBFYTmEXWn60Dw3fhs+4kA/TZJxhP7mTL/AA37Mr4RLSfL9aq
	qO7NrLOtx9kMljSM2RTuFy3S3zbciocYlIRZ5+ChePqN2hTI98ViEuwDYJBpCpJaujDPhI2aJ6KB0
	eBlV2ibGrHvKBVi4Q5jh8VCcafNkzc/3ASQkmqOewnuWhFGjO6S/pogL0sUZyv2lEOhYEdNSIS7tK
	ZFu3EI0n3wPcm6o9dg8HqsxECK3OQEH/rQ+Jt+PEWyTACi6d9OUBsdjOu/XyrX8xC3oeHAbgoJORe
	o/9FDoKIkeI1xJTdGeBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTnJ5-0005OC-EC; Thu, 23 May 2019 12:58:51 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTnIb-000519-Cc
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 12:58:22 +0000
Received: by mail-wr1-x444.google.com with SMTP id d9so6197706wrx.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 05:58:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nqdpY2LQg8cD0Q7ImVAeUfx8gIe6ICusJd7h8JzZcDE=;
 b=Zokiu3YQNIavDTtCpIhDCFiP/tTPmfP+fqgYKJo/eSQIF2xEh7ytvAN7ICF/k7PLc7
 tOQ6+rz0i77Mx4SY3lHYDlpDV58r3m1URlnKktyRNi4GHYxzcc4/G0SuEOdR2y7UqfYC
 ZylymUqDwchH/8pYuIaHsfIoWVVfQGVIYWe6gV4XFq2OJu2Hql9nVIwcotzEHrvMmbFt
 RdTq9Eu9+npyYM2DM+bO6h+/iPTf/MkAE+qAqouuBwrEd5HdvtZQSqRsBaepJNv3G8D/
 isIB377mlMu0LYPXTYWCiMqLuxeJSWprFcmGvAkcaPFGwWospmDrDny10Ia6wWzREloC
 QApQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nqdpY2LQg8cD0Q7ImVAeUfx8gIe6ICusJd7h8JzZcDE=;
 b=JdSAPGYhx3X8NxNtIhIK0ixeHkA0FvmHtU76Sth5LlUs9dqoQz2YI0rLVEbLr9KSUs
 K+Qqg656sCQrNa0qHtNCQxy1BKqGCsuUWGwdJcCt0zTsAcZcbFTRf2ZvZwdYC/k92C4d
 EjBdVqJsxAgLRyqUyNJY/7de1qVrAAtYd89HqmhfSJh5qRk0xU0ozUfEMnH5VPEAd09R
 2N04vjtpDDRoi2c4mQthtVC8HMVgbblDyh7CESFd7yomfag3bY8CvmU/D/NKS/i1s9mB
 XTJypcDzV85jvztL4ca116BpGs8VsB1fU67IV7ZqOnGzjL9xH3jNcXfOfXgFQrU6BvCw
 lc8g==
X-Gm-Message-State: APjAAAWtRXmWD19JS4kD7+Q30E159RAVi1cFsdhmqRRxUvAs5DHwpVL3
 bOUUScI4ahGcM8/4rTHf7DSpEw==
X-Google-Smtp-Source: APXvYqzV/+VY6wKY3Jnwt76G7ppkPUAaS2+L0GpjNPcmnINNdD7bVXm2MCFpzJ4FrzZLFjFNLoSvOA==
X-Received: by 2002:adf:dc84:: with SMTP id r4mr1392200wrj.85.1558616298931;
 Thu, 23 May 2019 05:58:18 -0700 (PDT)
Received: from debian-brgl.home ([2a01:cb1d:af:5b00:6d6c:8493:1ab5:dad7])
 by smtp.gmail.com with ESMTPSA id s13sm9876118wmh.31.2019.05.23.05.58.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 05:58:18 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, David Lechner <david@lechnology.com>
Subject: [RFC v2 2/2] clocksource: timer-davinci: add support for clocksource
Date: Thu, 23 May 2019 14:58:13 +0200
Message-Id: <20190523125813.29506-3-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190523125813.29506-1-brgl@bgdev.pl>
References: <20190523125813.29506-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_055821_427009_AB4932F4 
X-CRM114-Status: GOOD (  15.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 drivers/clocksource/timer-davinci.c | 70 +++++++++++++++++++++++++++++
 1 file changed, 70 insertions(+)

diff --git a/drivers/clocksource/timer-davinci.c b/drivers/clocksource/timer-davinci.c
index a8fc7b3805c9..c478991da253 100644
--- a/drivers/clocksource/timer-davinci.c
+++ b/drivers/clocksource/timer-davinci.c
@@ -42,6 +42,8 @@
 #define DAVINCI_TIMER_MIN_DELTA			0x01
 #define DAVINCI_TIMER_MAX_DELTA			0xfffffffe
 
+#define DAVINCI_TIMER_CLKSRC_BITS		32
+
 #define DAVINCI_TIMER_TGCR_DEFAULT \
 		(DAVINCI_TIMER_TIMMODE_32BIT_UNCHAINED | DAVINCI_TIMER_UNRESET)
 
@@ -61,6 +63,16 @@ struct davinci_clockevent {
 	unsigned int enamode_mask;
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
@@ -159,6 +171,32 @@ static irqreturn_t davinci_timer_irq_timer(int irq, void *data)
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
+static void davinci_clocksource_init(void __iomem *base, unsigned int tim_off,
+				     unsigned int prd_off, unsigned int shift)
+{
+	davinci_tcr_update(base,
+			   DAVINCI_TIMER_ENAMODE_MASK << shift,
+			   DAVINCI_TIMER_ENAMODE_DISABLED << shift);
+
+	writel_relaxed(0x0, base + tim_off);
+	writel_relaxed(UINT_MAX, base + prd_off);
+
+	davinci_tcr_update(base,
+			   DAVINCI_TIMER_ENAMODE_MASK << shift,
+			   DAVINCI_TIMER_ENAMODE_ONESHOT << shift);
+}
+
 static void davinci_timer_init(void __iomem *base)
 {
 	/* Set clock to internal mode and disable it. */
@@ -248,6 +286,38 @@ int __init davinci_timer_register(struct clk *clk,
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
+		davinci_clocksource_init(base,
+					 DAVINCI_TIMER_REG_TIM12,
+					 DAVINCI_TIMER_REG_PRD12,
+					 DAVINCI_TIMER_ENAMODE_SHIFT_TIM12);
+	} else {
+		davinci_clocksource.dev.name = "tim34";
+		davinci_clocksource.tim_off = DAVINCI_TIMER_REG_TIM34;
+		davinci_clocksource_init(base,
+					 DAVINCI_TIMER_REG_TIM34,
+					 DAVINCI_TIMER_REG_PRD34,
+					 DAVINCI_TIMER_ENAMODE_SHIFT_TIM34);
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
