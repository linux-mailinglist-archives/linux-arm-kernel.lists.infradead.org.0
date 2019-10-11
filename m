Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 576BFD476F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 20:20:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k1RuFRQD1s77GRF4jY+fRIbsWSUyXz/a9K1exA9fEQQ=; b=aQ4Jli4fxyll2i
	OBdwxaFYUil18NSNgqS8Wn+7g9V1MQAvNMGnEF0FMiX8kgRKVv4tShMrU4KvKdwGVhplXtRvA55hR
	Nf5bXAZkR6BfopX1Pn17gjfLJkvmh1f0cX9SoTU1e15U5gZf9SvDdm79ZBHfjJ13hrZPWMZSo/nT1
	oUHg9WTk0dhYChiQ4M9f1Ckndh+vEzowpBUzWSnljQGGilKKKyasRsMtNPjTgDIszCd/BNVlPSmxo
	AgiOUze+TsH/xEL51o/ZN3bjciJz0AA7K9ulL4UdOU1IcGbDS05H3hFSlj1ifsTIw4Sg/LDYfg7VZ
	HS9uUejQFddiABELStSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIzWV-0007uI-2X; Fri, 11 Oct 2019 18:20:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIzWE-0007BY-Kc; Fri, 11 Oct 2019 18:20:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A63BB142F;
 Fri, 11 Oct 2019 11:20:01 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5A5C63F703;
 Fri, 11 Oct 2019 11:19:59 -0700 (PDT)
Subject: Re: [PATCH v6 15/17] arm64: kexec: add expandable argument to
 relocation function
To: Pavel Tatashin <pasha.tatashin@soleen.com>
References: <20191004185234.31471-1-pasha.tatashin@soleen.com>
 <20191004185234.31471-16-pasha.tatashin@soleen.com>
From: James Morse <james.morse@arm.com>
Message-ID: <fe5a4aae-fae3-f30f-db15-f3eced229a6e@arm.com>
Date: Fri, 11 Oct 2019 19:19:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191004185234.31471-16-pasha.tatashin@soleen.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_112002_809905_0682B274 
X-CRM114-Status: GOOD (  26.54  )
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
Cc: sashal@kernel.org, mark.rutland@arm.com, vladimir.murzin@arm.com,
 corbet@lwn.net, marc.zyngier@arm.com, catalin.marinas@arm.com,
 bhsharma@redhat.com, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 jmorris@namei.org, linux-mm@kvack.org, ebiederm@xmission.com,
 matthias.bgg@gmail.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pavel,

On 04/10/2019 19:52, Pavel Tatashin wrote:
> Currently, kexec relocation function (arm64_relocate_new_kernel) accepts
> the following arguments:
> 
> head:		start of array that contains relocation information.
> entry:		entry point for new kernel or purgatory.
> dtb_mem:	first and only argument to entry.
> 
> The number of arguments cannot be easily expended, because this
> function is also called from HVC_SOFT_RESTART, which preserves only
> three arguments. And, also arm64_relocate_new_kernel is written in
> assembly but called without stack, thus no place to move extra
> arguments to free registers.
> 
> Soon, we will need to pass more arguments: once we enable MMU we
> will need to pass information about page tables.


> Another benefit of allowing this function to accept more arguments, is that
> kernel can actually accept up to 4 arguments (x0-x3), however currently
> only one is used, but if in the future we will need for more (for example,
> pass information about when previous kernel exited to have a precise
> measurement in time spent in purgatory), we won't be easilty do that
> if arm64_relocate_new_kernel can't accept more arguments.

(That is just a little niche)


> So, add a new struct: kern_reloc_arg, and place it in kexec safe page (i.e
> memory that is not overwritten during relocation).
> Thus, make arm64_relocate_new_kernel to only take one argument, that
> contains all the needed information.


> diff --git a/arch/arm64/include/asm/kexec.h b/arch/arm64/include/asm/kexec.h
> index d15ca1ca1e83..d5b79d4c7fae 100644
> --- a/arch/arm64/include/asm/kexec.h
> +++ b/arch/arm64/include/asm/kexec.h
> @@ -90,12 +90,30 @@ static inline void crash_prepare_suspend(void) {}
>  static inline void crash_post_resume(void) {}
>  #endif
>  
> +/*
> + * kern_reloc_arg is passed to kernel relocation function as an argument.
> + * head		kimage->head, allows to traverse through relocation segments.
> + * entry_addr	kimage->start, where to jump from relocation function (new
> + *		kernel, or purgatory entry address).
> + * kern_arg0	first argument to kernel is its dtb address. The other
> + *		arguments are currently unused, and must be set to 0
> + */
> +struct kern_reloc_arg {
> +	unsigned long	head;
> +	unsigned long	entry_addr;
> +	unsigned long	kern_arg0;
> +	unsigned long	kern_arg1;
> +	unsigned long	kern_arg2;
> +	unsigned long	kern_arg3;

... at least one of these should by phys_addr_t!

While the sizes are the same on arm64, this reminds the reader what kind of address this
is, and lets the compiler warn you if you make a mistake.


> +};

