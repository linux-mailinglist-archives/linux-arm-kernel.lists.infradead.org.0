Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D50511E82A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 17:25:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pB6YRNISVTEbPXWgoijKgNGty9I/pw5kRHbY1B7Af5c=; b=k6a/IiMfkRGOmA
	a7Ofu+dcpqRHweAb1Nh00dHi6x7Dc8tdPRS1PXUtFpFmVll7YS6G5tk1Xv1RcuoV1If+b5v+cnbLJ
	OrkxvHJMZN9JqCRmT7puUuuWAetEEf5SIXMj9LGCNIZYtji1S+GCEM33J3j60Q3lvoyAnORjUIzQy
	wYtb/HBBnWXISZL9Tz0cmxbWB81gVu/l4Wrpj8YdfL/k2tqcPyYDTSyeJOcKHe2TyFUtd2R3H1oCq
	LKPBaVLbepPzsG1I+KpHu0fGEq0eSaICy0oh2NmHxlPqPWIE0L4wsDC+oaqjcLktSuRz2OF5QBoKU
	GLPZDmMa0N+uBOpOR4Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifnl6-0006xa-SG; Fri, 13 Dec 2019 16:25:40 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifnka-0006NA-Oh
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 16:25:11 +0000
Received: by mail-wr1-x441.google.com with SMTP id y17so51272wrh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 08:25:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EcTch/EIkIolmThjjfl6zE4yda6WGySYg3PDvCnto3E=;
 b=NXXw8HE7mg0jRivRwjGhCSh1VgLhxcoWn6OtiAErL4YEF0RAL0AHHvcSaaCruxyyi/
 woJdaICHqRvKCC0hh327fcS6CIuZq5F3F0w9kf+++rQMgRof1Bmz0xOqWcmiUXO9qvoz
 yOHVS1sQCfiFhK1ItXhdBPrwEDyky5R9qEtPgSH35K1o7NHaf9RTaZ7jHhKrypMV4IgE
 L/kJT5BEjGgpupRxlve+S3HVdxo7vk1k6ceE9tcTvWb8OruFepNFRhfuzZ+4zFO9eIOw
 3AuYMuR+SK0yBn53HmDZORGoHPn2/babeFTT9ozj4HQUEJwjU8oWs1dxrDpD7qbGU50E
 Nt8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EcTch/EIkIolmThjjfl6zE4yda6WGySYg3PDvCnto3E=;
 b=EhucNtAGE7p92ezIXac5Qq36P5Dnf/zr4PrG7AJzDO6S+2qQp63F+RXj18B+XUHsLm
 wcJZP0Skf78Ry++B/r86dYM916HXwUj1Ol/r3nlwp5aWPP0BEat03tKdQMgFZ7/LAcaH
 YDM08eDeXGXiRpzUE1UPiBBSB3A43ySn9+Y0QxzfVW5QoLmHHzOMVMG1gXjORiJorxc2
 GGFXvbUjBULDq5ZBKn19icb4j8Hb046os9cC9Ng32UCcnCQvW135wDP0ThUc8fWra94W
 zA5GklCIa4rglAMRK19mTJGtVQ3fo/x5RqW5IzbkZcnlwYXxcCOokrDZXk25pfN/wGuS
 nitQ==
X-Gm-Message-State: APjAAAW7WGe8VSEgK383tw1rs6Lf8abqdMofdvZ9MSc1S60wj74o2YY4
 qQkPF9C5Dn9hcgAsrg5M4pbyLw==
X-Google-Smtp-Source: APXvYqy4DODPLOmqcXekbJRCf0m9ORveR71Qo5kLQgcGlDibqDyMSLStnwpOd7kDPDBP5ZV9ezD1JA==
X-Received: by 2002:a5d:630c:: with SMTP id i12mr13511596wru.350.1576254307421; 
 Fri, 13 Dec 2019 08:25:07 -0800 (PST)
Received: from debian-brgl.home ([2a01:cb1d:af:5b00:3d17:b245:8f4:3043])
 by smtp.gmail.com with ESMTPSA id h8sm11139330wrx.63.2019.12.13.08.25.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 08:25:06 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, David Lechner <david@lechnology.com>,
 Kevin Hilman <khilman@kernel.org>
Subject: [PATCH 1/3] clocksource: davinci: work around a clocksource problem
 on dm365 SoC
Date: Fri, 13 Dec 2019 17:24:51 +0100
Message-Id: <20191213162453.15691-2-brgl@bgdev.pl>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191213162453.15691-1-brgl@bgdev.pl>
References: <20191213162453.15691-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_082508_806618_A87563F3 
X-CRM114-Status: GOOD (  12.48  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
is straightforward - just cache the enable bits for tim34.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 drivers/clocksource/timer-davinci.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/clocksource/timer-davinci.c b/drivers/clocksource/timer-davinci.c
index 62745c962049..1c22443acaeb 100644
--- a/drivers/clocksource/timer-davinci.c
+++ b/drivers/clocksource/timer-davinci.c
@@ -64,6 +64,8 @@ static struct {
 	unsigned int tim_off;
 } davinci_clocksource;
 
+static unsigned int davinci_clocksource_tim32_mode;
+
 static struct davinci_clockevent *
 to_davinci_clockevent(struct clock_event_device *clockevent)
 {
@@ -94,7 +96,7 @@ static void davinci_tim12_shutdown(void __iomem *base)
 	 * halves. In this case TIM34 runs in periodic mode and we must
 	 * not modify it.
 	 */
-	tcr |= DAVINCI_TIMER_ENAMODE_PERIODIC <<
+	tcr |= davinci_clocksource_tim32_mode <<
 		DAVINCI_TIMER_ENAMODE_SHIFT_TIM34;
 
 	writel_relaxed(tcr, base + DAVINCI_TIMER_REG_TCR);
@@ -107,7 +109,7 @@ static void davinci_tim12_set_oneshot(void __iomem *base)
 	tcr = DAVINCI_TIMER_ENAMODE_ONESHOT <<
 		DAVINCI_TIMER_ENAMODE_SHIFT_TIM12;
 	/* Same as above. */
-	tcr |= DAVINCI_TIMER_ENAMODE_PERIODIC <<
+	tcr |= davinci_clocksource_tim32_mode <<
 		DAVINCI_TIMER_ENAMODE_SHIFT_TIM34;
 
 	writel_relaxed(tcr, base + DAVINCI_TIMER_REG_TCR);
@@ -206,6 +208,8 @@ static void davinci_clocksource_init_tim34(void __iomem *base)
 	writel_relaxed(0x0, base + DAVINCI_TIMER_REG_TIM34);
 	writel_relaxed(UINT_MAX, base + DAVINCI_TIMER_REG_PRD34);
 	writel_relaxed(tcr, base + DAVINCI_TIMER_REG_TCR);
+
+	davinci_clocksource_tim32_mode = DAVINCI_TIMER_ENAMODE_PERIODIC;
 }
 
 /*
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
