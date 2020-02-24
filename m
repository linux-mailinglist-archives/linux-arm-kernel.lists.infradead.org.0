Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DCAE169B6A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 01:49:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2uakkhGAwWeOKs9vxZ1FF1JbxvngkdClxbscNTRhwIw=; b=uI/29ckzPN8HiE
	/FMmuSllYum63+kSoCCZoI6B9gxv3cAasSaWP5T40GFstXG9lKLidYDw6hALZ9kWyWrZJ2ZfQBvUs
	rZE3B9CPviAcYIkMQkkPbUjFXFFNhc7IL+Y6etH/gKMlyTYByyJHYUeGbUkuvwCeZhK+yp2rDU468
	Q2ivyp7jtAc4yx1oxMyLBJTTQeHUW66h4oH/k8cAQEIkUFwlTacoGMvVKyMMJfaXArFUMdOnXjvzg
	+KThox/4xZQyAgfoZhceA/01PbeRJoNW9CbEQ/M1+RCoL7rzPPadZXNezk5S7u8INtqyoW7FlfeUl
	yCAd7vLP/ntBq9aI2B6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j61w2-0003J4-DZ; Mon, 24 Feb 2020 00:49:22 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j61vq-0003Hl-Dk
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 00:49:12 +0000
Received: by mail-pf1-x444.google.com with SMTP id i6so4459161pfc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 23 Feb 2020 16:49:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ssQ9m9KQkGJdkdcMCe4YNc7eA1NVtbdC5ZFPkDK99rc=;
 b=mMEN7ePBmQZX0bRQMjOKE10v6iZYq4qminW8dLpW6UlxrdTsm2QGJQKNBUIxN3bvze
 HbrQlHegGAjlnc1t59/6akivUFNRSEwu+Bt8dbxNYqfgv204q5Aq7k3pjdyQt98sykqf
 FVHbGE7S28+e83kgxjVSwrVbf13CexA9LynHn10Fd+Qr+NZXiVmN0EH+Cl6Z5As87qls
 vZROrCDy2vPwyfAvyBTwHhg15jBSBOrh9YLoBgZEi5iYKcextUokPSLyAtLJF+hzWBGc
 etorgqGeuZjeUqcz+Y7JRcyEfmnQrQyYBe8kuvYoC8BtOBPtrP8u+3qBanhtg4W61loO
 e5Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ssQ9m9KQkGJdkdcMCe4YNc7eA1NVtbdC5ZFPkDK99rc=;
 b=nmLf/nzBvcFAotn1OaOIxBwnKRUZcq1lR1VRuRFwDcZeZ/LpMW7k8ooHYj3Ez0MOcn
 kL+O5eqOAIs4/Mq9ZelnSYPfF1ZaFrj3LTzqUbnIkdeZQ2OIcv9hWlJXk+x84+8rutYx
 5SmKVyyof+zuuy3Pv1CJBBIP93cke9HaQt6Oq8BESiXX5BAyCnJHX0tphKRNMUW67UEr
 /rHxYo3/y4NVAZbuuATwibK8dAD0HS353ihIOGva4xFS5Db+sjHcGPhoRPE1g0tO+7mf
 cs59yCeXdWF5lkwgkxgBh6dsefVxd9ywZfWjO8i86+/082PfAfjryc2EM0xpqHsyVasP
 WmqA==
X-Gm-Message-State: APjAAAVUF3cTWUuavhIEJurGHZ4AI2dhnPQt51MahI0ilUJAGvd1bkKm
 QlRNZWB+8iqZaWsb4pIAHnE2rfpvYSI=
X-Google-Smtp-Source: APXvYqxsVJNSMHi3c5gv6mGgENckyCJhSWLFrepqsjAhynwX4O0HPjX6SM3eyFplPYEuNSFf6aiZ5A==
X-Received: by 2002:a63:5d56:: with SMTP id o22mr32258619pgm.255.1582505346249; 
 Sun, 23 Feb 2020 16:49:06 -0800 (PST)
