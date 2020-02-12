Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD0F8159E5D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 01:49:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DHQ4zLutzZ3oIyTAuh6AVmyO47CeB9R6DdiX3/fC9nM=; b=UPOoYiLD+n7+eh
	QsHHnZoAI3ANpoJeBj68Wc6gIhYRaVg8+ZyVJ/SAby9hdN1UfSiLUgh08hTQa7/VEIg+ijIrEyCKj
	J4tbqOc6nlLEqUlAn4pHnguPNDofxDErpbBsW3WnjRn1Jsbq+fIcdjJESqpVGJ2MI5ZzjcfM95heP
	W7VvNTItAwzGZ30PYyW8pbrNFjHCggpZVy00U1pq+EsEOGyrMZUCAyAb/gUYItWMsRgRXtQG9TJ28
	6SXxJtwQwzIvMOGs9G0w14VeUhDFAtLoys+W0v4kQhJBq3jIT8g/WBPGaS6cygoPiJvIRsth9pGEY
	h7BB+MVFfCgBKAxNc3rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1gDW-0000uW-9g; Wed, 12 Feb 2020 00:49:26 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1g8V-0003RT-3Q
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 00:44:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581468253;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=N1TQ8ZELNKvVUfyizFZ7f9BlXlskAtMqcb6AYCMUOOQ=;
 b=KJnwvQckW8aG0WRQ0Xk7/MZwLfjAbFNKyMWzqimqiu8TgmYBKWO8P4B07x0K5+AHedVvx5
 aBssamS64tW4Bu77Sm8qi4ubl6rPxp5AudLLGk5tSkwU/gGRJjHMakYW7xYPtKoPQF0fWr
 y62io0d5Un2uMfbf26uclA34VqFpf1M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-353-hOZPjq1mOlOhWMygQOVuJg-1; Tue, 11 Feb 2020 19:44:11 -0500
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2962B8017CC;
 Wed, 12 Feb 2020 00:44:10 +0000 (UTC)
Received: from localhost.localdomain.com (vpn2-54-85.bne.redhat.com
 [10.64.54.85])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D16DD5D9E2;
 Wed, 12 Feb 2020 00:44:06 +0000 (UTC)
