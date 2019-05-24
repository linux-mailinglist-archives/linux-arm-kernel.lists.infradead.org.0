Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE6A29872
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 15:02:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mRl3iT/FUrDt8FUth0MRFGl63ze53oxqRCAEwBl0jTQ=; b=Ew5HSq+jrfXPvo
	MzvRd2mFBMvfw9MYSFNtXTnt5r/Pn3obUqqc+SrC8qZkz2iBeZLaSohIA4j74bXTSrSa9hQs+eM1V
	XTNvL+h7oiw8g9QbJoW/7RrARoT0Dhtu+w1PK9GHlCEKHU2ZiuwDqj2a99DtgB6RsYF1lviaRDKzV
	pZymAQUP2M5GrxmbgXqzEQ9W1Yd4knHQI4UAcWaCz//ox1xLkRA2SAE76viblof1e3eLcqE3vrPcw
	Brv6kbb+03CjkTlIEeSe+1pufD4DIb4zPKl7p6OPMbhei6hjcckH7P7/ZhGAPqz+DlAsKrkA2THc/
	G9nyz3XDaqnPFbb9nj6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU9qV-0006C3-Fd; Fri, 24 May 2019 13:02:51 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU9qP-0006Be-3I
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 13:02:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2A794A78;
 Fri, 24 May 2019 06:02:44 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9D5D53F703;
 Fri, 24 May 2019 06:02:41 -0700 (PDT)
Date: Fri, 24 May 2019 14:02:17 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH 4/8] arm64: Basic Branch Target Identification support
Message-ID: <20190524130217.GA15566@lakrids.cambridge.arm.com>
References: <1558693533-13465-1-git-send-email-Dave.Martin@arm.com>
 <1558693533-13465-5-git-send-email-Dave.Martin@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558693533-13465-5-git-send-email-Dave.Martin@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_060245_153339_BD0CA8C8 
X-CRM114-Status: GOOD (  20.54  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arch@vger.kernel.org, "H.J. Lu" <hjl.tools@gmail.com>,
 Yu-cheng Yu <yu-cheng.yu@intel.com>, Andrew Jones <drjones@redhat.com>,
 Paul Elliott <paul.elliott@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 Richard Henderson <richard.henderson@linaro.org>, linux-kernel@vger.kernel.org,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Sudakshina Das <sudi.das@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dave,

This generally looks good, but I have a few comments below.

On Fri, May 24, 2019 at 11:25:29AM +0100, Dave Martin wrote:
> +#define arch_calc_vm_prot_bits(prot, pkey) arm64_calc_vm_prot_bits(prot)
> +static inline unsigned long arm64_calc_vm_prot_bits(unsigned long prot)
> +{
> +	if (system_supports_bti() && (prot & PROT_BTI_GUARDED))
> +		return VM_ARM64_GP;
> +
> +	return 0;
> +}
> +
> +#define arch_vm_get_page_prot(vm_flags) arm64_vm_get_page_prot(vm_flags)
> +static inline pgprot_t arm64_vm_get_page_prot(unsigned long vm_flags)
> +{
> +	return (vm_flags & VM_ARM64_GP) ? __pgprot(PTE_GP) : __pgprot(0);
> +}

While the architectural name for the PTE bit is GP, it might make more
sense to call the vm flag VM_ARM64_BTI, since people are more likely to
recognise BTI than GP as a mnemonic.

Not a big deal either way, though.

[...]

> diff --git a/arch/arm64/include/asm/ptrace.h b/arch/arm64/include/asm/ptrace.h
> index b2de329..b868ef11 100644
> --- a/arch/arm64/include/asm/ptrace.h
> +++ b/arch/arm64/include/asm/ptrace.h
> @@ -41,6 +41,7 @@
>  
>  /* Additional SPSR bits not exposed in the UABI */
>  #define PSR_IL_BIT		(1 << 20)
> +#define PSR_BTYPE_CALL		(2 << 10)

I thought BTYPE was a 2-bit field, so isn't there at leat one other
value to have a mnemonic for?

Is it an enumeration or a bitmask?

>  #endif /* _UAPI__ASM_HWCAP_H */
> diff --git a/arch/arm64/include/uapi/asm/mman.h b/arch/arm64/include/uapi/asm/mman.h
> new file mode 100644
> index 0000000..4776b43
> --- /dev/null
> +++ b/arch/arm64/include/uapi/asm/mman.h
> @@ -0,0 +1,9 @@
> +/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
> +#ifndef _UAPI__ASM_MMAN_H
> +#define _UAPI__ASM_MMAN_H
> +
> +#include <asm-generic/mman.h>
> +
> +#define PROT_BTI_GUARDED	0x10		/* BTI guarded page */

From prior discussions, I thought this would be PROT_BTI, without the
_GUARDED suffix. Do we really need that?

AFAICT, all other PROT_* definitions only have a single underscore, and
the existing arch-specific flags are PROT_ADI on sparc, and PROT_SAO on
powerpc.

[...]

> diff --git a/arch/arm64/kernel/ptrace.c b/arch/arm64/kernel/ptrace.c
> index b82e0a9..3717b06 100644
> --- a/arch/arm64/kernel/ptrace.c
> +++ b/arch/arm64/kernel/ptrace.c
> @@ -1860,7 +1860,7 @@ void syscall_trace_exit(struct pt_regs *regs)
>   */
>  #define SPSR_EL1_AARCH64_RES0_BITS \
>  	(GENMASK_ULL(63, 32) | GENMASK_ULL(27, 25) | GENMASK_ULL(23, 22) | \
> -	 GENMASK_ULL(20, 13) | GENMASK_ULL(11, 10) | GENMASK_ULL(5, 5))
> +	 GENMASK_ULL(20, 13) | GENMASK_ULL(5, 5))
>  #define SPSR_EL1_AARCH32_RES0_BITS \
>  	(GENMASK_ULL(63, 32) | GENMASK_ULL(22, 22) | GENMASK_ULL(20, 20))

Phew; I was worried this would be missed!

[...]

> @@ -741,6 +741,11 @@ static void setup_return(struct pt_regs *regs, struct k_sigaction *ka,
>  	regs->regs[29] = (unsigned long)&user->next_frame->fp;
>  	regs->pc = (unsigned long)ka->sa.sa_handler;
>  
> +	if (system_supports_bti()) {
> +		regs->pstate &= ~(regs->pstate & PSR_BTYPE_MASK);

Nit: that can be:

		regs->pstate &= ~PSR_BTYPE_MASK;

> diff --git a/arch/arm64/kernel/syscall.c b/arch/arm64/kernel/syscall.c
> index 5610ac0..85b456b 100644
> --- a/arch/arm64/kernel/syscall.c
> +++ b/arch/arm64/kernel/syscall.c
> @@ -66,6 +66,7 @@ static void el0_svc_common(struct pt_regs *regs, int scno, int sc_nr,
>  	unsigned long flags = current_thread_info()->flags;
>  
>  	regs->orig_x0 = regs->regs[0];
> +	regs->pstate &= ~(regs->pstate & PSR_BTYPE_MASK);

Likewise:

	regs->pstate &= ~PSR_BTYPE_MASK;

... though I don't understand why that would matter to syscalls, nor how
those bits could ever be set given we had to execute an SVC to get here.

What am I missing?

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
