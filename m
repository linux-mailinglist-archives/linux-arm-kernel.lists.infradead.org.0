Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FBFC9D7A1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 22:47:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WhuH9SZn7KBGLN3q5xJwIsmJDfH7FYegXEEqEHb5Ajo=; b=H3wSQvELV7kegUyuyxCSfldQgM
	bku7H6CnxCBdbn2bSosVXBWkdKqxpYWDxh+BFkiloATFO/qczlGIet2o7x7vTjocESPlnWJVC37ud
	H3NfDRobZfm0G2qj2eksNN9jnX8g31anq1z6K30rKEveTAY2IpRrl9IR4+u9pd5OKerCDkJQjyMKf
	BIQBgC0bBXPvqZqeTtBGS1k9vYPxWs1D3ynxOw1JNgaT2lNoPcJzXInlwHvYP3hqkwTLTsIeA6mKF
	T4FNrWrQtQzBcYjd9SjItjql2yfXGBChkbmVj0/XwNmpYrr0pP9qn4777BXn5rlSUEoMu9J8JO7So
	nRJBuPTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2LtX-0005SO-7Q; Mon, 26 Aug 2019 20:47:19 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Lr9-0002l9-3H
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 20:44:52 +0000
Received: by mail-wr1-x443.google.com with SMTP id z11so16613599wrt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 13:44:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=KPovm7Wqq5ONpgYMzcWE7OA1yW+eFGPyRUwfUI0hUJ0=;
 b=aU3cka8c1AQSVSN8MhAGKFkLRjd0H8XrOtbp/x2/hFD2uq4c0BbiB2QY0ghWInXBGC
 5rN5dd3SqgbzjbMCFWIpScJgDCd1YCPSTxuF2IjR4wG/Jz206l7856QTAku0xz2boFbH
 xDPEUKf1OTt2vpZhFICPjDYkFy2HNrlf5SUg7lcV/G198a9Ci9hsaXQKgnK7yIxTvsZN
 j8P6b6+xsyvAeMr2eSnIYCL/KatF+OXC6YnPNtBUoxOs8U1am6qjXfeiFV7HFp9kGj8V
 Q83XJKPTKHtLU058eb1EFPriPhAR4ZZcPPT6/RTMTC4RwTmmWwAXCem9jCPuF6ZSxK9S
 SOBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=KPovm7Wqq5ONpgYMzcWE7OA1yW+eFGPyRUwfUI0hUJ0=;
 b=T3nzmf2ajFS2sL0cOD0UbRtViainZi2Yb7DPdvpWztYiYOScGStyX8Mwr7JgFIGkU0
 9eG7qaXxbI+hSdybYhCzSg99/4lGUoaOL2fZBPiMe9WNknj46Wv853VQVexCen0u6MSt
 jZ3NrcaEbtByh9JLkGEZaFK1w9l1yjWK096I83BC4MBmXU6ztuyzaEorD+x97a1IGxCh
 /DqyaJe09h4RasLGKfxl4sbShuUJ73mRAG6xdjVvq04uD4PmA5kBIxxwUgVGvwI1NGgV
 0YpRC9LN1Jz9Q3kdlZGizYVknJsOOKqwlBnRlRMsJNyzt85cij4bGqkJm8MLTRwUZEwe
 45YQ==
X-Gm-Message-State: APjAAAVYMzgSe/qJgAsNCo+DJKUpmzSmTQAvNw0vhYd3bYvSO2i6ZqZt
 B19ABqyJ5Vwjaoep9iwQz8J/KFOpTM0=
X-Google-Smtp-Source: APXvYqx1bP/yZ2ct9gGrw3/PrAY5QgTYxdvm4ozIz6UraMNr+NRuLzZjgbTD62gTCxjLFwLXZDIrog==
X-Received: by 2002:adf:fc03:: with SMTP id i3mr23215781wrr.48.1566852289672; 
 Mon, 26 Aug 2019 13:44:49 -0700 (PDT)
