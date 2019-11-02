Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90448ECEAC
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 Nov 2019 13:20:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+RQCqbPAISevEaivtBP3h+bRSw+5/DVj/p1Te6gIraY=; b=SzTT6nh/9cMZXK42MVw+CHPMW
	AGeW8t5/ZiiV3WX4HOalJyUTCObZhVo2hzxL77Pbbjiy2MjJhYltoLHwHAobsoN/Kl25b96HluIbB
	R2jiSSmdFW2xq+TM9BKHjv5j/zIHdrA25qYuR2CFM1SQJ7cwllfQXk82EckMQe9fTovBVHzXH5vF7
	wgeuJXSr6tLM5o9ypEguXLz5SbovcRpEl6ebQ0un5qziUIgQ/0ami69wWR0CHnJwk4YgYZ1QxJ6w2
	wUEiy4IEJ6vevyp1K+mQojFRwZTXcqIaAryMbJNR76jLjfG/qeCyOjCMIGEiIJ+j4W+BEgLrmWwFC
	w8NlSj57A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQsOA-0000rF-Jl; Sat, 02 Nov 2019 12:20:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQsO3-0000qG-AN
 for linux-arm-kernel@lists.infradead.org; Sat, 02 Nov 2019 12:20:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9B857328;
 Sat,  2 Nov 2019 05:20:09 -0700 (PDT)
Received: from [10.162.0.144] (a075553-lin.blr.arm.com [10.162.0.144])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 076EC3F718;
 Sat,  2 Nov 2019 05:20:04 -0700 (PDT)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCHv2 4/8] arm64: module/ftrace: intialize PLT at load time
To: Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
References: <20191029165832.33606-1-mark.rutland@arm.com>
 <20191029165832.33606-5-mark.rutland@arm.com>
Message-ID: <d22b27b5-6b76-6124-efff-fd577a8f482e@arm.com>
Date: Sat, 2 Nov 2019 17:50:02 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20191029165832.33606-5-mark.rutland@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_052011_450310_4F2BE7C0 
X-CRM114-Status: GOOD (  35.42  )
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
Cc: jthierry@redhat.com, linux-parisc@vger.kernel.org, peterz@infradead.org,
 catalin.marinas@arm.com, deller@gmx.de, jpoimboe@redhat.com,
 linux-kernel@vger.kernel.org, rostedt@goodmis.org,
 James.Bottomley@HansenPartnership.com, takahiro.akashi@linaro.org,
 will@kernel.org, mingo@redhat.com, james.morse@arm.com, jeyu@kernel.org,
 svens@stackframe.org, duwe@suse.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 10/29/19 10:28 PM, Mark Rutland wrote:
> Currently we lazily-initialize a module's ftrace PLT at runtime when we
> install the first ftrace call. To do so we have to apply a number of
> sanity checks, transiently mark the module text as RW, and perform an
> IPI as part of handling Neoverse-N1 erratum #1542419.
> 
> We only expect the ftrace trampoline to point at ftrace_caller() (AKA
> FTRACE_ADDR), so let's simplify all of this by intializing the PLT at
> module load time, before the module loader marks the module RO and
> performs the intial I-cache maintenance for the module.
> 
> Thus we can rely on the module having been correctly intialized, and can
> simplify the runtime work necessary to install an ftrace call in a
> module. This will also allow for the removal of module_disable_ro().
> 
> Tested by forcing ftrace_make_call() to use the module PLT, and then
> loading up a module after setting up ftrace with:
> 
> | echo ":mod:<module-name>" > set_ftrace_filter;
> | echo function > current_tracer;
> | modprobe <module-name>
> 
> Since FTRACE_ADDR is only defined when CONFIG_DYNAMIC_FTRACE is
> selected, we wrap its use along with most of module_init_ftrace_plt()
> with ifdeffery rather than using IS_ENABLED().
> 
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> Reviewed-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: James Morse <james.morse@arm.com>
> Cc: Peter Zijlstra <peterz@infradead.org>
> Cc: Will Deacon <will@kernel.org>
> ---
>   arch/arm64/kernel/ftrace.c | 55 ++++++++++++----------------------------------
>   arch/arm64/kernel/module.c | 32 +++++++++++++++++----------
>   2 files changed, 35 insertions(+), 52 deletions(-)
> 
> diff --git a/arch/arm64/kernel/ftrace.c b/arch/arm64/kernel/ftrace.c
> index 06e56b470315..822718eafdb4 100644
> --- a/arch/arm64/kernel/ftrace.c
> +++ b/arch/arm64/kernel/ftrace.c
> @@ -73,10 +73,22 @@ int ftrace_make_call(struct dyn_ftrace *rec, unsigned long addr)
>   
>   	if (offset < -SZ_128M || offset >= SZ_128M) {
>   #ifdef CONFIG_ARM64_MODULE_PLTS
> -		struct plt_entry trampoline, *dst;
>   		struct module *mod;
>   
>   		/*
> +		 * There is only one ftrace trampoline per module. For now,
> +		 * this is not a problem since on arm64, all dynamic ftrace
> +		 * invocations are routed via ftrace_caller(). This will need
> +		 * to be revisited if support for multiple ftrace entry points
> +		 * is added in the future, but for now, the pr_err() below
> +		 * deals with a theoretical issue only.
> +		 */
> +		if (addr != FTRACE_ADDR) {
> +			pr_err("ftrace: far branches to multiple entry points unsupported inside a single module\n");
> +			return -EINVAL;
> +		}
> +
> +		/*
>   		 * On kernels that support module PLTs, the offset between the
>   		 * branch instruction and its target may legally exceed the
>   		 * range of an ordinary relative 'bl' opcode. In this case, we
> @@ -93,46 +105,7 @@ int ftrace_make_call(struct dyn_ftrace *rec, unsigned long addr)
>   		if (WARN_ON(!mod))
>   			return -EINVAL;
>   
> -		/*
> -		 * There is only one ftrace trampoline per module. For now,
> -		 * this is not a problem since on arm64, all dynamic ftrace
> -		 * invocations are routed via ftrace_caller(). This will need
> -		 * to be revisited if support for multiple ftrace entry points
> -		 * is added in the future, but for now, the pr_err() below
> -		 * deals with a theoretical issue only.
> -		 *
> -		 * Note that PLTs are place relative, and plt_entries_equal()
> -		 * checks whether they point to the same target. Here, we need
> -		 * to check if the actual opcodes are in fact identical,
> -		 * regardless of the offset in memory so use memcmp() instead.
> -		 */
> -		dst = mod->arch.ftrace_trampoline;
> -		trampoline = get_plt_entry(addr, dst);
> -		if (memcmp(dst, &trampoline, sizeof(trampoline))) {
> -			if (plt_entry_is_initialized(dst)) {
> -				pr_err("ftrace: far branches to multiple entry points unsupported inside a single module\n");
> -				return -EINVAL;
> -			}
> -
> -			/* point the trampoline to our ftrace entry point */
> -			module_disable_ro(mod);
> -			*dst = trampoline;
> -			module_enable_ro(mod, true);
> -
> -			/*
> -			 * Ensure updated trampoline is visible to instruction
> -			 * fetch before we patch in the branch. Although the
> -			 * architecture doesn't require an IPI in this case,
> -			 * Neoverse-N1 erratum #1542419 does require one
> -			 * if the TLB maintenance in module_enable_ro() is
> -			 * skipped due to rodata_enabled. It doesn't seem worth
> -			 * it to make it conditional given that this is
> -			 * certainly not a fast-path.
> -			 */
> -			flush_icache_range((unsigned long)&dst[0],
> -					   (unsigned long)&dst[1]);
> -		}
> -		addr = (unsigned long)dst;
> +		addr = (unsigned long)mod->arch.ftrace_trampoline;
>   #else /* CONFIG_ARM64_MODULE_PLTS */
>   		return -EINVAL;
>   #endif /* CONFIG_ARM64_MODULE_PLTS */
> diff --git a/arch/arm64/kernel/module.c b/arch/arm64/kernel/module.c
> index 763a86d52fef..5f5bc3b94da7 100644
> --- a/arch/arm64/kernel/module.c
> +++ b/arch/arm64/kernel/module.c
> @@ -9,6 +9,7 @@
>   
>   #include <linux/bitops.h>
>   #include <linux/elf.h>
> +#include <linux/ftrace.h>
>   #include <linux/gfp.h>
>   #include <linux/kasan.h>
>   #include <linux/kernel.h>
> @@ -485,24 +486,33 @@ static const Elf_Shdr *find_section(const Elf_Ehdr *hdr,
>   	return NULL;
>   }
>   
> +int module_init_ftrace_plt(const Elf_Ehdr *hdr,
> +			   const Elf_Shdr *sechdrs,
> +			   struct module *mod)
I think this function can be made static as it is not used anywhere.

Thanks,
Amit Daniel
> +{
> +#if defined(CONFIG_ARM64_MODULE_PLTS) && defined(CONFIG_DYNAMIC_FTRACE)
> +	const Elf_Shdr *s;
> +	struct plt_entry *plt;
> +
> +	s = find_section(hdr, sechdrs, ".text.ftrace_trampoline");
> +	if (!s)
> +		return -ENOEXEC;
> +
> +	plt = (void *)s->sh_addr;
> +	*plt = get_plt_entry(FTRACE_ADDR, plt);
> +	mod->arch.ftrace_trampoline = plt;
> +#endif
> +	return 0;
> +}
> +
>   int module_finalize(const Elf_Ehdr *hdr,
>   		    const Elf_Shdr *sechdrs,
>   		    struct module *me)
>   {
>   	const Elf_Shdr *s;
> -
>   	s = find_section(hdr, sechdrs, ".altinstructions");
>   	if (s)
>   		apply_alternatives_module((void *)s->sh_addr, s->sh_size);
>   
> -#ifdef CONFIG_ARM64_MODULE_PLTS
> -	if (IS_ENABLED(CONFIG_DYNAMIC_FTRACE)) {
> -		s = find_section(hdr, sechdrs, ".text.ftrace_trampoline");
> -		if (!s)
> -			return -ENOEXEC;
> -		me->arch.ftrace_trampoline = (void *)s->sh_addr;
> -	}
> -#endif
> -
> -	return 0;
> +	return module_init_ftrace_plt(hdr, sechdrs, me);
>   }
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