From: Gavin Shan <gshan@redhat.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 3/5] arm64: Introduce get_cpu_ops() helper function
Date: Wed, 12 Feb 2020 11:43:49 +1100
Message-Id: <20200212004351.66576-4-gshan@redhat.com>
In-Reply-To: <20200212004351.66576-1-gshan@redhat.com>
References: <20200212004351.66576-1-gshan@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: hOZPjq1mOlOhWMygQOVuJg-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_164415_519484_AFED73CA 
X-CRM114-Status: GOOD (  15.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, will@kernel.org,
 catalin.marinas@arm.com, sudeep.holla@arm.com, robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This introduces get_cpu_ops() to return the CPU operations according to
the given CPU index. For now, it simply returns the @cpu_ops[cpu] as
before. So it shouldn't introduce any functional changes.

Signed-off-by: Gavin Shan <gshan@redhat.com>
---
 arch/arm64/include/asm/cpu_ops.h |  2 +-
 arch/arm64/kernel/cpu_ops.c      |  7 +++-
 arch/arm64/kernel/cpuidle.c      |  9 ++---
 arch/arm64/kernel/setup.c        |  6 ++--
 arch/arm64/kernel/smp.c          | 57 ++++++++++++++++++++++----------
 5 files changed, 55 insertions(+), 26 deletions(-)

diff --git a/arch/arm64/include/asm/cpu_ops.h b/arch/arm64/include/asm/cpu_ops.h
index baa13b5db2ca..d28e8f37d3b4 100644
--- a/arch/arm64/include/asm/cpu_ops.h
+++ b/arch/arm64/include/asm/cpu_ops.h
@@ -55,8 +55,8 @@ struct cpu_operations {
 #endif
 };
 
-extern const struct cpu_operations *cpu_ops[NR_CPUS];
 int __init init_cpu_ops(int cpu);
+extern const struct cpu_operations *get_cpu_ops(int cpu);
 
 static inline void __init init_bootcpu_ops(void)
 {
diff --git a/arch/arm64/kernel/cpu_ops.c b/arch/arm64/kernel/cpu_ops.c
index a6c3c816b618..e133011f64b5 100644
--- a/arch/arm64/kernel/cpu_ops.c
+++ b/arch/arm64/kernel/cpu_ops.c
@@ -20,7 +20,7 @@ extern const struct cpu_operations acpi_parking_protocol_ops;
 #endif
 extern const struct cpu_operations cpu_psci_ops;
 
-const struct cpu_operations *cpu_ops[NR_CPUS] __ro_after_init;
+static const struct cpu_operations *cpu_ops[NR_CPUS] __ro_after_init;
 
 static const struct cpu_operations *const dt_supported_cpu_ops[] __initconst = {
 	&smp_spin_table_ops,
@@ -111,3 +111,8 @@ int __init init_cpu_ops(int cpu)
 
 	return 0;
 }
+
+const struct cpu_operations *get_cpu_ops(int cpu)
+{
+	return cpu_ops[cpu];
+}
diff --git a/arch/arm64/kernel/cpuidle.c b/arch/arm64/kernel/cpuidle.c
index e4d6af2fdec7..b512b5503f6e 100644
--- a/arch/arm64/kernel/cpuidle.c
+++ b/arch/arm64/kernel/cpuidle.c
@@ -18,11 +18,11 @@
 
 int arm_cpuidle_init(unsigned int cpu)
 {
+	const struct cpu_operations *ops = get_cpu_ops(cpu);
 	int ret = -EOPNOTSUPP;
 
-	if (cpu_ops[cpu] && cpu_ops[cpu]->cpu_suspend &&
-			cpu_ops[cpu]->cpu_init_idle)
-		ret = cpu_ops[cpu]->cpu_init_idle(cpu);
+	if (ops && ops->cpu_suspend && ops->cpu_init_idle)
+		ret = ops->cpu_init_idle(cpu);
 
 	return ret;
 }
@@ -37,8 +37,9 @@ int arm_cpuidle_init(unsigned int cpu)
 int arm_cpuidle_suspend(int index)
 {
 	int cpu = smp_processor_id();
+	const struct cpu_operations *ops = get_cpu_ops(cpu);
 
-	return cpu_ops[cpu]->cpu_suspend(index);
+	return ops->cpu_suspend(index);
 }
 
 #ifdef CONFIG_ACPI
diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
index f66bd260cce8..3fd2c11c09fc 100644
--- a/arch/arm64/kernel/setup.c
+++ b/arch/arm64/kernel/setup.c
@@ -371,8 +371,10 @@ void __init setup_arch(char **cmdline_p)
 static inline bool cpu_can_disable(unsigned int cpu)
 {
 #ifdef CONFIG_HOTPLUG_CPU
-	if (cpu_ops[cpu] && cpu_ops[cpu]->cpu_can_disable)
-		return cpu_ops[cpu]->cpu_can_disable(cpu);
+	const struct cpu_operations *ops = get_cpu_ops(cpu);
+
+	if (ops && ops->cpu_can_disable)
+		return ops->cpu_can_disable(cpu);
 #endif
 	return false;
 }
diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
index 6f8477d7f3be..5e1af1a3c521 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -93,8 +93,10 @@ static inline int op_cpu_kill(unsigned int cpu)
  */
 static int boot_secondary(unsigned int cpu, struct task_struct *idle)
 {
-	if (cpu_ops[cpu]->cpu_boot)
-		return cpu_ops[cpu]->cpu_boot(cpu);
+	const struct cpu_operations *ops = get_cpu_ops(cpu);
+
+	if (ops->cpu_boot)
+		return ops->cpu_boot(cpu);
 
 	return -EOPNOTSUPP;
 }
@@ -196,6 +198,7 @@ asmlinkage notrace void secondary_start_kernel(void)
 {
 	u64 mpidr = read_cpuid_mpidr() & MPIDR_HWID_BITMASK;
 	struct mm_struct *mm = &init_mm;
+	const struct cpu_operations *ops;
 	unsigned int cpu;
 
 	cpu = task_cpu(current);
@@ -227,8 +230,9 @@ asmlinkage notrace void secondary_start_kernel(void)
 	 */
 	check_local_cpu_capabilities();
 
-	if (cpu_ops[cpu]->cpu_postboot)
-		cpu_ops[cpu]->cpu_postboot();
+	ops = get_cpu_ops(cpu);
+	if (ops->cpu_postboot)
+		ops->cpu_postboot();
 
 	/*
 	 * Log the CPU info before it is marked online and might get read.
@@ -266,19 +270,21 @@ asmlinkage notrace void secondary_start_kernel(void)
 #ifdef CONFIG_HOTPLUG_CPU
 static int op_cpu_disable(unsigned int cpu)
 {
+	const struct cpu_operations *ops = get_cpu_ops(cpu);
+
 	/*
 	 * If we don't have a cpu_die method, abort before we reach the point
 	 * of no return. CPU0 may not have an cpu_ops, so test for it.
 	 */
-	if (!cpu_ops[cpu] || !cpu_ops[cpu]->cpu_die)
+	if (!ops || !ops->cpu_die)
 		return -EOPNOTSUPP;
 
 	/*
 	 * We may need to abort a hot unplug for some other mechanism-specific
 	 * reason.
 	 */
-	if (cpu_ops[cpu]->cpu_disable)
-		return cpu_ops[cpu]->cpu_disable(cpu);
+	if (ops->cpu_disable)
+		return ops->cpu_disable(cpu);
 
 	return 0;
 }
@@ -314,15 +320,17 @@ int __cpu_disable(void)
 
 static int op_cpu_kill(unsigned int cpu)
 {
+	const struct cpu_operations *ops = get_cpu_ops(cpu);
+
 	/*
 	 * If we have no means of synchronising with the dying CPU, then assume
 	 * that it is really dead. We can only wait for an arbitrary length of
 	 * time and hope that it's dead, so let's skip the wait and just hope.
 	 */
-	if (!cpu_ops[cpu]->cpu_kill)
+	if (!ops->cpu_kill)
 		return 0;
 
-	return cpu_ops[cpu]->cpu_kill(cpu);
+	return ops->cpu_kill(cpu);
 }
 
 /*
@@ -357,6 +365,7 @@ void __cpu_die(unsigned int cpu)
 void cpu_die(void)
 {
 	unsigned int cpu = smp_processor_id();
+	const struct cpu_operations *ops = get_cpu_ops(cpu);
 
 	idle_task_exit();
 
@@ -370,7 +379,7 @@ void cpu_die(void)
 	 * mechanism must perform all required cache maintenance to ensure that
 	 * no dirty lines are lost in the process of shutting down the CPU.
 	 */
-	cpu_ops[cpu]->cpu_die(cpu);
+	ops->cpu_die(cpu);
 
 	BUG();
 }
@@ -383,6 +392,7 @@ void cpu_die(void)
 void cpu_die_early(void)
 {
 	int cpu = smp_processor_id();
+	const struct cpu_operations *ops = get_cpu_ops(cpu);
 
 	pr_crit("CPU%d: will not boot\n", cpu);
 
@@ -392,8 +402,8 @@ void cpu_die_early(void)
 #ifdef CONFIG_HOTPLUG_CPU
 	update_cpu_boot_status(CPU_KILL_ME);
 	/* Check if we can park ourselves */
-	if (cpu_ops[cpu] && cpu_ops[cpu]->cpu_die)
-		cpu_ops[cpu]->cpu_die(cpu);
+	if (ops && ops->cpu_die)
+		ops->cpu_die(cpu);
 #endif
 	update_cpu_boot_status(CPU_STUCK_IN_KERNEL);
 
@@ -488,10 +498,13 @@ static bool __init is_mpidr_duplicate(unsigned int cpu, u64 hwid)
  */
 static int __init smp_cpu_setup(int cpu)
 {
+	const struct cpu_operations *ops;
+
 	if (init_cpu_ops(cpu))
 		return -ENODEV;
 
-	if (cpu_ops[cpu]->cpu_init(cpu))
+	ops = get_cpu_ops(cpu);
+	if (ops->cpu_init(cpu))
 		return -ENODEV;
 
 	set_cpu_possible(cpu, true);
@@ -714,6 +727,7 @@ void __init smp_init_cpus(void)
 
 void __init smp_prepare_cpus(unsigned int max_cpus)
 {
+	const struct cpu_operations *ops;
 	int err;
 	unsigned int cpu;
 	unsigned int this_cpu;
@@ -744,10 +758,11 @@ void __init smp_prepare_cpus(unsigned int max_cpus)
 		if (cpu == smp_processor_id())
 			continue;
 
-		if (!cpu_ops[cpu])
+		ops = get_cpu_ops(cpu);
+		if (!ops)
 			continue;
 
-		err = cpu_ops[cpu]->cpu_prepare(cpu);
+		err = ops->cpu_prepare(cpu);
 		if (err)
 			continue;
 
@@ -855,6 +870,10 @@ static atomic_t waiting_for_crash_ipi = ATOMIC_INIT(0);
 
 static void ipi_cpu_crash_stop(unsigned int cpu, struct pt_regs *regs)
 {
+#ifdef CONFIG_HOTPLUG_CPU
+	const struct cpu_operations *ops;
+#endif
+
 #ifdef CONFIG_KEXEC_CORE
 	crash_save_cpu(regs, cpu);
 
@@ -864,8 +883,9 @@ static void ipi_cpu_crash_stop(unsigned int cpu, struct pt_regs *regs)
 	sdei_mask_local_cpu();
 
 #ifdef CONFIG_HOTPLUG_CPU
-	if (cpu_ops[cpu]->cpu_die)
-		cpu_ops[cpu]->cpu_die(cpu);
+	ops = get_cpu_ops(cpu);
+	if (ops->cpu_die)
+		ops->cpu_die(cpu);
 #endif
 
 	/* just in case */
@@ -1044,8 +1064,9 @@ static bool have_cpu_die(void)
 {
 #ifdef CONFIG_HOTPLUG_CPU
 	int any_cpu = raw_smp_processor_id();
+	const struct cpu_operations *ops = get_cpu_ops(any_cpu);
 
-	if (cpu_ops[any_cpu] && cpu_ops[any_cpu]->cpu_die)
+	if (ops && ops->cpu_die)
 		return true;
 #endif
 	return false;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
