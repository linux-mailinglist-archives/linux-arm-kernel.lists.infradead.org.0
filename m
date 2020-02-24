Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 306F2169B81
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 01:53:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lftKqw9gaQ1Zoj6LXp2+1lKU8e9JTlD4n3Z+u1oErXA=; b=MZcF9rm9JDu+f2
	ZGURyyD0BQmozz0SnOHJKnTZa7+i3ywwmNK+B0cWwNpsRAxAfNe7/gedMsqm63HjOWr3fBQYf9odF
	f/1GRY7d8ZQpjPsJj5mHvBOWRIBcs4TF6+gVC1N/+B7IvNBxzSHnXI8lKn4ut60mXI97C46SDe1Iz
	ojt9WylrcXgcflRFOK0Tv8cYrLULAUZbQfiTjtQPqFV/ZqooSBMxGHKtM6QKXdJUO9ykaoI6G8zXE
	x688km/2UAmwi6S2+qRW6VeyRhcFFBflX6adE9BSjzY0rnkwDqQ6sHmpoW4uSRAu4JkCEuHwApWZs
	RJWGZNLzthYMrVmHnULg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j61zl-0005Mi-36; Mon, 24 Feb 2020 00:53:13 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j61zY-0005Lw-IW; Mon, 24 Feb 2020 00:53:04 +0000
Received: by mail-pg1-x544.google.com with SMTP id a14so3836305pgb.11;
 Sun, 23 Feb 2020 16:53:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=KlGVVQrNWVvq+M3lWjIBQUz2NwNPBlKCQZcmMRzYCNw=;
 b=lp2h9fxdK71dYt+8prPoEw+n00TgtEFmFZPqZaDLNEeTj7hnkYuWG0oFXpk8JS/CF7
 8PgC+l2z51R5fyCAeuCg3IBvZ6p5kQmGYXYe+Cm21rHKNHUA4VbmoXbJAGElAxHSKNNG
 Mh5nnuRJSK3ljWmU8zbuAoF3CnuyXLc3hZUxyviRAZCjnj+nwh8Y3wBPzIKdteWxdz78
 m2dj2ROro9RpDhZAiDzbcvTlDgfttbJjcylE6QLcok/g3IvZkpLWX9kVVrtCg+G5FOeA
 TfzGrcDxY2yZhvHehVXyo+76v2c9n4L1z9Dgll3e2rivwfR3BGgYZInKVBEYCzk2fsKS
 9jPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=KlGVVQrNWVvq+M3lWjIBQUz2NwNPBlKCQZcmMRzYCNw=;
 b=AHG4mP2GN48lkBZYKlfzF/XoR/osptwbNSZ3rihwqScc/Huuxlx24rc9D3IKcZ9yPQ
 mpEOelokEH3hOpNp040COpSCd3g701/NXf7fpBv96xQK1X6G8w6sbhiXZydm5uoX/T4e
 o/bpmoogQ0GeVl6JyROWc0GPPIPsY/tOYXJ31S2Pssp9/3aMiat9DikxxulA+KLLjTp7
 9+PaTEwOl5JI7FJFGA0hz/5rNu5iP4TB5VUzwaPpaTsZe9lIvoONl6AmcAOQv+R2qW2j
 QbD9CPON2/78TLeM8az3fx52f3je0qJSXDJods7RqF25IoVKXN2i1GN6zpNvrnJrG/jw
 hj1g==
X-Gm-Message-State: APjAAAX018JpgxFNdwzb34n7AauFfEqCSzl19NCUHAo4jrepBKsyoe3M
 ZgJjHIegT1MJonDVe4gN/g4=
X-Google-Smtp-Source: APXvYqyTy5fQwKjp90Ca3s2Ug5E/kSEXMsVO1KDaRd1Dg39o4nphbLXOJ5M621IGWd9LB5njKWNhFA==
X-Received: by 2002:a63:798a:: with SMTP id
 u132mr52700190pgc.203.1582505579413; 
 Sun, 23 Feb 2020 16:52:59 -0800 (PST)
Received: from localhost ([106.51.232.35])
 by smtp.gmail.com with ESMTPSA id d14sm10553401pfq.117.2020.02.23.16.52.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 23 Feb 2020 16:52:58 -0800 (PST)
