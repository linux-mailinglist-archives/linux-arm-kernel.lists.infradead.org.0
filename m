Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E3F912620F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 13:22:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MoKvisOdU0Nn+2QK02XmM0zSYkFrxFYx8tSjMjJZfzg=; b=u6MYaPl76EdD6gQuV/F8USgZw7
	tawa3co/kiCM9bspLmld8hl+k9jqAUSS3dNvx3VhR6WeiXJkvuY1B2uNanYUUMkuIpt4wmEaz4uGE
	A/MmmxicIyG5CXVHGfl1nJxnFohhuJgX6suaLrPOv1DVZHF4dUKVyy/ZyV+10aesyZyFdmGDvQ5mm
	pSjsTckIH5ZqnjQ7WXisq3i4bMr1jn0dNkv+Q8Q5M2wqkkUg/tljZn30ItoPxuTC7EynwfFNKJYxx
	8x6ujZBnIIDCCLDxhHlffoev3xBXUFXNg3x4h48kmWHbV0Y1AAtqjECLetEXOZdHL27KeB0Fs6SrJ
	xJ+NKCJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihuoT-000500-3R; Thu, 19 Dec 2019 12:21:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihumJ-0002Ef-IZ
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 12:19:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 16F93DA7;
 Thu, 19 Dec 2019 04:19:39 -0800 (PST)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C12853F719;
 Thu, 19 Dec 2019 04:19:36 -0800 (PST)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org
Subject: [RFC PATCH v3 06/12] arm64: smp: use SMP crash-stop common code
Date: Thu, 19 Dec 2019 12:18:59 +0000
Message-Id: <20191219121905.26905-7-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191219121905.26905-1-cristian.marussi@arm.com>
References: <20191219121905.26905-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_041939_722099_EEB724A3 
X-CRM114-Status: GOOD (  14.94  )
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

Make arm64 use the SMP common implementation of crash_smp_send_stop() and
its generic logic, by removing the arm64 crash_smp_send_stop() definition
and providing the needed arch specific helpers.

Additionally, simplify the arch-specific stop and crash dump ISRs backends
(which are in charge of effectively receiving and interpreting the
stop/crash messages) and unify them as much as possible.

Using the SMP common code, it is no more needed to make use of an atomic_t
counter to make sure that each CPU had time to perform its crash dump
related shutdown-ops before the world ends: simply take care to synchronize
on cpu_online_mask, and add proper explicit memory barriers where needed.

Moreover, remove arm64 specific smp_crash_stop_failed() helper as a whole
and rely on the common code provided homonym function to lookup the state
of an ongoing crash_stop operation.

Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
v1 --> v2
- added attempt_num param to arch_smp_crash_call()
---
 arch/arm64/include/asm/smp.h |   2 -
 arch/arm64/kernel/smp.c      | 100 +++++++++--------------------------
 2 files changed, 26 insertions(+), 76 deletions(-)

diff --git a/arch/arm64/include/asm/smp.h b/arch/arm64/include/asm/smp.h
index a0c8a0b65259..d98c409f9225 100644
--- a/arch/arm64/include/asm/smp.h
+++ b/arch/arm64/include/asm/smp.h
@@ -150,8 +150,6 @@ static inline void cpu_panic_kernel(void)
  */
 bool cpus_are_stuck_in_kernel(void);
 
-extern void crash_smp_send_stop(void);
-extern bool smp_crash_stop_failed(void);
 
 #endif /* ifndef __ASSEMBLY__ */
 
diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
index 7c1869161b5e..edb2de85507a 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -830,12 +830,30 @@ void arch_irq_work_raise(void)
 }
 #endif
 
