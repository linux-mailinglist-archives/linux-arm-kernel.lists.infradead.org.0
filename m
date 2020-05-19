Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0FBA1D9C5E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 18:20:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ogiOshOcO68I1xADIRLmDJaHflN0FDXXjluF8BEcU3Q=; b=kECZmOYxrF84RJ
	tg9V0tADy53QjXwTzad5JVtzfTba1SMziC/FeERk8ks1Hcd/uXApXAGPqiuuWpQlM/ECl+4al2Clj
	Xt+y3Ny22FK3Dqy21a4Ui2Wrmd0CyfRoK46dII0D5K7EHqTLv9jFGY4FiGxCVe8aI4uMCsC3e/UCB
	FZbdCT5RpUNYdTXL0jl0vlCyrI47QbwK/HmuuhlAae2WOQtCnUr78740oyBpFld9wwcP6RSNc/sz+
	Sgyam00q1QHTW+3//eI56BU9o6o8NzOVnciiMhqfY6VVYyp/6k3mfSZErgFbTKYNF/t5IRXnXQYKY
	Wm0hhyAdaH2iObFeiIEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb4yZ-0004Se-59; Tue, 19 May 2020 16:20:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb4wi-0003Gr-Nn
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 16:18:26 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3B60020823;
 Tue, 19 May 2020 16:18:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589905104;
 bh=NAsYagXItn9U5WfJpuXcKwHhiaI8ja5x9lwzsNNR9GM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=tEdvselxx2DDoQ1Y/OjXmiU6je31CszLKGRKUw3S5cwPity01R3N1fy6d1J3aMofz
 ILL+m6zjyqNqWFC1j3ArlPMZ7wfeHc3RCeoFwrTYiVjWMrLYtHLB51HFzDkNVakMGE
 eDYQsDTwuKlwL6fkSAyN8lXVrZuprVCcrPJHFCHM=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jb4wg-00Decy-Jy; Tue, 19 May 2020 17:18:22 +0100
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 04/11] ARM: Allow IPIs to be handled as normal interrupts
Date: Tue, 19 May 2020 17:17:48 +0100
Message-Id: <20200519161755.209565-5-maz@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200519161755.209565-1-maz@kernel.org>
References: <20200519161755.209565-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, will@kernel.org, catalin.marinas@arm.com,
 linux@arm.linux.org.uk, tglx@linutronix.de, jason@lakedaemon.net,
 sumit.garg@linaro.org, kernel-team@android.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_091824_853684_FF54E2D2 
X-CRM114-Status: GOOD (  21.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sumit Garg <sumit.garg@linaro.org>, kernel-team@android.com,
 Russell King <linux@arm.linux.org.uk>, Jason Cooper <jason@lakedaemon.net>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to deal with IPIs as normal interrupts, let's add
a new way to register them with the architecture code.

set_smp_ipi_range() takes a range of interrupts, and allows
the arch code to request them as if the were normal interrupts.
A standard handler is then called by the core IRQ code to deal
with the IPI.

This means that we don't need to call irq_enter/irq_exit, and
that we don't need to deal with set_irq_regs either. So let's
move the dispatcher into its own function, and leave handle_IPI()
as a compatibility function.

On the sending side, let's make use of ipi_send_mask, which
already exists for this purpose.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm/Kconfig           |  1 +
 arch/arm/include/asm/smp.h |  5 ++
 arch/arm/kernel/smp.c      | 97 ++++++++++++++++++++++++++++++++------
 3 files changed, 88 insertions(+), 15 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index c77c93c485a0..0caaba9bf880 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -48,6 +48,7 @@ config ARM
 	select GENERIC_ARCH_TOPOLOGY if ARM_CPU_TOPOLOGY
 	select GENERIC_ATOMIC64 if CPU_V7M || CPU_V6 || !CPU_32v6K || !AEABI
 	select GENERIC_CLOCKEVENTS_BROADCAST if SMP
+	select GENERIC_IRQ_IPI if SMP
 	select GENERIC_CPU_AUTOPROBE
 	select GENERIC_EARLY_IOREMAP
 	select GENERIC_IDLE_POLL_SETUP
diff --git a/arch/arm/include/asm/smp.h b/arch/arm/include/asm/smp.h
index a91f21e3c5b5..0e29730295ca 100644
--- a/arch/arm/include/asm/smp.h
+++ b/arch/arm/include/asm/smp.h
@@ -45,6 +45,11 @@ extern void smp_init_cpus(void);
  */
 extern void set_smp_cross_call(void (*)(const struct cpumask *, unsigned int));
 
+/*
+ * Register IPI interrupts with the arch SMP code
+ */
+extern void set_smp_ipi_range(int ipi_base, int nr_ipi);
+
 /*
  * Called from platform specific assembly code, this is the
  * secondary CPU entry point.
diff --git a/arch/arm/kernel/smp.c b/arch/arm/kernel/smp.c
index 46e1be9e57a8..618641978a5b 100644
--- a/arch/arm/kernel/smp.c
+++ b/arch/arm/kernel/smp.c
@@ -79,10 +79,19 @@ enum ipi_msg_type {
 	 */
 };
 