Date: Mon, 24 Feb 2020 06:22:56 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-amlogic@lists.infradead.org
Subject: [PATCH v2 16/18] clocksource: Replace setup_irq() by request_irq()
Message-ID: <4e565e7afa2f2a0ed89774d0a1597649173b1746.1582471508.git.afzal.mohd.ma@gmail.com>
References: <cover.1582471508.git.afzal.mohd.ma@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1582471508.git.afzal.mohd.ma@gmail.com>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_165300_633366_2D14F2DF 
X-CRM114-Status: GOOD (  20.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, Shawn Guo <shawnguo@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, NXP Linux Team <linux-imx@nxp.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Ray Jui <rjui@broadcom.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 Barry Song <baohua@kernel.org>, Scott Branden <sbranden@broadcom.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Tony Prisk <linux@prisktech.co.nz>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Enrico Weigelt <info@metux.net>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

request_irq() is preferred over setup_irq(). The early boot setup_irq()
invocations happen either via 'init_IRQ()' or 'time_init()', while
memory allocators are ready by 'mm_init()'.

Per tglx[1], setup_irq() existed in olden days when allocators were not
ready by the time early interrupts were initialized.

Hence replace setup_irq() by request_irq().

Seldom remove_irq() usage has been observed coupled with setup_irq(),
wherever that has been found, it too has been replaced by free_irq().

[1] https://lkml.kernel.org/r/alpine.DEB.2.20.1710191609480.1971@nanos

Signed-off-by: afzal mohammed <afzal.mohd.ma@gmail.com>
Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Acked-by: Linus Walleij <linus.walleij@linaro.org>
---

v2:
 * Replace pr_err("request_irq() on %s failed" by
           pr_err("%s: request_irq() failed"
 * Commit message massage

 drivers/clocksource/bcm2835_timer.c       |  8 +---
 drivers/clocksource/bcm_kona_timer.c      | 10 ++---
 drivers/clocksource/dw_apb_timer.c        | 11 ++---
 drivers/clocksource/exynos_mct.c          | 12 ++----
 drivers/clocksource/mxs_timer.c           | 10 +----
 drivers/clocksource/nomadik-mtu.c         | 11 ++---
 drivers/clocksource/samsung_pwm_timer.c   | 12 ++----
 drivers/clocksource/timer-atlas7.c        | 50 +++++++++++------------
 drivers/clocksource/timer-cs5535.c        | 10 ++---
 drivers/clocksource/timer-efm32.c         | 10 +----
 drivers/clocksource/timer-fsl-ftm.c       | 10 +----
 drivers/clocksource/timer-imx-gpt.c       | 10 +----
 drivers/clocksource/timer-integrator-ap.c | 11 ++---
 drivers/clocksource/timer-meson6.c        | 11 ++---
 drivers/clocksource/timer-orion.c         |  9 +---
 drivers/clocksource/timer-prima2.c        | 11 +----
 drivers/clocksource/timer-pxa.c           | 10 +----
 drivers/clocksource/timer-sp804.c         | 11 ++---
 drivers/clocksource/timer-u300.c          |  9 +---
 drivers/clocksource/timer-vf-pit.c        | 10 +----
 drivers/clocksource/timer-vt8500.c        | 11 ++---
 drivers/clocksource/timer-zevio.c         | 13 +++---
 include/linux/dw_apb_timer.h              |  1 -
 23 files changed, 81 insertions(+), 190 deletions(-)

diff --git a/drivers/clocksource/bcm2835_timer.c b/drivers/clocksource/bcm2835_timer.c
index b235f446ee50..1592650b2c92 100644
--- a/drivers/clocksource/bcm2835_timer.c
+++ b/drivers/clocksource/bcm2835_timer.c
@@ -31,7 +31,6 @@ struct bcm2835_timer {
 	void __iomem *compare;
 	int match_mask;
 	struct clock_event_device evt;
-	struct irqaction act;
 };
 
 static void __iomem *system_clock __read_mostly;
@@ -113,12 +112,9 @@ static int __init bcm2835_timer_init(struct device_node *node)
 	timer->evt.features = CLOCK_EVT_FEAT_ONESHOT;
 	timer->evt.set_next_event = bcm2835_time_set_next_event;
 	timer->evt.cpumask = cpumask_of(0);
-	timer->act.name = node->name;
-	timer->act.flags = IRQF_TIMER | IRQF_SHARED;
-	timer->act.dev_id = timer;
-	timer->act.handler = bcm2835_time_interrupt;
 
-	ret = setup_irq(irq, &timer->act);
+	ret = request_irq(irq, bcm2835_time_interrupt, IRQF_TIMER | IRQF_SHARED,
+			  node->name, timer);
 	if (ret) {
 		pr_err("Can't set up timer IRQ\n");
 		goto err_timer_free;
diff --git a/drivers/clocksource/bcm_kona_timer.c b/drivers/clocksource/bcm_kona_timer.c
index 5c40be9880f5..a50ab5c2154f 100644
--- a/drivers/clocksource/bcm_kona_timer.c
+++ b/drivers/clocksource/bcm_kona_timer.c
@@ -160,12 +160,6 @@ static irqreturn_t kona_timer_interrupt(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
-static struct irqaction kona_timer_irq = {
-	.name = "Kona Timer Tick",
-	.flags = IRQF_TIMER,
-	.handler = kona_timer_interrupt,
-};
-
 static int __init kona_timer_init(struct device_node *node)
 {
 	u32 freq;
@@ -192,7 +186,9 @@ static int __init kona_timer_init(struct device_node *node)
 	kona_timer_disable_and_clear(timers.tmr_regs);
 
 	kona_timer_clockevents_init();
-	setup_irq(timers.tmr_irq, &kona_timer_irq);
+	if (request_irq(timers.tmr_irq, kona_timer_interrupt, IRQF_TIMER,
+			"Kona Timer Tick", NULL))
+		pr_err("%s: request_irq() failed\n", "Kona Timer Tick");
 	kona_timer_set_next_event((arch_timer_rate / HZ), NULL);
 
 	return 0;
diff --git a/drivers/clocksource/dw_apb_timer.c b/drivers/clocksource/dw_apb_timer.c
index 654766538f93..b207a77b0831 100644
--- a/drivers/clocksource/dw_apb_timer.c
+++ b/drivers/clocksource/dw_apb_timer.c
@@ -270,15 +270,10 @@ dw_apb_clockevent_init(int cpu, const char *name, unsigned rating,
 	dw_ced->ced.rating = rating;
 	dw_ced->ced.name = name;
 
-	dw_ced->irqaction.name		= dw_ced->ced.name;
-	dw_ced->irqaction.handler	= dw_apb_clockevent_irq;
-	dw_ced->irqaction.dev_id	= &dw_ced->ced;
-	dw_ced->irqaction.irq		= irq;
-	dw_ced->irqaction.flags		= IRQF_TIMER | IRQF_IRQPOLL |
-					  IRQF_NOBALANCING;
-
 	dw_ced->eoi = apbt_eoi;
-	err = setup_irq(irq, &dw_ced->irqaction);
+	err = request_irq(irq, dw_apb_clockevent_irq,
+			  IRQF_TIMER | IRQF_IRQPOLL | IRQF_NOBALANCING,
+			  dw_ced->ced.name, &dw_ced->ced);
 	if (err) {
 		pr_err("failed to request timer irq\n");
 		kfree(dw_ced);
diff --git a/drivers/clocksource/exynos_mct.c b/drivers/clocksource/exynos_mct.c
index a267fe31ef13..fabad79baafc 100644
--- a/drivers/clocksource/exynos_mct.c
+++ b/drivers/clocksource/exynos_mct.c
@@ -329,19 +329,15 @@ static irqreturn_t exynos4_mct_comp_isr(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
-static struct irqaction mct_comp_event_irq = {
-	.name		= "mct_comp_irq",
-	.flags		= IRQF_TIMER | IRQF_IRQPOLL,
-	.handler	= exynos4_mct_comp_isr,
-	.dev_id		= &mct_comp_device,
-};
-
 static int exynos4_clockevent_init(void)
 {
 	mct_comp_device.cpumask = cpumask_of(0);
 	clockevents_config_and_register(&mct_comp_device, clk_rate,
 					0xf, 0xffffffff);
-	setup_irq(mct_irqs[MCT_G0_IRQ], &mct_comp_event_irq);
+	if (request_irq(mct_irqs[MCT_G0_IRQ], exynos4_mct_comp_isr,
+			IRQF_TIMER | IRQF_IRQPOLL, "mct_comp_irq",
+			&mct_comp_device))
+		pr_err("%s: request_irq() failed\n", "mct_comp_irq");
 
 	return 0;
 }
diff --git a/drivers/clocksource/mxs_timer.c b/drivers/clocksource/mxs_timer.c
index f6ddae30933f..bc96a4cbf26c 100644
--- a/drivers/clocksource/mxs_timer.c
+++ b/drivers/clocksource/mxs_timer.c
@@ -117,13 +117,6 @@ static irqreturn_t mxs_timer_interrupt(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
-static struct irqaction mxs_timer_irq = {
-	.name		= "MXS Timer Tick",
-	.dev_id		= &mxs_clockevent_device,
-	.flags		= IRQF_TIMER | IRQF_IRQPOLL,
-	.handler	= mxs_timer_interrupt,
-};
-
 static void mxs_irq_clear(char *state)
 {
 	/* Disable interrupt in timer module */
@@ -277,6 +270,7 @@ static int __init mxs_timer_init(struct device_node *np)
 	if (irq <= 0)
 		return -EINVAL;
 
-	return setup_irq(irq, &mxs_timer_irq);
+	return request_irq(irq, mxs_timer_interrupt, IRQF_TIMER | IRQF_IRQPOLL,
+			   "MXS Timer Tick", &mxs_clockevent_device);
 }
 TIMER_OF_DECLARE(mxs, "fsl,timrot", mxs_timer_init);
diff --git a/drivers/clocksource/nomadik-mtu.c b/drivers/clocksource/nomadik-mtu.c
index 3f7fa8c01367..f49a631d8f58 100644
--- a/drivers/clocksource/nomadik-mtu.c
+++ b/drivers/clocksource/nomadik-mtu.c
@@ -181,13 +181,6 @@ static irqreturn_t nmdk_timer_interrupt(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
-static struct irqaction nmdk_timer_irq = {
-	.name		= "Nomadik Timer Tick",
-	.flags		= IRQF_TIMER,
-	.handler	= nmdk_timer_interrupt,
-	.dev_id		= &nmdk_clkevt,
-};
-
 static int __init nmdk_timer_init(void __iomem *base, int irq,
 				   struct clk *pclk, struct clk *clk)
 {
@@ -232,7 +225,9 @@ static int __init nmdk_timer_init(void __iomem *base, int irq,
 	sched_clock_register(nomadik_read_sched_clock, 32, rate);
 
 	/* Timer 1 is used for events, register irq and clockevents */
-	setup_irq(irq, &nmdk_timer_irq);
+	if (request_irq(irq, nmdk_timer_interrupt, IRQF_TIMER,
+			"Nomadik Timer Tick", &nmdk_clkevt))
+		pr_err("%s: request_irq() failed\n", "Nomadik Timer Tick");
 	nmdk_clkevt.cpumask = cpumask_of(0);
 	nmdk_clkevt.irq = irq;
 	clockevents_config_and_register(&nmdk_clkevt, rate, 2, 0xffffffffU);
diff --git a/drivers/clocksource/samsung_pwm_timer.c b/drivers/clocksource/samsung_pwm_timer.c
index dae1b2b5a0c5..f760229d0c7f 100644
--- a/drivers/clocksource/samsung_pwm_timer.c
+++ b/drivers/clocksource/samsung_pwm_timer.c
@@ -256,13 +256,6 @@ static irqreturn_t samsung_clock_event_isr(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
-static struct irqaction samsung_clock_event_irq = {
-	.name		= "samsung_time_irq",
-	.flags		= IRQF_TIMER | IRQF_IRQPOLL,
-	.handler	= samsung_clock_event_isr,
-	.dev_id		= &time_event_device,
-};
-
 static void __init samsung_clockevent_init(void)
 {
 	unsigned long pclk;
@@ -282,7 +275,10 @@ static void __init samsung_clockevent_init(void)
 						clock_rate, 1, pwm.tcnt_max);
 
 	irq_number = pwm.irq[pwm.event_id];
-	setup_irq(irq_number, &samsung_clock_event_irq);
+	if (request_irq(irq_number, samsung_clock_event_isr,
+			IRQF_TIMER | IRQF_IRQPOLL, "samsung_time_irq",
+			&time_event_device))
+		pr_err("%s: request_irq() failed\n", "samsung_time_irq");
 
 	if (pwm.variant.has_tint_cstat) {
 		u32 mask = (1 << pwm.event_id);
diff --git a/drivers/clocksource/timer-atlas7.c b/drivers/clocksource/timer-atlas7.c
index 93c3ac6d72bd..c21c91c2bc56 100644
--- a/drivers/clocksource/timer-atlas7.c
+++ b/drivers/clocksource/timer-atlas7.c
@@ -159,29 +159,23 @@ static struct clocksource sirfsoc_clocksource = {
 	.resume = sirfsoc_clocksource_resume,
 };
 
-static struct irqaction sirfsoc_timer_irq = {
-	.name = "sirfsoc_timer0",
-	.flags = IRQF_TIMER | IRQF_NOBALANCING,
-	.handler = sirfsoc_timer_interrupt,
-};
-
-static struct irqaction sirfsoc_timer1_irq = {
-	.name = "sirfsoc_timer1",
-	.flags = IRQF_TIMER | IRQF_NOBALANCING,
-	.handler = sirfsoc_timer_interrupt,
-};
+static unsigned int sirfsoc_timer_irq, sirfsoc_timer1_irq;
 
 static int sirfsoc_local_timer_starting_cpu(unsigned int cpu)
 {
 	struct clock_event_device *ce = per_cpu_ptr(sirfsoc_clockevent, cpu);
-	struct irqaction *action;
-
-	if (cpu == 0)
-		action = &sirfsoc_timer_irq;
-	else
-		action = &sirfsoc_timer1_irq;
+	unsigned int irq;
+	const char *name;
+
+	if (cpu == 0) {
+		irq = sirfsoc_timer_irq;
+		name = "sirfsoc_timer0";
+	} else {
+		irq = sirfsoc_timer1_irq;
+		name = "sirfsoc_timer1";
+	}
 
-	ce->irq = action->irq;
+	ce->irq = irq;
 	ce->name = "local_timer";
 	ce->features = CLOCK_EVT_FEAT_ONESHOT;
 	ce->rating = 200;
@@ -196,9 +190,9 @@ static int sirfsoc_local_timer_starting_cpu(unsigned int cpu)
 	ce->min_delta_ticks = 2;
 	ce->cpumask = cpumask_of(cpu);
 
-	action->dev_id = ce;
-	BUG_ON(setup_irq(ce->irq, action));
-	irq_force_affinity(action->irq, cpumask_of(cpu));
+	BUG_ON(request_irq(ce->irq, sirfsoc_timer_interrupt,
+			   IRQF_TIMER | IRQF_NOBALANCING, name, ce));
+	irq_force_affinity(ce->irq, cpumask_of(cpu));
 
 	clockevents_register_device(ce);
 	return 0;
@@ -206,12 +200,14 @@ static int sirfsoc_local_timer_starting_cpu(unsigned int cpu)
 
 static int sirfsoc_local_timer_dying_cpu(unsigned int cpu)
 {
+	struct clock_event_device *ce = per_cpu_ptr(sirfsoc_clockevent, cpu);
+
 	sirfsoc_timer_count_disable(1);
 
 	if (cpu == 0)
-		remove_irq(sirfsoc_timer_irq.irq, &sirfsoc_timer_irq);
+		free_irq(sirfsoc_timer_irq, ce);
 	else
-		remove_irq(sirfsoc_timer1_irq.irq, &sirfsoc_timer1_irq);
+		free_irq(sirfsoc_timer1_irq, ce);
 	return 0;
 }
 
@@ -268,14 +264,14 @@ static int __init sirfsoc_of_timer_init(struct device_node *np)
 		return -ENXIO;
 	}
 
-	sirfsoc_timer_irq.irq = irq_of_parse_and_map(np, 0);
-	if (!sirfsoc_timer_irq.irq) {
+	sirfsoc_timer_irq = irq_of_parse_and_map(np, 0);
+	if (!sirfsoc_timer_irq) {
 		pr_err("No irq passed for timer0 via DT\n");
 		return -EINVAL;
 	}
 
-	sirfsoc_timer1_irq.irq = irq_of_parse_and_map(np, 1);
-	if (!sirfsoc_timer1_irq.irq) {
+	sirfsoc_timer1_irq = irq_of_parse_and_map(np, 1);
+	if (!sirfsoc_timer1_irq) {
 		pr_err("No irq passed for timer1 via DT\n");
 		return -EINVAL;
 	}
diff --git a/drivers/clocksource/timer-cs5535.c b/drivers/clocksource/timer-cs5535.c
index 8f6bc536bef2..51ea0509fb25 100644
--- a/drivers/clocksource/timer-cs5535.c
+++ b/drivers/clocksource/timer-cs5535.c
@@ -131,12 +131,6 @@ static irqreturn_t mfgpt_tick(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
-static struct irqaction mfgptirq  = {
-	.handler = mfgpt_tick,
-	.flags = IRQF_NOBALANCING | IRQF_TIMER | IRQF_SHARED,
-	.name = DRV_NAME,
-};
-
 static int __init cs5535_mfgpt_init(void)
 {
 	struct cs5535_mfgpt_timer *timer;
@@ -158,7 +152,9 @@ static int __init cs5535_mfgpt_init(void)
 	}
 
 	/* And register it with the kernel */
-	ret = setup_irq(timer_irq, &mfgptirq);
+	ret = request_irq(timer_irq, mfgpt_tick,
+			  IRQF_NOBALANCING | IRQF_TIMER | IRQF_SHARED,
+			  DRV_NAME, NULL);
 	if (ret) {
 		printk(KERN_ERR DRV_NAME ": Unable to set up the interrupt.\n");
 		goto err_irq;
diff --git a/drivers/clocksource/timer-efm32.c b/drivers/clocksource/timer-efm32.c
index 5a22cb079ad3..441a4b916841 100644
--- a/drivers/clocksource/timer-efm32.c
+++ b/drivers/clocksource/timer-efm32.c
@@ -119,13 +119,6 @@ static struct efm32_clock_event_ddata clock_event_ddata = {
 	},
 };
 
-static struct irqaction efm32_clock_event_irq = {
-	.name = "efm32 clockevent",
-	.flags = IRQF_TIMER,
-	.handler = efm32_clock_event_handler,
-	.dev_id = &clock_event_ddata,
-};
-
 static int __init efm32_clocksource_init(struct device_node *np)
 {
 	struct clk *clk;
@@ -230,7 +223,8 @@ static int __init efm32_clockevent_init(struct device_node *np)
 					DIV_ROUND_CLOSEST(rate, 1024),
 					0xf, 0xffff);
 
-	ret = setup_irq(irq, &efm32_clock_event_irq);
+	ret = request_irq(irq, efm32_clock_event_handler, IRQF_TIMER,
+			  "efm32 clockevent", &clock_event_ddata);
 	if (ret) {
 		pr_err("Failed setup irq\n");
 		goto err_setup_irq;
diff --git a/drivers/clocksource/timer-fsl-ftm.c b/drivers/clocksource/timer-fsl-ftm.c
index a9d9a3ca5996..12a2ed7cfaff 100644
--- a/drivers/clocksource/timer-fsl-ftm.c
+++ b/drivers/clocksource/timer-fsl-ftm.c
@@ -176,13 +176,6 @@ static struct clock_event_device ftm_clockevent = {
 	.rating			= 300,
 };
 
-static struct irqaction ftm_timer_irq = {
-	.name		= "Freescale ftm timer",
-	.flags		= IRQF_TIMER | IRQF_IRQPOLL,
-	.handler	= ftm_evt_interrupt,
-	.dev_id		= &ftm_clockevent,
-};
-
 static int __init ftm_clockevent_init(unsigned long freq, int irq)
 {
 	int err;
@@ -192,7 +185,8 @@ static int __init ftm_clockevent_init(unsigned long freq, int irq)
 
 	ftm_reset_counter(priv->clkevt_base);
 
-	err = setup_irq(irq, &ftm_timer_irq);
+	err = request_irq(irq, ftm_evt_interrupt, IRQF_TIMER | IRQF_IRQPOLL,
+			  "Freescale ftm timer", &ftm_clockevent);
 	if (err) {
 		pr_err("ftm: setup irq failed: %d\n", err);
 		return err;
diff --git a/drivers/clocksource/timer-imx-gpt.c b/drivers/clocksource/timer-imx-gpt.c
index 706c0d0ff56c..7b2c70f2f353 100644
--- a/drivers/clocksource/timer-imx-gpt.c
+++ b/drivers/clocksource/timer-imx-gpt.c
@@ -67,7 +67,6 @@ struct imx_timer {
 	struct clk *clk_ipg;
 	const struct imx_gpt_data *gpt;
 	struct clock_event_device ced;
-	struct irqaction act;
 };
 
 struct imx_gpt_data {
@@ -273,7 +272,6 @@ static irqreturn_t mxc_timer_interrupt(int irq, void *dev_id)
 static int __init mxc_clockevent_init(struct imx_timer *imxtm)
 {
 	struct clock_event_device *ced = &imxtm->ced;
-	struct irqaction *act = &imxtm->act;
 
 	ced->name = "mxc_timer1";
 	ced->features = CLOCK_EVT_FEAT_ONESHOT | CLOCK_EVT_FEAT_DYNIRQ;
@@ -287,12 +285,8 @@ static int __init mxc_clockevent_init(struct imx_timer *imxtm)
 	clockevents_config_and_register(ced, clk_get_rate(imxtm->clk_per),
 					0xff, 0xfffffffe);
 
-	act->name = "i.MX Timer Tick";
-	act->flags = IRQF_TIMER | IRQF_IRQPOLL;
-	act->handler = mxc_timer_interrupt;
-	act->dev_id = ced;
-
-	return setup_irq(imxtm->irq, act);
+	return request_irq(imxtm->irq, mxc_timer_interrupt,
+			   IRQF_TIMER | IRQF_IRQPOLL, "i.MX Timer Tick", ced);
 }
 
 static void imx1_gpt_setup_tctl(struct imx_timer *imxtm)
diff --git a/drivers/clocksource/timer-integrator-ap.c b/drivers/clocksource/timer-integrator-ap.c
index c90a69c7b5fa..b0fcbaac58b0 100644
--- a/drivers/clocksource/timer-integrator-ap.c
+++ b/drivers/clocksource/timer-integrator-ap.c
@@ -123,13 +123,6 @@ static struct clock_event_device integrator_clockevent = {
 	.rating			= 300,
 };
 
-static struct irqaction integrator_timer_irq = {
-	.name		= "timer",
-	.flags		= IRQF_TIMER | IRQF_IRQPOLL,
-	.handler	= integrator_timer_interrupt,
-	.dev_id		= &integrator_clockevent,
-};
-
 static int integrator_clockevent_init(unsigned long inrate,
 				      void __iomem *base, int irq)
 {
@@ -149,7 +142,9 @@ static int integrator_clockevent_init(unsigned long inrate,
 	timer_reload = rate / HZ;
 	writel(ctrl, clkevt_base + TIMER_CTRL);
 
-	ret = setup_irq(irq, &integrator_timer_irq);
+	ret = request_irq(irq, integrator_timer_interrupt,
+			  IRQF_TIMER | IRQF_IRQPOLL, "timer",
+			  &integrator_clockevent);
 	if (ret)
 		return ret;
 
diff --git a/drivers/clocksource/timer-meson6.c b/drivers/clocksource/timer-meson6.c
index 9e8b467c71da..99f5510a2b56 100644
--- a/drivers/clocksource/timer-meson6.c
+++ b/drivers/clocksource/timer-meson6.c
@@ -150,13 +150,6 @@ static irqreturn_t meson6_timer_interrupt(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
-static struct irqaction meson6_timer_irq = {
-	.name		= "meson6_timer",
-	.flags		= IRQF_TIMER | IRQF_IRQPOLL,
-	.handler	= meson6_timer_interrupt,
-	.dev_id		= &meson6_clockevent,
-};
-
 static int __init meson6_timer_init(struct device_node *node)
 {
 	u32 val;
@@ -194,7 +187,9 @@ static int __init meson6_timer_init(struct device_node *node)
 	/* Stop the timer A */
 	meson6_clkevt_time_stop();
 
-	ret = setup_irq(irq, &meson6_timer_irq);
+	ret = request_irq(irq, meson6_timer_interrupt,
+			  IRQF_TIMER | IRQF_IRQPOLL, "meson6_timer",
+			  &meson6_clockevent);
 	if (ret) {
 		pr_warn("failed to setup irq %d\n", irq);
 		return ret;
diff --git a/drivers/clocksource/timer-orion.c b/drivers/clocksource/timer-orion.c
index 7d487107e3cd..d01ff4181867 100644
--- a/drivers/clocksource/timer-orion.c
+++ b/drivers/clocksource/timer-orion.c
@@ -114,12 +114,6 @@ static irqreturn_t orion_clkevt_irq_handler(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
-static struct irqaction orion_clkevt_irq = {
-	.name		= "orion_event",
-	.flags		= IRQF_TIMER,
-	.handler	= orion_clkevt_irq_handler,
-};
-
 static int __init orion_timer_init(struct device_node *np)
 {
 	unsigned long rate;
@@ -172,7 +166,8 @@ static int __init orion_timer_init(struct device_node *np)
 	sched_clock_register(orion_read_sched_clock, 32, rate);
 
 	/* setup timer1 as clockevent timer */
-	ret = setup_irq(irq, &orion_clkevt_irq);
+	ret = request_irq(irq, orion_clkevt_irq_handler, IRQF_TIMER,
+			  "orion_event", NULL);
 	if (ret) {
 		pr_err("%pOFn: unable to setup irq\n", np);
 		return ret;
diff --git a/drivers/clocksource/timer-prima2.c b/drivers/clocksource/timer-prima2.c
index d4a9dcf5fba2..3d202813f992 100644
--- a/drivers/clocksource/timer-prima2.c
+++ b/drivers/clocksource/timer-prima2.c
@@ -165,14 +165,6 @@ static struct clocksource sirfsoc_clocksource = {
 	.resume = sirfsoc_clocksource_resume,
 };
 
-static struct irqaction sirfsoc_timer_irq = {
-	.name = "sirfsoc_timer0",
-	.flags = IRQF_TIMER,
-	.irq = 0,
-	.handler = sirfsoc_timer_interrupt,
-	.dev_id = &sirfsoc_clockevent,
-};
-
 /* Overwrite weak default sched_clock with more precise one */
 static u64 notrace sirfsoc_read_sched_clock(void)
 {
@@ -234,7 +226,8 @@ static int __init sirfsoc_prima2_timer_init(struct device_node *np)
 
 	sched_clock_register(sirfsoc_read_sched_clock, 64, PRIMA2_CLOCK_FREQ);
 
-	ret = setup_irq(sirfsoc_timer_irq.irq, &sirfsoc_timer_irq);
+	ret = request_irq(sirfsoc_timer_irq.irq, sirfsoc_timer_interrupt,
+			  IRQF_TIMER, "sirfsoc_timer0", &sirfsoc_clockevent);
 	if (ret) {
 		pr_err("Failed to setup irq\n");
 		return ret;
diff --git a/drivers/clocksource/timer-pxa.c b/drivers/clocksource/timer-pxa.c
index 913a5d354a1f..7ad0e5adb2ff 100644
--- a/drivers/clocksource/timer-pxa.c
+++ b/drivers/clocksource/timer-pxa.c
@@ -143,13 +143,6 @@ static struct clock_event_device ckevt_pxa_osmr0 = {
 	.resume			= pxa_timer_resume,
 };
 
-static struct irqaction pxa_ost0_irq = {
-	.name		= "ost0",
-	.flags		= IRQF_TIMER | IRQF_IRQPOLL,
-	.handler	= pxa_ost0_interrupt,
-	.dev_id		= &ckevt_pxa_osmr0,
-};
-
 static int __init pxa_timer_common_init(int irq, unsigned long clock_tick_rate)
 {
 	int ret;
@@ -161,7 +154,8 @@ static int __init pxa_timer_common_init(int irq, unsigned long clock_tick_rate)
 
 	ckevt_pxa_osmr0.cpumask = cpumask_of(0);
 
-	ret = setup_irq(irq, &pxa_ost0_irq);
+	ret = request_irq(irq, pxa_ost0_interrupt, IRQF_TIMER | IRQF_IRQPOLL,
+			  "ost0", &ckevt_pxa_osmr0);
 	if (ret) {
 		pr_err("Failed to setup irq\n");
 		return ret;
diff --git a/drivers/clocksource/timer-sp804.c b/drivers/clocksource/timer-sp804.c
index 9c841980eed1..5cd0abf9b396 100644
--- a/drivers/clocksource/timer-sp804.c
+++ b/drivers/clocksource/timer-sp804.c
@@ -168,13 +168,6 @@ static struct clock_event_device sp804_clockevent = {
 	.rating			= 300,
 };
 
-static struct irqaction sp804_timer_irq = {
-	.name		= "timer",
-	.flags		= IRQF_TIMER | IRQF_IRQPOLL,
-	.handler	= sp804_timer_interrupt,
-	.dev_id		= &sp804_clockevent,
-};
-
 int __init __sp804_clockevents_init(void __iomem *base, unsigned int irq, struct clk *clk, const char *name)
 {
 	struct clock_event_device *evt = &sp804_clockevent;
@@ -200,7 +193,9 @@ int __init __sp804_clockevents_init(void __iomem *base, unsigned int irq, struct
 
 	writel(0, base + TIMER_CTRL);
 
-	setup_irq(irq, &sp804_timer_irq);
+	if (request_irq(irq, sp804_timer_interrupt, IRQF_TIMER | IRQF_IRQPOLL,
+			"timer", &sp804_clockevent))
+		pr_err("%s: request_irq() failed\n", "timer");
 	clockevents_config_and_register(evt, rate, 0xf, 0xffffffff);
 
 	return 0;
diff --git a/drivers/clocksource/timer-u300.c b/drivers/clocksource/timer-u300.c
index 32adc3057dda..37cba8dfd45f 100644
--- a/drivers/clocksource/timer-u300.c
+++ b/drivers/clocksource/timer-u300.c
@@ -330,12 +330,6 @@ static irqreturn_t u300_timer_interrupt(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
-static struct irqaction u300_timer_irq = {
-	.name		= "U300 Timer Tick",
-	.flags		= IRQF_TIMER | IRQF_IRQPOLL,
-	.handler	= u300_timer_interrupt,
-};
-
 /*
  * Override the global weak sched_clock symbol with this
  * local implementation which uses the clocksource to get some
@@ -420,7 +414,8 @@ static int __init u300_timer_init_of(struct device_node *np)
 		u300_timer_base + U300_TIMER_APP_RGPT1);
 
 	/* Set up the IRQ handler */
-	ret = setup_irq(irq, &u300_timer_irq);
+	ret = request_irq(irq, u300_timer_interrupt,
+			  IRQF_TIMER | IRQF_IRQPOLL, "U300 Timer Tick", NULL);
 	if (ret)
 		return ret;
 
diff --git a/drivers/clocksource/timer-vf-pit.c b/drivers/clocksource/timer-vf-pit.c
index fef0bb4e0c8c..7ad4a8b008c2 100644
--- a/drivers/clocksource/timer-vf-pit.c
+++ b/drivers/clocksource/timer-vf-pit.c
@@ -123,19 +123,13 @@ static struct clock_event_device clockevent_pit = {
 	.rating		= 300,
 };
 
-static struct irqaction pit_timer_irq = {
-	.name		= "VF pit timer",
-	.flags		= IRQF_TIMER | IRQF_IRQPOLL,
-	.handler	= pit_timer_interrupt,
-	.dev_id		= &clockevent_pit,
-};
-
 static int __init pit_clockevent_init(unsigned long rate, int irq)
 {
 	__raw_writel(0, clkevt_base + PITTCTRL);
 	__raw_writel(PITTFLG_TIF, clkevt_base + PITTFLG);
 
-	BUG_ON(setup_irq(irq, &pit_timer_irq));
+	BUG_ON(request_irq(irq, pit_timer_interrupt, IRQF_TIMER | IRQF_IRQPOLL,
+			   "VF pit timer", &clockevent_pit);
 
 	clockevent_pit.cpumask = cpumask_of(0);
 	clockevent_pit.irq = irq;
diff --git a/drivers/clocksource/timer-vt8500.c b/drivers/clocksource/timer-vt8500.c
index bb424bcefbb3..a469b1b5f972 100644
--- a/drivers/clocksource/timer-vt8500.c
+++ b/drivers/clocksource/timer-vt8500.c
@@ -101,13 +101,6 @@ static irqreturn_t vt8500_timer_interrupt(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
-static struct irqaction irq = {
-	.name    = "vt8500_timer",
-	.flags   = IRQF_TIMER | IRQF_IRQPOLL,
-	.handler = vt8500_timer_interrupt,
-	.dev_id  = &clockevent,
-};
-
 static int __init vt8500_timer_init(struct device_node *np)
 {
 	int timer_irq, ret;
@@ -139,7 +132,9 @@ static int __init vt8500_timer_init(struct device_node *np)
 
 	clockevent.cpumask = cpumask_of(0);
 
-	ret = setup_irq(timer_irq, &irq);
+	ret = request_irq(timer_irq, vt8500_timer_interrupt,
+			  IRQF_TIMER | IRQF_IRQPOLL, "vt8500_timer",
+			  &clockevent);
 	if (ret) {
 		pr_err("%s: setup_irq failed for %s\n", __func__,
 							clockevent.name);
diff --git a/drivers/clocksource/timer-zevio.c b/drivers/clocksource/timer-zevio.c
index c0041561f1be..ecaa3568841c 100644
--- a/drivers/clocksource/timer-zevio.c
+++ b/drivers/clocksource/timer-zevio.c
@@ -53,7 +53,6 @@ struct zevio_timer {
 
 	struct clk *clk;
 	struct clock_event_device clkevt;
-	struct irqaction clkevt_irq;
 
 	char clocksource_name[64];
 	char clockevent_name[64];
@@ -172,12 +171,12 @@ static int __init zevio_timer_add(struct device_node *node)
 		/* Interrupt to occur when timer value matches 0 */
 		writel(0, timer->base + IO_MATCH(TIMER_MATCH));
 
-		timer->clkevt_irq.name		= timer->clockevent_name;
-		timer->clkevt_irq.handler	= zevio_timer_interrupt;
-		timer->clkevt_irq.dev_id	= timer;
-		timer->clkevt_irq.flags		= IRQF_TIMER | IRQF_IRQPOLL;
-
-		setup_irq(irqnr, &timer->clkevt_irq);
+		if (request_irq(irqnr, zevio_timer_interrupt,
+				IRQF_TIMER | IRQF_IRQPOLL,
+				timer->clockevent_name, timer)) {
+			pr_err("%s: request_irq() failed\n",
+			       timer->clockevent_name);
+		}
 
 		clockevents_config_and_register(&timer->clkevt,
 				clk_get_rate(timer->clk), 0x0001, 0xffff);
diff --git a/include/linux/dw_apb_timer.h b/include/linux/dw_apb_timer.h
index 14f072edbca5..82ebf9223948 100644
--- a/include/linux/dw_apb_timer.h
+++ b/include/linux/dw_apb_timer.h
@@ -25,7 +25,6 @@ struct dw_apb_timer {
 struct dw_apb_clock_event_device {
 	struct clock_event_device		ced;
 	struct dw_apb_timer			timer;
-	struct irqaction			irqaction;
 	void					(*eoi)(struct dw_apb_timer *);
 };
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
