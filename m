Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2567E470A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 11:24:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4I/TLjtwknDNkcBRwT2PYKTWlgaPJJotIwbVgcH6V8A=; b=FNXFdwAiubF3ga
	cz8l2J4Y3EKQuHTvDUGnNnDxgRs6+PLnlaxbpHeUU4LQC3wffV84ibf+X80fLEupEHbW4ko36tFCB
	yK+AaqyAKzJqwBDBcQzdNgYoKsrp08/5t0OZbPY0v9Hx6ZHMMCI+IpkSOp1tcKP793MFjxYaBUApa
	wStOz4edfG2IcY/XJIFE8l3/Ty2h+WqAfmp4V3oiUHF/ZMoR2Ne9mb/f9OS4U/gMkU3JSUiLkAekg
	lOyOWHXC0i11yaeX+U14ideOgV+/IoB67f4cwPehjr30rLaAiWeSCEE234mGUkRK7ATyS+6HZE2sS
	7yrHBpC9aW3JY0ikKLUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNvpp-0007kH-3H; Fri, 25 Oct 2019 09:24:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNvpe-0007fH-4v
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 09:24:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4091628;
 Fri, 25 Oct 2019 02:24:29 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 210813F71F;
 Fri, 25 Oct 2019 02:24:27 -0700 (PDT)
Date: Fri, 25 Oct 2019 10:24:22 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: samitolvanen@google.com
Subject: Re: [PATCH v2 01/17] arm64: mm: don't use x18 in
 idmap_kpti_install_ng_mappings
Message-ID: <20191025092421.GA40270@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com>
 <20191024225132.13410-2-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191024225132.13410-2-samitolvanen@google.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_022430_277573_640DBBF2 
X-CRM114-Status: GOOD (  17.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, clang-built-linux@googlegroups.com,
 kernel-hardening@lists.openwall.com, Laura Abbott <labbott@redhat.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 24, 2019 at 03:51:16PM -0700, samitolvanen@google.com wrote:
> idmap_kpti_install_ng_mappings uses x18 as a temporary register, which
> will result in a conflict when x18 is reserved. Use x16 and x17 instead
> where needed.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

AFAICT the new register assignment is sound, so FWIW:

Reviewed-by: Mark Rutland <mark.rutland@arm.com>

I was going to suggest adding menmonics for the remamining raw register
names, but after having a go locally I think it's cleaner as-is given
the registers are used in different widths for multiple purposes.

Thanks,
Mark.

> ---
>  arch/arm64/mm/proc.S | 63 ++++++++++++++++++++++----------------------
>  1 file changed, 32 insertions(+), 31 deletions(-)
> 
> diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
> index a1e0592d1fbc..fdabf40a83c8 100644
> --- a/arch/arm64/mm/proc.S
> +++ b/arch/arm64/mm/proc.S
> @@ -250,15 +250,15 @@ ENTRY(idmap_kpti_install_ng_mappings)
>  	/* We're the boot CPU. Wait for the others to catch up */
>  	sevl
>  1:	wfe
> -	ldaxr	w18, [flag_ptr]
> -	eor	w18, w18, num_cpus
> -	cbnz	w18, 1b
> +	ldaxr	w17, [flag_ptr]
> +	eor	w17, w17, num_cpus
> +	cbnz	w17, 1b
>  
>  	/* We need to walk swapper, so turn off the MMU. */
>  	pre_disable_mmu_workaround
> -	mrs	x18, sctlr_el1
> -	bic	x18, x18, #SCTLR_ELx_M
> -	msr	sctlr_el1, x18
> +	mrs	x17, sctlr_el1
> +	bic	x17, x17, #SCTLR_ELx_M
> +	msr	sctlr_el1, x17
>  	isb
>  
>  	/* Everybody is enjoying the idmap, so we can rewrite swapper. */
> @@ -281,9 +281,9 @@ skip_pgd:
>  	isb
>  
>  	/* We're done: fire up the MMU again */
> -	mrs	x18, sctlr_el1
> -	orr	x18, x18, #SCTLR_ELx_M
> -	msr	sctlr_el1, x18
> +	mrs	x17, sctlr_el1
> +	orr	x17, x17, #SCTLR_ELx_M
> +	msr	sctlr_el1, x17
>  	isb
>  
>  	/*
> @@ -353,46 +353,47 @@ skip_pte:
>  	b.ne	do_pte
>  	b	next_pmd
>  
> +	.unreq	cpu
> +	.unreq	num_cpus
> +	.unreq	swapper_pa
> +	.unreq	cur_pgdp
> +	.unreq	end_pgdp
> +	.unreq	pgd
> +	.unreq	cur_pudp
> +	.unreq	end_pudp
> +	.unreq	pud
> +	.unreq	cur_pmdp
> +	.unreq	end_pmdp
> +	.unreq	pmd
> +	.unreq	cur_ptep
> +	.unreq	end_ptep
> +	.unreq	pte
> +
>  	/* Secondary CPUs end up here */
>  __idmap_kpti_secondary:
>  	/* Uninstall swapper before surgery begins */
> -	__idmap_cpu_set_reserved_ttbr1 x18, x17
> +	__idmap_cpu_set_reserved_ttbr1 x16, x17
>  
>  	/* Increment the flag to let the boot CPU we're ready */
> -1:	ldxr	w18, [flag_ptr]
> -	add	w18, w18, #1
> -	stxr	w17, w18, [flag_ptr]
> +1:	ldxr	w16, [flag_ptr]
> +	add	w16, w16, #1
> +	stxr	w17, w16, [flag_ptr]
>  	cbnz	w17, 1b
>  
>  	/* Wait for the boot CPU to finish messing around with swapper */
>  	sevl
>  1:	wfe
> -	ldxr	w18, [flag_ptr]
> -	cbnz	w18, 1b
> +	ldxr	w16, [flag_ptr]
> +	cbnz	w16, 1b
>  
>  	/* All done, act like nothing happened */
> -	offset_ttbr1 swapper_ttb, x18
> +	offset_ttbr1 swapper_ttb, x16
>  	msr	ttbr1_el1, swapper_ttb
>  	isb
>  	ret
>  
> -	.unreq	cpu
> -	.unreq	num_cpus
> -	.unreq	swapper_pa
>  	.unreq	swapper_ttb
>  	.unreq	flag_ptr
> -	.unreq	cur_pgdp
> -	.unreq	end_pgdp
> -	.unreq	pgd
> -	.unreq	cur_pudp
> -	.unreq	end_pudp
> -	.unreq	pud
> -	.unreq	cur_pmdp
> -	.unreq	end_pmdp
> -	.unreq	pmd
> -	.unreq	cur_ptep
> -	.unreq	end_ptep
> -	.unreq	pte
>  ENDPROC(idmap_kpti_install_ng_mappings)
>  	.popsection
>  #endif
> -- 
> 2.24.0.rc0.303.g954a862665-goog
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
