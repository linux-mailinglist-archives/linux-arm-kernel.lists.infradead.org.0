Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DAC039215
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 18:29:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p9EPR5jkFIDm28OHxXfGl3nhGM/yzG7tU8T7Bfd19g0=; b=aQ/sp7EFasQ7d4
	jymnUk2BfA+VxGGoQQvclJTHw+Q3K6/GaNeNDVljxQLea+tIfie3dmG++1eX9v8NPt6m5WWJivNIl
	sYJ5Vx1D+l+CjuuJfXRfv6mxwoCJZnFa4m0FNm+tdRpYmhS0CqVSIYGzxb/9gkLtReMgzz3HgNIVJ
	HyNAnlLXpRmANdfrW+spfdMBWCnQo826GMkFN93PxDBxOHpY/U8d1cRvpGo3mUZ6Qu1R69FEN7gXv
	jqlypeaykncuF182VDRyhPsbV+Q5qKfkW0AT8bZkZiP8ZftR7EJXUChvP17VAUFAjWQWd6/kQbxD3
	MkMpJKpArSoPQPAkHLqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZHkR-0000br-MZ; Fri, 07 Jun 2019 16:29:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hZHkF-0000b0-T5
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 16:29:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E0AAE337;
 Fri,  7 Jun 2019 09:29:34 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 1DD603F71A; Fri,  7 Jun 2019 09:29:33 -0700 (PDT)
Subject: Re: [PATCH v3 5/8] arm64: Fix incorrect irqflag restore for priority
 masking
To: Julien Thierry <julien.thierry@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <1559813517-41540-1-git-send-email-julien.thierry@arm.com>
 <1559813517-41540-6-git-send-email-julien.thierry@arm.com>
From: Marc Zyngier <marc.zyngier@arm.com>
Openpgp: preference=signencrypt
Autocrypt: addr=marc.zyngier@arm.com; prefer-encrypt=mutual; keydata=
 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
 Z46HaNmN2hZS/oJ69c1DI5Rcww==
Organization: ARM Ltd
Message-ID: <68594d4e-ed5a-2e11-42c3-eafb4f6bbd05@arm.com>
Date: Fri, 7 Jun 2019 17:29:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1559813517-41540-6-git-send-email-julien.thierry@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_092936_036875_409CA4DB 
X-CRM114-Status: GOOD (  34.92  )
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
Cc: mark.rutland@arm.com, Suzuki K Pouloze <suzuki.poulose@arm.com>,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 rostedt@goodmis.org, Christoffer Dall <christoffer.dall@arm.com>,
 james.morse@arm.com, Oleg Nesterov <oleg@redhat.com>, yuzenghui@huawei.com,
 wanghaibin.wang@huawei.com, liwei391@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06/06/2019 10:31, Julien Thierry wrote:
> When using IRQ priority masking to disable interrupts, in order to deal
> with the PSR.I state, local_irq_save() would convert the I bit into a
> PMR value (GIC_PRIO_IRQOFF). This resulted in local_irq_restore()
> potentially modifying the value of PMR in undesired location due to the
> state of PSR.I upon flag saving [1].
> 
> In an attempt to solve this issue in a less hackish manner, introduce
> a bit (GIC_PRIO_IGNORE_PMR) for the PMR values that can represent
> whether PSR.I is being used to disable interrupts, in which case it
> takes precedence of the status of interrupt masking via PMR.
> 
> GIC_PRIO_IGNORE_PMR is chosen such that (<pmr_value> |
> GIC_PRIO_IGNORE_PMR) does not mask more interrupts than <pmr_value> as
> some sections (e.g. arch_cpu_idle(), interrupt acknowledge path)
> requires PMR not to mask interrupts that could be signaled to the
> CPU when using only PSR.I.
> 

s/GIC_PRIO_IGNORE_PMR/GIC_PRIO_PSR_I_SET/

