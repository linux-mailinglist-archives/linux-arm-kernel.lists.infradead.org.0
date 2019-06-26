Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C0B356CB1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 16:48:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FHqRg1yLWbJQu3kMK7jsBWRlgejqOvZe7M26QC8Nl3w=; b=buAxvQb7Y0mWyVFP7bT/kP/aPg
	kDrVjYppz2HKUjNwlkTWh7Y22/ujJC/2/4c1IwxknbJgmdWk9pBy86PKLV7K5tMqpdPIB5Grf8E00
	I5hRz3zfblvNhURHAoJfAYx0cuK7zN3JtnHCgypOWgb75IQrz45J27iQ/Jyw4OxwItrLtueLlxKwR
	lZ1fCxS3UUopjeKpxsKBjunjvby/KO7B6TEK6+I3IVmFAqhyNMYm/vYh1+R0nj3CSXSea0kN2542A
	C1SpNhBuCKirZbo2movpi+Psdlgcq9350mrY9ETsMEmIB1E4D4hxfy9A4DE7wXD+yx+mZqKsMgvtv
	AQvP+rjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg9E1-0002yL-C8; Wed, 26 Jun 2019 14:48:41 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg9Cy-0002P3-Sk
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 14:47:42 +0000
Received: by mail-wm1-x342.google.com with SMTP id u8so2413492wmm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 07:47:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xsTfqRnHu+yQAKX4GSdpcV7YIOXv0BcnKYn3cggw+uw=;
 b=uCMX4F8iGggQQEfo1YHDs45vJQldgTNLLEWqA4bs5uJ8rgruvQst/74UEEZ2RuIn0U
 3xs4hD0OgMFKcfgRUhQZO+1778f1C383ur2O5UOslKkS2Yy+sPQqJpmBEYv0bJKsKNd0
 m4Rph0JSrHIzvhZp0txs0xx4bnu9I4a+ekrRKxBcXIjRguk84EdWFaJNJO48kOrazebt
 nGA91F8hY/grVHXOzwDUdCChFzqLm5QD3FVjAlfrR6DvunWUhV9HgR74dN64hJRJbD59
 JsN8aVDRXbIT8PWUmPmBDTjnVEy/kOBhEoKxdO7d6HnvE8sfN/7AEBgN4URyIlBE22Ux
 m1sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xsTfqRnHu+yQAKX4GSdpcV7YIOXv0BcnKYn3cggw+uw=;
 b=PS3dqtaCJttAbEBQ5LsYd96TK+oH5VK5GB4eez0yvYSoz6JTpLN0CI1WGJW6+9TmQF
 y769LsGMLSoqAiUQrHK3E6EmLGxaY8KbAAlCcOmTrBmq2NmB2z8q3cK58UlUMCLecd0P
 nj+7zmRQmiDximIEA1BT+X4AjnD1VnhrjS72Rw1owa66n4GfbaIjsgKyh0Ks5KIsrQEQ
 YFNJP5LgpgEpY9r8Dq0/jdZmQ9s7C9Gv27cgtIPb5Q7O5L5RoQZ4Y21K+F+aMHUY3BCL
 N2fpRmm8uSS8EcVcC8sCz2jR+B1bSavCDPJkMnyuhcJ5ENAZ//tAVjsgDuQFj4IdYbSx
 ORXA==
X-Gm-Message-State: APjAAAW8ZSePNvVjIn6tPzi171dUJChmy5FfUgvjf6f+/0Ljt38vP8xt
 /CoSATdRzq0R7yk35xYpS212Ig==
X-Google-Smtp-Source: APXvYqyNKMpip8WgGg3+itTl/Rh4ircBsj+OVmz7Sn4sXjY6lFQpeUlWQ0M8NbmK90waZ3glavLAPA==
X-Received: by 2002:a05:600c:2383:: with SMTP id
 m3mr2975708wma.20.1561560455437; 
 Wed, 26 Jun 2019 07:47:35 -0700 (PDT)
Received: from mai.imgcgcw.net (26.92.130.77.rev.sfr.net. [77.130.92.26])
 by smtp.gmail.com with ESMTPSA id h84sm2718557wmf.43.2019.06.26.07.47.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 07:47:34 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: tglx@linutronix.de
Subject: [PATCH 14/25] clocksource/drivers/sysctr: Add nxp system counter
 timer driver support
Date: Wed, 26 Jun 2019 16:46:40 +0200
Message-Id: <20190626144651.16742-14-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190626144651.16742-1-daniel.lezcano@linaro.org>
References: <adba7d03-e9bd-9542-60bc-0f2d4874a40e@linaro.org>
 <20190626144651.16742-1-daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_074738_038531_91F9BCE5 
