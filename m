Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07FBDB2501
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 20:21:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LjPYKHYE3z8j42ACvSf6Jfq1hWbtXRBw0rXIJr1sYC4=; b=ri5Z4hG5vyByvykujU0fcbUQgO
	7vB8BP8DpdlOnjsNxMZFFrwsx+Fat8EcUkmtsLfig42rOXCbxdUvHmMQ5sugB4ragX7HzYjauBTBV
	dEWNaZm8qYAuMFH9MMbfW6koQCd3zQ59pjz953TFIOvmeMkb4wC1BQJxhyZ3pGjF3T3brRtNykn3Q
	CbYZPfOgxg8AbHe2mBfkIduoCbSDsDbvmXKU72ajhrwj6ZxMds3bbBKhQY0ssSJVCtb/cG4ES4Fi1
	sHg3pgoqvUdzJ2ntM8ukQatcoFFvECTxFxZiDkNo8q9abOhky8QAR/Ae0QMmnQxrujONQ+KyNU4mV
	C158A38A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8qCi-0005nz-BQ; Fri, 13 Sep 2019 18:21:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8qBh-0004yl-Gh
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 18:20:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3DC4515AB;
 Fri, 13 Sep 2019 11:20:53 -0700 (PDT)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C3CAD3F71F;
 Fri, 13 Sep 2019 11:20:50 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org
