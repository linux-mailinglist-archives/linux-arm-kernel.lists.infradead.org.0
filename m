Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B0BB35898
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 10:34:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y1jE+ukKD5e9jO9ZkoDHZDctRtWDEsBp4rjTOCuGTHM=; b=CHa2uzdyct13ZT
	Nx5NdTu1IumVy3WMvXhgoyrBthD1ztHm/PQda9WgWBQymx2oyK/njMcL8DYNbrXjrqOCZAqtj6tsO
	ie++A6H5q/F7elq3ktdM+x19+7/T04FduCSNm+bOQItlZseTYPzUqQGzvbaWrVJeTKY/TbzHlPXcq
	QevaV/gbDI1cLSweotBhSIpNnJ6haHFIudlM9cRD1ozuoRLwS85Gyf4yWbRro3WLx0SDGdSRcYBAS
	sJXSHZtWF5AlwxXpAw9niXtCAK1apGInPMVR2fk7S+hPK4+YqS8uirfsy5UBSgcV3jMoZDc6QwiwU
	I2VTDgXY9sivxdpGt1PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYRN4-0001ZI-Ca; Wed, 05 Jun 2019 08:34:10 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYRMc-00018R-MF
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 08:33:44 +0000
Received: by mail-wr1-x441.google.com with SMTP id n9so6089718wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 01:33:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EhWbTT+5eo9QxU62r83O6HwrMSm/jGTQFiSriaCzgkM=;
 b=AK2aEHYTMTTgembsknTlJHO7cTfazErya1CARRNO412kTQtZZwciskduOJwC7xOvU5
 LqSiTAOhK8ce/VK/XaV+rETEZ/lUS+TGhvieAKZB0Zhl896sb+IMBTuiZUwZUuN5otCd
 Pp2GJgftRcEQF+/WtYrf/qotOCzuycu0CzOJqgbgHm8F0Dv1neTVLbY9U9uaHI9vbra0
 yYBE7e8LVz+yZH+qqPlZ1Rs89hKTknumavPZD0d1SZnGfKHf67Z795tuNv/VA6Z51PsV
 4tWJ1VrFt6v54jCITuwRoM/06DImisumMC3flcJVFPzfSeAUTwWB3iqFTuZca3gwW5Ie
 +gTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EhWbTT+5eo9QxU62r83O6HwrMSm/jGTQFiSriaCzgkM=;
 b=oITSkOGoc4GiiVqTL47VvW716AxTeps3X6p2kx19KTceSxS2QSXSc0M4v7zH48Ikgg
 O+22+jPuMqSo8PzWKHVift+U3QqnShgOfqK5V/jA6A9sK9XFHT770Y3KpbiQ9fbu5Hqf
 EsUZiHiBnpV07Jxxqdhf8oenF5mR6B0P8Wl8A6UarZRVbupJX7LCWsQ79P4WjFNs6s0C
 JGPBl7OHXBm1us5/xmNOMoD93pjNQq0JYvD6hw8UchuLF8C811uu7oi/O10mS2qQm3LL
 adV/S2q8xWQ7Rj6ceW9pBXTXsxut6oF6bbxStNjfm4geHOqZFr3cb6NGmHVLUguD110u
 gIow==
X-Gm-Message-State: APjAAAW0tkXeduwIcRGF4eYD2hWosCwbEgyWGs6Y/FPLrXtaQp6gH1Na
 dS1JvmUJ/s+n2v5PIBqvmOfzMg==
X-Google-Smtp-Source: APXvYqyrCBsPATmm5vC/XIiRQElJ1rdn5hHqIVJpfncoQGU5Wr7iMS8GBrOw0qC/dDqJRRyumd++Sg==
X-Received: by 2002:adf:b447:: with SMTP id v7mr24254105wrd.267.1559723621218; 
 Wed, 05 Jun 2019 01:33:41 -0700 (PDT)
Received: from debian-brgl.home ([2a01:cb1d:af:5b00:6d6c:8493:1ab5:dad7])
 by smtp.gmail.com with ESMTPSA id b5sm15274471wrx.22.2019.06.05.01.33.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 01:33:40 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, David Lechner <david@lechnology.com>
Subject: [RFC v3 2/2] clocksource: timer-davinci: add support for clocksource
Date: Wed,  5 Jun 2019 10:33:34 +0200
Message-Id: <20190605083334.22383-3-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190605083334.22383-1-brgl@bgdev.pl>
References: <20190605083334.22383-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_013342_722414_09AA561D 
X-CRM114-Status: GOOD (  15.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 drivers/clocksource/timer-davinci.c | 85 +++++++++++++++++++++++++++++
 1 file changed, 85 insertions(+)

diff --git a/drivers/clocksource/timer-davinci.c b/drivers/clocksource/timer-davinci.c
index f8959dccae54..a9ca02390b66 100644
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
@@ -248,6 +307,32 @@ int __init davinci_timer_register(struct clk *clk,
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
