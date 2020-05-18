Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 853CA1D7801
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 13:56:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/I/9YGXHnUBkwOybNPQJ50EkFm22vTCu94JpZjiki5E=; b=JOU2rI/B/juu4l
	f4wOeEheqN480pvyuFw6dwZ9qhxKy53H+/NegO/lfulQibTaR7/j/Rxyf9NWulJ7QaHRuoS+5vR9l
	aGB+zh1k3TelM8VIpDV5+yVppPC5pWupbXXNJ9VGOoqC4jwfRMWiOGurUJHB9jOURN6IbSTz7Vj+R
	FZfdBuDey8unLWMN0Nzk4fBSXtsFkXJ8q+lLB/ftRwI+IO4k9lDBxFeWyWrYHaNlk3CfkWc7p1cx9
	hB0a/6/e6tHsvOwQhQzsTGGkgw4XSJgmE7G45KGj4dzd8b/mf2/C22AMap68dCE0kdH1KyzrbUsq9
	bJ9agTDsIYoUc6BH/1CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaeNV-00025l-MX; Mon, 18 May 2020 11:56:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaeN7-0001uA-2h
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 11:55:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7A57B11FB;
 Mon, 18 May 2020 04:55:52 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 068B03F774;
 Mon, 18 May 2020 04:55:49 -0700 (PDT)
Date: Mon, 18 May 2020 12:55:47 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 3/6] arm64: scs: Use 'scs_sp' register alias for x18
Message-ID: <20200518115547.GC1957@C02TD0UTHF1T.local>
References: <20200515172756.27185-1-will@kernel.org>
 <20200515172756.27185-4-will@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515172756.27185-4-will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_045553_201657_86AFAA8A 
X-CRM114-Status: GOOD (  17.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Mark Rutland <mark.rutland@am.com>, Sami Tolvanen <samitolvanen@google.com>,
 kernel-team@android.com, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 06:27:53PM +0100, Will Deacon wrote:
> x18 holds the SCS stack pointer value, so introduce a register alias to
> make this easier to read in assembly code.
> 
> Signed-off-by: Will Deacon <will@kernel.org>

I scanned through arm64 for all instances of x18, and it looks like
you've covered all the relevant uses here. In kvm we save/restore x18 a
bunch becasue it might be a platform register, but we do that
unconditionally and without knowledge of what it contains, so I think
that's fine to leave as-is. Therefore:

Reviewed-by: Mark Rutland <mark.rutland@arm.com>

As an aside, the comment in entry-ftrace.S is now stale where it says
that x18 is safe to clobber. I can send a patch to clean that up, unless
you want to do that yourself.

Mark.

> ---
>  arch/arm64/include/asm/scs.h |  6 ++++--
>  arch/arm64/kernel/entry.S    | 10 +++++-----
>  arch/arm64/kernel/head.S     |  2 +-
>  3 files changed, 10 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/scs.h b/arch/arm64/include/asm/scs.h
> index 6b8cf4352fe3..d46efdd2060a 100644
> --- a/arch/arm64/include/asm/scs.h
> +++ b/arch/arm64/include/asm/scs.h
> @@ -7,12 +7,14 @@
>  #include <asm/asm-offsets.h>
>  
>  #ifdef CONFIG_SHADOW_CALL_STACK
> +	scs_sp	.req	x18
> +
>  	.macro scs_load tsk, tmp
> -	ldr	x18, [\tsk, #TSK_TI_SCS_SP]
> +	ldr	scs_sp, [\tsk, #TSK_TI_SCS_SP]
>  	.endm
>  
>  	.macro scs_save tsk, tmp
> -	str	x18, [\tsk, #TSK_TI_SCS_SP]
> +	str	scs_sp, [\tsk, #TSK_TI_SCS_SP]
>  	.endm
>  #else
>  	.macro scs_load tsk, tmp
> diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
> index cb0516e6f963..741faf0706f1 100644
> --- a/arch/arm64/kernel/entry.S
> +++ b/arch/arm64/kernel/entry.S
> @@ -394,7 +394,7 @@ alternative_insn eret, nop, ARM64_UNMAP_KERNEL_AT_EL0
>  	.macro	irq_stack_entry
>  	mov	x19, sp			// preserve the original sp
>  #ifdef CONFIG_SHADOW_CALL_STACK
> -	mov	x24, x18		// preserve the original shadow stack
> +	mov	x24, scs_sp		// preserve the original shadow stack
>  #endif
>  
>  	/*
> @@ -416,7 +416,7 @@ alternative_insn eret, nop, ARM64_UNMAP_KERNEL_AT_EL0
>  
>  #ifdef CONFIG_SHADOW_CALL_STACK
>  	/* also switch to the irq shadow stack */
> -	adr_this_cpu x18, irq_shadow_call_stack, x26
> +	adr_this_cpu scs_sp, irq_shadow_call_stack, x26
>  #endif
>  
>  9998:
> @@ -430,7 +430,7 @@ alternative_insn eret, nop, ARM64_UNMAP_KERNEL_AT_EL0
>  	.macro	irq_stack_exit
>  	mov	sp, x19
>  #ifdef CONFIG_SHADOW_CALL_STACK
> -	mov	x18, x24
> +	mov	scs_sp, x24
>  #endif
>  	.endm
>  
> @@ -1071,9 +1071,9 @@ SYM_CODE_START(__sdei_asm_handler)
>  #ifdef CONFIG_SHADOW_CALL_STACK
>  	/* Use a separate shadow call stack for normal and critical events */
>  	cbnz	w4, 3f
> -	adr_this_cpu dst=x18, sym=sdei_shadow_call_stack_normal, tmp=x6
> +	adr_this_cpu dst=scs_sp, sym=sdei_shadow_call_stack_normal, tmp=x6
>  	b	4f
> -3:	adr_this_cpu dst=x18, sym=sdei_shadow_call_stack_critical, tmp=x6
> +3:	adr_this_cpu dst=scs_sp, sym=sdei_shadow_call_stack_critical, tmp=x6
>  4:
>  #endif
>  
> diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
> index 2b01c19c5483..1293baddfd20 100644
> --- a/arch/arm64/kernel/head.S
> +++ b/arch/arm64/kernel/head.S
> @@ -426,7 +426,7 @@ SYM_FUNC_START_LOCAL(__primary_switched)
>  	mov	x29, sp
>  
>  #ifdef CONFIG_SHADOW_CALL_STACK
> -	adr_l	x18, init_shadow_call_stack	// Set shadow call stack
> +	adr_l	scs_sp, init_shadow_call_stack	// Set shadow call stack
>  #endif
>  
>  	str_l	x21, __fdt_pointer, x5		// Save FDT pointer
> -- 
> 2.26.2.761.g0e0b3e54be-goog
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