Subject: [RFC PATCH v2 03/12] smp: coordinate concurrent crash/smp stop calls
Date: Fri, 13 Sep 2019 19:19:44 +0100
Message-Id: <20190913181953.45748-4-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190913181953.45748-1-cristian.marussi@arm.com>
References: <20190913181953.45748-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_112053_754467_F9B97BBA 
X-CRM114-Status: GOOD (  16.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arch@vger.kernel.org, mark.rutland@arm.com,
 sparclinux@vger.kernel.org, dzickus@redhat.com, ehabkost@redhat.com,
 peterz@infradead.org, catalin.marinas@arm.com, x86@kernel.org,
 linux@armlinux.org.uk, davem@davemloft.net, hch@infradead.org,
 takahiro.akashi@linaro.org, mingo@redhat.com, james.morse@arm.com,
 hidehiro.kawai.ez@hitachi.com, tglx@linutronix.de, will@kernel.org,
 dave.martin@arm.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Once a stop request is in progress on one CPU, it must be carefully
evaluated what to do if another stop request is issued concurrently
on another CPU.

Given that panic and crash dump code flows are mutually exclusive,
the only alternative possible scenario which instead could lead to
concurrent stop requests, is represented by the simultaneous stop
requests possibly triggered by a concurrent halt/reboot/shutdown.

In such a case, prioritize the panic/crash procedure and most importantly
immediately park the offending CPU that was attempting the concurrent stop
request: force it to idle quietly, waiting for the ongoing stop/dump
requests to arrive.

Failing to do so would result in the offending CPU being effectively lost
on the next possible reboot triggered by the crash dump. [1]

Another scenario, where the crash/stop code path was known to be executed
twice, was during a normal panic/crash with crash_kexec_post_notifiers=1;
since this issue is similar, fold also this case-handling into this new
logic.

[1]
<<<<<---------- TRIGGERED PANIC
[  225.676014] ------------[ cut here ]------------
[  225.676656] kernel BUG at arch/arm64/kernel/cpufeature.c:852!
[  225.677253] Internal error: Oops - BUG: 0 [#1] PREEMPT SMP
[  225.677660] Modules linked in:
[  225.678458] CPU: 3 PID: 0 Comm: swapper/3 Kdump: loaded Not tainted 5.3.0-rc5-00004-gb8a210cd3c32-dirty #2
[  225.678621] Hardware name: Foundation-v8A (DT)
[  225.678868] pstate: 000001c5 (nzcv dAIF -PAN -UAO)
[  225.679523] pc : has_cpuid_feature+0x35c/0x360
[  225.679649] lr : verify_local_elf_hwcaps+0x6c/0xf0
[  225.679759] sp : ffff0000118cbf60
[  225.679855] x29: ffff0000118cbf60 x28: 0000000000000000
[  225.680026] x27: 0000000000000000 x26: 0000000000000000
[  225.680115] x25: ffff00001167a010 x24: ffff0000112f59f8
[  225.680207] x23: 0000000000000000 x22: 0000000000000000
[  225.680290] x21: ffff0000112ea018 x20: ffff000010fe5538
[  225.680372] x19: ffff000010ba3f30 x18: 000000000000001e
[  225.680465] x17: 0000000000000000 x16: 0000000000000000
[  225.680546] x15: 0000000000000000 x14: 0000000000000008
[  225.680629] x13: 0209018b7a9404f4 x12: 0000000000000001
[  225.680719] x11: 0000000000000080 x10: 00400032b5503510
[  225.680803] x9 : 0000000000000000 x8 : ffff000010b93204
[  225.680884] x7 : 00000000800001d8 x6 : 0000000000000005
[  225.680975] x5 : 0000000000000000 x4 : 0000000000000000
[  225.681056] x3 : 0000000000000000 x2 : 0000000000008000
[  225.681139] x1 : 0000000000180480 x0 : 0000000000180480
[  225.681423] Call trace:
[  225.681669]  has_cpuid_feature+0x35c/0x360
[  225.681762]  verify_local_elf_hwcaps+0x6c/0xf0
[  225.681836]  check_local_cpu_capabilities+0x88/0x118
[  225.681939]  secondary_start_kernel+0xc4/0x168
[  225.682432] Code: d53801e0 17ffff58 d5380600 17ffff56 (d4210000)
[  225.683998] smp: stopping secondary CPUs
[  225.684130] Delaying stop....   <<<<<------ INSTRUMENTED DEBUG_DELAY

Rebooting.                         <<<<<------ MANUAL SIMULTANEOUS REBOOT
[  232.647472] reboot: Restarting system
[  232.648363] Reboot failed -- System halted
[  239.552413] smp: failed to stop secondary CPUs 0
[  239.554730] Starting crashdump kernel...
[  239.555194] ------------[ cut here ]------------
[  239.555406] Some CPUs may be stale, kdump will be unreliable.
[  239.555802] WARNING: CPU: 3 PID: 0 at arch/arm64/kernel/machine_kexec.c:156 machine_kexec+0x3c/0x2b0
[  239.556044] Modules linked in:
[  239.556244] CPU: 3 PID: 0 Comm: swapper/3 Kdump: loaded Not tainted 5.3.0-rc5-00004-gb8a210cd3c32-dirty #2
[  239.556340] Hardware name: Foundation-v8A (DT)
[  239.556459] pstate: 600003c5 (nZCv DAIF -PAN -UAO)
[  239.556587] pc : machine_kexec+0x3c/0x2b0
[  239.556700] lr : machine_kexec+0x3c/0x2b0
[  239.556775] sp : ffff0000118cbad0
[  239.556876] x29: ffff0000118cbad0 x28: ffff80087a8c3700
[  239.557012] x27: 0000000000000000 x26: 0000000000000000
[  239.557278] x25: ffff000010fe3ef0 x24: 00000000000003c0
....
[  239.561568] Bye!
[    0.000000] Booting Linux on physical CPU 0x0000000003 [0x410fd0f0]
[    0.000000] Linux version 5.2.0-rc4-00001-g93bd4bc234d5-dirty
[    0.000000] Machine model: Foundation-v8A
...
[    0.197991] smp: Bringing up secondary CPUs ...
[    0.232643] psci: failed to boot CPU1 (-22)  <<<<--- LOST CPU ON REBOOT
[    0.232861] CPU1: failed to boot: -22
[    0.306291] Detected PIPT I-cache on CPU2
[    0.310524] GICv3: CPU2: found redistributor 1 region 0:0x000000002f120000
[    0.315618] CPU2: Booted secondary processor 0x0000000001 [0x410fd0f0]
[    0.395576] Detected PIPT I-cache on CPU3
[    0.400431] GICv3: CPU3: found redistributor 2 region 0:0x000000002f140000
[    0.407252] CPU3: Booted secondary processor 0x0000000002 [0x410fd0f0]
[    0.431811] smp: Brought up 1 node, 3 CPUs
[    0.439898] SMP: Total of 3 processors activated.

Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
v1 --> v2
- using new CONFIG_USE_COMMON_SMP_STOP
---
 include/linux/smp.h |  3 +++
 kernel/smp.c        | 48 ++++++++++++++++++++++++++++++++++++++++-----
 2 files changed, 46 insertions(+), 5 deletions(-)

diff --git a/include/linux/smp.h b/include/linux/smp.h
index 0f95bbd2cb5c..2ae7dd48b33c 100644
--- a/include/linux/smp.h
+++ b/include/linux/smp.h
@@ -152,6 +152,9 @@ extern void arch_smp_crash_call(cpumask_t *cpus);
 
 /* Helper to query the outcome of an ongoing crash_stop operation */
 bool smp_crash_stop_failed(void);
+
+/* A generic cpu parking helper, possibly overridden by architecture code */
+void arch_smp_cpu_park(void) __noreturn;
 #endif
 
 /*
diff --git a/kernel/smp.c b/kernel/smp.c
index b05d2648a168..d92ce59ae538 100644
--- a/kernel/smp.c
+++ b/kernel/smp.c
@@ -821,6 +821,12 @@ EXPORT_SYMBOL_GPL(smp_call_on_cpu);
 
 #ifdef CONFIG_USE_COMMON_SMP_STOP
 
+void __weak arch_smp_cpu_park(void)
+{
+	while (1)
+		cpu_relax();
+}
+
 void __weak arch_smp_cpus_stop_complete(void) { }
 
 void __weak arch_smp_cpus_crash_complete(void)
@@ -843,6 +849,9 @@ void __weak arch_smp_crash_call(cpumask_t *cpus)
 	arch_smp_stop_call(cpus);
 }
 
+#define	REASON_STOP	1
+#define	REASON_CRASH	2
+
 /*
  * This centralizes the common logic to:
  *
@@ -858,8 +867,38 @@ static inline void __smp_send_stop_all(bool reason_crash)
 {
 	unsigned int this_cpu_id;
 	cpumask_t mask;
+	static atomic_t stopping;
+	int was_reason;
 
 	this_cpu_id = smp_processor_id();
+	/* make sure that concurrent stop requests are handled properly */
+	was_reason = atomic_cmpxchg(&stopping, 0,
+				    reason_crash ? REASON_CRASH : REASON_STOP);
+	if (was_reason) {
+		/*
+		 * This function can be called twice in panic path if
+		 * crash_kexec is called with crash_kexec_post_notifiers=1,
+		 * but obviously we execute this only once.
+		 */
+		if (reason_crash && was_reason == REASON_CRASH)
+			return;
+		/*
+		 * In case of other concurrent STOP calls (like in a REBOOT
+		 * started simultaneously as an ongoing PANIC/CRASH/REBOOT)
+		 * we want to prioritize the ongoing PANIC/KEXEC call and
+		 * force here the offending CPU that was attempting the
+		 * concurrent STOP to just sit idle waiting to die.
+		 * Failing to do so would result in a lost CPU on the next
+		 * possible reboot triggered by crash_kexec().
+		 */
+		if (!reason_crash) {
+			pr_crit("CPU%d - kernel already stopping, parking myself.\n",
+				this_cpu_id);
+			local_irq_enable();
+			/* does not return */
+			arch_smp_cpu_park();
+		}
+	}
 	if (any_other_cpus_online(&mask, this_cpu_id)) {
 		bool wait;
 		unsigned long timeout;
@@ -927,6 +966,9 @@ bool __weak smp_crash_stop_failed(void)
  */
 void __weak crash_smp_send_stop(void)
 {
+#ifdef CONFIG_USE_COMMON_SMP_STOP
+	__smp_send_stop_all(true);
+#else
 	static int cpus_stopped;
 
 	/*
@@ -936,11 +978,7 @@ void __weak crash_smp_send_stop(void)
 	if (cpus_stopped)
 		return;
 
-#ifdef CONFIG_USE_COMMON_SMP_STOP
-	__smp_send_stop_all(true);
-#else
 	smp_send_stop();
-#endif
-
 	cpus_stopped = 1;
+#endif
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
