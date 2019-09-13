Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D50B2528
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 20:23:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SSRh2j3P55uDwTANfuj7S72jzD+GJVs1sJrs8ukhb4Q=; b=U9KihjBZm9DQ12L2WLmL2bxlhm
	57gWmzYsS73yhTvGc2aWr23/mPYvP7Z927bldU4E3Ie1H4SgcvqhY90aXTvQNs7EWrvtPnAzKQbZ7
	h8LA809cmhI2Q/g/dcCIthFU7+IapvC7DZaNufL5R355DRXEF+2VkLHf6gNGbzZ2ydDOBsJ+g/Ph9
	3Af09iS2bEW3Nt6hjQVChd+DnlfFgoZPPFjIbGfMikPFP+NvO1PtEsBSNdfCb+rNFlonoosjrGqA8
	5xG6xrobb6jUW/LBVSBPpq7jp6PrOrSKbBVSPpfyXWVx2Z6yxqelq5F7YxRUlprVh72T7ZX0iLRqq
	YE9H93Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8qE2-00071J-Qf; Fri, 13 Sep 2019 18:23:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8qBu-0005Ek-UG
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 18:21:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 935531570;
 Fri, 13 Sep 2019 11:21:06 -0700 (PDT)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 25A573F71F;
 Fri, 13 Sep 2019 11:21:04 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org
Subject: [RFC PATCH v2 08/12] x86: smp: use generic SMP stop common code
Date: Fri, 13 Sep 2019 19:19:49 +0100
Message-Id: <20190913181953.45748-9-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190913181953.45748-1-cristian.marussi@arm.com>
References: <20190913181953.45748-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_112107_080141_D0347688 
X-CRM114-Status: GOOD (  18.90  )
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
---
 arch/x86/Kconfig           |  1 +
 arch/x86/include/asm/smp.h |  5 --
 arch/x86/kernel/smp.c      | 95 ++++++++++++++++----------------------
 3 files changed, 41 insertions(+), 60 deletions(-)

diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index 222855cc0158..0fcee2f03a5b 100644
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
index e1356a3b8223..5cf590259d68 100644
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
index 96421f97e75c..0942cae46fee 100644
--- a/arch/x86/kernel/smp.c
+++ b/arch/x86/kernel/smp.c
@@ -179,78 +179,63 @@ asmlinkage __visible void smp_reboot_interrupt(void)
 	irq_exit();
 }
 
-static void native_stop_other_cpus(int wait)
+void arch_smp_stop_call(cpumask_t *cpus, unsigned int attempt_num)
 {
-	unsigned long flags;
-	unsigned long timeout;
-
 	if (reboot_force)
 		return;
 
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
-
-		apic->send_IPI_allbutself(REBOOT_VECTOR);
-
+	if (attempt_num == 1) {
 		/*
-		 * Don't wait longer than a second if the caller
-		 * didn't ask us to wait.
+		 * We start by using the REBOOT_VECTOR irq.
+		 * The irq is treated as a sync point to allow critical
+		 * regions of code on other cpus to release their spin locks
+		 * and re-enable irqs.  Jumping straight to an NMI might
+		 * accidentally cause deadlocks with further shutdown/panic
+		 * code.  By syncing, we give the cpus up to one second to
+		 * finish their work before we force them off with the NMI.
 		 */
-		timeout = USEC_PER_SEC;
-		while (num_online_cpus() > 1 && (wait || timeout--))
-			udelay(1);
-	}
-	
-	/* if the REBOOT_VECTOR didn't work, try with the NMI */
-	if ((num_online_cpus() > 1) && (!smp_no_nmi_ipi))  {
-		if (register_nmi_handler(NMI_LOCAL, smp_stop_nmi_callback,
-					 NMI_FLAG_FIRST, "smp_stop"))
-			/* Note: we ignore failures here */
-			/* Hope the REBOOT_IRQ is good enough */
-			goto finish;
+
+		/* Used by NMI handler callback to skip the stopping_cpu. */
+		atomic_cmpxchg(&stopping_cpu, -1, safe_smp_processor_id());
 
 		/* sync above data before sending IRQ */
 		wmb();
-
-		pr_emerg("Shutting down cpus with NMI\n");
-
-		apic->send_IPI_allbutself(NMI_VECTOR);
-
-		/*
-		 * Don't wait longer than a 10 ms if the caller
-		 * didn't ask us to wait.
-		 */
-		timeout = USEC_PER_MSEC * 10;
-		while (num_online_cpus() > 1 && (wait || timeout--))
-			udelay(1);
+		apic->send_IPI_mask(cpus, REBOOT_VECTOR);
+	} else if (attempt_num > 1 && !smp_no_nmi_ipi) {
+		/* if the REBOOT_VECTOR didn't work, try with the NMI */
+
+		/* Don't wait longer than 10 ms when not asked to wait */
+		smp_stop_set_wait_timeout_us(USEC_PER_MSEC * 10);
+
+		/* Note: we ignore failures here */
+		/* Hope the REBOOT_IRQ was good enough */
+		if (!register_nmi_handler(NMI_LOCAL, smp_stop_nmi_callback,
+					  NMI_FLAG_FIRST, "smp_stop")) {
+			/* sync above data before sending IRQ */
+			wmb();
+			pr_emerg("Shutting down cpus with NMI\n");
+			apic->send_IPI_mask(cpus, NMI_VECTOR);
+		}
 	}
+}
+
+void arch_smp_cpus_stop_complete(void)
+{
+	unsigned long flags;
 
-finish:
 	local_irq_save(flags);
 	disable_local_APIC();
 	mcheck_cpu_clear(this_cpu_ptr(&cpu_info));
 	local_irq_restore(flags);
 }
 
+static void native_stop_other_cpus(int wait)
+{
+	smp_stop_set_wait_forever(wait);
+	/* use common SMP stop code */
+	smp_send_stop();
+}
+
 /*
  * Reschedule call back. KVM uses this interrupt to force a cpu out of
  * guest mode
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
