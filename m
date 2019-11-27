Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC0C10B1EE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 16:12:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p2EAbMPRyjkWWzhYHpne3V6UCAGf5nUza5DQSgWcrkU=; b=jNlE5/4FhjI07J
	EI0i2X0roTrEErvyv93uD+XncV7CUoQkBNq32xc0LIeJFCaI7CCCN5dbolqwRNEKbKySiUVSsXTkf
	JrHFIRXyGcdkwOMVRqNU9KIfzCcMbHi/biGWQpfL6C6Qod9yodglmiOVr7Twok93YQGhGz9x+1Gtp
	7W1X2efjs4hMUHKjIukXw3FMXeSXldGbk5urU6/DQfpUUfjbAs/6JqP96BpxtYGwC3iecj9lyQlqt
	TB+PUo8DPYW7TUuT8/8kT4rrJ8NHP0kG7zyuQlLUX1nojssSkfUzujfQVcckkU9WKpp2HspULtVNc
	ddWEHP3Ny77hLd36GGag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZyzE-0001Qt-Lp; Wed, 27 Nov 2019 15:12:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZyz2-0001QL-TA
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 15:12:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0118030E;
 Wed, 27 Nov 2019 07:12:00 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3C01E3F68E;
 Wed, 27 Nov 2019 07:11:57 -0800 (PST)
Date: Wed, 27 Nov 2019 15:11:55 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Pavel Tatashin <pasha.tatashin@soleen.com>
Subject: Re: [PATCH v2 3/3] arm64: remove the rest of asm-uaccess.h
Message-ID: <20191127151154.GC51937@lakrids.cambridge.arm.com>
References: <20191122022406.590141-1-pasha.tatashin@soleen.com>
 <20191122022406.590141-4-pasha.tatashin@soleen.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191122022406.590141-4-pasha.tatashin@soleen.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_071201_036312_34537300 
X-CRM114-Status: GOOD (  17.57  )
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
Cc: catalin.marinas@arm.com, stefan@agner.ch, linux@armlinux.org.uk,
 yamada.masahiro@socionext.com, will@kernel.org, boris.ostrovsky@oracle.com,
 sashal@kernel.org, sstabellini@kernel.org, jmorris@namei.org,
 linux-arm-kernel@lists.infradead.org, xen-devel@lists.xenproject.org,
 vladimir.murzin@arm.com, marc.zyngier@arm.com, alexios.zavras@intel.com,
 tglx@linutronix.de, allison@lohutok.net, jgross@suse.com, steve.capper@arm.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, james.morse@arm.com,
 info@metux.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 21, 2019 at 09:24:06PM -0500, Pavel Tatashin wrote:
> The __uaccess_ttbr0_disable and __uaccess_ttbr0_enable,
> are the last two macros defined in asm-uaccess.h.
> 
> Replace them with C wrappers and call C functions from
> kernel_entry and kernel_exit.

For now, please leave those as-is.

I don't think we want to have out-of-line C wrappers in the middle of
the entry assembly where we don't have a complete kernel environment.
The use in entry code can also assume non-preemptibility, while the C
functions have to explcitily disable that.

We can certainly remove the includes of <asm/asm-uaccess.h> elsewhere,
and maybe fold the macros into entry.S if it's not too crowded.

Thanks,
Mark.