> [1] https://www.spinics.net/lists/arm-kernel/msg716956.html
> 
> Fixes: commit 4a503217ce37 ("arm64: irqflags: Use ICC_PMR_EL1 for interrupt masking")
> Signed-off-by: Julien Thierry <julien.thierry@arm.com>
> Reported-by: Zenghui Yu <yuzenghui@huawei.com>
> Cc: Steven Rostedt <rostedt@goodmis.org>
> Cc: Wei Li <liwei391@huawei.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Christoffer Dall <christoffer.dall@arm.com>
> Cc: Marc Zyngier <marc.zyngier@arm.com>
> Cc: James Morse <james.morse@arm.com>
> Cc: Suzuki K Pouloze <suzuki.poulose@arm.com>
> Cc: Oleg Nesterov <oleg@redhat.com>
> ---
>  arch/arm64/include/asm/arch_gicv3.h |  4 ++-
>  arch/arm64/include/asm/daifflags.h  | 68 ++++++++++++++++++++++---------------
>  arch/arm64/include/asm/irqflags.h   | 67 +++++++++++++++---------------------
>  arch/arm64/include/asm/kvm_host.h   |  7 ++--
>  arch/arm64/include/asm/ptrace.h     | 10 ++++--
>  arch/arm64/kernel/entry.S           | 38 ++++++++++++++++++---
>  arch/arm64/kernel/process.c         |  2 +-
>  arch/arm64/kernel/smp.c             |  8 +++--
>  arch/arm64/kvm/hyp/switch.c         |  2 +-
>  9 files changed, 123 insertions(+), 83 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/arch_gicv3.h b/arch/arm64/include/asm/arch_gicv3.h
> index 14b41dd..9e991b6 100644
> --- a/arch/arm64/include/asm/arch_gicv3.h
> +++ b/arch/arm64/include/asm/arch_gicv3.h
> @@ -163,7 +163,9 @@ static inline bool gic_prio_masking_enabled(void)
> 
>  static inline void gic_pmr_mask_irqs(void)
>  {
> -	BUILD_BUG_ON(GICD_INT_DEF_PRI <= GIC_PRIO_IRQOFF);
> +	BUILD_BUG_ON(GICD_INT_DEF_PRI < (GIC_PRIO_IRQOFF |
> +					 GIC_PRIO_PSR_I_SET));
> +	BUILD_BUG_ON(GICD_INT_DEF_PRI >= GIC_PRIO_IRQON);
>  	gic_write_pmr(GIC_PRIO_IRQOFF);
>  }
> 
> diff --git a/arch/arm64/include/asm/daifflags.h b/arch/arm64/include/asm/daifflags.h
> index db452aa..f93204f 100644
> --- a/arch/arm64/include/asm/daifflags.h
> +++ b/arch/arm64/include/asm/daifflags.h
> @@ -18,6 +18,7 @@
> 
>  #include <linux/irqflags.h>
> 
> +#include <asm/arch_gicv3.h>
>  #include <asm/cpufeature.h>
> 
>  #define DAIF_PROCCTX		0
> @@ -32,6 +33,11 @@ static inline void local_daif_mask(void)
>  		:
>  		:
>  		: "memory");
> +
> +	/* Don't really care for a dsb here, we don't intend to enable IRQs */
> +	if (system_uses_irq_prio_masking())
> +		gic_write_pmr(GIC_PRIO_IRQON | GIC_PRIO_PSR_I_SET);
> +
>  	trace_hardirqs_off();
>  }
> 
> @@ -43,7 +49,7 @@ static inline unsigned long local_daif_save(void)
> 
>  	if (system_uses_irq_prio_masking()) {
>  		/* If IRQs are masked with PMR, reflect it in the flags */
> -		if (read_sysreg_s(SYS_ICC_PMR_EL1) <= GIC_PRIO_IRQOFF)
> +		if (read_sysreg_s(SYS_ICC_PMR_EL1) != GIC_PRIO_IRQON)
>  			flags |= PSR_I_BIT;
>  	}
> 
> @@ -59,36 +65,44 @@ static inline void local_daif_restore(unsigned long flags)
>  	if (!irq_disabled) {
>  		trace_hardirqs_on();
> 
> -		if (system_uses_irq_prio_masking())
> -			arch_local_irq_enable();
> -	} else if (!(flags & PSR_A_BIT)) {
> -		/*
> -		 * If interrupts are disabled but we can take
> -		 * asynchronous errors, we can take NMIs
> -		 */
>  		if (system_uses_irq_prio_masking()) {
> -			flags &= ~PSR_I_BIT;
> +			gic_write_pmr(GIC_PRIO_IRQON);
> +			dsb(sy);
> +		}
> +	} else if (system_uses_irq_prio_masking()) {
> +		u64 pmr;
> +
> +		if (!(flags & PSR_A_BIT)) {
>  			/*
> -			 * There has been concern that the write to daif
> -			 * might be reordered before this write to PMR.
> -			 * From the ARM ARM DDI 0487D.a, section D1.7.1
> -			 * "Accessing PSTATE fields":
> -			 *   Writes to the PSTATE fields have side-effects on
> -			 *   various aspects of the PE operation. All of these
> -			 *   side-effects are guaranteed:
> -			 *     - Not to be visible to earlier instructions in
> -			 *       the execution stream.
> -			 *     - To be visible to later instructions in the
> -			 *       execution stream
> -			 *
> -			 * Also, writes to PMR are self-synchronizing, so no
> -			 * interrupts with a lower priority than PMR is signaled
> -			 * to the PE after the write.
> -			 *
> -			 * So we don't need additional synchronization here.
> +			 * If interrupts are disabled but we can take
> +			 * asynchronous errors, we can take NMIs
>  			 */
> -			arch_local_irq_disable();
> +			flags &= ~PSR_I_BIT;
> +			pmr = GIC_PRIO_IRQOFF;
> +		} else {
> +			pmr = GIC_PRIO_IRQON | GIC_PRIO_PSR_I_SET;
>  		}
> +
> +		/*
> +		 * There has been concern that the write to daif
> +		 * might be reordered before this write to PMR.
> +		 * From the ARM ARM DDI 0487D.a, section D1.7.1
> +		 * "Accessing PSTATE fields":
> +		 *   Writes to the PSTATE fields have side-effects on
> +		 *   various aspects of the PE operation. All of these
> +		 *   side-effects are guaranteed:
> +		 *     - Not to be visible to earlier instructions in
> +		 *       the execution stream.
> +		 *     - To be visible to later instructions in the
> +		 *       execution stream
> +		 *
> +		 * Also, writes to PMR are self-synchronizing, so no
> +		 * interrupts with a lower priority than PMR is signaled
> +		 * to the PE after the write.
> +		 *
> +		 * So we don't need additional synchronization here.
> +		 */
> +		gic_write_pmr(pmr);
>  	}
> 
>  	write_sysreg(flags, daif);
> diff --git a/arch/arm64/include/asm/irqflags.h b/arch/arm64/include/asm/irqflags.h
> index fbe1aba..b6f757f 100644
> --- a/arch/arm64/include/asm/irqflags.h
> +++ b/arch/arm64/include/asm/irqflags.h
> @@ -67,43 +67,46 @@ static inline void arch_local_irq_disable(void)
>   */
>  static inline unsigned long arch_local_save_flags(void)
>  {
> -	unsigned long daif_bits;
>  	unsigned long flags;
> 
> -	daif_bits = read_sysreg(daif);
> -
> -	/*
> -	 * The asm is logically equivalent to:
> -	 *
> -	 * if (system_uses_irq_prio_masking())
> -	 *	flags = (daif_bits & PSR_I_BIT) ?
> -	 *			GIC_PRIO_IRQOFF :
> -	 *			read_sysreg_s(SYS_ICC_PMR_EL1);
> -	 * else
> -	 *	flags = daif_bits;
> -	 */
>  	asm volatile(ALTERNATIVE(
> -			"mov	%0, %1\n"
> -			"nop\n"
> -			"nop",
> -			__mrs_s("%0", SYS_ICC_PMR_EL1)
> -			"ands	%1, %1, " __stringify(PSR_I_BIT) "\n"
> -			"csel	%0, %0, %2, eq",
> -			ARM64_HAS_IRQ_PRIO_MASKING)
> -		: "=&r" (flags), "+r" (daif_bits)
> -		: "r" ((unsigned long) GIC_PRIO_IRQOFF)
> -		: "cc", "memory");
> +		"mrs	%0, daif",
> +		__mrs_s("%0", SYS_ICC_PMR_EL1),
> +		ARM64_HAS_IRQ_PRIO_MASKING)
> +		: "=&r" (flags)
> +		:
> +		: "memory");

