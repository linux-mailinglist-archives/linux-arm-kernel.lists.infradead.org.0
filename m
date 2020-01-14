Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 489C213B1C6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 19:15:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CaaBoeFralbBc9moyfQCocLoTco4BKOMBTDKp0njyew=; b=dTv8P4CG8UfLUH
	R7k+ePSODHVWl1W4URSJZ0tGgjvlbK3jsOWGvcPHrE9AZ1oh7x3AGtMXT3WwayydSjzDhSJcwjeUm
	w/qVomA8h2/CdWtUyoHJxAdkm/YYByh+MlPoSfs+BI1s1VvcdZXQSYDwGNQ5M5u1/lN8taDdOHYnK
	OUt2WJ+9DSv9DKv+blut4vX9RPuwu9vYM0tPDaN/1rkCPcH3k92cmn8EeKPBVkd4+YIj3hHnxdlBX
	xbXassjhA58Po96vOfQUTEMLNQVyYqniLNNj4bRLk2pqfIZjUq0qXmK+v5fxQAZIGWVI2RoFUDcdU
	5s9fEKNmIwrkzPokuBAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irQiR-0000nK-Lr; Tue, 14 Jan 2020 18:14:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irQiG-0000mD-Iy
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 18:14:53 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 618E8214AF;
 Tue, 14 Jan 2020 18:14:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579025688;
 bh=qMh1ery7M9FYKnGIXqR8RVhv5V7Xpyo6s7S1NGHlk/I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lUYqmp9E0IHaiBAQLWrMlx4ZGPSx81qOFkn+kt2E0saW/j73vmHShiwgKg0YzhZ7F
 oD++zjnW/suLGyOY9+rp/TuS1Tptv4QU2NAuBwIvQ//5O6dTagWDvZ7qb97H3BSgrh
 54JZ+Cr+Iay9ktvSAb7op3V3/UQTZZDTFvibcHtw=
Date: Tue, 14 Jan 2020 18:14:41 +0000
From: Will Deacon <will@kernel.org>
To: Pavel Tatashin <pasha.tatashin@soleen.com>
Subject: Re: [PATCH v5 3/6] arm64: remove uaccess_ttbr0 asm macros from cache
 functions
Message-ID: <20200114181440.GH2579@willie-the-truck>
References: <20200102211357.8042-1-pasha.tatashin@soleen.com>
 <20200102211357.8042-4-pasha.tatashin@soleen.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200102211357.8042-4-pasha.tatashin@soleen.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_101448_670740_218A3372 
