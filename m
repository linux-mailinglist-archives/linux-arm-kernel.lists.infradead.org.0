Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCAB86FDE7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 12:34:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2kH0MGh6faBfKIDhIf4V8deKLKUYjTdhZQ9fcIUSfsg=; b=kV3zr9CgtF8d4j
	AmQHp72huYBb2EPFswr8jJytjCX/rNJwCL1bamCbGY/ujrcBML7/Na6EKAkCAMfx0IXgbwnyHKI7H
	sFNJgHcA8XZ15F+Do4txt3mVrMp7s1OG0pPCn27KfUrfAHCxKCs8gyJ8sTNjBHWxfNxZSK6/mobrM
	SfR5YUZ1q3YlJmTLUtDHl1avxwMc9frAKLRMmr8q1KSt/p7Qq0TKITD+PsGq2J1TQy4H9Qy77I+KD
	hNEVGbsDern3nc5+QwZRSjWTuzet080uMggcJmI7NRMCyORT7rSE2rPyBDG023NfngCPKLx3YJhkh
	1+fjRzV6dI5LwopXIm9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpVeK-0003r3-B9; Mon, 22 Jul 2019 10:34:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpVda-00039n-R1
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 10:33:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 926C11596;
 Mon, 22 Jul 2019 03:33:45 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 236233F71A;
 Mon, 22 Jul 2019 03:33:44 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Thomas Gleixner <tglx@linutronix.de>, John Stultz <john.stultz@linaro.org>,
 Pavel Tatashin <pasha.tatashin@soleen.com>, Petr Mladek <pmladek@suse.com>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will.deacon@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 3/3] arm64: Allow early time stamping
Date: Mon, 22 Jul 2019 11:33:30 +0100
Message-Id: <20190722103330.255312-4-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190722103330.255312-1-marc.zyngier@arm.com>
References: <20190722103330.255312-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_033347_026806_9AC93047 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to provide early timestamping on arm64 systems, we provide
a timestamp_clock() function that is available as early as possible.
This function simply returns the current counter value scales in
nanoseconds, and 0-based.

In order to deal with the idiosyncrasies of some broken platforms,
we condition this on the frequency being set in the CNTFRQ_EL0
register, and revert back to using local_clock() as soon as it starts
returning non-zero values.

Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 arch/arm64/Kconfig        |  3 +++
 arch/arm64/kernel/setup.c | 44 +++++++++++++++++++++++++++++++++++++++
 2 files changed, 47 insertions(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 3adcec05b1f6..ac3882ddc1c2 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -911,6 +911,9 @@ config ARCH_WANT_HUGE_PMD_SHARE
 config ARCH_HAS_CACHE_LINE_SIZE
 	def_bool y
 
+config ARCH_HAS_TIMESTAMP_CLOCK
+	def_bool y
+
 config ARCH_ENABLE_SPLIT_PMD_PTLOCK
 	def_bool y if PGTABLE_LEVELS > 2
 
diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
index 9c4bad7d7131..cf21e3df7165 100644
--- a/arch/arm64/kernel/setup.c
+++ b/arch/arm64/kernel/setup.c
@@ -15,6 +15,7 @@
 #include <linux/initrd.h>
 #include <linux/console.h>
 #include <linux/cache.h>
+#include <linux/clocksource.h>
 #include <linux/screen_info.h>
 #include <linux/init.h>
 #include <linux/kexec.h>
@@ -28,10 +29,12 @@
 #include <linux/of_fdt.h>
 #include <linux/efi.h>
 #include <linux/psci.h>
+#include <linux/sched/clock.h>
 #include <linux/sched/task.h>
 #include <linux/mm.h>
 
 #include <asm/acpi.h>
+#include <asm/arch_timer.h>
 #include <asm/fixmap.h>
 #include <asm/cpu.h>
 #include <asm/cputype.h>
@@ -269,8 +272,49 @@ arch_initcall(reserve_memblock_reserved_regions);
 
 u64 __cpu_logical_map[NR_CPUS] = { [0 ... NR_CPUS-1] = INVALID_HWID };
 
+static u64 notrace ts_counter_read_cc(const struct cyclecounter *cc)
+{
+	return __arch_counter_get_cntvct();
+}
+
+static struct cyclecounter ts_cc __ro_after_init = {
+	.read	= ts_counter_read_cc,
+	.mask	= CLOCKSOURCE_MASK(56),
+};
+
+static struct timecounter ts_tc;
+
+static bool ts_cc_valid __ro_after_init = false;
+
+static __init void timestamp_clock_init(void)
+{
+	u64 frq = arch_timer_get_cntfrq();
+
+	if (!frq)
+		return;
+
+	clocks_calc_mult_shift(&ts_cc.mult, &ts_cc.shift,
+			       frq, NSEC_PER_SEC, 3600);
+	/* timestamp starts at 0 (local_clock is a good enough approximation) */
+	timecounter_init(&ts_tc, &ts_cc, local_clock());
+	ts_cc_valid = true;
+	pr_info("Using timestamp clock @%lluMHz\n", frq / 1000 / 1000);
+}
+
+u64 timestamp_clock(void)
+{
+	u64 ns = local_clock();
+
+	if (likely(ns || !ts_cc_valid))
+		return ns;
+
+	return timecounter_read(&ts_tc);
+}
+
 void __init setup_arch(char **cmdline_p)
 {
+	timestamp_clock_init();
+
 	init_mm.start_code = (unsigned long) _text;
 	init_mm.end_code   = (unsigned long) _etext;
 	init_mm.end_data   = (unsigned long) _edata;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
