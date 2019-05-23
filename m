Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0B49285BF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 20:17:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Jv0qTHTC7YuHJZByjczaTwgI28PvEhIqyF16B31Mjc8=; b=qdxakCfXnSGVa1
	Z9cwsu+G81JiN9DePqXuFjHx0Sbt0+MrPCkWxAQAkvmK8KIMqUyh6TcErs8KXZJdDScCq/xmmYx57
	5srWe1Pn3L4WmCNkCMwTUOfu58Q63UK8ByK8QEVZc+9fj57EGfwMwGkee9lnBe27x3gWgMEXJKkJt
	fAH0Ve53mQy8E2/YyTTLpnRWOt8PiDP2xHtoSDrKFb45gFIC+gK7hvJsPJb+NvyDfAbW7vfTGR593
	BYq6CBU+ugzpJetOe+UjTuNJE0q9bR3OOUshLPtjka6LG22qL9CapkDBwOKK+jy1PgsfolsxXeOo1
	TIHvZ1WOwczpnSGoUi9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTsHT-000762-6o; Thu, 23 May 2019 18:17:31 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTsH9-0006rp-1y
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 18:17:13 +0000
Received: by mail-lj1-x241.google.com with SMTP id h11so6393622ljb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 11:17:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xVLMianANhzmplrg1DNs0WltvutEsn5MSIrShEnvZRs=;
 b=RdkfpTzn1ySwEf5C0dPq9Xu8VAtMSRYp5nqkCifYfl2954qRZjU8S941ZehD0289HL
 58K0W3gbNY0XtItxxEIvZLiwWVn1sLiqtYNd7lQM0vYdx6DkZlVN7jkBwDBf/mXLVycl
 ArBHla/sB4OasDKtIJSLgeX0vxbwwMOtAT4NXn+dcCnsCXH6ZDh0lQRKLsddOWX+WeVk
 +5p0XrrH4ef9bu5LSLyoV6dsW0sRFgsd0HdVh+N1PsV0gaD/UUJIYTRVzPE62b3YlZLH
 e22o8RjJ4D2nPi9Bo8PLaxoUrhy5o31ZHYaGHn+h1ZnjbieCNUdpwUU/m1IEEOHjQx6K
 N/GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xVLMianANhzmplrg1DNs0WltvutEsn5MSIrShEnvZRs=;
 b=HSZx3UNpanRxi+WJkxf0NmzOyjrNPyO2isndppTLc6Gkwq1lhWU8DomRM9bYL8gPA9
 drLCt8l+HKC0VVo/kIZ3Zxw8FAIJUB5PVnUzaB5sWqa4KZSiNOZ//nUr8Qvslb4cFgTf
 In/eCiO7Ns/ZH4UQTTCFrs6fksiAI/y6w3tSYyavgV/Jx0wwl5NAFe3OMZo70xVZsw/o
 8M0SWfYd5Q3285u0HDewK5VObjEj7pIWkfuhKUqzVI013qfvf6jI6bf8IUroamTg25lO
 bRRAsAp8MXVfZTyPzhA2phDFMHfpXMF9F1AEqcPLfrRJOs7p3o2Bdcif0UIYIzHs/9Po
 S4gg==
X-Gm-Message-State: APjAAAXLclZ9jTKHX4jofDEPr0lr2+qtMiiDokVkPOOOelRXX6mZXAgF
 xg6QIhWw4hix4FZ5ON7w3mtPWA==
X-Google-Smtp-Source: APXvYqxOibtzonsAh4V+NOrhPL4OVGZW3bjzOhPFSsQU0m7+fukLbOnsoQ8owCi9RrqtCTA7+i7P+A==
X-Received: by 2002:a2e:9581:: with SMTP id w1mr35368191ljh.88.1558635429076; 
 Thu, 23 May 2019 11:17:09 -0700 (PDT)
Received: from linux.local (c-d2cd225c.014-348-6c756e10.bbcust.telenor.se.
 [92.34.205.210])
 by smtp.gmail.com with ESMTPSA id z9sm52209lfa.25.2019.05.23.11.17.07
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 23 May 2019 11:17:07 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-kernel@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH] clocksource/drivers/ixp4xx: Implement delay timer
Date: Thu, 23 May 2019 20:16:02 +0200
Message-Id: <20190523181602.3284-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_111711_366531_FFD54FD5 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds delay timer functionality to the IXP4xx
timer driver.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/clocksource/timer-ixp4xx.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/clocksource/timer-ixp4xx.c b/drivers/clocksource/timer-ixp4xx.c
index 5c2190b654cd..9396745e1c17 100644
--- a/drivers/clocksource/timer-ixp4xx.c
+++ b/drivers/clocksource/timer-ixp4xx.c
@@ -75,14 +75,19 @@ to_ixp4xx_timer(struct clock_event_device *evt)
 	return container_of(evt, struct ixp4xx_timer, clkevt);
 }
 
-static u64 notrace ixp4xx_read_sched_clock(void)
+static unsigned long ixp4xx_read_timer(void)
 {
 	return __raw_readl(local_ixp4xx_timer->base + IXP4XX_OSTS_OFFSET);
 }
 
+static u64 notrace ixp4xx_read_sched_clock(void)
+{
+	return ixp4xx_read_timer();
+}
+
 static u64 ixp4xx_clocksource_read(struct clocksource *c)
 {
-	return __raw_readl(local_ixp4xx_timer->base + IXP4XX_OSTS_OFFSET);
+	return ixp4xx_read_timer();
 }
 
 static irqreturn_t ixp4xx_timer_interrupt(int irq, void *dev_id)
@@ -224,6 +229,13 @@ static __init int ixp4xx_timer_register(void __iomem *base,
 
 	sched_clock_register(ixp4xx_read_sched_clock, 32, timer_freq);
 
+#ifdef CONFIG_ARM
+	/* Also use this timer for delays */
+	tmr->delay_timer.read_current_timer = ixp4xx_read_timer;
+	tmr->delay_timer.freq = timer_freq;
+	register_current_timer_delay(&tmr->delay_timer);
+#endif
+
 	return 0;
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