X-CRM114-Status: GOOD (  17.17  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, stefan@agner.ch,
 jmorris@namei.org, yamada.masahiro@socionext.com, boris.ostrovsky@oracle.com,
 sashal@kernel.org, sstabellini@kernel.org, maz@kernel.org,
 linux@armlinux.org.uk, linux-arm-kernel@lists.infradead.org,
 xen-devel@lists.xenproject.org, vladimir.murzin@arm.com, julien@xen.org,
 alexios.zavras@intel.com, tglx@linutronix.de, allison@lohutok.net,
 jgross@suse.com, steve.capper@arm.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, james.morse@arm.com, andrew.cooper3@citrix.com,
 info@metux.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 02, 2020 at 04:13:54PM -0500, Pavel Tatashin wrote:
> We currently duplicate the logic to enable/disable uaccess via TTBR0,
> with C functions and assembly macros. This is a maintenenace burden
> and is liable to lead to subtle bugs, so let's get rid of the assembly
> macros, and always use the C functions. This requires refactoring
> some assembly functions to have a C wrapper.
> 
> Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
> ---
>  arch/arm64/include/asm/asm-uaccess.h | 22 ----------------
>  arch/arm64/include/asm/cacheflush.h  | 39 +++++++++++++++++++++++++---
>  arch/arm64/mm/cache.S                | 36 ++++++++++---------------
>  arch/arm64/mm/flush.c                |  2 +-
>  4 files changed, 50 insertions(+), 49 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/asm-uaccess.h b/arch/arm64/include/asm/asm-uaccess.h
> index f68a0e64482a..fba2a69f7fef 100644
> --- a/arch/arm64/include/asm/asm-uaccess.h
> +++ b/arch/arm64/include/asm/asm-uaccess.h
> @@ -34,28 +34,6 @@
>  	msr	ttbr0_el1, \tmp1		// set the non-PAN TTBR0_EL1
>  	isb
>  	.endm
> -
> -	.macro	uaccess_ttbr0_disable, tmp1, tmp2
> -alternative_if_not ARM64_HAS_PAN
> -	save_and_disable_irq \tmp2		// avoid preemption
> -	__uaccess_ttbr0_disable \tmp1
> -	restore_irq \tmp2
> -alternative_else_nop_endif
> -	.endm
> -
> -	.macro	uaccess_ttbr0_enable, tmp1, tmp2, tmp3
> -alternative_if_not ARM64_HAS_PAN
> -	save_and_disable_irq \tmp3		// avoid preemption
> -	__uaccess_ttbr0_enable \tmp1, \tmp2
> -	restore_irq \tmp3
> -alternative_else_nop_endif
> -	.endm
> -#else
> -	.macro	uaccess_ttbr0_disable, tmp1, tmp2
> -	.endm
> -
> -	.macro	uaccess_ttbr0_enable, tmp1, tmp2, tmp3
> -	.endm
>  #endif
>  
>  #endif
> diff --git a/arch/arm64/include/asm/cacheflush.h b/arch/arm64/include/asm/cacheflush.h
> index 665c78e0665a..cb00c61e0bde 100644
> --- a/arch/arm64/include/asm/cacheflush.h
> +++ b/arch/arm64/include/asm/cacheflush.h
> @@ -61,16 +61,49 @@
>   *		- kaddr  - page address
>   *		- size   - region size
>   */
> -extern void __flush_icache_range(unsigned long start, unsigned long end);
> -extern int  invalidate_icache_range(unsigned long start, unsigned long end);
> +extern void __asm_flush_icache_range(unsigned long start, unsigned long end);
> +extern long __asm_flush_cache_user_range(unsigned long start,
> +					 unsigned long end);
> +extern int  __asm_invalidate_icache_range(unsigned long start,
> +					  unsigned long end);
>  extern void __flush_dcache_area(void *addr, size_t len);
>  extern void __inval_dcache_area(void *addr, size_t len);
>  extern void __clean_dcache_area_poc(void *addr, size_t len);
>  extern void __clean_dcache_area_pop(void *addr, size_t len);
>  extern void __clean_dcache_area_pou(void *addr, size_t len);
> -extern long __flush_cache_user_range(unsigned long start, unsigned long end);
>  extern void sync_icache_aliases(void *kaddr, unsigned long len);
>  
> +static inline long __flush_cache_user_range(unsigned long start,
> +					    unsigned long end)
> +{
> +	int ret;
> +
> +	uaccess_ttbr0_enable();
> +	ret = __asm_flush_cache_user_range(start, end);
> +	uaccess_ttbr0_disable();
> +
> +	return ret;
> +}
> +
> +static inline void __flush_icache_range(unsigned long start, unsigned long end)
> +{
> +	uaccess_ttbr0_enable();
> +	__asm_flush_icache_range(start, end);
> +	uaccess_ttbr0_disable();
> +}

Interesting... I don't think we should be enabling uaccess here: the
function has a void return type so we can't communicate failure back to the
caller if we fault, so my feeling is that this should only ever be called on
kernel addresses.

> +
> +static inline int invalidate_icache_range(unsigned long start,
> +					  unsigned long end)
> +{
> +	int ret;
> +
> +	uaccess_ttbr0_enable();
> +	ret = __asm_invalidate_icache_range(start, end);
> +	uaccess_ttbr0_disable();
> +
> +	return ret;
> +}

Same here -- I don't think think this is ever called on user addresses.
Can we make the return type void and drop the uaccess toggle?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