> diff --git a/arch/arm64/kernel/asm-offsets.c b/arch/arm64/kernel/asm-offsets.c
> index 214685760e1c..900394907fd8 100644
> --- a/arch/arm64/kernel/asm-offsets.c
> +++ b/arch/arm64/kernel/asm-offsets.c
> @@ -23,6 +23,7 @@
>  #include <asm/suspend.h>
>  #include <linux/kbuild.h>
>  #include <linux/arm-smccc.h>
> +#include <linux/kexec.h>
>  
>  int main(void)
>  {
> @@ -126,6 +127,14 @@ int main(void)
>  #ifdef CONFIG_ARM_SDE_INTERFACE
>    DEFINE(SDEI_EVENT_INTREGS,	offsetof(struct sdei_registered_event, interrupted_regs));
>    DEFINE(SDEI_EVENT_PRIORITY,	offsetof(struct sdei_registered_event, priority));
> +#endif
> +#ifdef CONFIG_KEXEC_CORE
> +  DEFINE(KRELOC_HEAD,		offsetof(struct kern_reloc_arg, head));
> +  DEFINE(KRELOC_ENTRY_ADDR,	offsetof(struct kern_reloc_arg, entry_addr));
> +  DEFINE(KRELOC_KERN_ARG0,	offsetof(struct kern_reloc_arg, kern_arg0));
> +  DEFINE(KRELOC_KERN_ARG1,	offsetof(struct kern_reloc_arg, kern_arg1));
> +  DEFINE(KRELOC_KERN_ARG2,	offsetof(struct kern_reloc_arg, kern_arg2));
> +  DEFINE(KRELOC_KERN_ARG3,	offsetof(struct kern_reloc_arg, kern_arg3));

Please use kexec as the prefix. The kernel also applies relocations during early boot.
These are global values, and in isolation doesn't imply kexec.


>  #endif
>    return 0;
>  }

> diff --git a/arch/arm64/kernel/cpu-reset.h b/arch/arm64/kernel/cpu-reset.h
> index ed50e9587ad8..7a8720ff186f 100644
> --- a/arch/arm64/kernel/cpu-reset.h
> +++ b/arch/arm64/kernel/cpu-reset.h
> @@ -11,12 +11,10 @@
>  #include <asm/virt.h>
>  
>  void __cpu_soft_restart(unsigned long el2_switch, unsigned long entry,
> -	unsigned long arg0, unsigned long arg1, unsigned long arg2);
> +			unsigned long arg);

phys_addr_t


>  static inline void __noreturn cpu_soft_restart(unsigned long entry,
> -					       unsigned long arg0,
> -					       unsigned long arg1,
> -					       unsigned long arg2)
> +					       unsigned long arg)

phys_addr_t


