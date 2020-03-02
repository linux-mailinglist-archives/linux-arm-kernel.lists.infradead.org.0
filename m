Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3196E175E28
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 16:27:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V7wlop0mVxrEPehc3Kv+7OwTA/Bqw6XIfu5wbTyUHrs=; b=nxmtOwOMOVZol6
	gs0JMNQtwFUYqf0f4ETd7vk7Mw4vHnm/KRQ3ZM5ciuHUiGaK/V8a+o02qT6cF2QHZGq/Rl/zGHHNI
	9ljmyzVvLMuQoPnj+Z7m+qt2TL89eEfF41cf8OwltQDQQQ+96fKM2xceVCuIhFTepVlPYnkWmPirf
	vtm5aLTbbTM2hFLxBPRlp+KCRm3JgRzrYQAJQh+DEKVTFkKXVTVmtsgEdXHptcklwnDj4nhWTB72u
	z1nCq8BRmjaPDHrmU/dOOebh1BM1D2PvsuTDMOG3xIPectO2imHVqNyZSlxCyg5CjsUmHgjAk2AaO
	SzPlBkeFmWYk1kSzHVbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8myG-0000Mc-VV; Mon, 02 Mar 2020 15:27:04 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8my9-0000Lt-RG
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 15:27:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1583162815;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ENb59bSVT/7227H0y8YPpRQXJ5L7nAu3vXx22XGILpg=;
 b=gjNyvaQMyzRpNtjmRhL4lJQTHZPmbs7jpFDpnW+1oSMZqfbXP6LPiViQS3eAHxTvuuWFbn
 3hM62WBBkusRmbrZ75oBdBI1iOIUpcHDL4MQyeNdAQEDf2Rp+AUnMwOP72tzeeZqajyXIs
 GXEWTpd7DD3R01C6HqxL/KxTta/Bg/s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-337-Ac6sTM4FMsSRJfzj9UkMgg-1; Mon, 02 Mar 2020 10:24:53 -0500
X-MC-Unique: Ac6sTM4FMsSRJfzj9UkMgg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2FDF013E4;
 Mon,  2 Mar 2020 15:24:51 +0000 (UTC)
Received: from t490s (dhcp-17-205.bos.redhat.com [10.18.17.205])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 11F0C92D20;
 Mon,  2 Mar 2020 15:24:50 +0000 (UTC)
Date: Mon, 2 Mar 2020 10:24:48 -0500
From: Rafael Aquini <aquini@redhat.com>
To: Andrea Arcangeli <aarcange@redhat.com>
Subject: Re: [PATCH 3/3] arm64: tlb: skip tlbi broadcast
Message-ID: <20200302152448.GB74754@t490s>
References: <20200223192520.20808-1-aarcange@redhat.com>
 <20200223192520.20808-4-aarcange@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200223192520.20808-4-aarcange@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_072658_143987_7336F174 
