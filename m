Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06B69129FED
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 11:04:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HYWzo122foo6LApqXwzXFYWUHF6LyO9SJUnDC2aqQLQ=; b=VNWZkdKiZUdsjd
	AucEFa2Vw+UmJeCSZAz/j+q6ptncj+SnCPXLrXcCchzTcf9ImKVQsifLQsvASny4Ru8YY1dQHxpsA
	7aldPgqLsgbNOC3HOoQrs2mX9blTRty3TBt6n84znlFXh6xyZ6daUDF57k4HGl+vWHjIhq0BLk1Vx
	OuPFuGC7IljdIj5MHLM8cm6jRWjZUrmFIQvgOR4UH7L+4j4lTRpPVw/I0HKYr73ZmHni5Xy4Ya88l
	ZGUj0BU/UaLBpnSh39gFhE1hukgcqpvc5zWkwIRNEhCdzRdozVaYenpnr0JPcow2CdVZ5EUsK16a2
	oZJCqC9Thds+1xOvLwWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijh2y-0006CA-9n; Tue, 24 Dec 2019 10:04:12 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijh2N-0005xA-6T
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 10:03:36 +0000
Received: by mail-wr1-x444.google.com with SMTP id g17so19368035wro.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Dec 2019 02:03:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IOU/3rF9+fuzA5asqkKAmzkuulu7zyIHvx1EjERPIsc=;
 b=a9IhZppL5a8/+KLGjQ8Z/Hg37A+/pBB0A5pgOJ2JSDBsBCYTY6cmA0C2xu/OrvI57M
 MXEu9cJ8opTXxf+4OeOlK2PEtD/iglKIw0DmL3dLwXCc0k1z0KTYrOhDXlG2WA3WsHX/
 XcJVf9oWdXi515QH0//c5j0Hn8M9Sqqu+yKHIwuQBHSUceG3lhDE8RkMl/4WIPGm73cA
 /Lrwv5V39LeG6yjbE4iq8kBCKMvPNykT5DGCE6feHnkNcgc4j9FORJ+pL7FcGjDXWBij
 4vt0URC1rMSQx/up8KKB4XA5euN/zOxiMaWJ1gBKszClbhz2PuB/RCImS5d1JRqg3lnj
 x/QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IOU/3rF9+fuzA5asqkKAmzkuulu7zyIHvx1EjERPIsc=;
 b=jgk9Dblucy/U8XkjOvN0tyaSp3iEFa4GNSOsGcC5G50V6UbAbnnMw+DwmPE228RPNh
 Zl2dSLsxwIeojL2fd4DVH96lsUHE11EC4CJZtE5ouCntr/dNRFeRjptl60CIXKkIFcyw
 HxiR9b8B73L8OgbQXCtvoK0nqRMgY0c5gLrpB6txzuWdNpHt7xmhr5FDp1vopt//p7bP
 9qAsSZ0nlzQeTpvGoylKij2Kfx5VyUiIOIA9CZesiy/9MZ63m0f21215jx9Ypqiura3t
 eGrRq7izdbkeY0oF8kXddxBbCl7n3qNZytjvt2FxpDsCdWYJDfACU4beH4GuZfi8wgZ5
 PY0g==
X-Gm-Message-State: APjAAAXJfc/3Ew3TC+6AN3DZ5l9Z6OUUsB3OBH5NT77Tzc3Fk4ajPaz6
 jIY1olH0ueV6mp+KGw63KbHMRQ==
X-Google-Smtp-Source: APXvYqz/w1dmLmweJHLlEnDCKSnJsQ2/Bj2X/bPyXS+HazNTW+SKi+yFKfSZtSIJaG7d9Y1kufjboQ==
X-Received: by 2002:a5d:4d4a:: with SMTP id a10mr34681699wru.220.1577181813740; 
 Tue, 24 Dec 2019 02:03:33 -0800 (PST)
Received: from debian-brgl.home ([2a01:cb1d:af:5b00:6d6c:8493:1ab5:dad7])
 by smtp.gmail.com with ESMTPSA id a184sm2164048wmf.29.2019.12.24.02.03.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Dec 2019 02:03:33 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, David Lechner <david@lechnology.com>,
 Kevin Hilman <khilman@kernel.org>
Subject: [PATCH v2 1/3] clocksource: davinci: only enable tim34 in periodic
 mode once it's initialized
Date: Tue, 24 Dec 2019 11:03:26 +0100
Message-Id: <20191224100328.13608-2-brgl@bgdev.pl>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191224100328.13608-1-brgl@bgdev.pl>
References: <20191224100328.13608-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_020335_233779_63C04259 
X-CRM114-Status: GOOD (  12.02  )
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

The DM365 platform has a strange quirk (only present when using ancient
u-boot - mainline u-boot v2013.01 and later works fine) where if we
enable the second half of the timer in periodic mode before we do its
initialization - the time won't start flowing and we can't boot.

When using more recent u-boot, we can enable the timer, then reinitialize
it and all works fine.

I've been unable to figure out why that is, but a workaround for this
is straightforward - don't enable the tim34 timer in periodic mode until
it's properly initialized.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 drivers/clocksource/timer-davinci.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/clocksource/timer-davinci.c b/drivers/clocksource/timer-davinci.c
index 62745c962049..2801f21bb0e2 100644
--- a/drivers/clocksource/timer-davinci.c
+++ b/drivers/clocksource/timer-davinci.c
@@ -62,6 +62,7 @@ static struct {
 	struct clocksource dev;
 	void __iomem *base;
 	unsigned int tim_off;
+	bool initialized;
 } davinci_clocksource;
 
 static struct davinci_clockevent *
@@ -94,8 +95,9 @@ static void davinci_tim12_shutdown(void __iomem *base)
 	 * halves. In this case TIM34 runs in periodic mode and we must
 	 * not modify it.
 	 */
-	tcr |= DAVINCI_TIMER_ENAMODE_PERIODIC <<
-		DAVINCI_TIMER_ENAMODE_SHIFT_TIM34;
+	if (likely(davinci_clocksource.initialized))
+		tcr |= DAVINCI_TIMER_ENAMODE_PERIODIC <<
+		       DAVINCI_TIMER_ENAMODE_SHIFT_TIM34;
 
 	writel_relaxed(tcr, base + DAVINCI_TIMER_REG_TCR);
 }
@@ -107,8 +109,9 @@ static void davinci_tim12_set_oneshot(void __iomem *base)
 	tcr = DAVINCI_TIMER_ENAMODE_ONESHOT <<
 		DAVINCI_TIMER_ENAMODE_SHIFT_TIM12;
 	/* Same as above. */
-	tcr |= DAVINCI_TIMER_ENAMODE_PERIODIC <<
-		DAVINCI_TIMER_ENAMODE_SHIFT_TIM34;
+	if (likely(davinci_clocksource.initialized))
+		tcr |= DAVINCI_TIMER_ENAMODE_PERIODIC <<
+		       DAVINCI_TIMER_ENAMODE_SHIFT_TIM34;
 
 	writel_relaxed(tcr, base + DAVINCI_TIMER_REG_TCR);
 }
@@ -206,6 +209,8 @@ static void davinci_clocksource_init_tim34(void __iomem *base)
 	writel_relaxed(0x0, base + DAVINCI_TIMER_REG_TIM34);
 	writel_relaxed(UINT_MAX, base + DAVINCI_TIMER_REG_PRD34);
 	writel_relaxed(tcr, base + DAVINCI_TIMER_REG_TCR);
+
+	davinci_clocksource.initialized = true;
 }
 
 /*
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