-static void local_cpu_stop(void)
+static void local_cpu_crash_or_stop(struct pt_regs *crash_regs)
 {
-	set_cpu_online(smp_processor_id(), false);
+	unsigned int cpu = smp_processor_id();
 
-	local_daif_mask();
+	if (IS_ENABLED(CONFIG_KEXEC_CORE) && crash_regs) {
+#ifdef CONFIG_KEXEC_CORE
+		/* crash stop requested: save regs before going offline */
+		crash_save_cpu(crash_regs, cpu);
+#endif
+		local_irq_disable();
+	} else {
+		local_daif_mask();
+	}
 	sdei_mask_local_cpu();
+	/* ensure dumped regs are visible once cpu is seen offline */
+	smp_wmb();
+	set_cpu_online(cpu, false);
+	/* ensure all writes are globally visible before cpu parks */
+	wmb();
+#if defined(CONFIG_KEXEC_CORE) && defined(CONFIG_HOTPLUG_CPU)
+	if (cpu_ops[cpu]->cpu_die)
+		cpu_ops[cpu]->cpu_die(cpu);
+#endif
+	/* just in case */
 	cpu_park_loop();
 }
 
@@ -846,31 +864,7 @@ static void local_cpu_stop(void)
  */
 void panic_smp_self_stop(void)
 {
-	local_cpu_stop();
-}
-
-#ifdef CONFIG_KEXEC_CORE
-static atomic_t waiting_for_crash_ipi = ATOMIC_INIT(0);
-#endif
-
-static void ipi_cpu_crash_stop(unsigned int cpu, struct pt_regs *regs)
-{
-#ifdef CONFIG_KEXEC_CORE
-	crash_save_cpu(regs, cpu);
-
-	atomic_dec(&waiting_for_crash_ipi);
-
-	local_irq_disable();
-	sdei_mask_local_cpu();
-
-#ifdef CONFIG_HOTPLUG_CPU
-	if (cpu_ops[cpu]->cpu_die)
-		cpu_ops[cpu]->cpu_die(cpu);
-#endif
-
-	/* just in case */
-	cpu_park_loop();
-#endif
+	local_cpu_crash_or_stop(NULL);
 }
 
 /*
@@ -899,14 +893,14 @@ void handle_IPI(int ipinr, struct pt_regs *regs)
 
 	case IPI_CPU_STOP:
 		irq_enter();
-		local_cpu_stop();
+		local_cpu_crash_or_stop(NULL);
 		irq_exit();
 		break;
 
 	case IPI_CPU_CRASH_STOP:
 		if (IS_ENABLED(CONFIG_KEXEC_CORE)) {
 			irq_enter();
-			ipi_cpu_crash_stop(cpu, regs);
+			local_cpu_crash_or_stop(regs);
 
 			unreachable();
 		}
@@ -968,52 +962,10 @@ void arch_smp_stop_call(cpumask_t *cpus, unsigned int __unused)
 	smp_cross_call(cpus, IPI_CPU_STOP);
 }
 
-#ifdef CONFIG_KEXEC_CORE
-void crash_smp_send_stop(void)
+void arch_smp_crash_call(cpumask_t *cpus, unsigned int __unused)
 {
-	static int cpus_stopped;
-	cpumask_t mask;
-	unsigned long timeout;
-
-	/*
-	 * This function can be called twice in panic path, but obviously
-	 * we execute this only once.
-	 */
-	if (cpus_stopped)
-		return;
-
-	cpus_stopped = 1;
-
-	if (num_online_cpus() == 1) {
-		sdei_mask_local_cpu();
-		return;
-	}
-
-	cpumask_copy(&mask, cpu_online_mask);
-	cpumask_clear_cpu(smp_processor_id(), &mask);
-
-	atomic_set(&waiting_for_crash_ipi, num_online_cpus() - 1);
-
-	pr_crit("SMP: stopping secondary CPUs\n");
-	smp_cross_call(&mask, IPI_CPU_CRASH_STOP);
-
-	/* Wait up to one second for other CPUs to stop */
-	timeout = USEC_PER_SEC;
-	while ((atomic_read(&waiting_for_crash_ipi) > 0) && timeout--)
-		udelay(1);
-
-	if (atomic_read(&waiting_for_crash_ipi) > 0)
-		pr_warn("SMP: failed to stop secondary CPUs %*pbl\n",
-			cpumask_pr_args(&mask));
-
-	sdei_mask_local_cpu();
-}
-
-bool smp_crash_stop_failed(void)
-{
-	return (atomic_read(&waiting_for_crash_ipi) > 0);
+	smp_cross_call(cpus, IPI_CPU_CRASH_STOP);
 }
-#endif
 
 /*
  * not supported here
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
