Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F13B26838
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 18:28:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6Q0rydyM9B5AygSYXVRH2tyMfR+vgmOD0461J64cZcE=; b=EA2ALNIiH8domKN5G0QuWHMPN
	015UIomHS13UO3QmQwomunNxaZsCfUSp+z14iYjtVMP7FDhwWQLwMhafU9pWRidEA6p0BKpFxllcN
	hF4BE6K+WUEgBt0CbVhiWfSpwgamOKduReVyDA+O/rDVqOYmbjzBBOQwcaAr/wiw0/HpnCm1gX988
	0ktEPCjlO7K6CyE3i7pgpiL2zHnjHH6RZeeGb7A5lvTnnP0vYZLoM1724fpxg+ovYckC43h0+GeXD
	+lk9Z/GOPrKf+Wc1CbGAAzgNPxnhmSYk7LZLJXh1yI47bsNobFqq+Z+06N/r4VbQ3d9YwK8VWAjvI
	keSdGmKnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTU6i-000577-1B; Wed, 22 May 2019 16:28:48 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTU6b-00056l-MI
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 16:28:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ECDAF341;
 Wed, 22 May 2019 09:28:40 -0700 (PDT)
Received: from [10.1.30.21] (apickardsiphone.cambridge.arm.com [10.1.30.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EC0113F5AF;
 Wed, 22 May 2019 09:28:38 -0700 (PDT)
Subject: Re: [PATCH] module/ksymtab: use 64-bit relative reference for target
 symbol
To: linux-arm-kernel@lists.infradead.org
References: <20190522150239.19314-1-ard.biesheuvel@arm.com>
From: Ard Biesheuvel <ard.biesheuvel@arm.com>
Message-ID: <293c9d0f-dc14-1413-e4b4-4299f0acfb9e@arm.com>
Date: Wed, 22 May 2019 17:28:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190522150239.19314-1-ard.biesheuvel@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_092841_743278_B23CF1DE 
X-CRM114-Status: GOOD (  36.17  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, linux-arch@vger.kernel.org, arnd@arndb.de,
 guillaume.gardet@arm.com, marc.zyngier@arm.com, x86@kernel.org,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, james.morse@arm.com,
 jeyu@kernel.org, mingo@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/22/19 4:02 PM, Ard Biesheuvel wrote:
> The following commit
> 
>    7290d5809571 ("module: use relative references for __ksymtab entries")
> 
> updated the ksymtab handling of some KASLR capable architectures
> so that ksymtab entries are emitted as pairs of 32-bit relative
> references. This reduces the size of the entries, but more
> importantly, it gets rid of statically assigned absolute
> addresses, which require fixing up at boot time if the kernel
> is self relocating (which takes a 24 byte RELA entry for each
> member of the ksymtab struct).
> 
> Since ksymtab entries are always part of the same module as the
> symbol they export (or of the core kernel), it was assumed at the
> time that a 32-bit relative reference is always sufficient to
> capture the offset between a ksymtab entry and its target symbol.
> 
> Unfortunately, this is not always true: in the case of per-CPU
> variables, a per-CPU variable's base address (which usually differs
> from the actual address of any of its per-CPU copies) could be at
> an arbitrary offset from the ksymtab entry, and so it may be out
> of range for a 32-bit relative reference.
> 
> To make matters worse, we identified an issue in the arm64 module
> loader, where the overflow check applied to 32-bit place relative
> relocations uses the range that is specified in the AArch64 psABI,
> which is documented as having a 'blind spot' unless you explicitly
> narrow the range to match the signed vs unsigned interpretation of
> the relocation target [0]. This means that, in some cases, code
> importing those per-CPU variables from other modules may obtain a
> bogus reference and corrupt unrelated data.
> 
> So let's fix this issue by switching to a 64-bit place relative
> reference on 64-bit architectures for the ksymtab entry's target
> symbol. This uses a bit more memory in the entry itself, which is
> unfortunate, but it preserves the original intent, which was to
> make the value invariant under runtime relocation of the core
> kernel.
> 
> [0] https://lore.kernel.org/linux-arm-kernel/20190521125707.6115-1-ard.biesheuvel@arm.com
> 
> Cc: Jessica Yu <jeyu@kernel.org>
> Cc: <stable@vger.kernel.org> # v4.19+
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@arm.com>
> ---
> 
> Note that the name 'CONFIG_HAVE_ARCH_PREL32_RELOCATIONS' is no longer
> entirely accurate after this patch, so I will follow up with a patch
> to rename it to CONFIG_HAVE_ARCH_PREL_RELOCATIONS, but that doesn't
> require a backport to -stable so I have omitted it here.
> 
> Also note that for x86, this patch depends on b40a142b12b5 ("x86: Add
> support for 64-bit place relative relocations"), which will need to
> be backported to v4.19 (from v4.20) if this patch is applied to
> -stable.
> 

Unfortunately, this is not quite true. In addition to that patch, we 
need some changes to the x86 'relocs' tool so it can handle 64-bit 
relative references to per-CPU symbols, much like the support it has 
today for 32-bit relative references. I have coded it up, and will send 
it out as soon as I have confirmed that it works.


>   include/asm-generic/export.h |  9 +++++++--
>   include/linux/compiler.h     |  9 +++++++++
>   include/linux/export.h       | 14 ++++++++++----
>   kernel/module.c              |  2 +-
>   4 files changed, 27 insertions(+), 7 deletions(-)
> 
> diff --git a/include/asm-generic/export.h b/include/asm-generic/export.h
> index 294d6ae785d4..4d658b1e4707 100644
> --- a/include/asm-generic/export.h
> +++ b/include/asm-generic/export.h
> @@ -4,7 +4,7 @@
>   #ifndef KSYM_FUNC
>   #define KSYM_FUNC(x) x
>   #endif
> -#ifdef CONFIG_64BIT
> +#if defined(CONFIG_64BIT) && !defined(CONFIG_HAVE_ARCH_PREL32_RELOCATIONS)
>   #ifndef KSYM_ALIGN
>   #define KSYM_ALIGN 8
>   #endif
> @@ -19,7 +19,12 @@
>   
>   .macro __put, val, name
>   #ifdef CONFIG_HAVE_ARCH_PREL32_RELOCATIONS
> -	.long	\val - ., \name - .
> +#ifdef CONFIG_64BIT
> +	.quad	\val - .
> +#else
> +	.long	\val - .
> +#endif
> +	.long	\name - .
>   #elif defined(CONFIG_64BIT)
>   	.quad	\val, \name
>   #else
> diff --git a/include/linux/compiler.h b/include/linux/compiler.h
> index 8aaf7cd026b0..33c65ebb7cfe 100644
> --- a/include/linux/compiler.h
> +++ b/include/linux/compiler.h
> @@ -305,6 +305,15 @@ static inline void *offset_to_ptr(const int *off)
>   	return (void *)((unsigned long)off + *off);
>   }
>   
> +/**
> + * loffset_to_ptr - convert a relative memory offset to an absolute pointer
> + * @off:	the address of the signed long offset value
> + */
> +static inline void *loffset_to_ptr(const long *off)
> +{
> +	return (void *)((unsigned long)off + *off);
> +}
> +
>   #endif /* __ASSEMBLY__ */
>   
>   /* Compile time object size, -1 for unknown */
> diff --git a/include/linux/export.h b/include/linux/export.h
> index fd8711ed9ac4..8f805b9f1c25 100644
> --- a/include/linux/export.h
> +++ b/include/linux/export.h
> @@ -43,6 +43,12 @@ extern struct module __this_module;
>   
>   #ifdef CONFIG_HAVE_ARCH_PREL32_RELOCATIONS
>   #include <linux/compiler.h>
> +#ifdef CONFIG_64BIT
> +#define __KSYMTAB_REL	".quad "
> +#else
> +#define __KSYMTAB_REL	".long "
> +#endif
> +
>   /*
>    * Emit the ksymtab entry as a pair of relative references: this reduces
>    * the size by half on 64-bit architectures, and eliminates the need for
> @@ -52,16 +58,16 @@ extern struct module __this_module;
>   #define __KSYMTAB_ENTRY(sym, sec)					\
>   	__ADDRESSABLE(sym)						\
>   	asm("	.section \"___ksymtab" sec "+" #sym "\", \"a\"	\n"	\
> -	    "	.balign	8					\n"	\
> +	    "	.balign	4					\n"	\
>   	    "__ksymtab_" #sym ":				\n"	\
> -	    "	.long	" #sym "- .				\n"	\
> +	    __KSYMTAB_REL #sym "- .				\n"	\
>   	    "	.long	__kstrtab_" #sym "- .			\n"	\
>   	    "	.previous					\n")
>   
>   struct kernel_symbol {
> -	int value_offset;
> +	long value_offset;
>   	int name_offset;
> -};
> +} __packed;
>   #else
>   #define __KSYMTAB_ENTRY(sym, sec)					\
>   	static const struct kernel_symbol __ksymtab_##sym		\
> diff --git a/kernel/module.c b/kernel/module.c
> index 6e6712b3aaf5..43efd46feeee 100644
> --- a/kernel/module.c
> +++ b/kernel/module.c
> @@ -541,7 +541,7 @@ static bool check_exported_symbol(const struct symsearch *syms,
>   static unsigned long kernel_symbol_value(const struct kernel_symbol *sym)
>   {
>   #ifdef CONFIG_HAVE_ARCH_PREL32_RELOCATIONS
> -	return (unsigned long)offset_to_ptr(&sym->value_offset);
> +	return (unsigned long)loffset_to_ptr(&sym->value_offset);
>   #else
>   	return sym->value;
>   #endif
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
