Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F32D126213
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 13:22:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=E9rKyo2gHQHHeWg9Ok3h5XmPq8Fag3SAroXonEDRt94=; b=eWkbBsdEAUiBceDkfureO1qq+z
	hb/LutR8lB8eEqSELJWEO+iTbzf78EwugU7XOzfRaystphbQxupfn8G2w44VIvvA6uLLOkRxQyQoi
	nfemna8+e4ObW+pskxFnI5u29dJW1P29eiiABH8MccsS0iRqsUBEY5LX4NzXSf8bYxHdCkuff3dxj
	NPAw+lfUTwC7i7XGWEDofmLO2d7ary6yECA2NEBFw5B3wFc2gkzHxD3gM2RpZEeKxeiiBfhQce571
	5gb8uR6dCbMMfFEWG7D5IVk706u84w9iwrDQoVvdTfFWQBbWuaRjKsI9a+zHGYnJc++2z7aKdkhhG
	jhTwN9yQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihuoz-0005U7-Hc; Thu, 19 Dec 2019 12:22:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihumO-0002Jj-V7
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 12:19:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 237AF1007;
 Thu, 19 Dec 2019 04:19:44 -0800 (PST)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CB8CD3F719;
 Thu, 19 Dec 2019 04:19:41 -0800 (PST)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org