>  {
>  	typeof(__cpu_soft_restart) *restart;
>  

> diff --git a/arch/arm64/kernel/relocate_kernel.S b/arch/arm64/kernel/relocate_kernel.S
> index c1d7db71a726..d352faf7cbe6 100644
> --- a/arch/arm64/kernel/relocate_kernel.S
> +++ b/arch/arm64/kernel/relocate_kernel.S

> @@ -17,86 +17,58 @@
>  /*
>   * arm64_relocate_new_kernel - Put a 2nd stage image in place and boot it.
>   *
> - * The memory that the old kernel occupies may be overwritten when coping the
> + * The memory that the old kernel occupies may be overwritten when copying the
>   * new image to its final location.  To assure that the
>   * arm64_relocate_new_kernel routine which does that copy is not overwritten,
>   * all code and data needed by arm64_relocate_new_kernel must be between the
>   * symbols arm64_relocate_new_kernel and arm64_relocate_new_kernel_end.  The
>   * machine_kexec() routine will copy arm64_relocate_new_kernel to the kexec
> - * control_code_page, a special page which has been set up to be preserved
> - * during the copy operation.
> + * safe memory that has been set up to be preserved during the copy operation.
>   */
>  ENTRY(arm64_relocate_new_kernel)
> -
> -	/* Setup the list loop variables. */
> -	mov	x18, x2				/* x18 = dtb address */
> -	mov	x17, x1				/* x17 = kimage_start */
> -	mov	x16, x0				/* x16 = kimage_head */
> -	raw_dcache_line_size x15, x0		/* x15 = dcache line size */
> -	mov	x14, xzr			/* x14 = entry ptr */
> -	mov	x13, xzr			/* x13 = copy dest */
> -
>  	/* Clear the sctlr_el2 flags. */
> -	mrs	x0, CurrentEL
> -	cmp	x0, #CurrentEL_EL2
> +	mrs	x2, CurrentEL
> +	cmp	x2, #CurrentEL_EL2
>  	b.ne	1f
> -	mrs	x0, sctlr_el2
> +	mrs	x2, sctlr_el2
>  	ldr	x1, =SCTLR_ELx_FLAGS
> -	bic	x0, x0, x1
> +	bic	x2, x2, x1
>  	pre_disable_mmu_workaround
> -	msr	sctlr_el2, x0
> +	msr	sctlr_el2, x2
>  	isb
> -1:
> -
> -	/* Check if the new image needs relocation. */
> +1:	/* Check if the new image needs relocation. */
> +	ldr	x16, [x0, #KRELOC_HEAD]		/* x16 = kimage_head */
>  	tbnz	x16, IND_DONE_BIT, .Ldone
> -
> +	raw_dcache_line_size x15, x1		/* x15 = dcache line size */
>  .Lloop:
>  	and	x12, x16, PAGE_MASK		/* x12 = addr */
> -
>  	/* Test the entry flags. */
>  .Ltest_source:
>  	tbz	x16, IND_SOURCE_BIT, .Ltest_indirection
>  
>  	/* Invalidate dest page to PoC. */
> -	mov     x0, x13
> -	add     x20, x0, #PAGE_SIZE
> +	mov     x2, x13
> +	add     x20, x2, #PAGE_SIZE
>  	sub     x1, x15, #1
> -	bic     x0, x0, x1
> -2:	dc      ivac, x0
> -	add     x0, x0, x15
> -	cmp     x0, x20
> +	bic     x2, x2, x1
> +2:	dc      ivac, x2
> +	add     x2, x2, x15
> +	cmp     x2, x20
>  	b.lo    2b
>  	dsb     sy
>  
> -	mov x20, x13
> -	mov x21, x12
> -	copy_page x20, x21, x0, x1, x2, x3, x4, x5, x6, x7
> -
> -	/* dest += PAGE_SIZE */
> -	add	x13, x13, PAGE_SIZE
> +	copy_page x13, x12, x1, x2, x3, x4, x5, x6, x7, x8
>  	b	.Lnext
> -
>  .Ltest_indirection:
>  	tbz	x16, IND_INDIRECTION_BIT, .Ltest_destination
> -
> -	/* ptr = addr */
> -	mov	x14, x12
> +	mov	x14, x12			/* ptr = addr */
>  	b	.Lnext
> -
>  .Ltest_destination:
>  	tbz	x16, IND_DESTINATION_BIT, .Lnext
> -
> -	/* dest = addr */
> -	mov	x13, x12
> -
> +	mov	x13, x12			/* dest = addr */
>  .Lnext:
> -	/* entry = *ptr++ */
> -	ldr	x16, [x14], #8
> -
> -	/* while (!(entry & DONE)) */
> -	tbz	x16, IND_DONE_BIT, .Lloop
> -
> +	ldr	x16, [x14], #8			/* entry = *ptr++ */
> +	tbz	x16, IND_DONE_BIT, .Lloop	/* while (!(entry & DONE)) */
>  .Ldone:
>  	/* wait for writes from copy_page to finish */
>  	dsb	nsh
> @@ -105,18 +77,16 @@ ENTRY(arm64_relocate_new_kernel)
>  	isb
>  
>  	/* Start new image. */
> -	mov	x0, x18
> -	mov	x1, xzr
> -	mov	x2, xzr
> -	mov	x3, xzr
> -	br	x17
> -
> -ENDPROC(arm64_relocate_new_kernel)
> +	ldr	x4, [x0, #KRELOC_ENTRY_ADDR]	/* x4 = kimage_start */
> +	ldr	x3, [x0, #KRELOC_KERN_ARG3]
> +	ldr	x2, [x0, #KRELOC_KERN_ARG2]
> +	ldr	x1, [x0, #KRELOC_KERN_ARG1]
> +	ldr	x0, [x0, #KRELOC_KERN_ARG0]	/* x0 = dtb address */
> +	br	x4
> +END(arm64_relocate_new_kernel)
>  
>  .ltorg
> -
>  .align 3	/* To keep the 64-bit values below naturally aligned. */
> -
>  .Lcopy_end:
>  .org	KEXEC_CONTROL_PAGE_SIZE
>  

My eyes!

Please don't make unnecessary changes. Its hard enough to read the assembly, moving
whitespace, comments and re-allocating the register guarantees that no-one can work out
what is happening.

If something needs cleaning up to make the change obvious, it needs doing as a previous
patch. Mechanical changes are fairly easy to review.
Functional changes behind a whirlwind of mechanical changes will cause the reviewer to
give up.


James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
