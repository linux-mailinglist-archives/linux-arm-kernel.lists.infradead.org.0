Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4757DA3431
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 11:40:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VyWhcrUvuM3EKE4c+hO52Zdo8XSAXf2UVObtZ0S7E60=; b=qX9halAA3um9xQ
	hD7TDgQhhpL/Ko3P333Nmylt/s8o73uWExg3cf2eimbYRnWuXTseTyDN16gyypCWsG1jyqJ+f7v3D
	hAD/WvK92KNTQVoq8cEMRm+zqdbVNQb2EYNOIS5qdClzsUUCjU0rRmyGZjbhdvB/l4uH0hZw7f/gA
	r980ziH4KIIcFBBMpYb5nVHIY3t2okl1uxIbJfqp5dPQJlKeeastprxuXwmqKatjBDeTu/95dKoZK
	Xj0W/UekPrnbGjHWNVZxbNJYBR9FrZLmZXhKOL7K4YWMbe4reWfRIMQB4D7SnNO8vlhCEkbTXSCTy
	rU4i+vlUdoN4uAE5rNXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3dOT-00025r-LQ; Fri, 30 Aug 2019 09:40:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3dOB-0001z5-Ge
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 09:40:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3F77E344;
 Fri, 30 Aug 2019 02:40:15 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DFBE43F718;
 Fri, 30 Aug 2019 02:40:13 -0700 (PDT)
Date: Fri, 30 Aug 2019 10:40:11 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH ARM64 v4.4 V3 03/44] arm64: move TASK_* definitions to
 <asm/processor.h>
Message-ID: <20190830094011.GC46475@lakrids.cambridge.arm.com>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
 <687d13717c9736bc33b9128bd09371fc0453fbdd.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <687d13717c9736bc33b9128bd09371fc0453fbdd.1567077734.git.viresh.kumar@linaro.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_024015_666655_81B82C1F 
X-CRM114-Status: GOOD (  17.69  )
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

On Thu, Aug 29, 2019 at 05:03:48PM +0530, Viresh Kumar wrote:
> From: Yury Norov <ynorov@caviumnetworks.com>
> 
> commit eef94a3d09aab437c8c254de942d8b1aa76455e2 upstream.
> 
> ILP32 series [1] introduces the dependency on <asm/is_compat.h> for
> TASK_SIZE macro. Which in turn requires <asm/thread_info.h>, and
> <asm/thread_info.h> include <asm/memory.h>, giving a circular dependency,
> because TASK_SIZE is currently located in <asm/memory.h>.
> 
> In other architectures, TASK_SIZE is defined in <asm/processor.h>, and
> moving TASK_SIZE there fixes the problem.
> 
> Discussion: https://patchwork.kernel.org/patch/9929107/
> 
> [1] https://github.com/norov/linux/tree/ilp32-next
> 
> CC: Will Deacon <will.deacon@arm.com>
> CC: Laura Abbott <labbott@redhat.com>
> Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: James Morse <james.morse@arm.com>
> Suggested-by: Mark Rutland <mark.rutland@arm.com>
> Signed-off-by: Yury Norov <ynorov@caviumnetworks.com>
> Signed-off-by: Will Deacon <will.deacon@arm.com>
> Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>

Reviewed-by: Mark Rutland <mark.rutland@arm.com> [v4.4 backport]

Mark.

