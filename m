Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 284356FDE9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 12:35:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tVSCgfqejoB1/R+YSmeasX8bGbqiuoF13V53ZdxtOAg=; b=B8KZT+YhAmkvPt
	mlNW5PnewgbHWZHMKUMTGTkVqgnYXcodqH5nBgsr8aJ5oLD9Kn47YwTqJjsmgpIZZk1VhgwPyBjx3
	8OyiaMBXTajlfuNotXzwdGcnbWoFB2RATNw2KsodhI6p+AokIEB5Kakbyd3jLPAwUmlsrGHXpFLph
	Lsd5Y5IJ8fj8hil8rb1F06FWpIRY6y1he7BAPSEpDuTMOCQaHzfnl9qDbScjmPg79p4HYVn5+4Swn
	rle7tnO5L20zS/fzAvrJCTAaq3846yu6vFZ6HSqEoXmVc3zO6zVE/YXyYetB6+ebtIKJbpM4lZvU2
	ZAZc5nwUKRGWxwPICNWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpVf0-0004NX-Hu; Mon, 22 Jul 2019 10:35:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpVe1-0003lU-Sl
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 10:34:15 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5C88521951;
 Mon, 22 Jul 2019 10:34:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563791653;
 bh=NsDNrbhT/hm+U+9wQoPPKjQ2nDJs4yWtIpHBBt0vwig=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BMinma3QPkj4ah/iHgpoN3kEkyN3gDr07mz1s2W49D2ZegcdcPScDcMHEs7zpR20V
 uhBkFHrBKUWPOQMpXm53OJjbjAN7jbeNx/F+NTTA5+evaxqgl0RVlQZdZJR28T2An5
 rXdPxccSyt/gZo/nZXq7eVEClpppS9mjTvsRjhKU=
Date: Mon, 22 Jul 2019 11:34:09 +0100
From: Will Deacon <will@kernel.org>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH] arm64: entry: SP Alignment Fault doesn't write to FAR_EL1
Message-ID: <20190722103408.6ayjqvbmbymr44nl@willie-the-truck>
References: <20190717165602.114502-1-james.morse@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190717165602.114502-1-james.morse@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_033413_982182_D1E9064C 
X-CRM114-Status: GOOD (  20.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

On Wed, Jul 17, 2019 at 05:56:02PM +0100, James Morse wrote:
> Comparing the arm-arm's  pseudocode for AArch64.PCAlignmentFault() with
> AArch64.SPAlignmentFault() shows that SP faults don't copy the faulty-SP
> to FAR_EL1, but this is where we read from, and the address we provide
> to user-space with the BUS_ADRALN signal.
> 
> This value will be UNKNOWN due to the previous ERET to user-space.
> If the last value is preserved, on systems with KASLR or KPTI this will
> be the user-space link-register left in FAR_EL1 by tramp_exit().
> 
> Fix this to retrieve the original sp_el0 value, and pass this to
> do_sp_pc_fault().
> 
> Fixes: 60ffc30d5652 ("arm64: Exception handling")
> Signed-off-by: James Morse <james.morse@arm.com>
> ---
>  arch/arm64/kernel/entry.S | 25 ++++++++++++++++++++-----
>  1 file changed, 20 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
> index 165da78815c5..023e533c537e 100644
> --- a/arch/arm64/kernel/entry.S
> +++ b/arch/arm64/kernel/entry.S
> @@ -743,9 +743,9 @@ el0_sync:
>  	ccmp	x24, #ESR_ELx_EC_WFx, #4, ne
>  	b.eq	el0_sys
>  	cmp	x24, #ESR_ELx_EC_SP_ALIGN	// stack alignment exception
> -	b.eq	el0_sp_pc
> +	b.eq	el0_sp
>  	cmp	x24, #ESR_ELx_EC_PC_ALIGN	// pc alignment exception
> -	b.eq	el0_sp_pc
> +	b.eq	el0_pc
>  	cmp	x24, #ESR_ELx_EC_UNKNOWN	// unknown exception in EL0
>  	b.eq	el0_undef
>  	cmp	x24, #ESR_ELx_EC_BREAKPT_LOW	// debug exception in EL0
> @@ -769,7 +769,7 @@ el0_sync_compat:
>  	cmp	x24, #ESR_ELx_EC_FP_EXC32	// FP/ASIMD exception
>  	b.eq	el0_fpsimd_exc
>  	cmp	x24, #ESR_ELx_EC_PC_ALIGN	// pc alignment exception
> -	b.eq	el0_sp_pc
> +	b.eq	el0_pc
>  	cmp	x24, #ESR_ELx_EC_UNKNOWN	// unknown exception in EL0
>  	b.eq	el0_undef
>  	cmp	x24, #ESR_ELx_EC_CP15_32	// CP15 MRC/MCR trap
> @@ -869,9 +869,24 @@ el0_fpsimd_exc:
>  	mov	x1, sp
>  	bl	do_fpsimd_exc
>  	b	ret_to_user
> -el0_sp_pc:
> +el0_sp:
>  	/*
> -	 * Stack or PC alignment exception handling
> +	 * Stack alignment exception handling
> +	 */
> +	gic_prio_kentry_setup tmp=x0
> +	enable_da_f
> +#ifdef CONFIG_TRACE_IRQFLAGS
> +	bl	trace_hardirqs_off
> +#endif
> +	ct_user_exit
> +	ldr	x0, [sp, #S_SP]
> +	mov	x1, x25
> +	mov	x2, sp
> +	bl	do_sp_pc_abort
> +	b	ret_to_user
> +el0_pc:
> +	/*
> +	 * PC alignment exception handling

Given that this really isn't a fast path, I think it's preferable to avoid
duplicating the entry code and instead just have something like:

@@ -858,11 +858,15 @@ el0_fpsimd_exc:
 	mov	x1, sp
 	bl	do_fpsimd_exc
 	b	ret_to_user
+el0_sp:
+	ldr	x26, [sp, #S_SP]
+	b	el0_sp_pc
+el0_pc:
+	mrs	x26, far_el1
 el0_sp_pc:
 	/*
 	 * Stack or PC alignment exception handling
 	 */
-	mrs	x26, far_el1
 	gic_prio_kentry_setup tmp=x0
 	enable_da_f
 #ifdef CONFIG_TRACE_IRQFLAGS

I also think we should do the same thing for the EL1 case, even though
the address is currently ignored by the C handler.

What do you reckon?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