Subject: [RFC PATCH v3 08/12] x86: smp: use generic SMP stop common code
Date: Thu, 19 Dec 2019 12:19:01 +0000
Message-Id: <20191219121905.26905-9-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191219121905.26905-1-cristian.marussi@arm.com>
References: <20191219121905.26905-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_041945_210578_EBEC55ED 
X-CRM114-Status: GOOD (  19.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
 linux@armlinux.org.uk, hch@infradead.org, takahiro.akashi@linaro.org,
 mingo@redhat.com, james.morse@arm.com, hidehiro.kawai.ez@hitachi.com,
 tglx@linutronix.de, will@kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make x86 use the generic SMP-stop logic provided by common code unified
smp_send_stop() function.

Introduce needed arch_smp_stop_call()/arch_smp_cpus_stop_complete()
helpers that implement the backend architectures specific functionalities
previously provided by native_stop_other_cpus(): common logic is now
delegated to common SMP stop code.

Remove arch-specific smp_send_stop(), and redefine original function
native_stop_other_cpus() to rely instead on the unified common code
version of smp_send_stop(): native_stop_other_cpus() is anyway kept
since it is wired to smp_ops.stop_other_cpus() which get called at
reboot time with particular waiting settings.

Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
Note that in this patch we kept in use the original x86 local handling
of 'stopping_cpu' variable:

	atomic_cmpxchg(&stopping_cpu, -1, safe_smp_processor_id());

Instead, common SMP stop code could have been easily extended to keep and
expose to architectures backends such value using some additional helper
like smp_stop_get_stopping_cpu_id().

This has not been addressed in this series.

v2 ---> v3
- added new wait_forever change capabilities
- better handling of x86 reboot_force flag
---
 arch/x86/Kconfig           |  1 +
 arch/x86/include/asm/smp.h |  5 ---
 arch/x86/kernel/smp.c      | 88 +++++++++++++++++++-------------------
 3 files changed, 44 insertions(+), 50 deletions(-)

diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index 5e8949953660..0bc274426875 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -92,6 +92,7 @@ config X86
 	select ARCH_USE_BUILTIN_BSWAP
 	select ARCH_USE_QUEUED_RWLOCKS
 	select ARCH_USE_QUEUED_SPINLOCKS
+	select ARCH_USE_COMMON_SMP_STOP
 	select ARCH_WANT_BATCHED_UNMAP_TLB_FLUSH
 	select ARCH_WANTS_DYNAMIC_TASK_STRUCT
 	select ARCH_WANT_HUGE_PMD_SHARE
diff --git a/arch/x86/include/asm/smp.h b/arch/x86/include/asm/smp.h
index e15f364efbcc..e937fab6474b 100644
--- a/arch/x86/include/asm/smp.h
+++ b/arch/x86/include/asm/smp.h
@@ -67,11 +67,6 @@ extern void set_cpu_sibling_map(int cpu);
 #ifdef CONFIG_SMP
 extern struct smp_ops smp_ops;
 
-static inline void smp_send_stop(void)
-{
-	smp_ops.stop_other_cpus(0);
-}
-
 static inline void stop_other_cpus(void)
 {
 	smp_ops.stop_other_cpus(1);
diff --git a/arch/x86/kernel/smp.c b/arch/x86/kernel/smp.c
index b8d4e9c3c070..7aeb45c512f7 100644
--- a/arch/x86/kernel/smp.c
+++ b/arch/x86/kernel/smp.c
@@ -147,71 +147,69 @@ static int register_stop_handler(void)
 
 static void native_stop_other_cpus(int wait)
 {
-	unsigned long flags;
-	unsigned long timeout;
-
 	if (reboot_force)
 		return;
+	smp_stop_set_wait_forever(wait);
+	/* use common SMP stop code */
+	smp_send_stop();
+}
 
-	/*
-	 * Use an own vector here because smp_call_function
-	 * does lots of things not suitable in a panic situation.
-	 */
-
-	/*
-	 * We start by using the REBOOT_VECTOR irq.
-	 * The irq is treated as a sync point to allow critical
-	 * regions of code on other cpus to release their spin locks
-	 * and re-enable irqs.  Jumping straight to an NMI might
-	 * accidentally cause deadlocks with further shutdown/panic
-	 * code.  By syncing, we give the cpus up to one second to
-	 * finish their work before we force them off with the NMI.
-	 */
-	if (num_online_cpus() > 1) {
-		/* did someone beat us here? */
-		if (atomic_cmpxchg(&stopping_cpu, -1, safe_smp_processor_id()) != -1)
-			return;
-
-		/* sync above data before sending IRQ */
-		wmb();
+void arch_smp_stop_call(cpumask_t *cpus, unsigned int attempt_num)
+{
+	static bool saved_wait;
 
-		apic_send_IPI_allbutself(REBOOT_VECTOR);
+	if (attempt_num == 1) {
+		/*
+		 * We start by using the REBOOT_VECTOR irq.
+		 * The irq is treated as a sync point to allow critical
+		 * regions of code on other cpus to release their spin locks
+		 * and re-enable irqs.  Jumping straight to an NMI might
+		 * accidentally cause deadlocks with further shutdown/panic
+		 * code.  By syncing, we give the cpus up to one second to
+		 * finish their work before we force them off with the NMI.
+		 */
 
 		/*
-		 * Don't wait longer than a second for IPI completion. The
-		 * wait request is not checked here because that would
-		 * prevent an NMI shutdown attempt in case that not all
-		 * CPUs reach shutdown state.
+		 * Don't wait longer than a second for IPI completion.
+		 * Wait forever request is explicitly disabled here because
+		 * that would prevent an NMI shutdown attempt in case that
+		 * not all CPUs reach shutdown state.
 		 */
-		timeout = USEC_PER_SEC;
-		while (num_online_cpus() > 1 && timeout--)
-			udelay(1);
-	}
+		saved_wait = smp_stop_get_wait_settings(NULL);
+		smp_stop_set_wait_forever(false);
+		smp_stop_set_wait_timeout_us(USEC_PER_MSEC);
+
+		/* Used by NMI handler callback to skip the stopping_cpu. */
+		atomic_cmpxchg(&stopping_cpu, -1, safe_smp_processor_id());
+
+		/* sync above data before sending IRQ */
+		wmb();
+		apic->send_IPI_mask(cpus, REBOOT_VECTOR);
+	} else if (attempt_num > 1) {
+		/* if the REBOOT_VECTOR didn't work, try with the NMI */
+		smp_stop_set_wait_forever(saved_wait);
+		/* Don't wait longer than 10 ms when not asked to wait */
+		smp_stop_set_wait_timeout_us(USEC_PER_MSEC * 10);
 
-	/* if the REBOOT_VECTOR didn't work, try with the NMI */
-	if (num_online_cpus() > 1) {
 		/*
 		 * If NMI IPI is enabled, try to register the stop handler
 		 * and send the IPI. In any case try to wait for the other
 		 * CPUs to stop.
 		 */
 		if (!smp_no_nmi_ipi && !register_stop_handler()) {
-			/* Sync above data before sending IRQ */
+			/* sync above data before sending IRQ */
 			wmb();
 
 			pr_emerg("Shutting down cpus with NMI\n");
 
-			apic_send_IPI_allbutself(NMI_VECTOR);
+			apic->send_IPI_mask(cpus, NMI_VECTOR);
 		}
-		/*
-		 * Don't wait longer than 10 ms if the caller didn't
-		 * reqeust it. If wait is true, the machine hangs here if
-		 * one or more CPUs do not reach shutdown state.
-		 */
-		timeout = USEC_PER_MSEC * 10;
-		while (num_online_cpus() > 1 && (wait || timeout--))
-			udelay(1);
 	}
+}
+
+void arch_smp_cpus_stop_complete(void)
+{
+	unsigned long flags;
 
 	local_irq_save(flags);
 	disable_local_APIC();
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
