Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD863188BE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 13:12:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PfWzmr39xQRCU8u3bffc9PfliIpcVLTQGyYZebwsNi8=; b=VKVPiqrqx0PTo8N96oA9g8d1c/
	FeAyx5hqAaF2i1wngHWqFdt2/V10fcL4Suk6/IDsDx15cxhss5RAh3GFwjcNKth7jAzUkJ/m7V9KV
	5OQJBXLalbdwAv2+6RtmsWYaTvjG9l8UqRTx4lBfa/paIg9z7wQ2FoCV+EiVyJdrcCBu5St75YyIS
	16ZW9DehEBAXdwQir0P15+R+GH8Pzi2WhWCdEMa3OsOmhlKwSzt4exLV9KCH9fb8iMltsqeoY9Bte
	spEYSxx1zexD/SiPUHIjESwwhOGv6XhvynRlbwH/YkZxwaHjBYRQlfifySqKS29TmHNvXwe5j+qk4
	/tv5CsrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOgyI-0000Uo-Fl; Thu, 09 May 2019 11:12:18 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOgxe-0008Ft-Vu
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 11:11:46 +0000
Received: by mail-wr1-x442.google.com with SMTP id c5so2427898wrs.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 May 2019 04:11:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=bmjB3BHnekjxDNQPFJ4nw5UiA2KYqoVK/B7ROqlZgj4=;
 b=FIM0wqqC9vb6yllf2xV6CMWDAKauyBh4kfVZkhZh/5vsp4pY92k9c9dATliNsxMT31
 +VR+Jx10oE1/jwJuV6UwW5HsHjxx4SN+2jE53jeGQIF4B3u2hSdbVVoiFejaew2vlYnH
 gt5MLztvIC1GOdmJ53wVLf3PPk0QVPcBHe6MuICKjnKSyDRc98GH3lRNPlKyyXWAFEOV
 zlcevWx2NXKT4F8L3NHKfrBVqk9rUDgzAWCN9iJKySopXXdyeXxTZfIfmiHfldk7MsCh
 f430QoUjCXEcbOi0SIZWEDXWsuD9vITW8Dv6w+zBemm0R29BWKeXwbG4aQjveJfquQk/
 5aeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=bmjB3BHnekjxDNQPFJ4nw5UiA2KYqoVK/B7ROqlZgj4=;
 b=m7kXiy8ofSJhvCSXNYZuCDgnvUyVzFX/j+3FAKOKFQYhHxnGU8PaLfgwO20bdFL2He
 6cJ/Y4vgBxEhx3chrFBHfWKaY6Txm+tnLUZgR2dGkxtK89NAQBfGlXF783f74hw+skmZ
 7TwQpUPGIOy/fRKsXCs7/fztZEDCyfE4N3INZWF/MNW6W5xcTuroJtLVNLswF0LpXnkx
 XhoSOVlbf8KibJKb05ah00stntb/b9cTX6Osa2ataVV31ywZpSq2sz+fk7CX3dpIECUL
 bp+myOTn949Y1bFYCh2M25GZlqoiMLN1gv5rsy7+gI2gyqtppFiUi+w+ChE3DGDw70fR
 VCMA==
X-Gm-Message-State: APjAAAWQgHVFF2dZKTYmnGqbkPNqR4KYS2uaY2uxlQGo0QyCVrEQOnvj
 /Pb4OYNcWerf5msAWocCPsCeHQ==
X-Google-Smtp-Source: APXvYqxLj5tt2/1wq0URNUB3A98KhTBLetp3g708tPUndgIYoMMlJ5Hlv5QnfU8b+GlSXAJ50rGxyw==
X-Received: by 2002:adf:f487:: with SMTP id l7mr2700119wro.127.1557400297092; 
 Thu, 09 May 2019 04:11:37 -0700 (PDT)
Received: from mai.irit.fr ([141.115.39.235])
 by smtp.gmail.com with ESMTPSA id z7sm2299778wme.26.2019.05.09.04.11.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 May 2019 04:11:36 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: tglx@linutronix.de
Subject: [PATCH 08/15] clocksource/drivers/tcb_clksrc: Stop depending on
 atmel_tclib
Date: Thu,  9 May 2019 13:10:41 +0200
Message-Id: <20190509111048.11151-8-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190509111048.11151-1-daniel.lezcano@linaro.org>
References: <7e786ba3-a664-8fd9-dd17-6a5be996a712@linaro.org>
 <20190509111048.11151-1-daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_041139_368672_B0F3AB63 