> 
> Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
> ---
>  arch/arm64/include/asm/asm-uaccess.h | 38 ----------------------------
>  arch/arm64/kernel/entry.S            |  6 ++---
>  arch/arm64/lib/clear_user.S          |  2 +-
>  arch/arm64/lib/copy_from_user.S      |  2 +-
>  arch/arm64/lib/copy_in_user.S        |  2 +-
>  arch/arm64/lib/copy_to_user.S        |  2 +-
>  arch/arm64/mm/cache.S                |  1 -
>  arch/arm64/mm/context.c              | 12 +++++++++
>  8 files changed, 19 insertions(+), 46 deletions(-)
>  delete mode 100644 arch/arm64/include/asm/asm-uaccess.h
> 
> diff --git a/arch/arm64/include/asm/asm-uaccess.h b/arch/arm64/include/asm/asm-uaccess.h
> deleted file mode 100644
> index 8f763e5b41b1..000000000000
> --- a/arch/arm64/include/asm/asm-uaccess.h
> +++ /dev/null
> @@ -1,38 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0 */
> -#ifndef __ASM_ASM_UACCESS_H
> -#define __ASM_ASM_UACCESS_H
> -
> -#include <asm/alternative.h>
> -#include <asm/kernel-pgtable.h>
> -#include <asm/mmu.h>
> -#include <asm/sysreg.h>
> -#include <asm/assembler.h>
> -
> -/*
> - * User access enabling/disabling macros.
> - */
> -#ifdef CONFIG_ARM64_SW_TTBR0_PAN
> -	.macro	__uaccess_ttbr0_disable, tmp1
> -	mrs	\tmp1, ttbr1_el1			// swapper_pg_dir
> -	bic	\tmp1, \tmp1, #TTBR_ASID_MASK
> -	sub	\tmp1, \tmp1, #RESERVED_TTBR0_SIZE	// reserved_ttbr0 just before swapper_pg_dir
> -	msr	ttbr0_el1, \tmp1			// set reserved TTBR0_EL1
> -	isb
> -	add	\tmp1, \tmp1, #RESERVED_TTBR0_SIZE
> -	msr	ttbr1_el1, \tmp1		// set reserved ASID
> -	isb
> -	.endm
> -
> -	.macro	__uaccess_ttbr0_enable, tmp1, tmp2
> -	get_current_task \tmp1
> -	ldr	\tmp1, [\tmp1, #TSK_TI_TTBR0]	// load saved TTBR0_EL1
> -	mrs	\tmp2, ttbr1_el1
> -	extr    \tmp2, \tmp2, \tmp1, #48
> -	ror     \tmp2, \tmp2, #16
> -	msr	ttbr1_el1, \tmp2		// set the active ASID
> -	isb
> -	msr	ttbr0_el1, \tmp1		// set the non-PAN TTBR0_EL1
> -	isb
> -	.endm
> -#endif
> -#endif
> diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
> index 583f71abbe98..c7b571e6d0f2 100644
> --- a/arch/arm64/kernel/entry.S
> +++ b/arch/arm64/kernel/entry.S
> @@ -22,8 +22,8 @@
>  #include <asm/mmu.h>
>  #include <asm/processor.h>
>  #include <asm/ptrace.h>
> +#include <asm/kernel-pgtable.h>
>  #include <asm/thread_info.h>
> -#include <asm/asm-uaccess.h>
>  #include <asm/unistd.h>
>  
>  /*
> @@ -219,7 +219,7 @@ alternative_else_nop_endif
>  	and	x23, x23, #~PSR_PAN_BIT		// Clear the emulated PAN in the saved SPSR
>  	.endif
>  
> -	__uaccess_ttbr0_disable x21
> +	bl __uaccess_ttbr0_disable_c
>  1:
>  #endif
>  
> @@ -293,7 +293,7 @@ alternative_else_nop_endif
>  	tbnz	x22, #22, 1f			// Skip re-enabling TTBR0 access if the PSR_PAN_BIT is set
>  	.endif
>  
> -	__uaccess_ttbr0_enable x0, x1
> +	bl	__uaccess_ttbr0_enable_c
>  
>  	.if	\el == 0
>  	/*
> diff --git a/arch/arm64/lib/clear_user.S b/arch/arm64/lib/clear_user.S
> index aeafc03e961a..b0b4a86a09e2 100644
> --- a/arch/arm64/lib/clear_user.S
> +++ b/arch/arm64/lib/clear_user.S
> @@ -6,7 +6,7 @@
>   */
>  #include <linux/linkage.h>
>  
> -#include <asm/asm-uaccess.h>
> +#include <asm/alternative.h>
>  #include <asm/assembler.h>
>  
>  	.text
> diff --git a/arch/arm64/lib/copy_from_user.S b/arch/arm64/lib/copy_from_user.S
> index ebb3c06cbb5d..142bc7505518 100644
> --- a/arch/arm64/lib/copy_from_user.S
> +++ b/arch/arm64/lib/copy_from_user.S
> @@ -5,7 +5,7 @@
>  
>  #include <linux/linkage.h>
>  
> -#include <asm/asm-uaccess.h>
> +#include <asm/alternative.h>
>  #include <asm/assembler.h>
>  #include <asm/cache.h>
>  
> diff --git a/arch/arm64/lib/copy_in_user.S b/arch/arm64/lib/copy_in_user.S
> index 3d8153a1ebce..04dc48ca26f7 100644
> --- a/arch/arm64/lib/copy_in_user.S
> +++ b/arch/arm64/lib/copy_in_user.S
> @@ -7,7 +7,7 @@
>  
>  #include <linux/linkage.h>
>  
> -#include <asm/asm-uaccess.h>
> +#include <asm/alternative.h>
>  #include <asm/assembler.h>
>  #include <asm/cache.h>
>  
> diff --git a/arch/arm64/lib/copy_to_user.S b/arch/arm64/lib/copy_to_user.S
> index 357eae2c18eb..8f3218ae88ab 100644
> --- a/arch/arm64/lib/copy_to_user.S
> +++ b/arch/arm64/lib/copy_to_user.S
> @@ -5,7 +5,7 @@
>  
>  #include <linux/linkage.h>
>  
> -#include <asm/asm-uaccess.h>
> +#include <asm/alternative.h>
>  #include <asm/assembler.h>
>  #include <asm/cache.h>
>  
> diff --git a/arch/arm64/mm/cache.S b/arch/arm64/mm/cache.S
> index 408d317a47d2..7940d6ef5da5 100644
> --- a/arch/arm64/mm/cache.S
> +++ b/arch/arm64/mm/cache.S
> @@ -12,7 +12,6 @@
>  #include <asm/assembler.h>
>  #include <asm/cpufeature.h>
>  #include <asm/alternative.h>
> -#include <asm/asm-uaccess.h>
>  
>  /*
>   *	__arch_flush_icache_range(start,end)
> diff --git a/arch/arm64/mm/context.c b/arch/arm64/mm/context.c
> index b5e329fde2dd..4fc32c504dea 100644
> --- a/arch/arm64/mm/context.c
> +++ b/arch/arm64/mm/context.c
> @@ -237,6 +237,18 @@ void check_and_switch_context(struct mm_struct *mm, unsigned int cpu)
>  		cpu_switch_mm(mm->pgd, mm);
>  }
>  
> +#ifdef CONFIG_ARM64_SW_TTBR0_PAN
> +asmlinkage void __uaccess_ttbr0_enable_c(void)
> +{
> +	__uaccess_ttbr0_enable();
> +}
> +
> +asmlinkage void __uaccess_ttbr0_disable_c(void)
> +{
> +	__uaccess_ttbr0_disable();
> +}
> +#endif
> +
>  /* Errata workaround post TTBRx_EL1 update. */
>  asmlinkage void post_ttbr_update_workaround(void)
>  {
> -- 
> 2.24.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
