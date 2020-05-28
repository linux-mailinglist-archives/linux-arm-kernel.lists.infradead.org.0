Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E962E1E66DB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 17:55:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=scIOlMcW+WuSU+jGoJ2zBUEKGm5leUVz1zHrxDXBEEw=; b=YerCI2jx8lgf2M
	xYIjd4DJxYvjtRT21JIqYpS/wrpr5A7zQrmtPmcIg5xj6UDQoEKU+jEueWielIVh66nVPx4YJXS2O
	yhwvlt/IRiS7c8NBQCjdA2Ghj+IdmTFXMkFnx+9Kl9zrgxwu6HeqQ/G1qNbnhgMmapGugDXn3jQ9l
	t+QmF2EVs8Z2mqPHHhFKLoPiuzXa858QoGeHgE3rUqm/YNSz/oqVixK8wjfP9IcKJiLmTM1R+y8cW
	OBzk5yfzhTQSCY9dJcOgtu+6oGSuHGr0RI2Ay8xbOzXCiWrizzECA29buecB6zmSf16Tz4G4cLv4W
	pzu2emz4c9JaDfGXC4Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeKsL-0000bv-En; Thu, 28 May 2020 15:55:21 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeKs1-0008Mg-HL
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 15:55:03 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 68BF380BF;
 Thu, 28 May 2020 15:55:47 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH] ARM: OMAP2+: Fix regression for using local timer on non-SMP
 SoCs
Date: Thu, 28 May 2020 08:54:53 -0700
Message-Id: <20200528155453.8585-1-tony@atomide.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_085501_707423_0C0C14DE 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On am437x we use also an ARM timer in addition to the dmtimer. As am437x
is not an SMP SoC, we need tick_broadcast() implemented. With the recent
dmtimer changes, Arnd started to see link failures for non-SMP am437x
configuration:

kernel/time/tick-broadcast.o: in function `tick_device_uses_broadcast':
tick-broadcast.c:(.text+0x130): undefined reference to `tick_broadcast'

Let's fix the issue by reverting dmtimer related changes that started
building timer.c only for CONFIG_SOC_HAS_REALTIME_COUNTER. We still
always need timer.c built-in for omap5 and dra7 for timer_probe().

And let's also move am437x tick_broadcast() to board-generic.c as
that's where we now call timer_probe() for am437x. This way we avoid
adding back more ifdefs to timer.c.

Fixes: 2ee04b88547a ("ARM: OMAP2+: Drop old timer code for dmtimer and 32k counter")
Reported-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/mach-omap2/Makefile        |  6 ++++--
 arch/arm/mach-omap2/board-generic.c |  7 +++++++
 arch/arm/mach-omap2/timer.c         | 19 ++++++++++---------
 3 files changed, 21 insertions(+), 11 deletions(-)

diff --git a/arch/arm/mach-omap2/Makefile b/arch/arm/mach-omap2/Makefile
--- a/arch/arm/mach-omap2/Makefile
+++ b/arch/arm/mach-omap2/Makefile
@@ -16,8 +16,6 @@ hwmod-common				= omap_hwmod.o omap_hwmod_reset.o \
 clock-common				= clock.o
 secure-common				= omap-smc.o omap-secure.o
 
-obj-$(CONFIG_SOC_HAS_REALTIME_COUNTER)	+= timer.o
-
 obj-$(CONFIG_ARCH_OMAP2) += $(omap-2-3-common) $(hwmod-common)
 obj-$(CONFIG_ARCH_OMAP3) += $(omap-2-3-common) $(hwmod-common) $(secure-common)
 obj-$(CONFIG_ARCH_OMAP4) += $(hwmod-common) $(secure-common)
@@ -48,6 +46,10 @@ obj-$(CONFIG_SOC_OMAP5)			+= $(omap-4-5-common) $(smp-y) sleep44xx.o
 obj-$(CONFIG_SOC_AM43XX)		+= $(omap-4-5-common)
 obj-$(CONFIG_SOC_DRA7XX)		+= $(omap-4-5-common) $(smp-y) sleep44xx.o
 
+omap5-dra7-common			=  timer.o
+obj-$(CONFIG_SOC_OMAP5)			+= $(omap5-dra7-common)
+obj-$(CONFIG_SOC_DRA7XX)		+= $(omap5-dra7-common)
+
 # Functions loaded to SRAM
 obj-$(CONFIG_SOC_OMAP2420)		+= sram242x.o
 obj-$(CONFIG_SOC_OMAP2430)		+= sram243x.o
diff --git a/arch/arm/mach-omap2/board-generic.c b/arch/arm/mach-omap2/board-generic.c
--- a/arch/arm/mach-omap2/board-generic.c
+++ b/arch/arm/mach-omap2/board-generic.c
@@ -39,6 +39,13 @@ void __init __maybe_unused omap_init_time_of(void)
 	timer_probe();
 }
 
+/* Used by am437x for ARM timer in non-SMP configurations */
+#if !defined(CONFIG_SMP) && defined(CONFIG_GENERIC_CLOCKEVENTS_BROADCAST)
+void tick_broadcast(const struct cpumask *mask)
+{
+}
+#endif
+
 #ifdef CONFIG_SOC_OMAP2420
 static const char *const omap242x_boards_compat[] __initconst = {
 	"ti,omap2420",
diff --git a/arch/arm/mach-omap2/timer.c b/arch/arm/mach-omap2/timer.c
--- a/arch/arm/mach-omap2/timer.c
+++ b/arch/arm/mach-omap2/timer.c
@@ -39,6 +39,8 @@
 #define INCREMENTER_DENUMERATOR_RELOAD_OFFSET		0x14
 #define NUMERATOR_DENUMERATOR_MASK			0xfffff000
 
+#ifdef CONFIG_SOC_HAS_REALTIME_COUNTER
+
 static unsigned long arch_timer_freq;
 
 void set_cntfreq(void)
@@ -46,14 +48,6 @@ void set_cntfreq(void)
 	omap_smc1(OMAP5_DRA7_MON_SET_CNTFRQ_INDEX, arch_timer_freq);
 }
 
-#if !defined(CONFIG_SMP) && defined(CONFIG_GENERIC_CLOCKEVENTS_BROADCAST)
-void tick_broadcast(const struct cpumask *mask)
-{
-}
-#endif
-
-#if defined(CONFIG_SOC_OMAP5) || defined(CONFIG_SOC_DRA7XX)
-
 /*
  * The realtime counter also called master counter, is a free-running
  * counter, which is related to real time. It produces the count used
@@ -165,6 +159,14 @@ static void __init realtime_counter_init(void)
 	iounmap(base);
 }
 
+#else
+
+static inline void realtime_counter_init(void)
+{
+}
+
+#endif	/* CONFIG_SOC_HAS_REALTIME_COUNTER */
+
 void __init omap5_realtime_timer_init(void)
 {
 	omap_clk_init();
@@ -172,4 +174,3 @@ void __init omap5_realtime_timer_init(void)
 
 	timer_probe();
 }
-#endif /* CONFIG_SOC_OMAP5 || CONFIG_SOC_DRA7XX */
-- 
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