Received: from mai.imgcgcw.net ([2a01:e34:ed2f:f020:f881:f5ed:b15d:96ab])
 by smtp.gmail.com with ESMTPSA id 20sm549557wmk.34.2019.08.26.13.44.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 13:44:49 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: tglx@linutronix.de
Subject: [PATCH 06/20] clocksource/drivers/tcb_clksrc: Register delay timer
Date: Mon, 26 Aug 2019 22:43:53 +0200
Message-Id: <20190826204407.17759-6-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190826204407.17759-1-daniel.lezcano@linaro.org>
References: <df27caba-d9f8-e64d-0563-609f8785ecb3@linaro.org>
 <20190826204407.17759-1-daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_134451_211589_6D3A515D 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-kernel@vger.kernel.org,
 "moderated list:ARM/Microchip AT91 SoC support"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Alexandre Belloni <alexandre.belloni@bootlin.com>

Implement and register delay timer to allow get_cycles() to work properly.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 drivers/clocksource/Kconfig           |  2 +-
 drivers/clocksource/timer-atmel-tcb.c | 18 ++++++++++++++++++
 2 files changed, 19 insertions(+), 1 deletion(-)

diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index 5e9317dc3d39..a642c23b2fba 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -429,7 +429,7 @@ config ATMEL_ST
 
 config ATMEL_TCB_CLKSRC
 	bool "Atmel TC Block timer driver" if COMPILE_TEST
-	depends on HAS_IOMEM
+	depends on ARM && HAS_IOMEM
 	select TIMER_OF if OF
 	help
 	  Support for Timer Counter Blocks on Atmel SoCs.
diff --git a/drivers/clocksource/timer-atmel-tcb.c b/drivers/clocksource/timer-atmel-tcb.c
index 6ed31f9def7e..7427b07495a8 100644
--- a/drivers/clocksource/timer-atmel-tcb.c
+++ b/drivers/clocksource/timer-atmel-tcb.c
@@ -6,6 +6,7 @@
 #include <linux/irq.h>
 
 #include <linux/clk.h>
+#include <linux/delay.h>
 #include <linux/err.h>
 #include <linux/ioport.h>
 #include <linux/io.h>
@@ -125,6 +126,18 @@ static u64 notrace tc_sched_clock_read32(void)
 	return tc_get_cycles32(&clksrc);
 }
 
+static struct delay_timer tc_delay_timer;
+
+static unsigned long tc_delay_timer_read(void)
+{
+	return tc_get_cycles(&clksrc);
+}
+
+static unsigned long notrace tc_delay_timer_read32(void)
+{
+	return tc_get_cycles32(&clksrc);
+}
+
 #ifdef CONFIG_GENERIC_CLOCKEVENTS
 
 struct tc_clkevt_device {
@@ -432,6 +445,7 @@ static int __init tcb_clksrc_init(struct device_node *node)
 		/* setup ony channel 0 */
 		tcb_setup_single_chan(&tc, best_divisor_idx);
 		tc_sched_clock = tc_sched_clock_read32;
+		tc_delay_timer.read_current_timer = tc_delay_timer_read32;
 	} else {
 		/* we have three clocks no matter what the
 		 * underlying platform supports.
@@ -444,6 +458,7 @@ static int __init tcb_clksrc_init(struct device_node *node)
 		/* setup both channel 0 & 1 */
 		tcb_setup_dual_chan(&tc, best_divisor_idx);
 		tc_sched_clock = tc_sched_clock_read;
+		tc_delay_timer.read_current_timer = tc_delay_timer_read;
 	}
 
 	/* and away we go! */
@@ -458,6 +473,9 @@ static int __init tcb_clksrc_init(struct device_node *node)
 
 	sched_clock_register(tc_sched_clock, 32, divided_rate);
 
+	tc_delay_timer.freq = divided_rate;
+	register_current_timer_delay(&tc_delay_timer);
+
 	return 0;
 
 err_unregister_clksrc:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