+static int ipi_irq_base;
+static int nr_ipi = NR_IPI;
+static struct irq_desc *ipi_desc[NR_IPI];
+
+static void ipi_setup(int cpu);
+static void ipi_teardown(int cpu);
+
 static DECLARE_COMPLETION(cpu_running);
 
 static struct smp_operations smp_ops __ro_after_init;
 
+static void ipi_setup(int cpu);
+
 void __init smp_set_ops(const struct smp_operations *ops)
 {
 	if (ops)
@@ -308,6 +317,8 @@ void arch_cpu_idle_dead(void)
 
 	local_irq_disable();
 
+	ipi_teardown(cpu);
+
 	/*
 	 * Flush the data out of the L1 cache for this CPU.  This must be
 	 * before the completion to ensure that data is safely written out
@@ -424,6 +435,8 @@ asmlinkage void secondary_start_kernel(void)
 
 	notify_cpu_starting(cpu);
 
+	ipi_setup(cpu);
+
 	calibrate_delay();
 
 	smp_store_cpu_info(cpu);
@@ -629,10 +642,9 @@ asmlinkage void __exception_irq_entry do_IPI(int ipinr, struct pt_regs *regs)
 	handle_IPI(ipinr, regs);
 }
 
-void handle_IPI(int ipinr, struct pt_regs *regs)
+static void do_handle_IPI(int ipinr)
 {
 	unsigned int cpu = smp_processor_id();
-	struct pt_regs *old_regs = set_irq_regs(regs);
 
 	if ((unsigned)ipinr < NR_IPI) {
 		trace_ipi_entry_rcuidle(ipi_types[ipinr]);
@@ -645,9 +657,7 @@ void handle_IPI(int ipinr, struct pt_regs *regs)
 
 #ifdef CONFIG_GENERIC_CLOCKEVENTS_BROADCAST
 	case IPI_TIMER:
-		irq_enter();
 		tick_receive_broadcast();
-		irq_exit();
 		break;
 #endif
 
@@ -656,36 +666,26 @@ void handle_IPI(int ipinr, struct pt_regs *regs)
 		break;
 
 	case IPI_CALL_FUNC:
-		irq_enter();
 		generic_smp_call_function_interrupt();
-		irq_exit();
 		break;
 
 	case IPI_CPU_STOP:
-		irq_enter();
 		ipi_cpu_stop(cpu);
-		irq_exit();
 		break;
 
 #ifdef CONFIG_IRQ_WORK
 	case IPI_IRQ_WORK:
-		irq_enter();
 		irq_work_run();
-		irq_exit();
 		break;
 #endif
 
 	case IPI_COMPLETION:
-		irq_enter();
 		ipi_complete(cpu);
-		irq_exit();
 		break;
 
 	case IPI_CPU_BACKTRACE:
 		printk_nmi_enter();
-		irq_enter();
-		nmi_cpu_backtrace(regs);
-		irq_exit();
+		nmi_cpu_backtrace(get_irq_regs());
 		printk_nmi_exit();
 		break;
 
@@ -697,9 +697,76 @@ void handle_IPI(int ipinr, struct pt_regs *regs)
 
 	if ((unsigned)ipinr < NR_IPI)
 		trace_ipi_exit_rcuidle(ipi_types[ipinr]);
+}
+
+/* Legacy version, should go away once all irqchips have been converted */
+void handle_IPI(int ipinr, struct pt_regs *regs)
+{
+	struct pt_regs *old_regs = set_irq_regs(regs);
+
+	irq_enter();
+	do_handle_IPI(ipinr);
+	irq_exit();
+
 	set_irq_regs(old_regs);
 }
 
+static irqreturn_t ipi_handler(int irq, void *data)
+{
+	do_handle_IPI(irq - ipi_irq_base);
+	return IRQ_HANDLED;
+}
+
+static void ipi_send(const struct cpumask *target, unsigned int ipi)
+{
+	__ipi_send_mask(ipi_desc[ipi], target);
+}
+
+static void ipi_setup(int cpu)
+{
+	if (ipi_irq_base) {
+		int i;
+
+		for (i = 0; i < nr_ipi; i++)
+			enable_percpu_irq(ipi_irq_base + i, 0);
+	}
+}
+
+static void ipi_teardown(int cpu)
+{
+	if (ipi_irq_base) {
+		int i;
+
+		for (i = 0; i < nr_ipi; i++)
+			disable_percpu_irq(ipi_irq_base + i);
+	}
+}
+
+void __init set_smp_ipi_range(int ipi_base, int n)
+{
+	int i;
+
+	WARN_ON(n < NR_IPI);
+	nr_ipi = min(n, NR_IPI);
+
+	for (i = 0; i < nr_ipi; i++) {
+		int err;
+
+		err = request_percpu_irq(ipi_base + i, ipi_handler,
+					 "IPI", &irq_stat);
+		WARN_ON(err);
+
+		ipi_desc[i] = irq_to_desc(ipi_base + i);
+		irq_set_status_flags(ipi_base + i, IRQ_NO_ACCOUNTING);
+	}
+
+	ipi_irq_base = ipi_base;
+	set_smp_cross_call(ipi_send);
+
+	/* Setup the boot CPU immediately */
+	ipi_setup(smp_processor_id());
+}
+
 void smp_send_reschedule(int cpu)
 {
 	smp_cross_call(cpumask_of(cpu), IPI_RESCHEDULE);
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
