Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 631573CC53
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 14:55:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cwsxcIrShKpTKSErwbsfdvlSNZ/rjchmz2wL7tOBeko=; b=kTmgpYogHHrY4ODAZsyVVFq7Oz
	rNoUrq0E57yhBJFeaHh2lHgEeV197lepUX6PFNLI1wjTnuB84kKYIJ4Gv0gsL3PCDo33hz8VmASOk
	UUP8sK2c1jvF6sNwieyTIxfekCVVp1LFvzS4WXPWGUjY6QW9G1G6CZxruD3H0J3nbTlz8xQ2ZYWMl
	d31XUSuev+mx7jdTADy3Uut37s480s1rrOz0dN0rr2c+6MZx4JEEdFCVeHtU73FJ8WOE+0K/+PCFN
	z/3sL9Bxob0u9EYjBRhrr0t7AHq2WZqHhGYVfFJdyaNKPTzVi3HkT2ktZDNRcMtoOMdTn6/TwK37Q
	LLOgUtcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hagJK-0004hJ-Le; Tue, 11 Jun 2019 12:55:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hagHg-0002Nr-C4
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 12:53:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C0C78ED1;
 Tue, 11 Jun 2019 05:53:51 -0700 (PDT)
Received: from e121650-lin.cambridge.arm.com (unknown [10.1.196.120])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 871B03F557;
 Tue, 11 Jun 2019 05:53:50 -0700 (PDT)
From: Raphael Gault <raphael.gault@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 6/7] arm64: perf: Enable pmu counter direct access for perf
 event on armv8
Date: Tue, 11 Jun 2019 13:53:14 +0100
Message-Id: <20190611125315.18736-7-raphael.gault@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190611125315.18736-1-raphael.gault@arm.com>
References: <20190611125315.18736-1-raphael.gault@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_055352_548589_208A7D91 
X-CRM114-Status: GOOD (  15.17  )
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
Cc: mark.rutland@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 will.deacon@arm.com, acme@kernel.org, Raphael Gault <raphael.gault@arm.com>,
 mingo@redhat.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Keep track of event opened with direct access to the hardware counters
and modify permissions while they are open.

The strategy used here is the same which x86 uses: everytime an event
is mapped, the permissions are set if required. The atomic field added
in the mm_context helps keep track of the different event opened and
de-activate the permissions when all are unmapped.
We also need to update the permissions in the context switch code so
that tasks keep the right permissions.

Signed-off-by: Raphael Gault <raphael.gault@arm.com>
---
 arch/arm64/include/asm/mmu.h         |  6 +++++
 arch/arm64/include/asm/mmu_context.h |  2 ++
 arch/arm64/include/asm/perf_event.h  | 14 ++++++++++
 drivers/perf/arm_pmu.c               | 38 ++++++++++++++++++++++++++++
 4 files changed, 60 insertions(+)

diff --git a/arch/arm64/include/asm/mmu.h b/arch/arm64/include/asm/mmu.h
index 67ef25d037ea..9de4cf0b17c7 100644
--- a/arch/arm64/include/asm/mmu.h
+++ b/arch/arm64/include/asm/mmu.h
@@ -29,6 +29,12 @@
 
 typedef struct {
 	atomic64_t	id;
+
+	/*
+	 * non-zero if userspace have access to hardware
+	 * counters directly.
+	 */
+	atomic_t	pmu_direct_access;
 	void		*vdso;
 	unsigned long	flags;
 } mm_context_t;
diff --git a/arch/arm64/include/asm/mmu_context.h b/arch/arm64/include/asm/mmu_context.h
index 2da3e478fd8f..33494af613d8 100644
--- a/arch/arm64/include/asm/mmu_context.h
+++ b/arch/arm64/include/asm/mmu_context.h
@@ -32,6 +32,7 @@
 #include <asm-generic/mm_hooks.h>
 #include <asm/cputype.h>
 #include <asm/pgtable.h>
+#include <asm/perf_event.h>
 #include <asm/sysreg.h>
 #include <asm/tlbflush.h>
 
@@ -235,6 +236,7 @@ static inline void __switch_mm(struct mm_struct *next)
 	}
 
 	check_and_switch_context(next, cpu);
