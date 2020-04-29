Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 205BD1BE55F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 19:36:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DfhjDSN66pgvOGffDSaAoDpuOgsWAJLN4CUVtLRe1VU=; b=gjGlG78Ger9j2fmGa8QdRt9g7
	k8CqbbiCBWRBJ3OWrevg+Fq3js4hyN0ZhBcT4zw1uQ4UKtsYQbjxDu9QLN/iuwFUb3/4g2SIXycH3
	AxrTNNgCf29eLhBaMNwReFkKewLQIszgg688ioGs/GQOiegjzl3Iy+npk/ZKQrc0xFzRuPvlOa0mD
	X6Yd0uq8gr5ZtXUFiH3XV2fTP2g0K2YSP5FphVhivuPo7ugWSBOxBGIeZnixNnKA3tzvM29vAY3Dt
	i+qGQrJ2UyitdOs9skISSb43Seq1KH8pbiPfV+s1ISuFUrGZSBOtd6BSyp/Ap/8xj996axBVc9Ff6
	AtSxExnVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTqd5-0003j8-05; Wed, 29 Apr 2020 17:36:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTqc2-0001qa-Ux; Wed, 29 Apr 2020 17:35:13 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7B7B520757;
 Wed, 29 Apr 2020 17:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588181708;
 bh=HCu4rd3iGFe31INEB+mn0hoOQeWn8CQzYZyDgXLQLoQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Mbct03VHiVYz9/BwCDjssF+MlW4jv2b7iou5lYdSYCAiqKANc8LJzvh3woRim0zs8
 +MsGtan1eBFjRTw+3rbZWUE0ukpEXR8Y95G5tm1BNU2P4dMcNIeEjCVXRqpoz7g1mr
 aLSyzRRAChfojm9onMKIobgPbAEVFgHmgvjFVNYQ=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jTqby-007mdk-PK; Wed, 29 Apr 2020 18:35:06 +0100
MIME-Version: 1.0
Date: Wed, 29 Apr 2020 18:35:06 +0100
From: Marc Zyngier <maz@kernel.org>
To: Pavel Tatashin <pasha.tatashin@soleen.com>
Subject: Re: [PATCH v9 15/18] arm64: kexec: kexec EL2 vectors
In-Reply-To: <20200326032420.27220-16-pasha.tatashin@soleen.com>
References: <20200326032420.27220-1-pasha.tatashin@soleen.com>
 <20200326032420.27220-16-pasha.tatashin@soleen.com>
User-Agent: Roundcube Webmail/1.4.3
Message-ID: <e5f1ee17f8e4ac3a5f5077d85318e0ed@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: pasha.tatashin@soleen.com, jmorris@namei.org,
 sashal@kernel.org, ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org, james.morse@arm.com,
 vladimir.murzin@arm.com, matthias.bgg@gmail.com, bhsharma@redhat.com,
 linux-mm@kvack.org, mark.rutland@arm.com, steve.capper@arm.com,
 rfontana@redhat.com, tglx@linutronix.de, selindag@gmail.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_103511_158054_CB3876CC 