X-CRM114-Status: GOOD (  19.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Bai Ping <ping.bai@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bai Ping <ping.bai@nxp.com>

The system counter (sys_ctr) is a programmable system counter
which provides a shared time base to the Cortex A15, A7, A53 etc cores.
It is intended for use in applications where the counter is always
powered on and supports multiple, unrelated clocks. The sys_ctr hardware
supports:
 - 56-bit counter width (roll-over time greater than 40 years)
 - compare frame(64-bit compare value) contains programmable interrupt
   generation when compare value <= counter value.

[dlezcano] Fixed over 80 chars length warning

Signed-off-by: Bai Ping <ping.bai@nxp.com>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 .../bindings/timer/nxp,sysctr-timer.txt       |  25 +++
 drivers/clocksource/Kconfig                   |   7 +
 drivers/clocksource/Makefile                  |   1 +
 drivers/clocksource/timer-imx-sysctr.c        | 145 ++++++++++++++++++
 4 files changed, 178 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/timer/nxp,sysctr-timer.txt
 create mode 100644 drivers/clocksource/timer-imx-sysctr.c

diff --git a/Documentation/devicetree/bindings/timer/nxp,sysctr-timer.txt b/Documentation/devicetree/bindings/timer/nxp,sysctr-timer.txt
new file mode 100644
index 000000000000..d57659996d62
--- /dev/null
+++ b/Documentation/devicetree/bindings/timer/nxp,sysctr-timer.txt
@@ -0,0 +1,25 @@
+NXP System Counter Module(sys_ctr)
+
+The system counter(sys_ctr) is a programmable system counter which provides
+a shared time base to Cortex A15, A7, A53, A73, etc. it is intended for use in
+applications where the counter is always powered and support multiple,
+unrelated clocks. The compare frame inside can be used for timer purpose.
+
+Required properties:
+
+- compatible :      should be "nxp,sysctr-timer"
+- reg :             Specifies the base physical address and size of the comapre
+                    frame and the counter control, read & compare.
+- interrupts :      should be the first compare frames' interrupt
+- clocks : 	    Specifies the counter clock.
+- clock-names: 	    Specifies the clock's name of this module
+
+Example:
+
+	system_counter: timer@306a0000 {
+		compatible = "nxp,sysctr-timer";
+		reg = <0x306a0000 0x20000>;/* system-counter-rd & compare */
+		clocks = <&clk_8m>;
+		clock-names = "per";
+		interrupts = <GIC_SPI 47 IRQ_TYPE_LEVEL_HIGH>;
+	};
diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index d17a347e813a..e9936992934a 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -617,6 +617,13 @@ config CLKSRC_IMX_TPM
 	  Enable this option to use IMX Timer/PWM Module (TPM) timer as
 	  clocksource.
 
+config TIMER_IMX_SYS_CTR
+	bool "i.MX system counter timer" if COMPILE_TEST
+	select TIMER_OF
+	help
+	  Enable this option to use i.MX system counter timer as a
+	  clockevent.
+
 config CLKSRC_ST_LPC
 	bool "Low power clocksource found in the LPC" if COMPILE_TEST
 	select TIMER_OF if OF
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index 4145b21eaed3..0939886b305f 100644
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -74,6 +74,7 @@ obj-$(CONFIG_CLKSRC_MIPS_GIC)		+= mips-gic-timer.o
 obj-$(CONFIG_CLKSRC_TANGO_XTAL)		+= timer-tango-xtal.o
 obj-$(CONFIG_CLKSRC_IMX_GPT)		+= timer-imx-gpt.o
 obj-$(CONFIG_CLKSRC_IMX_TPM)		+= timer-imx-tpm.o
+obj-$(CONFIG_TIMER_IMX_SYS_CTR)		+= timer-imx-sysctr.o
 obj-$(CONFIG_ASM9260_TIMER)		+= asm9260_timer.o
 obj-$(CONFIG_H8300_TMR8)		+= h8300_timer8.o
 obj-$(CONFIG_H8300_TMR16)		+= h8300_timer16.o
diff --git a/drivers/clocksource/timer-imx-sysctr.c b/drivers/clocksource/timer-imx-sysctr.c
new file mode 100644
index 000000000000..fd7d68066efb
--- /dev/null
+++ b/drivers/clocksource/timer-imx-sysctr.c
@@ -0,0 +1,145 @@
+// SPDX-License-Identifier: GPL-2.0+
+//
+// Copyright 2017-2019 NXP
+
+#include <linux/interrupt.h>
+#include <linux/clockchips.h>
+#include <linux/of_address.h>
+#include <linux/of_irq.h>
+
+#include "timer-of.h"
+
+#define CMP_OFFSET	0x10000
+
+#define CNTCV_LO	0x8
+#define CNTCV_HI	0xc
+#define CMPCV_LO	(CMP_OFFSET + 0x20)
+#define CMPCV_HI	(CMP_OFFSET + 0x24)
+#define CMPCR		(CMP_OFFSET + 0x2c)
+
+#define SYS_CTR_EN		0x1
+#define SYS_CTR_IRQ_MASK	0x2
+
+static void __iomem *sys_ctr_base;
+static u32 cmpcr;
+
+static void sysctr_timer_enable(bool enable)
+{
+	writel(enable ? cmpcr | SYS_CTR_EN : cmpcr, sys_ctr_base + CMPCR);
+}
+
+static void sysctr_irq_acknowledge(void)
+{
+	/*
+	 * clear the enable bit(EN =0) will clear
+	 * the status bit(ISTAT = 0), then the interrupt
+	 * signal will be negated(acknowledged).
+	 */
+	sysctr_timer_enable(false);
+}
+
+static inline u64 sysctr_read_counter(void)
+{
+	u32 cnt_hi, tmp_hi, cnt_lo;
+
+	do {
+		cnt_hi = readl_relaxed(sys_ctr_base + CNTCV_HI);
+		cnt_lo = readl_relaxed(sys_ctr_base + CNTCV_LO);
+		tmp_hi = readl_relaxed(sys_ctr_base + CNTCV_HI);
+	} while (tmp_hi != cnt_hi);
+
+	return  ((u64) cnt_hi << 32) | cnt_lo;
+}
+
+static int sysctr_set_next_event(unsigned long delta,
+				 struct clock_event_device *evt)
+{
+	u32 cmp_hi, cmp_lo;
+	u64 next;
+
+	sysctr_timer_enable(false);
+
+	next = sysctr_read_counter();
+
+	next += delta;
+
+	cmp_hi = (next >> 32) & 0x00fffff;
+	cmp_lo = next & 0xffffffff;
+
+	writel_relaxed(cmp_hi, sys_ctr_base + CMPCV_HI);
+	writel_relaxed(cmp_lo, sys_ctr_base + CMPCV_LO);
+
+	sysctr_timer_enable(true);
+
+	return 0;
+}
+
+static int sysctr_set_state_oneshot(struct clock_event_device *evt)
+{
+	return 0;
+}
+
+static int sysctr_set_state_shutdown(struct clock_event_device *evt)
+{
+	sysctr_timer_enable(false);
+
+	return 0;
+}
+
+static irqreturn_t sysctr_timer_interrupt(int irq, void *dev_id)
+{
+	struct clock_event_device *evt = dev_id;
+
+	sysctr_irq_acknowledge();
+
+	evt->event_handler(evt);
+
+	return IRQ_HANDLED;
+}
+
+static struct timer_of to_sysctr = {
+	.flags = TIMER_OF_IRQ | TIMER_OF_CLOCK | TIMER_OF_BASE,
+	.clkevt = {
+		.name			= "i.MX system counter timer",
+		.features		= CLOCK_EVT_FEAT_ONESHOT |
+						CLOCK_EVT_FEAT_DYNIRQ,
+		.set_state_oneshot	= sysctr_set_state_oneshot,
+		.set_next_event		= sysctr_set_next_event,
+		.set_state_shutdown	= sysctr_set_state_shutdown,
+		.rating			= 200,
+	},
+	.of_irq = {
+		.handler		= sysctr_timer_interrupt,
+		.flags			= IRQF_TIMER | IRQF_IRQPOLL,
+	},
+	.of_clk = {
+		.name = "per",
+	},
+};
+
+static void __init sysctr_clockevent_init(void)
+{
+	to_sysctr.clkevt.cpumask = cpumask_of(0);
+
+	clockevents_config_and_register(&to_sysctr.clkevt,
+					timer_of_rate(&to_sysctr),
+					0xff, 0x7fffffff);
+}
+
+static int __init sysctr_timer_init(struct device_node *np)
+{
+	int ret = 0;
+
+	ret = timer_of_init(np, &to_sysctr);
+	if (ret)
+		return ret;
+
+	sys_ctr_base = timer_of_base(&to_sysctr);
+	cmpcr = readl(sys_ctr_base + CMPCR);
+	cmpcr &= ~SYS_CTR_EN;
+
+	sysctr_clockevent_init();
+
+	return 0;
+}
+TIMER_OF_DECLARE(sysctr_timer, "nxp,sysctr-timer", sysctr_timer_init);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