> ---
>  arch/arm64/include/asm/memory.h    | 15 ---------------
>  arch/arm64/include/asm/processor.h | 21 +++++++++++++++++++++
>  arch/arm64/kernel/entry.S          |  2 +-
>  3 files changed, 22 insertions(+), 16 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
> index b42b930cc19a..959a1e9188fe 100644
> --- a/arch/arm64/include/asm/memory.h
> +++ b/arch/arm64/include/asm/memory.h
> @@ -43,8 +43,6 @@
>   *		 (VA_BITS - 1))
>   * VA_BITS - the maximum number of bits for virtual addresses.
>   * VA_START - the first kernel virtual address.
> - * TASK_SIZE - the maximum size of a user space task.
> - * TASK_UNMAPPED_BASE - the lower boundary of the mmap VM area.
>   * The module space lives between the addresses given by TASK_SIZE
>   * and PAGE_OFFSET - it must be within 128MB of the kernel text.
>   */
> @@ -58,19 +56,6 @@
>  #define PCI_IO_END		(MODULES_VADDR - SZ_2M)
>  #define PCI_IO_START		(PCI_IO_END - PCI_IO_SIZE)
>  #define FIXADDR_TOP		(PCI_IO_START - SZ_2M)
> -#define TASK_SIZE_64		(UL(1) << VA_BITS)
> -
> -#ifdef CONFIG_COMPAT
> -#define TASK_SIZE_32		UL(0x100000000)
> -#define TASK_SIZE		(test_thread_flag(TIF_32BIT) ? \
> -				TASK_SIZE_32 : TASK_SIZE_64)
> -#define TASK_SIZE_OF(tsk)	(test_tsk_thread_flag(tsk, TIF_32BIT) ? \
> -				TASK_SIZE_32 : TASK_SIZE_64)
> -#else
> -#define TASK_SIZE		TASK_SIZE_64
> -#endif /* CONFIG_COMPAT */
> -
> -#define TASK_UNMAPPED_BASE	(PAGE_ALIGN(TASK_SIZE / 4))
>  
>  /*
>   * Physical vs virtual RAM address space conversion.  These are
> diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
> index d08559528927..75d9ef6c457c 100644
> --- a/arch/arm64/include/asm/processor.h
> +++ b/arch/arm64/include/asm/processor.h
> @@ -19,6 +19,10 @@
>  #ifndef __ASM_PROCESSOR_H
>  #define __ASM_PROCESSOR_H
>  
> +#define TASK_SIZE_64		(UL(1) << VA_BITS)
> +
> +#ifndef __ASSEMBLY__
> +
>  /*
>   * Default implementation of macro that returns current
>   * instruction pointer ("program counter").
> @@ -36,6 +40,22 @@
>  #include <asm/types.h>
>  
>  #ifdef __KERNEL__
> +/*
> + * TASK_SIZE - the maximum size of a user space task.
> + * TASK_UNMAPPED_BASE - the lower boundary of the mmap VM area.
> + */
> +#ifdef CONFIG_COMPAT
> +#define TASK_SIZE_32		UL(0x100000000)
> +#define TASK_SIZE		(test_thread_flag(TIF_32BIT) ? \
> +				TASK_SIZE_32 : TASK_SIZE_64)
> +#define TASK_SIZE_OF(tsk)	(test_tsk_thread_flag(tsk, TIF_32BIT) ? \
> +				TASK_SIZE_32 : TASK_SIZE_64)
> +#else
> +#define TASK_SIZE		TASK_SIZE_64
> +#endif /* CONFIG_COMPAT */
> +
> +#define TASK_UNMAPPED_BASE	(PAGE_ALIGN(TASK_SIZE / 4))
> +
>  #define STACK_TOP_MAX		TASK_SIZE_64
>  #ifdef CONFIG_COMPAT
>  #define AARCH32_VECTORS_BASE	0xffff0000
> @@ -188,4 +208,5 @@ static inline void spin_lock_prefetch(const void *x)
>  
>  int cpu_enable_pan(void *__unused);
>  
> +#endif /* __ASSEMBLY__ */
>  #endif /* __ASM_PROCESSOR_H */
> diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
> index 586326981769..c849be9231bb 100644
> --- a/arch/arm64/kernel/entry.S
> +++ b/arch/arm64/kernel/entry.S
> @@ -27,7 +27,7 @@
>  #include <asm/cpufeature.h>
>  #include <asm/errno.h>
>  #include <asm/esr.h>
> -#include <asm/memory.h>
> +#include <asm/processor.h>
>  #include <asm/thread_info.h>
>  #include <asm/asm-uaccess.h>
>  #include <asm/unistd.h>
> -- 
> 2.21.0.rc0.269.g1a574e7a288b
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