I think this is worth a comment here, as you're changing the semantics
of arch_local_save_flags(). Maybe just indicating that the only thing
this should be used for is to carry the interrupt state, and nothing else.

> 
>  	return flags;
>  }
> 
> +static inline int arch_irqs_disabled_flags(unsigned long flags)
> +{
> +	int res;
> +
> +	asm volatile(ALTERNATIVE(
> +		"and	%w0, %w1, #" __stringify(PSR_I_BIT),
> +		"eor	%w0, %w1, #" __stringify(GIC_PRIO_IRQOFF),
> +		ARM64_HAS_IRQ_PRIO_MASKING)
> +		: "=&r" (res)
> +		: "r" ((int) flags)
> +		: "memory");
> +
> +	return res;
> +}
> +
>  static inline unsigned long arch_local_irq_save(void)
>  {
>  	unsigned long flags;
> 
>  	flags = arch_local_save_flags();
> 
> -	arch_local_irq_disable();
> +	/*
> +	 * There are too many states with IRQs disabled, just keep the current
> +	 * state if interrupts are already disabled/masked.
> +	 */
> +	if (!arch_irqs_disabled_flags(flags))
> +		arch_local_irq_disable();
> 
>  	return flags;
>  }
> @@ -124,21 +127,5 @@ static inline void arch_local_irq_restore(unsigned long flags)
>  		: "memory");
>  }
> 
> -static inline int arch_irqs_disabled_flags(unsigned long flags)
> -{
> -	int res;
> -
> -	asm volatile(ALTERNATIVE(
> -			"and	%w0, %w1, #" __stringify(PSR_I_BIT) "\n"
> -			"nop",
> -			"cmp	%w1, #" __stringify(GIC_PRIO_IRQOFF) "\n"
> -			"cset	%w0, ls",
> -			ARM64_HAS_IRQ_PRIO_MASKING)
> -		: "=&r" (res)
> -		: "r" ((int) flags)
> -		: "cc", "memory");
> -
> -	return res;
> -}
>  #endif
>  #endif
> diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
> index 4bcd9c1..fdc0e1c 100644
> --- a/arch/arm64/include/asm/kvm_host.h
> +++ b/arch/arm64/include/asm/kvm_host.h
> @@ -608,11 +608,12 @@ static inline void kvm_arm_vhe_guest_enter(void)
>  	 * will not signal the CPU of interrupts of lower priority, and the
>  	 * only way to get out will be via guest exceptions.
>  	 * Naturally, we want to avoid this.
> +	 *
> +	 * local_daif_mask() already sets IGNORE_PMR, we just need a

