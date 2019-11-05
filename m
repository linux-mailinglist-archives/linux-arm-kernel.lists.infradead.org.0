Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 162B9F07EE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 22:13:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=28UuMTx/HyeMp/IXTeVfwvOvmDn+3PaFjLdR3RBqPFg=; b=upZv6UOwN/op9Sprr0/TNxAjm4
	wIXAJ2BpmZXU+H2ny74ygITl67T9sCh0Rf8iG07K/aDWjPeuFfgIwUpeo46Mdu6NauXE7vHrRIcX4
	YwYjaibLAEol1W+aO5FbecJVdzmQ/7b1Xb7L4TUTeRYFPlgnnMVQ4phAtlisxnPcX0w3L63Sg7051
	zoAFVIwcu3luE1aQNnSkmkU5b8aydw/TORsgIa6ABaY6g2cZcNrDUSTCdy6Iy/17VgV5XTHfKYEnG
	2DHGma7WdkOvvR766x9oTpzUtbPF3sGrdCau7CutOEPnXBMNnwV5synLlvx9AEEfYN8V1V12iOESx
	06kOb6Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS68r-0005hl-9u; Tue, 05 Nov 2019 21:13:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS5x7-00005j-Pc
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 21:01:27 +0000
Received: from e123331-lin.home (lfbn-mar-1-643-104.w90-118.abo.wanadoo.fr
 [90.118.215.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D1B3521A49;
 Tue,  5 Nov 2019 21:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572987685;
 bh=x981TbTpR0EkQhU/cKBohfdDAPujbHA8OU0wGJTryVc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=LEikdVWy/sGK9+S9T7Fd8nYquczdAVoi00R0lcT2aVUQQTxYR4EbDObDmLB2p8l8Q
 DITcHclzSaDiAN8tkXur/tiOTDd4PHlL+x3XC8+AiQ+ShluK81rrV5+dCaTBADjSvC
 09xygYbaNi+ox5sSIe681bAsaAIU/9w1uBmChj2Y=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH for-stable-v4.4 51/53] ARM: spectre-v2: per-CPU vtables to
 work around big.Little systems
Date: Tue,  5 Nov 2019 21:58:44 +0100
Message-Id: <20191105205846.1394-52-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191105205846.1394-1-ardb@kernel.org>
References: <20191105205846.1394-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_130125_939346_038E4441 
X-CRM114-Status: GOOD (  16.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Sasha Levin <sashal@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Tony Lindgren <tony@atomide.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 "David A . Long" <dave.long@linaro.org>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Russell King <rmk+kernel@armlinux.org.uk>

Commit 383fb3ee8024d596f488d2dbaf45e572897acbdb upstream.

In big.Little systems, some CPUs require the Spectre workarounds in
paths such as the context switch, but other CPUs do not.  In order
to handle these differences, we need per-CPU vtables.

We are unable to use the kernel's per-CPU variables to support this
as per-CPU is not initialised at times when we need access to the
vtables, so we have to use an array indexed by logical CPU number.

We use an array-of-pointers to avoid having function pointers in
the kernel's read/write .data section.

Note: Added include of linux/slab.h in arch/arm/smp.c.

Reviewed-by: Julien Thierry <julien.thierry@arm.com>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: David A. Long <dave.long@linaro.org>
Reviewed-by: Julien Thierry <julien.thierry@arm.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm/include/asm/proc-fns.h | 23 ++++++++++++++
 arch/arm/kernel/setup.c         |  5 +++
 arch/arm/kernel/smp.c           | 32 ++++++++++++++++++++
 arch/arm/mm/proc-v7-bugs.c      | 17 ++---------
 4 files changed, 62 insertions(+), 15 deletions(-)

diff --git a/arch/arm/include/asm/proc-fns.h b/arch/arm/include/asm/proc-fns.h
index a1a71b068edc..1bfcc3bcfc6d 100644
--- a/arch/arm/include/asm/proc-fns.h
+++ b/arch/arm/include/asm/proc-fns.h
@@ -104,12 +104,35 @@ extern void cpu_do_resume(void *);
 #else
 
 extern struct processor processor;
+#if defined(CONFIG_BIG_LITTLE) && defined(CONFIG_HARDEN_BRANCH_PREDICTOR)
+#include <linux/smp.h>
+/*
+ * This can't be a per-cpu variable because we need to access it before
+ * per-cpu has been initialised.  We have a couple of functions that are
+ * called in a pre-emptible context, and so can't use smp_processor_id()
+ * there, hence PROC_TABLE().  We insist in init_proc_vtable() that the
+ * function pointers for these are identical across all CPUs.
+ */
+extern struct processor *cpu_vtable[];
+#define PROC_VTABLE(f)			cpu_vtable[smp_processor_id()]->f
+#define PROC_TABLE(f)			cpu_vtable[0]->f
+static inline void init_proc_vtable(const struct processor *p)
+{
+	unsigned int cpu = smp_processor_id();
+	*cpu_vtable[cpu] = *p;
+	WARN_ON_ONCE(cpu_vtable[cpu]->dcache_clean_area !=
+		     cpu_vtable[0]->dcache_clean_area);
+	WARN_ON_ONCE(cpu_vtable[cpu]->set_pte_ext !=
+		     cpu_vtable[0]->set_pte_ext);
+}
+#else
 #define PROC_VTABLE(f)			processor.f
 #define PROC_TABLE(f)			processor.f
 static inline void init_proc_vtable(const struct processor *p)
 {
 	processor = *p;
 }
+#endif
 
 #define cpu_proc_init			PROC_VTABLE(_proc_init)
 #define cpu_check_bugs			PROC_VTABLE(check_bugs)
diff --git a/arch/arm/kernel/setup.c b/arch/arm/kernel/setup.c
index 13bda9574e18..e9c3d38d995d 100644
--- a/arch/arm/kernel/setup.c
+++ b/arch/arm/kernel/setup.c
@@ -113,6 +113,11 @@ EXPORT_SYMBOL(elf_hwcap2);
 
 #ifdef MULTI_CPU
 struct processor processor __read_mostly;
+#if defined(CONFIG_BIG_LITTLE) && defined(CONFIG_HARDEN_BRANCH_PREDICTOR)
+struct processor *cpu_vtable[NR_CPUS] = {
+	[0] = &processor,
+};
+#endif
 #endif
 #ifdef MULTI_TLB
 struct cpu_tlb_fns cpu_tlb __read_mostly;
diff --git a/arch/arm/kernel/smp.c b/arch/arm/kernel/smp.c
index bafbd29c6e64..d2033d09125f 100644
--- a/arch/arm/kernel/smp.c
+++ b/arch/arm/kernel/smp.c
@@ -27,6 +27,7 @@
 #include <linux/completion.h>
 #include <linux/cpufreq.h>
 #include <linux/irq_work.h>
+#include <linux/slab.h>
 
 #include <linux/atomic.h>
 #include <asm/bugs.h>
@@ -40,6 +41,7 @@
 #include <asm/mmu_context.h>
 #include <asm/pgtable.h>
 #include <asm/pgalloc.h>
+#include <asm/procinfo.h>
 #include <asm/processor.h>
 #include <asm/sections.h>
 #include <asm/tlbflush.h>
@@ -96,6 +98,30 @@ static unsigned long get_arch_pgd(pgd_t *pgd)
 #endif
 }
 
+#if defined(CONFIG_BIG_LITTLE) && defined(CONFIG_HARDEN_BRANCH_PREDICTOR)
+static int secondary_biglittle_prepare(unsigned int cpu)
+{
+	if (!cpu_vtable[cpu])
+		cpu_vtable[cpu] = kzalloc(sizeof(*cpu_vtable[cpu]), GFP_KERNEL);
+
+	return cpu_vtable[cpu] ? 0 : -ENOMEM;
+}
+
+static void secondary_biglittle_init(void)
+{
+	init_proc_vtable(lookup_processor(read_cpuid_id())->proc);
+}
+#else
+static int secondary_biglittle_prepare(unsigned int cpu)
+{
+	return 0;
+}
+
+static void secondary_biglittle_init(void)
+{
+}
+#endif
+
 int __cpu_up(unsigned int cpu, struct task_struct *idle)
 {
 	int ret;
@@ -103,6 +129,10 @@ int __cpu_up(unsigned int cpu, struct task_struct *idle)
 	if (!smp_ops.smp_boot_secondary)
 		return -ENOSYS;
 
+	ret = secondary_biglittle_prepare(cpu);
+	if (ret)
+		return ret;
+
 	/*
 	 * We need to tell the secondary core where to find
 	 * its stack and the page tables.
@@ -354,6 +384,8 @@ asmlinkage void secondary_start_kernel(void)
 	struct mm_struct *mm = &init_mm;
 	unsigned int cpu;
 
+	secondary_biglittle_init();
+
 	/*
 	 * The identity mapping is uncached (strongly ordered), so
 	 * switch away from it before attempting any exclusive accesses.
diff --git a/arch/arm/mm/proc-v7-bugs.c b/arch/arm/mm/proc-v7-bugs.c
index 5544b82a2e7a..9a07916af8dd 100644
--- a/arch/arm/mm/proc-v7-bugs.c
+++ b/arch/arm/mm/proc-v7-bugs.c
@@ -52,8 +52,6 @@ static void cpu_v7_spectre_init(void)
 	case ARM_CPU_PART_CORTEX_A17:
 	case ARM_CPU_PART_CORTEX_A73:
 	case ARM_CPU_PART_CORTEX_A75:
-		if (processor.switch_mm != cpu_v7_bpiall_switch_mm)
-			goto bl_error;
 		per_cpu(harden_branch_predictor_fn, cpu) =
 			harden_branch_predictor_bpiall;
 		spectre_v2_method = "BPIALL";
@@ -61,8 +59,6 @@ static void cpu_v7_spectre_init(void)
 
 	case ARM_CPU_PART_CORTEX_A15:
 	case ARM_CPU_PART_BRAHMA_B15:
-		if (processor.switch_mm != cpu_v7_iciallu_switch_mm)
-			goto bl_error;
 		per_cpu(harden_branch_predictor_fn, cpu) =
 			harden_branch_predictor_iciallu;
 		spectre_v2_method = "ICIALLU";
@@ -88,11 +84,9 @@ static void cpu_v7_spectre_init(void)
 					  ARM_SMCCC_ARCH_WORKAROUND_1, &res);
 			if ((int)res.a0 != 0)
 				break;
-			if (processor.switch_mm != cpu_v7_hvc_switch_mm && cpu)
-				goto bl_error;
 			per_cpu(harden_branch_predictor_fn, cpu) =
 				call_hvc_arch_workaround_1;
-			processor.switch_mm = cpu_v7_hvc_switch_mm;
+			cpu_do_switch_mm = cpu_v7_hvc_switch_mm;
 			spectre_v2_method = "hypervisor";
 			break;
 
@@ -101,11 +95,9 @@ static void cpu_v7_spectre_init(void)
 					  ARM_SMCCC_ARCH_WORKAROUND_1, &res);
 			if ((int)res.a0 != 0)
 				break;
-			if (processor.switch_mm != cpu_v7_smc_switch_mm && cpu)
-				goto bl_error;
 			per_cpu(harden_branch_predictor_fn, cpu) =
 				call_smc_arch_workaround_1;
-			processor.switch_mm = cpu_v7_smc_switch_mm;
+			cpu_do_switch_mm = cpu_v7_smc_switch_mm;
 			spectre_v2_method = "firmware";
 			break;
 
@@ -119,11 +111,6 @@ static void cpu_v7_spectre_init(void)
 	if (spectre_v2_method)
 		pr_info("CPU%u: Spectre v2: using %s workaround\n",
 			smp_processor_id(), spectre_v2_method);
-	return;
-
-bl_error:
-	pr_err("CPU%u: Spectre v2: incorrect context switching function, system vulnerable\n",
-		cpu);
 }
 #else
 static void cpu_v7_spectre_init(void)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
