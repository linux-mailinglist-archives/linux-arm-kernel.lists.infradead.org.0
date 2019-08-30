Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 822A0A3441
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 11:41:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RaVvd+5G6xKqOWXILn56JvTm2CHYhAdinS2z4eWky14=; b=rgPaTP0enKtj/A
	RCqum1ldeWZjp1pR8dNbyRHQWvFYTjuW/1R2PTP4teTyczg1BxFIlsl155D6WjnSf6dsSfBcEdTyJ
	9Wj5s+a7dVnh1WMBYM74TzHsySDYYXksch8YShfVRTkHMBu+UuyqnwBy9PJOI2mgGOvKD9fZ6hvUL
	QjnwHDmgtTnD9+JGXFbilEuynyWa3xTDf0vCjb31Fk7AmXRLhBNCMjuKOcCQT3dnUdYTH6RVVb9Da
	r+WpK08fna/50bSshjvHsHub3OlQNdjf+/FO1QxIbcQFKQVvNRG6Qgwov5KpDM41sn9nCWFo0W18l
	oAPl+zh2MFLsOZGsOxJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3dPW-0003Ff-UN; Fri, 30 Aug 2019 09:41:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3dOb-0002Pn-8S
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 09:40:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B037E344;
 Fri, 30 Aug 2019 02:40:40 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5A7FA3F718;
 Fri, 30 Aug 2019 02:40:39 -0700 (PDT)
Date: Fri, 30 Aug 2019 10:40:37 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH ARM64 v4.4 V3 06/44] arm64: entry: Ensure branch through
 syscall table is bounded under speculation
Message-ID: <20190830094036.GF46475@lakrids.cambridge.arm.com>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
 <093a9777605bdd2ab2c33948a4e7a3fbb275de4d.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <093a9777605bdd2ab2c33948a4e7a3fbb275de4d.1567077734.git.viresh.kumar@linaro.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_024041_436472_16A196EC 
X-CRM114-Status: GOOD (  15.81  )
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
Cc: Julien Thierry <Julien.Thierry@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, stable@vger.kernel.org, mark.brown@arm.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 05:03:51PM +0530, Viresh Kumar wrote:
> From: Will Deacon <will.deacon@arm.com>
> 
> commit 6314d90e64936c584f300a52ef173603fb2461b5 upstream.
> 
> In a similar manner to array_index_mask_nospec, this patch introduces an
> assembly macro (mask_nospec64) which can be used to bound a value under
> speculation. This macro is then used to ensure that the indirect branch
> through the syscall table is bounded under speculation, with out-of-range
> addresses speculating as calls to sys_io_setup (0).
> 
> Reviewed-by: Mark Rutland <mark.rutland@arm.com>
> Signed-off-by: Will Deacon <will.deacon@arm.com>
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> [ v4.4: use existing scno & sc_nr definitions ]
> Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>

Reviewed-by: Mark Rutland <mark.rutland@arm.com> [v4.4 backport]

Mark.

> ---
>  arch/arm64/include/asm/assembler.h | 11 +++++++++++
>  arch/arm64/kernel/entry.S          |  1 +
>  2 files changed, 12 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/assembler.h b/arch/arm64/include/asm/assembler.h
> index 683c2875278f..2b30363a3a89 100644
> --- a/arch/arm64/include/asm/assembler.h
> +++ b/arch/arm64/include/asm/assembler.h
> @@ -102,6 +102,17 @@
>  	hint	#20
>  	.endm
>  
> +/*
> + * Sanitise a 64-bit bounded index wrt speculation, returning zero if out
> + * of bounds.
> + */
> +	.macro	mask_nospec64, idx, limit, tmp
> +	sub	\tmp, \idx, \limit
> +	bic	\tmp, \tmp, \idx
> +	and	\idx, \idx, \tmp, asr #63
> +	csdb
> +	.endm
> +
>  #define USER(l, x...)				\
>  9999:	x;					\
>  	.section __ex_table,"a";		\
> diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
> index 4c5013b09dcb..e6aec982dea9 100644
> --- a/arch/arm64/kernel/entry.S
> +++ b/arch/arm64/kernel/entry.S
> @@ -697,6 +697,7 @@ el0_svc_naked:					// compat entry point
>  	b.ne	__sys_trace
>  	cmp     scno, sc_nr                     // check upper syscall limit
>  	b.hs	ni_sys
> +	mask_nospec64 scno, sc_nr, x19	// enforce bounds for syscall number
>  	ldr	x16, [stbl, scno, lsl #3]	// address in the syscall table
>  	blr	x16				// call sys_* routine
>  	b	ret_fast_syscall
> -- 
> 2.21.0.rc0.269.g1a574e7a288b
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