X-CRM114-Status: GOOD (  20.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: sashal@kernel.org, mark.rutland@arm.com, vladimir.murzin@arm.com,
 corbet@lwn.net, catalin.marinas@arm.com, bhsharma@redhat.com,
 steve.capper@arm.com, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 selindag@gmail.com, jmorris@namei.org, linux-mm@kvack.org, james.morse@arm.com,
 ebiederm@xmission.com, matthias.bgg@gmail.com, rfontana@redhat.com,
 will@kernel.org, tglx@linutronix.de, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-03-26 03:24, Pavel Tatashin wrote:
> If we have a EL2 mode without VHE, the EL2 vectors are needed in order
> to switch to EL2 and jump to new world with hyperivsor privileges.
> 
> Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
> ---
>  arch/arm64/include/asm/kexec.h      |  5 +++++
>  arch/arm64/kernel/asm-offsets.c     |  1 +
>  arch/arm64/kernel/machine_kexec.c   |  5 +++++
>  arch/arm64/kernel/relocate_kernel.S | 35 +++++++++++++++++++++++++++++
>  4 files changed, 46 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/kexec.h 
> b/arch/arm64/include/asm/kexec.h
> index d944c2e289b2..0f758fd51518 100644
> --- a/arch/arm64/include/asm/kexec.h
> +++ b/arch/arm64/include/asm/kexec.h
> @@ -95,6 +95,7 @@ static inline void crash_post_resume(void) {}
>  extern const unsigned long kexec_relocate_code_size;
>  extern const unsigned char kexec_relocate_code_start[];
>  extern const unsigned long kexec_kern_reloc_offset;
> +extern const unsigned long kexec_el2_vectors_offset;
>  #endif
> 
>  /*
> @@ -104,6 +105,9 @@ extern const unsigned long kexec_kern_reloc_offset;
>   *		kernel, or purgatory entry address).
>   * kern_arg0	first argument to kernel is its dtb address. The other
>   *		arguments are currently unused, and must be set to 0
> + * el2_vector	If present means that relocation routine will go to EL1
> + *		from EL2 to do the copy, and then back to EL2 to do the jump
> + *		to new world.
>   */
>  struct kern_reloc_arg {
>  	phys_addr_t head;
> @@ -112,6 +116,7 @@ struct kern_reloc_arg {
>  	phys_addr_t kern_arg1;
>  	phys_addr_t kern_arg2;
>  	phys_addr_t kern_arg3;
> +	phys_addr_t el2_vector;
>  };
> 
>  #define ARCH_HAS_KIMAGE_ARCH
> diff --git a/arch/arm64/kernel/asm-offsets.c 
> b/arch/arm64/kernel/asm-offsets.c
> index 448230684749..ff974b648347 100644
> --- a/arch/arm64/kernel/asm-offsets.c
> +++ b/arch/arm64/kernel/asm-offsets.c
> @@ -136,6 +136,7 @@ int main(void)
>    DEFINE(KEXEC_KRELOC_KERN_ARG1,	offsetof(struct kern_reloc_arg, 
> kern_arg1));
>    DEFINE(KEXEC_KRELOC_KERN_ARG2,	offsetof(struct kern_reloc_arg, 
> kern_arg2));
>    DEFINE(KEXEC_KRELOC_KERN_ARG3,	offsetof(struct kern_reloc_arg, 
> kern_arg3));
> +  DEFINE(KEXEC_KRELOC_EL2_VECTOR,	offsetof(struct kern_reloc_arg, 
> el2_vector));
>  #endif
>    return 0;
>  }
> diff --git a/arch/arm64/kernel/machine_kexec.c
> b/arch/arm64/kernel/machine_kexec.c
> index ab571fca9bd1..bd398def7627 100644
> --- a/arch/arm64/kernel/machine_kexec.c
> +++ b/arch/arm64/kernel/machine_kexec.c
> @@ -84,6 +84,11 @@ int machine_kexec_post_load(struct kimage *kimage)
>  	kern_reloc_arg->head = kimage->head;
>  	kern_reloc_arg->entry_addr = kimage->start;
>  	kern_reloc_arg->kern_arg0 = kimage->arch.dtb_mem;
> +	/* Setup vector table only when EL2 is available, but no VHE */
> +	if (is_hyp_mode_available() && !is_kernel_in_hyp_mode()) {
> +		kern_reloc_arg->el2_vector = __pa(reloc_code)
> +						+ kexec_el2_vectors_offset;
> +	}
>  	kexec_image_info(kimage);
> 
>  	return 0;
> diff --git a/arch/arm64/kernel/relocate_kernel.S
> b/arch/arm64/kernel/relocate_kernel.S
> index aa9f2b2cd77c..6fd2fc0ef373 100644
> --- a/arch/arm64/kernel/relocate_kernel.S
> +++ b/arch/arm64/kernel/relocate_kernel.S
> @@ -89,6 +89,38 @@ ENTRY(arm64_relocate_new_kernel)
>  .ltorg
>  END(arm64_relocate_new_kernel)
> 
> +.macro el1_sync_64
> +	br	x4			/* Jump to new world from el2 */
> +	.fill 31, 4, 0			/* Set other 31 instr to zeroes */
> +.endm

The common idiom to write this is to align the beginning of the
macro, and not to bother about what follows:

.macro whatever
         .align 7
         br      x4
.endm

Specially given that 0 is an undefined instruction, and I really hate to 
see
those in the actual text. On the contrary, .align generates NOPs.

> +
> +.macro invalid_vector label
> +\label:
> +	b \label
> +	.fill 31, 4, 0			/* Set other 31 instr to zeroes */
> +.endm
> +
> +/* el2 vectors - switch el2 here while we restore the memory image. */
> +	.align 11
> +ENTRY(kexec_el2_vectors)

Please see commit 617a2f392c92 ("arm64: kvm: Annotate assembly using 
modern
annoations"), and follow the same pattern.

> +	invalid_vector el2_sync_invalid_sp0	/* Synchronous EL2t */
> +	invalid_vector el2_irq_invalid_sp0	/* IRQ EL2t */
> +	invalid_vector el2_fiq_invalid_sp0	/* FIQ EL2t */
> +	invalid_vector el2_error_invalid_sp0	/* Error EL2t */
> +	invalid_vector el2_sync_invalid_spx	/* Synchronous EL2h */
> +	invalid_vector el2_irq_invalid_spx	/* IRQ EL2h */
> +	invalid_vector el2_fiq_invalid_spx	/* FIQ EL2h */
> +	invalid_vector el2_error_invalid_spx	/* Error EL2h */
> +		el1_sync_64			/* Synchronous 64-bit EL1 */
> +	invalid_vector el1_irq_invalid_64	/* IRQ 64-bit EL1 */
> +	invalid_vector el1_fiq_invalid_64	/* FIQ 64-bit EL1 */
> +	invalid_vector el1_error_invalid_64	/* Error 64-bit EL1 */
> +	invalid_vector el1_sync_invalid_32	/* Synchronous 32-bit EL1 */
> +	invalid_vector el1_irq_invalid_32	/* IRQ 32-bit EL1 */
> +	invalid_vector el1_fiq_invalid_32	/* FIQ 32-bit EL1 */
> +	invalid_vector el1_error_invalid_32	/* Error 32-bit EL1 */
> +END(kexec_el2_vectors)

Please write the vectors in 4 groups of 4, as this makes it a lot easier
to follow what is what.

> +
>  .Lkexec_relocate_code_end:
>  .org	KEXEC_CONTROL_PAGE_SIZE
>  .align 3	/* To keep the 64-bit values below naturally aligned. */
> @@ -102,3 +134,6 @@ kexec_relocate_code_size:
>  .globl kexec_kern_reloc_offset
>  kexec_kern_reloc_offset:
>  	.quad	arm64_relocate_new_kernel - kexec_relocate_code_start
> +.globl kexec_el2_vectors_offset
> +kexec_el2_vectors_offset:
> +	.quad	kexec_el2_vectors - kexec_relocate_code_start

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