+	perf_switch_user_access(next);
 }
 
 static inline void
diff --git a/arch/arm64/include/asm/perf_event.h b/arch/arm64/include/asm/perf_event.h
index c593761ba61c..32a6d604bb3b 100644
--- a/arch/arm64/include/asm/perf_event.h
+++ b/arch/arm64/include/asm/perf_event.h
@@ -19,6 +19,7 @@
 
 #include <asm/stack_pointer.h>
 #include <asm/ptrace.h>
+#include <linux/mm_types.h>
 
 #define	ARMV8_PMU_MAX_COUNTERS	32
 #define	ARMV8_PMU_COUNTER_MASK	(ARMV8_PMU_MAX_COUNTERS - 1)
@@ -234,4 +235,17 @@ extern unsigned long perf_misc_flags(struct pt_regs *regs);
 	(regs)->pstate = PSR_MODE_EL1h;	\
 }
 
+static inline void perf_switch_user_access(struct mm_struct *mm)
+{
+	if (!IS_ENABLED(CONFIG_PERF_EVENTS))
+		return;
+
+	if (atomic_read(&mm->context.pmu_direct_access)) {
+		write_sysreg(ARMV8_PMU_USERENR_ER|ARMV8_PMU_USERENR_CR,
+			     pmuserenr_el0);
+	} else {
+		write_sysreg(0, pmuserenr_el0);
+	}
+}
+
 #endif
diff --git a/drivers/perf/arm_pmu.c b/drivers/perf/arm_pmu.c
index 2d06b8095a19..6ae85fcbf297 100644
--- a/drivers/perf/arm_pmu.c
+++ b/drivers/perf/arm_pmu.c
@@ -25,6 +25,7 @@
 #include <linux/irqdesc.h>
 
 #include <asm/irq_regs.h>
+#include <asm/mmu_context.h>
 
 static DEFINE_PER_CPU(struct arm_pmu *, cpu_armpmu);
 static DEFINE_PER_CPU(int, cpu_irq);
@@ -778,6 +779,41 @@ static void cpu_pmu_destroy(struct arm_pmu *cpu_pmu)
 					    &cpu_pmu->node);
 }
 
+static void refresh_pmuserenr(void *mm)
+{
+	perf_switch_user_access(mm);
+}
+
+static void armpmu_event_mapped(struct perf_event *event, struct mm_struct *mm)
+{
+	if (!(event->hw.flags & ARMPMU_EL0_RD_CNTR))
+		return;
+
+	/*
+	 * This function relies on not being called concurrently in two
+	 * tasks in the same mm.  Otherwise one task could observe
+	 * pmu_direct_access > 1 and return all the way back to
+	 * userspace with user access disabled while another task is still
+	 * doing on_each_cpu_mask() to enable user access.
+	 *
+	 * For now, this can't happen because all callers hold mmap_sem
+	 * for write.  If this changes, we'll need a different solution.
+	 */
+	lockdep_assert_held_exclusive(&mm->mmap_sem);
+
+	if (atomic_inc_return(&mm->context.pmu_direct_access) == 1)
+		on_each_cpu(refresh_pmuserenr, mm, 1);
+}
+
+static void armpmu_event_unmapped(struct perf_event *event, struct mm_struct *mm)
+{
+	if (!(event->hw.flags & ARMPMU_EL0_RD_CNTR))
+		return;
+
+	if (atomic_dec_and_test(&mm->context.pmu_direct_access))
+		on_each_cpu_mask(mm_cpumask(mm), refresh_pmuserenr, NULL, 1);
+}
+
 static struct arm_pmu *__armpmu_alloc(gfp_t flags)
 {
 	struct arm_pmu *pmu;
@@ -799,6 +835,8 @@ static struct arm_pmu *__armpmu_alloc(gfp_t flags)
 		.pmu_enable	= armpmu_enable,
 		.pmu_disable	= armpmu_disable,
 		.event_init	= armpmu_event_init,
+		.event_mapped	= armpmu_event_mapped,
+		.event_unmapped	= armpmu_event_unmapped,
 		.add		= armpmu_add,
 		.del		= armpmu_del,
 		.start		= armpmu_start,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