Received: from localhost ([106.51.232.35])
 by smtp.gmail.com with ESMTPSA id e2sm9716573pjs.25.2020.02.23.16.49.05
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 23 Feb 2020 16:49:05 -0800 (PST)
Date: Mon, 24 Feb 2020 06:19:04 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-omap@vger.kernel.org
Subject: [PATCH v2 02/18] ARM: replace setup_irq() by request_irq()
Message-ID: <cbc4859788bd30d6ddc9d9483ed641d6f2d0fd42.1582471508.git.afzal.mohd.ma@gmail.com>
References: <cover.1582471508.git.afzal.mohd.ma@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1582471508.git.afzal.mohd.ma@gmail.com>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_164910_472387_73EA64AD 
X-CRM114-Status: GOOD (  18.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
Cc: Andrew Lunn <andrew@lunn.ch>, Enrico Weigelt <info@metux.net>,
 Jason Cooper <jason@lakedaemon.net>, Arnd Bergmann <arnd@arndb.de>,
 Kevin Hilman <khilman@kernel.org>, Tony Lindgren <tony@atomide.com>,
 Viresh Kumar <vireshk@kernel.org>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Russell King <linux@armlinux.org.uk>,
 Hartley Sweeten <hsweeten@visionengravers.com>,
 Lubomir Rintel <lkundrak@v3.sk>, Krzysztof Halasa <khalasa@piap.pl>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>,
 Shiraz Hashim <shiraz.linux.kernel@gmail.com>,
 Allison Randal <allison@lohutok.net>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
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
Acked-by: Viresh Kumar <viresh.kumar@linaro.org>
Acked-by: Alexander Sverdlin <alexander.sverdlin@gmail.com> # EP93xx
Tested-by: Alexander Sverdlin <alexander.sverdlin@gmail.com> # EP93xx
---

v2:
 * Replace pr_err("request_irq() on %s failed" by
           pr_err("%s: request_irq() failed"
 * Commit message massage

 arch/arm/mach-cns3xxx/core.c             | 10 +++-------
 arch/arm/mach-ebsa110/core.c             | 10 +++-------
 arch/arm/mach-ep93xx/timer-ep93xx.c      | 12 ++++--------
 arch/arm/mach-footbridge/dc21285-timer.c | 11 +++--------
 arch/arm/mach-footbridge/isa-irq.c       |  8 ++------
 arch/arm/mach-footbridge/isa-timer.c     | 11 +++--------
 arch/arm/mach-iop32x/time.c              | 12 ++++--------
 arch/arm/mach-mmp/time.c                 | 11 +++--------
 arch/arm/mach-omap1/pm.c                 | 22 +++++++++++++---------
 arch/arm/mach-omap1/time.c               | 10 +++-------
 arch/arm/mach-omap1/timer32k.c           | 10 +++-------
 arch/arm/mach-omap2/timer.c              | 11 +++--------
 arch/arm/mach-rpc/time.c                 |  8 ++------
 arch/arm/mach-spear/time.c               |  9 ++-------
 arch/arm/plat-orion/time.c               | 10 +++-------
 15 files changed, 54 insertions(+), 111 deletions(-)

diff --git a/arch/arm/mach-cns3xxx/core.c b/arch/arm/mach-cns3xxx/core.c
index 1d61a7701c11..711d88b64f2e 100644
--- a/arch/arm/mach-cns3xxx/core.c
+++ b/arch/arm/mach-cns3xxx/core.c
@@ -189,12 +189,6 @@ static irqreturn_t cns3xxx_timer_interrupt(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
-static struct irqaction cns3xxx_timer_irq = {
-	.name		= "timer",
-	.flags		= IRQF_TIMER | IRQF_IRQPOLL,
-	.handler	= cns3xxx_timer_interrupt,
-};
-
 /*
  * Set up the clock source and clock events devices
  */
@@ -245,7 +239,9 @@ static void __init __cns3xxx_timer_init(unsigned int timer_irq)
 	writel(val, cns3xxx_tmr1 + TIMER1_2_CONTROL_OFFSET);
 
 	/* Make irqs happen for the system timer */
-	setup_irq(timer_irq, &cns3xxx_timer_irq);
+	if (request_irq(timer_irq, cns3xxx_timer_interrupt,
+			IRQF_TIMER | IRQF_IRQPOLL, "timer", NULL))
+		pr_err("%s: request_irq() failed\n", "timer");
 
 	cns3xxx_clockevents_init(timer_irq);
 }
diff --git a/arch/arm/mach-ebsa110/core.c b/arch/arm/mach-ebsa110/core.c
index da2ff4f61d6b..dfe6da30a3e0 100644
--- a/arch/arm/mach-ebsa110/core.c
+++ b/arch/arm/mach-ebsa110/core.c
@@ -201,12 +201,6 @@ ebsa110_timer_interrupt(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
-static struct irqaction ebsa110_timer_irq = {
-	.name		= "EBSA110 Timer Tick",
-	.flags		= IRQF_TIMER | IRQF_IRQPOLL,
-	.handler	= ebsa110_timer_interrupt,
-};
-
 /*
  * Set up timer interrupt.
  */
@@ -221,7 +215,9 @@ void __init ebsa110_timer_init(void)
 	__raw_writeb(COUNT & 0xff, PIT_T1);
 	__raw_writeb(COUNT >> 8, PIT_T1);
 
-	setup_irq(IRQ_EBSA110_TIMER0, &ebsa110_timer_irq);
+	if (request_irq(IRQ_EBSA110_TIMER0, ebsa110_timer_interrupt,
+			IRQF_TIMER | IRQF_IRQPOLL, "EBSA110 Timer Tick", NULL))
+		pr_err("%s: request_irq() failed\n", "EBSA110 Timer Tick");
 }
 
 static struct plat_serial8250_port serial_platform_data[] = {
diff --git a/arch/arm/mach-ep93xx/timer-ep93xx.c b/arch/arm/mach-ep93xx/timer-ep93xx.c
index de998830f534..01f7e2b0b9fe 100644
--- a/arch/arm/mach-ep93xx/timer-ep93xx.c
+++ b/arch/arm/mach-ep93xx/timer-ep93xx.c
@@ -117,13 +117,6 @@ static irqreturn_t ep93xx_timer_interrupt(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
-static struct irqaction ep93xx_timer_irq = {
-	.name		= "ep93xx timer",
-	.flags		= IRQF_TIMER | IRQF_IRQPOLL,
-	.handler	= ep93xx_timer_interrupt,
-	.dev_id		= &ep93xx_clockevent,
-};
-
 void __init ep93xx_timer_init(void)
 {
 	/* Enable and register clocksource and sched_clock on timer 4 */
@@ -136,7 +129,10 @@ void __init ep93xx_timer_init(void)
 			     EP93XX_TIMER4_RATE);
 
 	/* Set up clockevent on timer 3 */
-	setup_irq(IRQ_EP93XX_TIMER3, &ep93xx_timer_irq);
+	if (request_irq(IRQ_EP93XX_TIMER3, ep93xx_timer_interrupt,
+			IRQF_TIMER | IRQF_IRQPOLL, "ep93xx timer",
+			&ep93xx_clockevent))
+		pr_err("%s: request_irq() failed\n", "ep93xx timer");
 	clockevents_config_and_register(&ep93xx_clockevent,
 					EP93XX_TIMER123_RATE,
 					1,
diff --git a/arch/arm/mach-footbridge/dc21285-timer.c b/arch/arm/mach-footbridge/dc21285-timer.c
index f76212d2dbf1..ce70931037c0 100644
--- a/arch/arm/mach-footbridge/dc21285-timer.c
+++ b/arch/arm/mach-footbridge/dc21285-timer.c
@@ -101,13 +101,6 @@ static irqreturn_t timer1_interrupt(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
-static struct irqaction footbridge_timer_irq = {
-	.name		= "dc21285_timer1",
-	.handler	= timer1_interrupt,
-	.flags		= IRQF_TIMER | IRQF_IRQPOLL,
-	.dev_id		= &ckevt_dc21285,
-};
-
 /*
  * Set up timer interrupt.
  */
@@ -118,7 +111,9 @@ void __init footbridge_timer_init(void)
 
 	clocksource_register_hz(&cksrc_dc21285, rate);
 
-	setup_irq(ce->irq, &footbridge_timer_irq);
+	if (request_irq(ce->irq, timer1_interrupt, IRQF_TIMER | IRQF_IRQPOLL,
+			"dc21285_timer1", &ckevt_dc21285))
+		pr_err("%s: request_irq() failed\n", "dc21285_timer1");
 
 	ce->cpumask = cpumask_of(smp_processor_id());
 	clockevents_config_and_register(ce, rate, 0x4, 0xffffff);
diff --git a/arch/arm/mach-footbridge/isa-irq.c b/arch/arm/mach-footbridge/isa-irq.c
index 88a553932c33..a259d5d8eb20 100644
--- a/arch/arm/mach-footbridge/isa-irq.c
+++ b/arch/arm/mach-footbridge/isa-irq.c
@@ -96,11 +96,6 @@ static void isa_irq_handler(struct irq_desc *desc)
 	generic_handle_irq(isa_irq);
 }
 
-static struct irqaction irq_cascade = {
-	.handler = no_action,
-	.name = "cascade",
-};
-
 static struct resource pic1_resource = {
 	.name	= "pic1",
 	.start	= 0x20,
@@ -160,7 +155,8 @@ void __init isa_init_irq(unsigned int host_irq)
 
 		request_resource(&ioport_resource, &pic1_resource);
 		request_resource(&ioport_resource, &pic2_resource);
-		setup_irq(IRQ_ISA_CASCADE, &irq_cascade);
+		if (request_irq(IRQ_ISA_CASCADE, no_action, 0, "cascade", NULL))
+			pr_err("%s: request_irq() failed\n", "cascade");
 
 		irq_set_chained_handler(host_irq, isa_irq_handler);
 
diff --git a/arch/arm/mach-footbridge/isa-timer.c b/arch/arm/mach-footbridge/isa-timer.c
index 82f45591fb2c..6c7c6ea03804 100644
--- a/arch/arm/mach-footbridge/isa-timer.c
+++ b/arch/arm/mach-footbridge/isa-timer.c
@@ -25,17 +25,12 @@ static irqreturn_t pit_timer_interrupt(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
-static struct irqaction pit_timer_irq = {
-	.name		= "pit",
-	.handler	= pit_timer_interrupt,
-	.flags		= IRQF_TIMER | IRQF_IRQPOLL,
-	.dev_id		= &i8253_clockevent,
-};
-
 void __init isa_timer_init(void)
 {
 	clocksource_i8253_init();
 
-	setup_irq(i8253_clockevent.irq, &pit_timer_irq);
+	if (request_irq(i8253_clockevent.irq, pit_timer_interrupt,
+			IRQF_TIMER | IRQF_IRQPOLL, "pit", &i8253_clockevent))
+		pr_err("%s: request_irq() failed\n", "pit");
 	clockevent_i8253_init(false);
 }
diff --git a/arch/arm/mach-iop32x/time.c b/arch/arm/mach-iop32x/time.c
index 18a4df5c1baa..422e298366bd 100644
--- a/arch/arm/mach-iop32x/time.c
+++ b/arch/arm/mach-iop32x/time.c
@@ -137,13 +137,6 @@ iop_timer_interrupt(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
-static struct irqaction iop_timer_irq = {
-	.name		= "IOP Timer Tick",
-	.handler	= iop_timer_interrupt,
-	.flags		= IRQF_TIMER | IRQF_IRQPOLL,
-	.dev_id		= &iop_clockevent,
-};
-
 static unsigned long iop_tick_rate;
 unsigned long get_iop_tick_rate(void)
 {
@@ -168,7 +161,10 @@ void __init iop_init_time(unsigned long tick_rate)
 	 */
 	write_tmr0(timer_ctl & ~IOP_TMR_EN);
 	write_tisr(1);
-	setup_irq(IRQ_IOP32X_TIMER0, &iop_timer_irq);
+	if (request_irq(IRQ_IOP32X_TIMER0, iop_timer_interrupt,
+			IRQF_TIMER | IRQF_IRQPOLL, "IOP Timer Tick",
+			&iop_clockevent))
+		pr_err("%s: request_irq() failed\n", "IOP Timer Tick");
 	iop_clockevent.cpumask = cpumask_of(0);
 	clockevents_config_and_register(&iop_clockevent, tick_rate,
 					0xf, 0xfffffffe);
diff --git a/arch/arm/mach-mmp/time.c b/arch/arm/mach-mmp/time.c
index c65cfc1ad99b..83af1db45c15 100644
--- a/arch/arm/mach-mmp/time.c
+++ b/arch/arm/mach-mmp/time.c
@@ -175,13 +175,6 @@ static void __init timer_config(void)
 	__raw_writel(0x2, mmp_timer_base + TMR_CER);
 }
 
-static struct irqaction timer_irq = {
-	.name		= "timer",
-	.flags		= IRQF_TIMER | IRQF_IRQPOLL,
-	.handler	= timer_interrupt,
-	.dev_id		= &ckevt,
-};
-
 void __init mmp_timer_init(int irq, unsigned long rate)
 {
 	timer_config();
@@ -190,7 +183,9 @@ void __init mmp_timer_init(int irq, unsigned long rate)
 
 	ckevt.cpumask = cpumask_of(0);
 
-	setup_irq(irq, &timer_irq);
+	if (request_irq(irq, timer_interrupt, IRQF_TIMER | IRQF_IRQPOLL,
+			"timer", &ckevt))
+		pr_err("%s: request_irq() failed\n", "timer");
 
 	clocksource_register_hz(&cksrc, rate);
 	clockevents_config_and_register(&ckevt, rate, MIN_DELTA, MAX_DELTA);
diff --git a/arch/arm/mach-omap1/pm.c b/arch/arm/mach-omap1/pm.c
index d068958d6f8a..a82e220783d1 100644
--- a/arch/arm/mach-omap1/pm.c
+++ b/arch/arm/mach-omap1/pm.c
@@ -596,11 +596,6 @@ static irqreturn_t omap_wakeup_interrupt(int irq, void *dev)
 	return IRQ_HANDLED;
 }
 
-static struct irqaction omap_wakeup_irq = {
-	.name		= "peripheral wakeup",
-	.handler	= omap_wakeup_interrupt
-};
-
 
 
 static const struct platform_suspend_ops omap_pm_ops = {
@@ -655,10 +650,19 @@ static int __init omap_pm_init(void)
 
 	arm_pm_idle = omap1_pm_idle;
 
-	if (cpu_is_omap7xx())
-		setup_irq(INT_7XX_WAKE_UP_REQ, &omap_wakeup_irq);
-	else if (cpu_is_omap16xx())
-		setup_irq(INT_1610_WAKE_UP_REQ, &omap_wakeup_irq);
+	if (cpu_is_omap7xx()) {
+		if (request_irq(INT_7XX_WAKE_UP_REQ, omap_wakeup_interrupt, 0,
+				"peripheral wakeup", NULL)) {
+			pr_err("%s: request_irq() failed\n",
+			       "peripheral wakeup");
+		}
+	} else if (cpu_is_omap16xx()) {
+		if (request_irq(INT_1610_WAKE_UP_REQ, omap_wakeup_interrupt, 0,
+				"peripheral wakeup", NULL)) {
+			pr_err("%s: request_irq() failed\n",
+			       "peripheral wakeup");
+		}
+	}
 
 	/* Program new power ramp-up time
 	 * (0 for most boards since we don't lower voltage when in deep sleep)
diff --git a/arch/arm/mach-omap1/time.c b/arch/arm/mach-omap1/time.c
index 524977a31a49..2bd6c4dc6c1f 100644
--- a/arch/arm/mach-omap1/time.c
+++ b/arch/arm/mach-omap1/time.c
@@ -155,15 +155,11 @@ static irqreturn_t omap_mpu_timer1_interrupt(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
-static struct irqaction omap_mpu_timer1_irq = {
-	.name		= "mpu_timer1",
-	.flags		= IRQF_TIMER | IRQF_IRQPOLL,
-	.handler	= omap_mpu_timer1_interrupt,
-};
-
 static __init void omap_init_mpu_timer(unsigned long rate)
 {
-	setup_irq(INT_TIMER1, &omap_mpu_timer1_irq);
+	if (request_irq(INT_TIMER1, omap_mpu_timer1_interrupt,
+			IRQF_TIMER | IRQF_IRQPOLL, "mpu_timer1", NULL))
+		pr_err("%s: request_irq() failed\n", "mpu_timer1");
 	omap_mpu_timer_start(0, (rate / HZ) - 1, 1);
 
 	clockevent_mpu_timer1.cpumask = cpumask_of(0);
diff --git a/arch/arm/mach-omap1/timer32k.c b/arch/arm/mach-omap1/timer32k.c
index 0ae6c52a7d70..1435faca19d8 100644
--- a/arch/arm/mach-omap1/timer32k.c
+++ b/arch/arm/mach-omap1/timer32k.c
@@ -148,15 +148,11 @@ static irqreturn_t omap_32k_timer_interrupt(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
-static struct irqaction omap_32k_timer_irq = {
-	.name		= "32KHz timer",
-	.flags		= IRQF_TIMER | IRQF_IRQPOLL,
-	.handler	= omap_32k_timer_interrupt,
-};
-
 static __init void omap_init_32k_timer(void)
 {
-	setup_irq(INT_OS_TIMER, &omap_32k_timer_irq);
+	if (request_irq(INT_OS_TIMER, omap_32k_timer_interrupt,
+			IRQF_TIMER | IRQF_IRQPOLL, "32KHz timer", NULL))
+		pr_err("%s: request_irq() failed\n", "32KHz timer");
 
 	clockevent_32k_timer.cpumask = cpumask_of(0);
 	clockevents_config_and_register(&clockevent_32k_timer,
diff --git a/arch/arm/mach-omap2/timer.c b/arch/arm/mach-omap2/timer.c
index 0d0a731cb476..7cf91f42dbd1 100644
--- a/arch/arm/mach-omap2/timer.c
+++ b/arch/arm/mach-omap2/timer.c
@@ -91,12 +91,6 @@ static irqreturn_t omap2_gp_timer_interrupt(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
-static struct irqaction omap2_gp_timer_irq = {
-	.name		= "gp_timer",
-	.flags		= IRQF_TIMER | IRQF_IRQPOLL,
-	.handler	= omap2_gp_timer_interrupt,
-};
-
 static int omap2_gp_timer_set_next_event(unsigned long cycles,
 					 struct clock_event_device *evt)
 {
@@ -382,8 +376,9 @@ static void __init omap2_gp_clockevent_init(int gptimer_id,
 				     &clockevent_gpt.name, OMAP_TIMER_POSTED);
 	BUG_ON(res);
 
-	omap2_gp_timer_irq.dev_id = &clkev;
-	setup_irq(clkev.irq, &omap2_gp_timer_irq);
+	if (request_irq(clkev.irq, omap2_gp_timer_interrupt,
+			IRQF_TIMER | IRQF_IRQPOLL, "gp_timer", &clkev))
+		pr_err("%s: request_irq() failed\n", "gp_timer");
 
 	__omap_dm_timer_int_enable(&clkev, OMAP_TIMER_INT_OVERFLOW);
 
diff --git a/arch/arm/mach-rpc/time.c b/arch/arm/mach-rpc/time.c
index 1d750152b160..3b7d3baa8ac1 100644
--- a/arch/arm/mach-rpc/time.c
+++ b/arch/arm/mach-rpc/time.c
@@ -85,11 +85,6 @@ ioc_timer_interrupt(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
-static struct irqaction ioc_timer_irq = {
-	.name		= "timer",
-	.handler	= ioc_timer_interrupt
-};
-
 /*
  * Set up timer interrupt.
  */
@@ -97,5 +92,6 @@ void __init ioc_timer_init(void)
 {
 	WARN_ON(clocksource_register_hz(&ioctime_clocksource, RPC_CLOCK_FREQ));
 	ioctime_init();
-	setup_irq(IRQ_TIMER0, &ioc_timer_irq);
+	if (request_irq(IRQ_TIMER0, ioc_timer_interrupt, 0, "timer", NULL))
+		pr_err("%s: request_irq() failed\n", "timer");
 }
diff --git a/arch/arm/mach-spear/time.c b/arch/arm/mach-spear/time.c
index 289e036c9c30..b69acc04db4a 100644
--- a/arch/arm/mach-spear/time.c
+++ b/arch/arm/mach-spear/time.c
@@ -181,12 +181,6 @@ static irqreturn_t spear_timer_interrupt(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
-static struct irqaction spear_timer_irq = {
-	.name = "timer",
-	.flags = IRQF_TIMER,
-	.handler = spear_timer_interrupt
-};
-
 static void __init spear_clockevent_init(int irq)
 {
 	u32 tick_rate;
@@ -201,7 +195,8 @@ static void __init spear_clockevent_init(int irq)
 
 	clockevents_config_and_register(&clkevt, tick_rate, 3, 0xfff0);
 
-	setup_irq(irq, &spear_timer_irq);
+	if (request_irq(irq, spear_timer_interrupt, IRQF_TIMER, "timer", NULL))
+		pr_err("%s: request_irq() failed\n", "timer");
 }
 
 static const struct of_device_id timer_of_match[] __initconst = {
diff --git a/arch/arm/plat-orion/time.c b/arch/arm/plat-orion/time.c
index ffb93db68e9c..0a1faa95ecff 100644
--- a/arch/arm/plat-orion/time.c
+++ b/arch/arm/plat-orion/time.c
@@ -177,12 +177,6 @@ static irqreturn_t orion_timer_interrupt(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
-static struct irqaction orion_timer_irq = {
-	.name		= "orion_tick",
-	.flags		= IRQF_TIMER,
-	.handler	= orion_timer_interrupt
-};
-
 void __init
 orion_time_set_base(void __iomem *_timer_base)
 {
@@ -236,7 +230,9 @@ orion_time_init(void __iomem *_bridge_base, u32 _bridge_timer1_clr_mask,
 	/*
 	 * Setup clockevent timer (interrupt-driven).
 	 */
-	setup_irq(irq, &orion_timer_irq);
+	if (request_irq(irq, orion_timer_interrupt, IRQF_TIMER, "orion_tick",
+			NULL))
+		pr_err("%s: request_irq() failed\n", "orion_tick");
 	orion_clkevt.cpumask = cpumask_of(0);
 	clockevents_config_and_register(&orion_clkevt, tclk, 1, 0xfffffffe);
 }
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
