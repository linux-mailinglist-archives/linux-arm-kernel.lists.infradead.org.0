Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E50716C252
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 14:29:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tKZaNx2P6f+6mdSPyrlVBW0BCNtRbUJRWt86d2fqQ7Y=; b=MMD+auO8mpA/y/J5fJ5vnjgeY
	cnL6OMCdJkqgAIY5JVEZ2t04OSg+i7DIlmKCJ77rmzzhonpakKwoAG2vlSFElaCA2mvmSgA327OWp
	lctS1KBHsY+AZnIYDLr3svtKnm6HJJ9Mnn/UC4+7SZF8HzBkd2tr9MKuFHXuBZmJdLFOe8HwW1gZX
	mhJ35p4Wzw3ekWpdArvnM1btk1tRBMeKmqI5ip/aZ+opk09UxTOLXVmoQiG0Eri9BpSj9Bf48DDPF
	aQZ+eJo+w4egvM/XveNb4TLpvJHNjwiAUr1Q4ERFLwh4Zt/Wn3qru6RX4ufC1HF36wjk8ovR1cItu
	kwZPaheYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6aGv-0003CL-VJ; Tue, 25 Feb 2020 13:29:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6aGk-0003B3-JY
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 13:29:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 429BFFEC;
 Tue, 25 Feb 2020 05:28:58 -0800 (PST)
