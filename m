Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B6769996A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 18:40:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lWtM+KjI3whrpOzYE6xyaKcjRG4K546cG1qdKrOiK/Y=; b=GeEb9MknkhPFKr
	969J1F9kIKytxzNDG8SwJn68QOP7wjXYOcR/QXQUboeg2f9LJjRUSpsRXUq3zeVbiwOhyvO7mJhJ0
	xHJ80bCgyc31eBe0eMytlz5Kuk20u6czWb4Z0jeqaS8o/GFAQmHdF08oMFPVmTkzLBv6DuLRZnPto
	9CwwrhKZsdJ67/8nIjJoIj0OQ0F3g0ZVtiS4Lb4cyPOZBbFttpQIKn1lrFNTK+OJelxV7gBsFo3Qn
	PoF3bPy5ObP9VzogYDqnxY6aaiEq+/grl2qYRUuri0hsRWUienIzfzDkKRqRsRrzuVOXQe1taq5in
	h9yoHQNfQutDyMLqqvCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0q8X-0000Fd-WD; Thu, 22 Aug 2019 16:40:34 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0q8I-0008NC-7e
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 16:40:20 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id A2FF76325640AF5DDC2F;
 Fri, 23 Aug 2019 00:40:01 +0800 (CST)
Received: from localhost (10.227.98.71) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.439.0; Fri, 23 Aug 2019
 00:39:56 +0800
Date: Fri, 23 Aug 2019 00:39:45 +0800
From: Jonathan Cameron <Jonathan.Cameron@huawei.com>
To: Raphael Gault <raphael.gault@arm.com>
Subject: Re: [PATCH v4 6/7] arm64: perf: Enable pmu counter direct access
 for perf event on armv8
Message-ID: <20190823003945.00004a69@huawei.com>
In-Reply-To: <20190822144220.27860-7-raphael.gault@arm.com>
References: <20190822144220.27860-1-raphael.gault@arm.com>
 <20190822144220.27860-7-raphael.gault@arm.com>
Organization: Huawei R&D UK Ltd.
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.227.98.71]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_094018_471657_9E35C954 
X-CRM114-Status: GOOD (  20.15  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, raph.gault+kdev@gmail.com, peterz@infradead.org,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 acme@kernel.org, mingo@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 22 Aug 2019 15:42:19 +0100
Raphael Gault <raphael.gault@arm.com> wrote:

> Keep track of event opened with direct access to the hardware counters
> and modify permissions while they are open.
> 
> The strategy used here is the same which x86 uses: everytime an event
> is mapped, the permissions are set if required. The atomic field added
> in the mm_context helps keep track of the different event opened and
> de-activate the permissions when all are unmapped.
> We also need to update the permissions in the context switch code so
> that tasks keep the right permissions.
> 
> Signed-off-by: Raphael Gault <raphael.gault@arm.com>

Hi Raphael,

One trivial comment inline.

Thanks,

Jonathan


> ---
>  arch/arm64/include/asm/mmu.h         |  6 ++++
>  arch/arm64/include/asm/mmu_context.h |  2 ++
>  arch/arm64/include/asm/perf_event.h  | 14 ++++++++
>  arch/arm64/kernel/perf_event.c       |  1 +
>  drivers/perf/arm_pmu.c               | 54 ++++++++++++++++++++++++++++
>  5 files changed, 77 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/mmu.h b/arch/arm64/include/asm/mmu.h
> index fd6161336653..88ed4466bd06 100644
> --- a/arch/arm64/include/asm/mmu.h
> +++ b/arch/arm64/include/asm/mmu.h
> @@ -18,6 +18,12 @@
>  
>  typedef struct {
>  	atomic64_t	id;
> +
> +	/*
> +	 * non-zero if userspace have access to hardware
> +	 * counters directly.
> +	 */
> +	atomic_t	pmu_direct_access;
>  	void		*vdso;
>  	unsigned long	flags;
>  } mm_context_t;
> diff --git a/arch/arm64/include/asm/mmu_context.h b/arch/arm64/include/asm/mmu_context.h
> index 7ed0adb187a8..6e66ff940494 100644
> --- a/arch/arm64/include/asm/mmu_context.h
> +++ b/arch/arm64/include/asm/mmu_context.h
> @@ -21,6 +21,7 @@
>  #include <asm-generic/mm_hooks.h>
>  #include <asm/cputype.h>
>  #include <asm/pgtable.h>
> +#include <asm/perf_event.h>
>  #include <asm/sysreg.h>
>  #include <asm/tlbflush.h>
>  
> @@ -224,6 +225,7 @@ static inline void __switch_mm(struct mm_struct *next)
>  	}
>  
>  	check_and_switch_context(next, cpu);
> +	perf_switch_user_access(next);
>  }
>  
>  static inline void
> diff --git a/arch/arm64/include/asm/perf_event.h b/arch/arm64/include/asm/perf_event.h
> index 2bdbc79bbd01..ba58fa726631 100644
> --- a/arch/arm64/include/asm/perf_event.h
> +++ b/arch/arm64/include/asm/perf_event.h
> @@ -8,6 +8,7 @@
>  
>  #include <asm/stack_pointer.h>
>  #include <asm/ptrace.h>
> +#include <linux/mm_types.h>
>  
>  #define	ARMV8_PMU_MAX_COUNTERS	32
>  #define	ARMV8_PMU_COUNTER_MASK	(ARMV8_PMU_MAX_COUNTERS - 1)
> @@ -223,4 +224,17 @@ extern unsigned long perf_misc_flags(struct pt_regs *regs);
>  	(regs)->pstate = PSR_MODE_EL1h;	\
>  }
>  
> +static inline void perf_switch_user_access(struct mm_struct *mm)
> +{
> +	if (!IS_ENABLED(CONFIG_PERF_EVENTS))
> +		return;
> +
> +	if (atomic_read(&mm->context.pmu_direct_access)) {
> +		write_sysreg(ARMV8_PMU_USERENR_ER|ARMV8_PMU_USERENR_CR,
> +			     pmuserenr_el0);
> +	} else {
> +		write_sysreg(0, pmuserenr_el0);
> +	}
> +}
> +
>  #endif
> diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
> index de9b001e8b7c..7de56f22d038 100644
> --- a/arch/arm64/kernel/perf_event.c
> +++ b/arch/arm64/kernel/perf_event.c
> @@ -1285,6 +1285,7 @@ void arch_perf_update_userpage(struct perf_event *event,
>  	 */
>  	freq = arch_timer_get_rate();
>  	userpg->cap_user_time = 1;
> +	userpg->cap_user_rdpmc = !!(event->hw.flags & ARMPMU_EL0_RD_CNTR);
>  
>  	clocks_calc_mult_shift(&userpg->time_mult, &shift, freq,
>  			NSEC_PER_SEC, 0);
> diff --git a/drivers/perf/arm_pmu.c b/drivers/perf/arm_pmu.c
> index 2d06b8095a19..d0d3e523a4c4 100644
> --- a/drivers/perf/arm_pmu.c
> +++ b/drivers/perf/arm_pmu.c
> @@ -25,6 +25,7 @@
>  #include <linux/irqdesc.h>
>  
>  #include <asm/irq_regs.h>
> +#include <asm/mmu_context.h>
>  
>  static DEFINE_PER_CPU(struct arm_pmu *, cpu_armpmu);
>  static DEFINE_PER_CPU(int, cpu_irq);
> @@ -778,6 +779,57 @@ static void cpu_pmu_destroy(struct arm_pmu *cpu_pmu)
>  					    &cpu_pmu->node);
>  }
>  
> +static void refresh_pmuserenr(void *mm)
> +{
> +	perf_switch_user_access(mm);
> +}
> +
> +static int check_homogeneous_cap(struct perf_event *event, struct mm_struct *mm)
> +{
> +	pr_info("checking HAS_HOMOGENEOUS_PMU");

Can we drop this spam from the good path.  Makes a bit of a mess of my
terminal when running the test ;)

