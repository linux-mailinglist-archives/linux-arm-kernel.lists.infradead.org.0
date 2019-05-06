Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CBAC14476
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 08:32:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M/p1R2H7QIDFP6C5rpUIAc/f5ochqbBMPhaiimwHki0=; b=MuQAqdXdZZaIjn
	g668/uqVsAHznAFRBNddBQqmWn2+gS5GBFeEfw65SEkLUentQC230O/EqaITBlkBApBKu3KqdLoj5
	8Q29DaH5roMhQGU6maejJTv5cVEpVYOhbXrNA8CqBEIewghRxjA5XO8SPX0NwlpWYhXf+/3fcsxiD
	zFSR+tyNM4DH6dwvDqwBVcI9HIDMmXQO46G0nlIXo9dHBzwlr09NaL1z9VgRhZ2drqhynAo06bCWQ
	L0FkwM8gj/kS4wybdZXF7k48O2ZQcOwza9TQPxQJiv7im9BMfBIYvFOy61fsJw17WXO9T54ru2bai
	QScX6nStJg1eAKycOjBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNXAo-00060f-B8; Mon, 06 May 2019 06:32:26 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNXAg-00060H-HU
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 06:32:20 +0000
Received: by mail-lj1-x244.google.com with SMTP id u21so907542lja.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 May 2019 23:32:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UY5ykYvJKOaJgrMtooTtzxV+nF0a9TT3Wc8slHcBqAM=;
 b=BYXb0FAlXtrOP/zM3t9sbGoER+M04cfPNhkZQwrWSM/jbSrzAzkzt+NngamRfvMTM1
 7FoGM4QnVEUj4jcSPrPKP7hu0Nt9bWGN7DQ6NhpSdTKMWYy+z3l7w7JxX5SOVfe70yBD
 pCu/jdlb1MbkKV7irY1G/OWeq0JtD0qDIGYzcohHDWwVb4Pmx/ikLz6ZWFvDI50ozmzr
 2nJJ97v+pga2Zw+FunKYNx9P6FzGLYcH6HHIpsbm4nxl2K+0oulRavgwtkiCYvreRZ8W
 koxwxId4Ygs2KTckWMqT3KEXWZRewhnWzcoUWq4iE1fPcVFnEyY/N1tMR6cghkdKM90R
 eP6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UY5ykYvJKOaJgrMtooTtzxV+nF0a9TT3Wc8slHcBqAM=;
 b=W+ayo+oAidL431+fyQqgMf40bQSxc3lOUzJV8OnU0Amqu1Yq3lrnRRJTah2GCUPpuE
 8XznVhS1cv/HfJzppLn9QylNMScOH//oeSY0Sp5mqRCi47nGbFZkHdxglY76PB+uJWED
 JCvvhqIx7vZYFUJdm5p4YC5GuVxYEvhtk2uNokE3Ip3SDWCJCyb6Xul6iyFyESybmo38
 LZWSFxdAlm7OVYrOZo8QWb9EqTNbE6q7nDEE8dDsG5w1ZrNeBDok71s4o+3l4ChT3DBB
 V5V219+0L7yTUFuwjg6Qgv9CHC651QdHeJD3aAX+NZShK3Rh5m8mKxn48ns43v6eqhfk
 eQEA==
X-Gm-Message-State: APjAAAUlqv+GM8ivfWhIBNJV0qYmXbmn+zbJ2gM9F8/mfqhkx+alNFMH
 PTUZG2MKU46w3mLZT2rTbk0XYg==
X-Google-Smtp-Source: APXvYqwgWndlax37ON/4RjMjVWiMoPs0lui4gu4zCnG6XpO9oiLQf3Rlkre7fXI6lzGMX38TrNMIow==
X-Received: by 2002:a2e:7a0b:: with SMTP id v11mr3692959ljc.96.1557124336529; 
 Sun, 05 May 2019 23:32:16 -0700 (PDT)
Received: from linux.local (c-d2cd225c.014-348-6c756e10.bbcust.telenor.se.
 [92.34.205.210])
 by smtp.gmail.com with ESMTPSA id j19sm2122866lfm.29.2019.05.05.23.32.15
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 05 May 2019 23:32:15 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: arm@kernel.org
Subject: [PATCH 1/3] clocksource/drivers/ixp4xx: Drop ifdef
Date: Mon,  6 May 2019 08:31:07 +0200
Message-Id: <20190506063109.3072-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_233218_614959_C8C6DB94 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Linus Walleij <linus.walleij@linaro.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As the sched_clock registration was put inside an ifdef
in the driver, but this is not appropriate, the ifdef
is only appropriate for delay_timer, which is not yet
implemented.

Fixes: 13e0b4059b98 ("clocksource/drivers/ixp4xx: Add driver")
Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ARM SoC folks: please apply this directly on the IXP4xx
branch where the IXP4xx rework is pending for v5.2.
---
 drivers/clocksource/timer-ixp4xx.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/clocksource/timer-ixp4xx.c b/drivers/clocksource/timer-ixp4xx.c
index 404445bc11ea..5c2190b654cd 100644
--- a/drivers/clocksource/timer-ixp4xx.c
+++ b/drivers/clocksource/timer-ixp4xx.c
@@ -222,9 +222,7 @@ static __init int ixp4xx_timer_register(void __iomem *base,
 	clockevents_config_and_register(&tmr->clkevt, timer_freq,
 					0xf, 0xfffffffe);
 
-#ifdef CONFIG_ARM
 	sched_clock_register(ixp4xx_read_sched_clock, 32, timer_freq);
-#endif
 
 	return 0;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