GIC_PRIO_PSR_I_SET?

> +	 * dsb to ensure the redistributor is forwards EL2 IRQs to the CPU.
>  	 */
> -	if (system_uses_irq_prio_masking()) {
> -		gic_write_pmr(GIC_PRIO_IRQON);
> +	if (system_uses_irq_prio_masking())
>  		dsb(sy);
> -	}
>  }
> 
>  static inline void kvm_arm_vhe_guest_exit(void)
> diff --git a/arch/arm64/include/asm/ptrace.h b/arch/arm64/include/asm/ptrace.h
> index b2de329..da22422 100644
> --- a/arch/arm64/include/asm/ptrace.h
> +++ b/arch/arm64/include/asm/ptrace.h
> @@ -35,9 +35,15 @@
>   * means masking more IRQs (or at least that the same IRQs remain masked).
>   *
>   * To mask interrupts, we clear the most significant bit of PMR.
> + *
> + * Some code sections either automatically switch back to PSR.I or explicitly
> + * require to not use priority masking. If bit GIC_PRIO_PSR_I_SET is included
> + * in the  the priority mask, it indicates that PSR.I should be set and
> + * interrupt disabling temporarily does not rely on IRQ priorities.
>   */
> -#define GIC_PRIO_IRQON		0xf0
> -#define GIC_PRIO_IRQOFF		(GIC_PRIO_IRQON & ~0x80)
> +#define GIC_PRIO_IRQON			0xc0
> +#define GIC_PRIO_IRQOFF			(GIC_PRIO_IRQON & ~0x80)
> +#define GIC_PRIO_PSR_I_SET		(1 << 4)
> 
>  /* Additional SPSR bits not exposed in the UABI */
>  #define PSR_IL_BIT		(1 << 20)
> diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
> index 46358a3..7f92e4b 100644
> --- a/arch/arm64/kernel/entry.S
> +++ b/arch/arm64/kernel/entry.S
> @@ -258,6 +258,7 @@ alternative_else_nop_endif
>  	/*
>  	 * Registers that may be useful after this macro is invoked:
>  	 *
> +	 * x20 - ICC_PMR_EL1
>  	 * x21 - aborted SP
>  	 * x22 - aborted PC
>  	 * x23 - aborted PSTATE
> @@ -449,6 +450,24 @@ alternative_endif
>  	.endm
>  #endif
> 
> +	.macro	gic_prio_kentry_setup, tmp:req
> +#ifdef CONFIG_ARM64_PSEUDO_NMI
> +	alternative_if ARM64_HAS_IRQ_PRIO_MASKING
> +	mov	x20, #(GIC_PRIO_PSR_I_SET | GIC_PRIO_IRQON)
> +	msr_s	SYS_ICC_PMR_EL1, x20

I find the implicit use of x20 quite dangerous, but hey. I guess that
the context makes that fairly explicit.

> +	alternative_else_nop_endif
> +#endif
> +	.endm
> +
> +	.macro	gic_prio_irq_setup, pmr:req, tmp:req
> +#ifdef CONFIG_ARM64_PSEUDO_NMI
> +	alternative_if ARM64_HAS_IRQ_PRIO_MASKING
> +	orr	\tmp, \pmr, #GIC_PRIO_PSR_I_SET
> +	msr_s	SYS_ICC_PMR_EL1, \tmp
> +	alternative_else_nop_endif
> +#endif
> +	.endm
> +
>  	.text
> 
>  /*
> @@ -627,6 +646,7 @@ el1_dbg:
>  	cmp	x24, #ESR_ELx_EC_BRK64		// if BRK64
>  	cinc	x24, x24, eq			// set bit '0'
>  	tbz	x24, #0, el1_inv		// EL1 only
> +	gic_prio_kentry_setup tmp=x3
>  	mrs	x0, far_el1
>  	mov	x2, sp				// struct pt_regs
>  	bl	do_debug_exception
> @@ -644,12 +664,10 @@ ENDPROC(el1_sync)
>  	.align	6
>  el1_irq:
>  	kernel_entry 1
> +	gic_prio_irq_setup pmr=x20, tmp=x1
>  	enable_da_f
> 
>  #ifdef CONFIG_ARM64_PSEUDO_NMI
> -alternative_if ARM64_HAS_IRQ_PRIO_MASKING
> -	ldr	x20, [sp, #S_PMR_SAVE]
> -alternative_else_nop_endif
>  	test_irqs_unmasked	res=x0, pmr=x20
>  	cbz	x0, 1f
>  	bl	asm_nmi_enter
> @@ -679,8 +697,9 @@ alternative_else_nop_endif
> 
>  #ifdef CONFIG_ARM64_PSEUDO_NMI
>  	/*
> -	 * if IRQs were disabled when we received the interrupt, we have an NMI
> -	 * and we are not re-enabling interrupt upon eret. Skip tracing.
> +	 * When using IRQ priority masking, we can get spurious interrupts while
> +	 * PMR is set to GIC_PRIO_IRQOFF. An NMI might also have occurred in a
> +	 * section with interrupts disabled. Skip tracing in those cases.
>  	 */
>  	test_irqs_unmasked	res=x0, pmr=x20
>  	cbz	x0, 1f
> @@ -809,6 +828,7 @@ el0_ia:
>  	 * Instruction abort handling
>  	 */
>  	mrs	x26, far_el1
> +	gic_prio_kentry_setup tmp=x0
>  	enable_da_f
>  #ifdef CONFIG_TRACE_IRQFLAGS
>  	bl	trace_hardirqs_off
> @@ -854,6 +874,7 @@ el0_sp_pc:
>  	 * Stack or PC alignment exception handling
>  	 */
>  	mrs	x26, far_el1
> +	gic_prio_kentry_setup tmp=x0
>  	enable_da_f
>  #ifdef CONFIG_TRACE_IRQFLAGS
>  	bl	trace_hardirqs_off
> @@ -888,6 +909,7 @@ el0_dbg:
>  	 * Debug exception handling
>  	 */
>  	tbnz	x24, #0, el0_inv		// EL0 only
> +	gic_prio_kentry_setup tmp=x3
>  	mrs	x0, far_el1
>  	mov	x1, x25
>  	mov	x2, sp
> @@ -909,7 +931,9 @@ ENDPROC(el0_sync)
>  el0_irq:
>  	kernel_entry 0
>  el0_irq_naked:
> +	gic_prio_irq_setup pmr=x20, tmp=x0
>  	enable_da_f
> +
>  #ifdef CONFIG_TRACE_IRQFLAGS
>  	bl	trace_hardirqs_off
>  #endif
> @@ -931,6 +955,7 @@ ENDPROC(el0_irq)
>  el1_error:
>  	kernel_entry 1
>  	mrs	x1, esr_el1
> +	gic_prio_kentry_setup tmp=x2
>  	enable_dbg
>  	mov	x0, sp
>  	bl	do_serror
> @@ -941,6 +966,7 @@ el0_error:
>  	kernel_entry 0
>  el0_error_naked:
>  	mrs	x1, esr_el1
> +	gic_prio_kentry_setup tmp=x2
>  	enable_dbg
>  	mov	x0, sp
>  	bl	do_serror
> @@ -965,6 +991,7 @@ work_pending:
>   */
>  ret_to_user:
>  	disable_daif
> +	gic_prio_kentry_setup tmp=x3
>  	ldr	x1, [tsk, #TSK_TI_FLAGS]
>  	and	x2, x1, #_TIF_WORK_MASK
>  	cbnz	x2, work_pending
> @@ -981,6 +1008,7 @@ ENDPROC(ret_to_user)
>   */
>  	.align	6
>  el0_svc:
> +	gic_prio_kentry_setup tmp=x1
>  	mov	x0, sp
>  	bl	el0_svc_handler
>  	b	ret_to_user
> diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
> index 3767fb2..58efc37 100644
> --- a/arch/arm64/kernel/process.c
> +++ b/arch/arm64/kernel/process.c
> @@ -94,7 +94,7 @@ static void __cpu_do_idle_irqprio(void)
>  	 * be raised.
>  	 */
>  	pmr = gic_read_pmr();
> -	gic_write_pmr(GIC_PRIO_IRQON);
> +	gic_write_pmr(GIC_PRIO_IRQON | GIC_PRIO_PSR_I_SET);
> 
>  	__cpu_do_idle();
> 
> diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
> index bb4b3f0..4deaee3 100644
> --- a/arch/arm64/kernel/smp.c
> +++ b/arch/arm64/kernel/smp.c
> @@ -192,11 +192,13 @@ static void init_gic_priority_masking(void)
> 
>  	WARN_ON(!(cpuflags & PSR_I_BIT));
> 
> -	gic_write_pmr(GIC_PRIO_IRQOFF);
> -
>  	/* We can only unmask PSR.I if we can take aborts */
> -	if (!(cpuflags & PSR_A_BIT))
> +	if (!(cpuflags & PSR_A_BIT)) {
> +		gic_write_pmr(GIC_PRIO_IRQOFF);
>  		write_sysreg(cpuflags & ~PSR_I_BIT, daif);
> +	} else {
> +		gic_write_pmr(GIC_PRIO_IRQON | GIC_PRIO_PSR_I_SET);
> +	}
>  }
> 
>  /*
> diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
> index 8799e0c..b89fcf0 100644
> --- a/arch/arm64/kvm/hyp/switch.c
> +++ b/arch/arm64/kvm/hyp/switch.c
> @@ -615,7 +615,7 @@ int __hyp_text __kvm_vcpu_run_nvhe(struct kvm_vcpu *vcpu)
>  	 * Naturally, we want to avoid this.
>  	 */
>  	if (system_uses_irq_prio_masking()) {
> -		gic_write_pmr(GIC_PRIO_IRQON);
> +		gic_write_pmr(GIC_PRIO_IRQON | GIC_PRIO_PSR_I_SET);
>  		dsb(sy);
>  	}
> 
> --
> 1.9.1
> 

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