X-CRM114-Status: GOOD (  27.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org,
 "moderated list:MICROCHIP TIMER COUNTER TC AND CLOCKSOURCE DR..."
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Alexandre Belloni <alexandre.belloni@bootlin.com>

atmel_tclib is probed too late in the boot process to be able to use the
TCB as the boot clocksource. This is an issue for SoCs without the PIT
(sams70, samv70 and samv71 families) as they simply currently can't boot.

Get rid of the atmel_tclib dependency and probe everything on our own using
the correct device tree binding.

This also allows getting rid of ATMEL_TCB_CLKSRC_BLOCK and makes the driver
a bit more flexible as the TCB is not hardcoded in the kernel anymore.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 drivers/clocksource/tcb_clksrc.c | 108 +++++++++++++++++++------------
 drivers/misc/Kconfig             |  14 +---
 2 files changed, 70 insertions(+), 52 deletions(-)

diff --git a/drivers/clocksource/tcb_clksrc.c b/drivers/clocksource/tcb_clksrc.c
index 138a12090149..bf68504da94a 100644
--- a/drivers/clocksource/tcb_clksrc.c
+++ b/drivers/clocksource/tcb_clksrc.c
@@ -9,7 +9,8 @@
 #include <linux/err.h>
 #include <linux/ioport.h>
 #include <linux/io.h>
-#include <linux/platform_device.h>
+#include <linux/of_address.h>
+#include <linux/of_irq.h>
 #include <linux/syscore_ops.h>
 #include <soc/at91/atmel_tcb.h>
 
@@ -28,13 +29,6 @@
  *     source, used in either periodic or oneshot mode.  This runs
  *     at 32 KiHZ, and can handle delays of up to two seconds.
  *
- * A boot clocksource and clockevent source are also currently needed,
- * unless the relevant platforms (ARM/AT91, AVR32/AT32) are changed so
- * this code can be used when init_timers() is called, well before most
- * devices are set up.  (Some low end AT91 parts, which can run uClinux,
- * have only the timers in one TC block... they currently don't support
- * the tclib code, because of that initialization issue.)
- *
  * REVISIT behavior during system suspend states... we should disable
  * all clocks and save the power.  Easily done for clockevent devices,
  * but clocksources won't necessarily get the needed notifications.
@@ -112,7 +106,6 @@ void tc_clksrc_resume(struct clocksource *cs)
 }
 
 static struct clocksource clksrc = {
-	.name           = "tcb_clksrc",
 	.rating         = 200,
 	.read           = tc_get_cycles,
 	.mask           = CLOCKSOURCE_MASK(32),
@@ -214,7 +207,6 @@ static int tc_next_event(unsigned long delta, struct clock_event_device *d)
 
 static struct tc_clkevt_device clkevt = {
 	.clkevt	= {
-		.name			= "tc_clkevt",
 		.features		= CLOCK_EVT_FEAT_PERIODIC |
 					  CLOCK_EVT_FEAT_ONESHOT,
 		/* Should be lower than at91rm9200's system timer */
@@ -330,39 +322,73 @@ static void __init tcb_setup_single_chan(struct atmel_tc *tc, int mck_divisor_id
 	writel(ATMEL_TC_SYNC, tcaddr + ATMEL_TC_BCR);
 }
 
-static int __init tcb_clksrc_init(void)
-{
-	static char bootinfo[] __initdata
-		= KERN_DEBUG "%s: tc%d at %d.%03d MHz\n";
+static const u8 atmel_tcb_divisors[5] = { 2, 8, 32, 128, 0, };
+
+static const struct of_device_id atmel_tcb_of_match[] = {
+	{ .compatible = "atmel,at91rm9200-tcb", .data = (void *)16, },
+	{ .compatible = "atmel,at91sam9x5-tcb", .data = (void *)32, },
+	{ /* sentinel */ }
+};
 
-	struct platform_device *pdev;
-	struct atmel_tc *tc;
+static int __init tcb_clksrc_init(struct device_node *node)
+{
+	struct atmel_tc tc;
 	struct clk *t0_clk;
+	const struct of_device_id *match;
 	u32 rate, divided_rate = 0;
 	int best_divisor_idx = -1;
 	int clk32k_divisor_idx = -1;
+	int bits;
 	int i;
 	int ret;
 
-	tc = atmel_tc_alloc(CONFIG_ATMEL_TCB_CLKSRC_BLOCK);
-	if (!tc) {
-		pr_debug("can't alloc TC for clocksource\n");
-		return -ENODEV;
+	/* Protect against multiple calls */
+	if (tcaddr)
+		return 0;
+
+	tc.regs = of_iomap(node->parent, 0);
+	if (!tc.regs)
+		return -ENXIO;
+
+	t0_clk = of_clk_get_by_name(node->parent, "t0_clk");
+	if (IS_ERR(t0_clk))
+		return PTR_ERR(t0_clk);
+
+	tc.slow_clk = of_clk_get_by_name(node->parent, "slow_clk");
+	if (IS_ERR(tc.slow_clk))
+		return PTR_ERR(tc.slow_clk);
+
+	tc.clk[0] = t0_clk;
+	tc.clk[1] = of_clk_get_by_name(node->parent, "t1_clk");
+	if (IS_ERR(tc.clk[1]))
+		tc.clk[1] = t0_clk;
+	tc.clk[2] = of_clk_get_by_name(node->parent, "t2_clk");
+	if (IS_ERR(tc.clk[2]))
+		tc.clk[2] = t0_clk;
+
+	tc.irq[2] = of_irq_get(node->parent, 2);
+	if (tc.irq[2] <= 0) {
+		tc.irq[2] = of_irq_get(node->parent, 0);
+		if (tc.irq[2] <= 0)
+			return -EINVAL;
 	}
-	tcaddr = tc->regs;
-	pdev = tc->pdev;
 
-	t0_clk = tc->clk[0];
+	match = of_match_node(atmel_tcb_of_match, node->parent);
+	bits = (uintptr_t)match->data;
+
+	for (i = 0; i < ARRAY_SIZE(tc.irq); i++)
+		writel(ATMEL_TC_ALL_IRQ, tc.regs + ATMEL_TC_REG(i, IDR));
+
 	ret = clk_prepare_enable(t0_clk);
 	if (ret) {
 		pr_debug("can't enable T0 clk\n");
-		goto err_free_tc;
+		return ret;
 	}
 
 	/* How fast will we be counting?  Pick something over 5 MHz.  */
 	rate = (u32) clk_get_rate(t0_clk);
-	for (i = 0; i < 5; i++) {
-		unsigned divisor = atmel_tc_divisors[i];
+	for (i = 0; i < ARRAY_SIZE(atmel_tcb_divisors); i++) {
+		unsigned divisor = atmel_tcb_divisors[i];
 		unsigned tmp;
 
 		/* remember 32 KiHz clock for later */
@@ -381,27 +407,29 @@ static int __init tcb_clksrc_init(void)
 		best_divisor_idx = i;
 	}
 
-
-	printk(bootinfo, clksrc.name, CONFIG_ATMEL_TCB_CLKSRC_BLOCK,
-			divided_rate / 1000000,
+	clksrc.name = kbasename(node->parent->full_name);
+	clkevt.clkevt.name = kbasename(node->parent->full_name);
+	pr_debug("%s at %d.%03d MHz\n", clksrc.name, divided_rate / 1000000,
 			((divided_rate % 1000000) + 500) / 1000);
 
-	if (tc->tcb_config && tc->tcb_config->counter_width == 32) {
+	tcaddr = tc.regs;
+
+	if (bits == 32) {
 		/* use apropriate function to read 32 bit counter */
 		clksrc.read = tc_get_cycles32;
 		/* setup ony channel 0 */
-		tcb_setup_single_chan(tc, best_divisor_idx);
+		tcb_setup_single_chan(&tc, best_divisor_idx);
 	} else {
-		/* tclib will give us three clocks no matter what the
+		/* we have three clocks no matter what the
 		 * underlying platform supports.
 		 */
-		ret = clk_prepare_enable(tc->clk[1]);
+		ret = clk_prepare_enable(tc.clk[1]);
 		if (ret) {
 			pr_debug("can't enable T1 clk\n");
 			goto err_disable_t0;
 		}
 		/* setup both channel 0 & 1 */
-		tcb_setup_dual_chan(tc, best_divisor_idx);
+		tcb_setup_dual_chan(&tc, best_divisor_idx);
 	}
 
 	/* and away we go! */
@@ -410,7 +438,7 @@ static int __init tcb_clksrc_init(void)
 		goto err_disable_t1;
 
 	/* channel 2:  periodic and oneshot timer support */
-	ret = setup_clkevents(tc, clk32k_divisor_idx);
+	ret = setup_clkevents(&tc, clk32k_divisor_idx);
 	if (ret)
 		goto err_unregister_clksrc;
 
@@ -420,14 +448,14 @@ static int __init tcb_clksrc_init(void)
 	clocksource_unregister(&clksrc);
 
 err_disable_t1:
-	if (!tc->tcb_config || tc->tcb_config->counter_width != 32)
-		clk_disable_unprepare(tc->clk[1]);
+	if (bits != 32)
+		clk_disable_unprepare(tc.clk[1]);
 
 err_disable_t0:
 	clk_disable_unprepare(t0_clk);
 
-err_free_tc:
-	atmel_tc_free(tc);
+	tcaddr = NULL;
+
 	return ret;
 }
-arch_initcall(tcb_clksrc_init);
+TIMER_OF_DECLARE(atmel_tcb_clksrc, "atmel,tcb-timer", tcb_clksrc_init);
diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
index 42ab8ec92a04..268a01d3d6f3 100644
--- a/drivers/misc/Kconfig
+++ b/drivers/misc/Kconfig
@@ -61,7 +61,8 @@ config ATMEL_TCLIB
 
 config ATMEL_TCB_CLKSRC
 	bool "TC Block Clocksource"
-	depends on ATMEL_TCLIB
+	depends on ARCH_AT91
+	select TIMER_OF if OF
 	default y
 	help
 	  Select this to get a high precision clocksource based on a
@@ -72,17 +73,6 @@ config ATMEL_TCB_CLKSRC
 	  may be used as a clock event device supporting oneshot mode
 	  (delays of up to two seconds) based on the 32 KiHz clock.
 
-config ATMEL_TCB_CLKSRC_BLOCK
-	int
-	depends on ATMEL_TCB_CLKSRC
-	default 0
-	range 0 1
-	help
-	  Some chips provide more than one TC block, so you have the
-	  choice of which one to use for the clock framework.  The other
-	  TC can be used for other purposes, such as PWM generation and
-	  interval timing.
-
 config DUMMY_IRQ
 	tristate "Dummy IRQ handler"
 	default n
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