Received: from [10.162.16.116] (a075563-lin.blr.arm.com [10.162.16.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CE1763F703;
 Tue, 25 Feb 2020 05:28:49 -0800 (PST)
Subject: Re: [PATCH v6 05/11] arm64: elf: Enable BTI at exec based on ELF
 program properties
To: Mark Brown <broonie@kernel.org>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
References: <20200212192906.53366-1-broonie@kernel.org>
 <20200212192906.53366-6-broonie@kernel.org>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <275b9cdb-7835-0dfe-9bea-acb0d8301e36@arm.com>
Date: Tue, 25 Feb 2020 18:58:50 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200212192906.53366-6-broonie@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_052902_731029_69793DF1 
X-CRM114-Status: GOOD (  26.89  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Andrew Jones <drjones@redhat.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-arch@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, Eugene Syromiatnikov <esyr@redhat.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 "H . J . Lu" <hjl.tools@gmail.com>, Yu-cheng Yu <yu-cheng.yu@intel.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, Richard Henderson <richard.henderson@linaro.org>,
 =?UTF-8?Q?Kristina_Mart=c5=a1enko?= <kristina.martsenko@arm.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Sudakshina Das <sudi.das@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2/13/20 12:59 AM, Mark Brown wrote:
> From: Dave Martin <Dave.Martin@arm.com>
> 
> For BTI protection to be as comprehensive as possible, it is
> desirable to have BTI enabled from process startup.  If this is not
> done, the process must use mprotect() to enable BTI for each of its
> executable mappings, but this is painful to do in the libc startup
> code.  It's simpler and more sound to have the kernel do it
> instead.
> 
> To this end, detect BTI support in the executable (or ELF
> interpreter, as appropriate), via the
> NT_GNU_PROGRAM_PROPERTY_TYPE_0 note, and tweak the initial prot
> flags for the process' executable pages to include PROT_BTI as
> appropriate.
> 
> Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
>   arch/arm64/Kconfig           |  3 +++
>   arch/arm64/include/asm/elf.h | 50 ++++++++++++++++++++++++++++++++++++
>   arch/arm64/kernel/process.c  | 19 ++++++++++++++
>   include/linux/elf.h          |  6 ++++-
>   include/uapi/linux/elf.h     |  6 +++++
>   5 files changed, 83 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index e37f4f07b990..d65d226a77ec 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -9,6 +9,7 @@ config ARM64
>   	select ACPI_MCFG if (ACPI && PCI)
>   	select ACPI_SPCR_TABLE if ACPI
>   	select ACPI_PPTT if ACPI
> +	select ARCH_BINFMT_ELF_STATE
>   	select ARCH_CLOCKSOURCE_DATA
>   	select ARCH_HAS_DEBUG_VIRTUAL
>   	select ARCH_HAS_DEVMEM_IS_ALLOWED
> @@ -33,6 +34,7 @@ config ARM64
>   	select ARCH_HAS_SYSCALL_WRAPPER
>   	select ARCH_HAS_TEARDOWN_DMA_OPS if IOMMU_SUPPORT
>   	select ARCH_HAS_TICK_BROADCAST if GENERIC_CLOCKEVENTS_BROADCAST
> +	select ARCH_HAVE_ELF_PROT
>   	select ARCH_HAVE_NMI_SAFE_CMPXCHG
>   	select ARCH_INLINE_READ_LOCK if !PREEMPTION
>   	select ARCH_INLINE_READ_LOCK_BH if !PREEMPTION
> @@ -62,6 +64,7 @@ config ARM64
>   	select ARCH_INLINE_SPIN_UNLOCK_IRQRESTORE if !PREEMPTION
>   	select ARCH_KEEP_MEMBLOCK
>   	select ARCH_USE_CMPXCHG_LOCKREF
> +	select ARCH_USE_GNU_PROPERTY if BINFMT_ELF
>   	select ARCH_USE_QUEUED_RWLOCKS
>   	select ARCH_USE_QUEUED_SPINLOCKS
>   	select ARCH_SUPPORTS_MEMORY_FAILURE
> diff --git a/arch/arm64/include/asm/elf.h b/arch/arm64/include/asm/elf.h
> index b618017205a3..fca3a48e9db5 100644
> --- a/arch/arm64/include/asm/elf.h
> +++ b/arch/arm64/include/asm/elf.h
> @@ -114,7 +114,11 @@
>   
>   #ifndef __ASSEMBLY__
>   
> +#include <uapi/linux/elf.h>
>   #include <linux/bug.h>
> +#include <linux/errno.h>
> +#include <linux/fs.h>
> +#include <linux/types.h>
>   #include <asm/processor.h> /* for signal_minsigstksz, used by ARCH_DLINFO */
>   
>   typedef unsigned long elf_greg_t;
> @@ -224,6 +228,52 @@ extern int aarch32_setup_additional_pages(struct linux_binprm *bprm,
>   
>   #endif /* CONFIG_COMPAT */
>   
> +struct arch_elf_state {
> +	int flags;
> +};
> +
> +#define ARM64_ELF_BTI		(1 << 0)
> +
> +#define INIT_ARCH_ELF_STATE {			\
> +	.flags = 0,				\
> +}
> +
> +static inline int arch_parse_elf_property(u32 type, const void *data,
> +					  size_t datasz, bool compat,
> +					  struct arch_elf_state *arch)
> +{

Does this check here make sense to skip running extra code?
     if (!system_supports_bti())
              return 0;
Although this check is there in arch_validate_prot.

> +	/* No known properties for AArch32 yet */
> +	if (IS_ENABLED(CONFIG_COMPAT) && compat)
> +		return 0;
> +
> +	if (type == GNU_PROPERTY_AARCH64_FEATURE_1_AND) {
> +		const u32 *p = data;
> +
> +		if (datasz != sizeof(*p))
> +			return -ENOEXEC;
> +
> +		if (IS_ENABLED(CONFIG_ARM64_BTI) &&
> +		    (*p & GNU_PROPERTY_AARCH64_FEATURE_1_BTI))
> +			arch->flags |= ARM64_ELF_BTI;
> +	}
> +
> +	return 0;
> +}
> +
> +static inline int arch_elf_pt_proc(void *ehdr, void *phdr,
> +				   struct file *f, bool is_interp,
> +				   struct arch_elf_state *state)
> +{
> +	return 0;
> +}
> +
> +static inline int arch_check_elf(void *ehdr, bool has_interp,
> +				 void *interp_ehdr,
> +				 struct arch_elf_state *state)
> +{
> +	return 0;
> +}
> +
>   #endif /* !__ASSEMBLY__ */
>   
>   #endif
> diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
> index bbb0f0c145f6..7545a3f743c4 100644
> --- a/arch/arm64/kernel/process.c
> +++ b/arch/arm64/kernel/process.c
> @@ -11,6 +11,7 @@
>   
>   #include <linux/compat.h>
>   #include <linux/efi.h>
> +#include <linux/elf.h>
>   #include <linux/export.h>
>   #include <linux/sched.h>
>   #include <linux/sched/debug.h>
> @@ -18,6 +19,7 @@
>   #include <linux/sched/task_stack.h>
>   #include <linux/kernel.h>
>   #include <linux/lockdep.h>
> +#include <linux/mman.h>
>   #include <linux/mm.h>
>   #include <linux/stddef.h>
>   #include <linux/sysctl.h>
> @@ -649,3 +651,20 @@ asmlinkage void __sched arm64_preempt_schedule_irq(void)
>   	if (system_capabilities_finalized())
>   		preempt_schedule_irq();
>   }
> +
> +#ifdef CONFIG_BINFMT_ELF
> +int arch_elf_adjust_prot(int prot, const struct arch_elf_state *state,
> +			 bool has_interp, bool is_interp)
> +{
> +	if (is_interp != has_interp)
> +		return prot;
> +
> +	if (!(state->flags & ARM64_ELF_BTI))
> +		return prot;
> +
> +	if (prot & PROT_EXEC)
> +		prot |= PROT_BTI;
> +
> +	return prot;
> +}
> +#endif
> diff --git a/include/linux/elf.h b/include/linux/elf.h
> index 1b6e8955c597..5d5b0321da0b 100644
> --- a/include/linux/elf.h
> +++ b/include/linux/elf.h
> @@ -63,7 +63,11 @@ extern int elf_coredump_extra_notes_size(void);
>   extern int elf_coredump_extra_notes_write(struct coredump_params *cprm);
>   #endif
>   
> -/* NT_GNU_PROPERTY_TYPE_0 header */
> +/*
> + * NT_GNU_PROPERTY_TYPE_0 header:
> + * Keep this internal until/unless there is an agreed UAPI definition.
> + * pr_type values (GNU_PROPERTY_*) are public and defined in the UAPI header.
> + */
>   struct gnu_property {
>   	u32 pr_type;
>   	u32 pr_datasz;
> diff --git a/include/uapi/linux/elf.h b/include/uapi/linux/elf.h
> index 20900f4496b7..c6dd0215482e 100644
> --- a/include/uapi/linux/elf.h
> +++ b/include/uapi/linux/elf.h
> @@ -448,4 +448,10 @@ typedef struct elf64_note {
>     Elf64_Word n_type;	/* Content type */
>   } Elf64_Nhdr;
>   
> +/* .note.gnu.property types for EM_AARCH64: */
> +#define GNU_PROPERTY_AARCH64_FEATURE_1_AND	0xc0000000
> +
> +/* Bits for GNU_PROPERTY_AARCH64_FEATURE_1_BTI */
> +#define GNU_PROPERTY_AARCH64_FEATURE_1_BTI	(1U << 0)
> +
>   #endif /* _UAPI_LINUX_ELF_H */
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