X-CRM114-Status: GOOD (  34.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: QI Fuli <qi.fuli@fujitsu.com>, Jon Masters <jcm@jonmasters.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Michal Hocko <mhocko@kernel.org>, linux-mm@kvack.org,
 Mark Salter <msalter@redhat.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Feb 23, 2020 at 02:25:20PM -0500, Andrea Arcangeli wrote:
> With multiple NUMA nodes and multiple sockets, the tlbi broadcast
> shall be delivered through the interconnects in turn increasing the
> CPU interconnect traffic and the latency of the tlbi broadcast
> instruction. To avoid the synchronous delivery of the tlbi broadcast
> before the tlbi instruction can be retired, the hardware would need to
> implement a replicated mm_cpumask bitflag for each ASID and every CPU
> would need to tell every other CPU which ASID is being loaded. Exactly
> what x86 does with mm_cpumask in software.
> 
> Even within a single NUMA node the latency of the tlbi broadcast
> instruction increases almost linearly with the number of CPUs trying
> to send tlbi broadcasts at the same time.
> 
> If a single thread of the process is running and it's also running in
> the CPU issuing the TLB flush, or if no thread of the process are
> running, we can achieve full SMP scalability in the arm64 TLB flushng
> by skipping the tlbi broadcasting.
> 
> After the local TLB flush this means the ASID context goes out of sync
> in all CPUs except the local one. This can be tracked on the per-mm
> cpumask: if the bit is set it means the ASID context is stale for that
> CPU. This results in an extra local ASID TLB flush only when threads
> are running in new CPUs after a TLB flush.
> 
> Skipping the tlbi instruction broadcasting is already implemented in
> local_flush_tlb_all(), this patch only extends it to flush_tlb_mm(),
> flush_tlb_range() and flush_tlb_page() too.
> 
> The below benchmarks are measured on a non-NUMA 32 CPUs system (ARMv8
> Ampere), so it should be far from a worst case scenario: the
> enterprise kernel config allows multiple NUMA nodes with NR_CPUS set
> by default to 4096.
> 
> === stock ===
> 
>  # cat for-each-cpu.sh
>  #!/bin/bash
> 
>  for i in $(seq `nproc`); do
>          "$@" &>/dev/null &
>  done
>  wait
>  # perf stat -r 10 -e dummy ./for-each-cpu.sh ./mprotect-threaded 10000
> [..]
>             2.1696 +- 0.0122 seconds time elapsed  ( +-  0.56% )
> 
>  # perf stat -r 10 -e dummy ./for-each-cpu.sh ./gperftools/tcmalloc_large_heap_fragmentation_unittest
> [..]
>             0.99018 +- 0.00360 seconds time elapsed  ( +-  0.36% )
> 
>  # cat sort-compute
>  #!/bin/bash
> 
>  for x in `seq 256`; do
>          for i in `seq 32`; do /usr/bin/sort </usr/bin/sort >/dev/null; done &
>  done
>  wait
>  # perf stat -r 10 -e dummy ./sort-compute
> [..]
>             1.8094 +- 0.0139 seconds time elapsed  ( +-  0.77% )
> 
> === patch applied ===
> 
>  # perf stat -r 10 -e dummy ./for-each-cpu.sh ./mprotect-threaded 10000
> [..]
>             0.13941 +- 0.00449 seconds time elapsed  ( +-  3.22% )
> 
>  # perf stat -r 10 -e dummy ./for-each-cpu.sh ./gperftools/tcmalloc_large_heap_fragmentation_unittest
> [..]
>             0.90510 +- 0.00262 seconds time elapsed  ( +-  0.29% )
> 
>  # perf stat -r 10 -e dummy ./sort-compute
> [..]
>             1.64025 +- 0.00618 seconds time elapsed  ( +-  0.38% )
> 
> Signed-off-by: Andrea Arcangeli <aarcange@redhat.com>
> ---
>  arch/arm64/include/asm/efi.h         |  2 +-
>  arch/arm64/include/asm/mmu.h         |  4 +-
>  arch/arm64/include/asm/mmu_context.h | 33 ++++++++--
>  arch/arm64/include/asm/tlbflush.h    | 95 +++++++++++++++++++++++++++-
>  arch/arm64/mm/context.c              | 54 ++++++++++++++++
>  5 files changed, 177 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/efi.h b/arch/arm64/include/asm/efi.h
> index 44531a69d32b..5d9a1433d918 100644
> --- a/arch/arm64/include/asm/efi.h
> +++ b/arch/arm64/include/asm/efi.h
> @@ -131,7 +131,7 @@ static inline void efifb_setup_from_dmi(struct screen_info *si, const char *opt)
>  
>  static inline void efi_set_pgd(struct mm_struct *mm)
>  {
> -	__switch_mm(mm);
> +	__switch_mm(mm, smp_processor_id());
>  
>  	if (system_uses_ttbr0_pan()) {
>  		if (mm != current->active_mm) {
> diff --git a/arch/arm64/include/asm/mmu.h b/arch/arm64/include/asm/mmu.h
> index e4d862420bb4..9072fd7bc5f8 100644
> --- a/arch/arm64/include/asm/mmu.h
> +++ b/arch/arm64/include/asm/mmu.h
> @@ -20,6 +20,7 @@ typedef struct {
>  	atomic64_t	id;
>  	void		*vdso;
>  	unsigned long	flags;
> +	atomic_t	nr_active_mm;
>  } mm_context_t;
>  
>  /*
> @@ -27,7 +28,8 @@ typedef struct {
>   * ASID change and therefore doesn't need to reload the counter using
>   * atomic64_read.
>   */
> -#define ASID(mm)	((mm)->context.id.counter & 0xffff)
> +#define __ASID(asid)	((asid) & 0xffff)
> +#define ASID(mm)	__ASID((mm)->context.id.counter)
>  
>  extern bool arm64_use_ng_mappings;
>  
> diff --git a/arch/arm64/include/asm/mmu_context.h b/arch/arm64/include/asm/mmu_context.h
> index 3827ff4040a3..9c66fe317e2f 100644
> --- a/arch/arm64/include/asm/mmu_context.h
> +++ b/arch/arm64/include/asm/mmu_context.h
> @@ -175,7 +175,10 @@ static inline void cpu_replace_ttbr1(pgd_t *pgdp)
>  #define destroy_context(mm)		do { } while(0)
>  void check_and_switch_context(struct mm_struct *mm, unsigned int cpu);
>  
> -#define init_new_context(tsk,mm)	({ atomic64_set(&(mm)->context.id, 0); 0; })
> +#define init_new_context(tsk,mm)			\
> +	({ atomic64_set(&(mm)->context.id, 0);		\
> +	   atomic_set(&(mm)->context.nr_active_mm, 0);	\
> +	   0; })
>  
>  #ifdef CONFIG_ARM64_SW_TTBR0_PAN
>  static inline void update_saved_ttbr0(struct task_struct *tsk,
> @@ -203,6 +206,15 @@ static inline void update_saved_ttbr0(struct task_struct *tsk,
>  static inline void
>  enter_lazy_tlb(struct mm_struct *mm, struct task_struct *tsk)
>  {
> +	unsigned int cpu = smp_processor_id();
> +	if (per_cpu(cpu_not_lazy_tlb, cpu) &&
> +	    is_idle_task(tsk)) {
> +		per_cpu(cpu_not_lazy_tlb, cpu) = false;
> +		if (!system_uses_ttbr0_pan())
> +			cpu_set_reserved_ttbr0();
> +		atomic_dec(&mm->context.nr_active_mm);
> +	}
> +	VM_WARN_ON(atomic_read(&mm->context.nr_active_mm) < 0);
>  	/*
>  	 * We don't actually care about the ttbr0 mapping, so point it at the
>  	 * zero page.
> @@ -210,10 +222,8 @@ enter_lazy_tlb(struct mm_struct *mm, struct task_struct *tsk)
>  	update_saved_ttbr0(tsk, &init_mm);
>  }
>  
> -static inline void __switch_mm(struct mm_struct *next)
> +static inline void __switch_mm(struct mm_struct *next, unsigned int cpu)
>  {
> -	unsigned int cpu = smp_processor_id();
> -
>  	/*
>  	 * init_mm.pgd does not contain any user mappings and it is always
>  	 * active for kernel addresses in TTBR1. Just set the reserved TTBR0.
> @@ -230,8 +240,19 @@ static inline void
>  switch_mm(struct mm_struct *prev, struct mm_struct *next,
>  	  struct task_struct *tsk)
>  {
> -	if (prev != next)
> -		__switch_mm(next);
> +	unsigned int cpu = smp_processor_id();
> +
> +	if (!per_cpu(cpu_not_lazy_tlb, cpu)) {
> +		per_cpu(cpu_not_lazy_tlb, cpu) = true;
> +		atomic_inc(&next->context.nr_active_mm);
> +		__switch_mm(next, cpu);
> +	} else if (prev != next) {
> +		atomic_inc(&next->context.nr_active_mm);
> +		__switch_mm(next, cpu);
> +		atomic_dec(&prev->context.nr_active_mm);
> +	}
> +	VM_WARN_ON(!atomic_read(&next->context.nr_active_mm));
> +	VM_WARN_ON(atomic_read(&prev->context.nr_active_mm) < 0);
>  
>  	/*
>  	 * Update the saved TTBR0_EL1 of the scheduled-in task as the previous
> diff --git a/arch/arm64/include/asm/tlbflush.h b/arch/arm64/include/asm/tlbflush.h
> index bc3949064725..0bd987ff9cbd 100644
> --- a/arch/arm64/include/asm/tlbflush.h
> +++ b/arch/arm64/include/asm/tlbflush.h
> @@ -136,6 +136,15 @@ static inline void local_flush_tlb_all(void)
>  	isb();
>  }
>  
> +static inline void local_flush_tlb_asid(unsigned long asid)
> +{
> +	asid = __TLBI_VADDR(0, __ASID(asid));
> +	dsb(nshst);
> +	__tlbi(aside1, asid);
> +	__tlbi_user(aside1, asid);
> +	dsb(nsh);
> +}
> +
>  static inline void flush_tlb_all(void)
>  {
>  	dsb(ishst);
> @@ -144,9 +153,38 @@ static inline void flush_tlb_all(void)
>  	isb();
>  }
>  
> +DECLARE_PER_CPU(bool, cpu_not_lazy_tlb);
> +
> +enum tlb_flush_types {
> +	TLB_FLUSH_NO,
> +	TLB_FLUSH_LOCAL,
> +	TLB_FLUSH_BROADCAST,
> +};
> +extern enum tlb_flush_types tlb_flush_check(struct mm_struct *mm,
> +					    unsigned int cpu);
> +
>  static inline void flush_tlb_mm(struct mm_struct *mm)
>  {
>  	unsigned long asid = __TLBI_VADDR(0, ASID(mm));
> +	enum tlb_flush_types flush;
> +
> +	flush = tlb_flush_check(mm, get_cpu());
> +	switch (flush) {
> +	case TLB_FLUSH_LOCAL:
> +
> +		dsb(nshst);
> +		__tlbi(aside1, asid);
> +		__tlbi_user(aside1, asid);
> +		dsb(nsh);
> +
> +		/* fall through */
> +	case TLB_FLUSH_NO:
> +		put_cpu();
> +		return;
> +	case TLB_FLUSH_BROADCAST:
> +		break;
> +	}
> +	put_cpu();
>  
>  	dsb(ishst);
>  	__tlbi(aside1is, asid);
> @@ -167,7 +205,31 @@ static inline void flush_tlb_page_nosync(struct vm_area_struct *vma,
>  static inline void flush_tlb_page(struct vm_area_struct *vma,
>  				  unsigned long uaddr)
>  {
> -	flush_tlb_page_nosync(vma, uaddr);
> +	struct mm_struct *mm = vma->vm_mm;
> +	unsigned long addr = __TLBI_VADDR(uaddr, ASID(mm));
> +	enum tlb_flush_types flush;
> +
> +	flush = tlb_flush_check(mm, get_cpu());
> +	switch (flush) {
> +	case TLB_FLUSH_LOCAL:
> +
> +		dsb(nshst);
> +		__tlbi(vale1, addr);
> +		__tlbi_user(vale1, addr);
> +		dsb(nsh);
> +
> +		/* fall through */
> +	case TLB_FLUSH_NO:
> +		put_cpu();
> +		return;
> +	case TLB_FLUSH_BROADCAST:
> +		break;
> +	}
> +	put_cpu();
> +
> +	dsb(ishst);
> +	__tlbi(vale1is, addr);
> +	__tlbi_user(vale1is, addr);
>  	dsb(ish);
>  }
>  
> @@ -181,14 +243,16 @@ static inline void __flush_tlb_range(struct vm_area_struct *vma,
>  				     unsigned long start, unsigned long end,
>  				     unsigned long stride, bool last_level)
>  {
> -	unsigned long asid = ASID(vma->vm_mm);
> +	struct mm_struct *mm = vma->vm_mm;
> +	unsigned long asid = ASID(mm);
>  	unsigned long addr;
> +	enum tlb_flush_types flush;
>  
>  	start = round_down(start, stride);
>  	end = round_up(end, stride);
>  
>  	if ((end - start) >= (MAX_TLBI_OPS * stride)) {
> -		flush_tlb_mm(vma->vm_mm);
> +		flush_tlb_mm(mm);
>  		return;
>  	}
>  
> @@ -198,6 +262,31 @@ static inline void __flush_tlb_range(struct vm_area_struct *vma,
>  	start = __TLBI_VADDR(start, asid);
>  	end = __TLBI_VADDR(end, asid);
>  
> +	flush = tlb_flush_check(mm, get_cpu());
> +	switch (flush) {
> +	case TLB_FLUSH_LOCAL:
> +
> +		dsb(nshst);
> +		for (addr = start; addr < end; addr += stride) {
> +			if (last_level) {
> +				__tlbi(vale1, addr);
> +				__tlbi_user(vale1, addr);
> +			} else {
> +				__tlbi(vae1, addr);
> +				__tlbi_user(vae1, addr);
> +			}
> +		}
> +		dsb(nsh);
> +
> +		/* fall through */
> +	case TLB_FLUSH_NO:
> +		put_cpu();
> +		return;
> +	case TLB_FLUSH_BROADCAST:
> +		break;
> +	}
> +	put_cpu();
> +
>  	dsb(ishst);
>  	for (addr = start; addr < end; addr += stride) {
>  		if (last_level) {
> diff --git a/arch/arm64/mm/context.c b/arch/arm64/mm/context.c
> index 8ef73e89d514..3152b7f7da12 100644
> --- a/arch/arm64/mm/context.c
> +++ b/arch/arm64/mm/context.c
> @@ -25,6 +25,7 @@ static unsigned long *asid_map;
>  static DEFINE_PER_CPU(atomic64_t, active_asids);
>  static DEFINE_PER_CPU(u64, reserved_asids);
>  static cpumask_t tlb_flush_pending;
> +DEFINE_PER_CPU(bool, cpu_not_lazy_tlb);
>  
>  #define ASID_MASK		(~GENMASK(asid_bits - 1, 0))
>  #define ASID_FIRST_VERSION	(1UL << asid_bits)
> @@ -191,6 +192,12 @@ static u64 new_context(struct mm_struct *mm)
>  set_asid:
>  	__set_bit(asid, asid_map);
>  	cur_idx = asid;
> +	/*
> +	  * check_and_switch_context() will change the ASID of this mm
> +	  * so no need of extra ASID local TLB flushes: the new ASID
> +	  * isn't stale anymore after the tlb_flush_pending was set.
> +	  */
> +	cpumask_clear(mm_cpumask(mm));
>  	return idx2asid(asid) | generation;
>  }
>  
> @@ -240,6 +247,15 @@ void check_and_switch_context(struct mm_struct *mm, unsigned int cpu)
>  	raw_spin_unlock_irqrestore(&cpu_asid_lock, flags);
>  
>  switch_mm_fastpath:
> +	/*
> +	 * Enforce CPU ordering between the atomic_inc(nr_active_mm)
> +	 * in switch_mm() and the below cpumask_test_cpu(mm_cpumask).
> +	 */
> +	smp_mb();
> +	if (cpumask_test_cpu(cpu, mm_cpumask(mm))) {
> +		cpumask_clear_cpu(cpu, mm_cpumask(mm));
> +		local_flush_tlb_asid(asid);
> +	}
>  
>  	arm64_apply_bp_hardening();
>  
> @@ -251,6 +267,44 @@ void check_and_switch_context(struct mm_struct *mm, unsigned int cpu)
>  		cpu_switch_mm(mm->pgd, mm);
>  }
>  
> +enum tlb_flush_types tlb_flush_check(struct mm_struct *mm, unsigned int cpu)
> +{
> +	if (atomic_read(&mm->context.nr_active_mm) <= 1) {
> +		bool is_local = current->active_mm == mm &&
> +			per_cpu(cpu_not_lazy_tlb, cpu);
> +		cpumask_t *stale_cpumask = mm_cpumask(mm);
> +		unsigned int next_zero = cpumask_next_zero(-1, stale_cpumask);
> +		bool local_is_clear = false;
> +		if (next_zero < nr_cpu_ids &&
> +		    (is_local && next_zero == cpu)) {
> +			next_zero = cpumask_next_zero(next_zero, stale_cpumask);
> +			local_is_clear = true;
> +		}
> +		if (next_zero < nr_cpu_ids) {
> +			cpumask_setall(stale_cpumask);
> +			local_is_clear = false;
> +		}
> +
> +		/*
> +		 * Enforce CPU ordering between the above
> +		 * cpumask_setall(mm_cpumask) and the below
> +		 * atomic_read(nr_active_mm).
> +		 */
> +		smp_mb();
> +
> +		if (likely(atomic_read(&mm->context.nr_active_mm)) <= 1) {
> +			if (is_local) {
> +				if (!local_is_clear)
> +					cpumask_clear_cpu(cpu, stale_cpumask);
> +				return TLB_FLUSH_LOCAL;
> +			}
> +			if (atomic_read(&mm->context.nr_active_mm) == 0)
> +				return TLB_FLUSH_NO;
> +		}
> +	}
> +	return TLB_FLUSH_BROADCAST;
> +}
> +
>  /* Errata workaround post TTBRx_EL1 update. */
>  asmlinkage void post_ttbr_update_workaround(void)
>  {


May I suggest the following (cosmetic) changes to this
patch?

I'm testing these changes against RHEL integration + regression
tests, and I'll also run them against a specially crafted test
to measure the impact on task-switching, if any. (I'll report back,
soon)

Cheers!
 Rafael
--


diff --git a/arch/arm64/include/asm/tlbflush.h b/arch/arm64/include/asm/tlbflush.h
index bb73f02bef28..14eceba302bc 100644
--- a/arch/arm64/include/asm/tlbflush.h
+++ b/arch/arm64/include/asm/tlbflush.h
@@ -182,25 +182,21 @@ static inline void flush_tlb_mm(struct mm_struct *mm)
 	flush = tlb_flush_check(mm, get_cpu());
 	switch (flush) {
 	case TLB_FLUSH_LOCAL:
-
 		dsb(nshst);
 		__tlbi(aside1, asid);
 		__tlbi_user(aside1, asid);
 		dsb(nsh);
-
 		/* fall through */
 	case TLB_FLUSH_NO:
-		put_cpu();
-		return;
+		break;
 	case TLB_FLUSH_BROADCAST:
+		dsb(ishst);
+		__tlbi(aside1is, asid);
+		__tlbi_user(aside1is, asid);
+		dsb(ish);
 		break;
 	}
 	put_cpu();
-
-	dsb(ishst);
-	__tlbi(aside1is, asid);
-	__tlbi_user(aside1is, asid);
-	dsb(ish);
 }
 
 static inline void flush_tlb_page_nosync(struct vm_area_struct *vma,
@@ -223,25 +219,21 @@ static inline void flush_tlb_page(struct vm_area_struct *vma,
 	flush = tlb_flush_check(mm, get_cpu());
 	switch (flush) {
 	case TLB_FLUSH_LOCAL:
-
 		dsb(nshst);
 		__tlbi(vale1, addr);
 		__tlbi_user(vale1, addr);
 		dsb(nsh);
-
 		/* fall through */
 	case TLB_FLUSH_NO:
-		put_cpu();
-		return;
+		break;
 	case TLB_FLUSH_BROADCAST:
+		dsb(ishst);
+		__tlbi(vale1is, addr);
+		__tlbi_user(vale1is, addr);
+		dsb(ish);
 		break;
 	}
 	put_cpu();
-
-	dsb(ishst);
-	__tlbi(vale1is, addr);
-	__tlbi_user(vale1is, addr);
-	dsb(ish);
 }
 
 /*
@@ -276,7 +268,6 @@ static inline void __flush_tlb_range(struct vm_area_struct *vma,
 	flush = tlb_flush_check(mm, get_cpu());
 	switch (flush) {
 	case TLB_FLUSH_LOCAL:
-
 		dsb(nshst);
 		for (addr = start; addr < end; addr += stride) {
 			if (last_level) {
@@ -288,27 +279,24 @@ static inline void __flush_tlb_range(struct vm_area_struct *vma,
 			}
 		}
 		dsb(nsh);
-
 		/* fall through */
 	case TLB_FLUSH_NO:
-		put_cpu();
-		return;
+		break;
 	case TLB_FLUSH_BROADCAST:
+		dsb(ishst);
+		for (addr = start; addr < end; addr += stride) {
+			if (last_level) {
+				__tlbi(vale1is, addr);
+				__tlbi_user(vale1is, addr);
+			} else {
+				__tlbi(vae1is, addr);
+				__tlbi_user(vae1is, addr);
+			}
+		}
+		dsb(ish);
 		break;
 	}
 	put_cpu();
-
-	dsb(ishst);
-	for (addr = start; addr < end; addr += stride) {
-		if (last_level) {
-			__tlbi(vale1is, addr);
-			__tlbi_user(vale1is, addr);
-		} else {
-			__tlbi(vae1is, addr);
-			__tlbi_user(vae1is, addr);
-		}
-	}
-	dsb(ish);
 }
 
 static inline void flush_tlb_range(struct vm_area_struct *vma,


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