> +	if (!cpus_have_cap(ARM64_HAS_HOMOGENEOUS_PMU)) {
> +		pr_info("Disable direct access (!HAS_HOMOGENEOUS_PMU)");
> +		atomic_set(&mm->context.pmu_direct_access, 0);
> +		on_each_cpu(refresh_pmuserenr, mm, 1);
> +		event->hw.flags &= ~ARMPMU_EL0_RD_CNTR;
> +		return 0;
> +	}
> +
> +	return 1;
> +}
> +
> +static void armpmu_event_mapped(struct perf_event *event, struct mm_struct *mm)
> +{
> +	if (!(event->hw.flags & ARMPMU_EL0_RD_CNTR))
> +		return;
> +
> +	/*
> +	 * This function relies on not being called concurrently in two
> +	 * tasks in the same mm.  Otherwise one task could observe
> +	 * pmu_direct_access > 1 and return all the way back to
> +	 * userspace with user access disabled while another task is still
> +	 * doing on_each_cpu_mask() to enable user access.
> +	 *
> +	 * For now, this can't happen because all callers hold mmap_sem
> +	 * for write.  If this changes, we'll need a different solution.
> +	 */
> +	lockdep_assert_held_write(&mm->mmap_sem);
> +
> +	if (check_homogeneous_cap(event, mm) &&
> +	    atomic_inc_return(&mm->context.pmu_direct_access) == 1)
> +		on_each_cpu(refresh_pmuserenr, mm, 1);
> +}
> +
> +static void armpmu_event_unmapped(struct perf_event *event, struct mm_struct *mm)
> +{
> +	if (!(event->hw.flags & ARMPMU_EL0_RD_CNTR))
> +		return;
> +
> +	if (check_homogeneous_cap(event, mm) &&
> +	    atomic_dec_and_test(&mm->context.pmu_direct_access))
> +		on_each_cpu_mask(mm_cpumask(mm), refresh_pmuserenr, NULL, 1);
> +}
> +
>  static struct arm_pmu *__armpmu_alloc(gfp_t flags)
>  {
>  	struct arm_pmu *pmu;
> @@ -799,6 +851,8 @@ static struct arm_pmu *__armpmu_alloc(gfp_t flags)
>  		.pmu_enable	= armpmu_enable,
>  		.pmu_disable	= armpmu_disable,
>  		.event_init	= armpmu_event_init,
> +		.event_mapped	= armpmu_event_mapped,
> +		.event_unmapped	= armpmu_event_unmapped,
>  		.add		= armpmu_add,
>  		.del		= armpmu_del,
>  		.start		= armpmu_start,



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
