Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E35170AB7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 22:43:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KGl3ug2VzSyK5FnpmgUzWW7D9hTrrBk7kzWPr+8gQmI=; b=h94M8SPsHbxkj5
	S6iTtzW3bWVywvV3+mPi4qiNRztKiTtoGVRnia7rofyqiiQMrfHcf5zdy/4Nt9hXQexLD0uBvgA1I
	g+LEhi2OE8e8ptnQx1KHlUI6LpEo9OgNa5mfCchm1zFSNQ/77kEGoy5gCtzJ/9SicSvObrEsHhb9l
	3UEoxY1ZGksFaUia07RcfofLnIP76nlZ6dYSB4YUMljO7JVfV0MOg5gL84T6a69FrPwuYu4P2ROWK
	QQG5JgZlrYdnapel47LcGHMf27GKdmD3xIgCcXxXx8MJllSQGGGXC+BmrvT1N1WgRpPz9U5IfcJ7E
	Gp1gDc+bsINK0SQdUFoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j74Sp-0004dv-3J; Wed, 26 Feb 2020 21:43:31 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j74Se-0004db-4m
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 21:43:21 +0000
Received: by mail-pl1-x642.google.com with SMTP id ay11so239673plb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 13:43:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=hgnKizZ1LNZ1/7A/IJ99LWJR1HO7jmNhhyis79Qnr60=;
 b=imPKf9umLzwdYDhQggEBl9e4ToNBXNNVON+kK1TJ+uk0+ZLljXquYPffKziNovmy2I
 jikF8Stj2PXeTpynKemInXah8AkuFiUlmAlruPDpfecS8D7U1+/EtolYDekkiiyJzR0L
 xQVaChv9CeeV5BH+OJ0LpRon0QJEihFy8wlUo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=hgnKizZ1LNZ1/7A/IJ99LWJR1HO7jmNhhyis79Qnr60=;
 b=PMInD9HKJR550wGHdvLPH+K6HyX10lelrY569dWlmZ1DpmDCs6BNm9y11jPnoqleSd
 iMt70E4Mc3tsL4TwMI/X2mGEAnM19yXl2uJFj0DBicBarDxIzxa6vKGOwy4bx7yUzlLd
 UCDMIY4VWtA8wCas4hF+3jv0aLMCVzBNDEOR9aMtTj2Dh2hcPI18ct4BUZDht1A+5WfG
 LKcRL09qkaQO46sIS68Ot+rKcLsITjHWvf4D6AHhcMcXCtk4Bi6NQ40/dBsh4FtrjQCO
 D62Z4XGxOoOQnwq/0ccewlMQmHunaqkmYLNky3DccxgghJAgQDl4SqH+2gTP7GWKaFzu
 SCwA==
X-Gm-Message-State: APjAAAX/gUU8dHeLVAV5oBtmEMPnlZVefSmvO3Qn5mnMrHMUs0aa2ZVU
 3b877QEPt6SBRABCEYWwE7+gTA==
X-Google-Smtp-Source: APXvYqwGwPpLn6uZNtEIwvru0jb8ckaRTjGt+8bMvcl7Mr+2qZiRBDB62qZdspDVpqRhvm6+PUN88w==
X-Received: by 2002:a17:902:6ac7:: with SMTP id
 i7mr1238742plt.314.1582753399559; 
 Wed, 26 Feb 2020 13:43:19 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id q6sm4042454pfh.127.2020.02.26.13.43.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 13:43:18 -0800 (PST)
Date: Wed, 26 Feb 2020 13:43:17 -0800
From: Kees Cook <keescook@chromium.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v7 05/11] arm64: elf: Enable BTI at exec based on ELF
 program properties
Message-ID: <202002261343.1D0FC8DBE@keescook>
References: <20200226155714.43937-1-broonie@kernel.org>
 <20200226155714.43937-6-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200226155714.43937-6-broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_134320_184501_151F2AC4 
X-CRM114-Status: GOOD (  24.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Andrew Jones <drjones@redhat.com>,
 Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Eugene Syromiatnikov <esyr@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, "H . J . Lu " <hjl.tools@gmail.com>,
 Yu-cheng Yu <yu-cheng.yu@intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 26, 2020 at 03:57:08PM +0000, Mark Brown wrote:
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

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
>  arch/arm64/Kconfig           |  3 +++
>  arch/arm64/include/asm/elf.h | 51 ++++++++++++++++++++++++++++++++++++
>  arch/arm64/kernel/process.c  | 19 ++++++++++++++
>  include/uapi/linux/elf.h     |  6 +++++
>  4 files changed, 79 insertions(+)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index e37f4f07b990..d65d226a77ec 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -9,6 +9,7 @@ config ARM64
>  	select ACPI_MCFG if (ACPI && PCI)
>  	select ACPI_SPCR_TABLE if ACPI
>  	select ACPI_PPTT if ACPI
> +	select ARCH_BINFMT_ELF_STATE
>  	select ARCH_CLOCKSOURCE_DATA
>  	select ARCH_HAS_DEBUG_VIRTUAL
>  	select ARCH_HAS_DEVMEM_IS_ALLOWED
> @@ -33,6 +34,7 @@ config ARM64
>  	select ARCH_HAS_SYSCALL_WRAPPER
>  	select ARCH_HAS_TEARDOWN_DMA_OPS if IOMMU_SUPPORT
>  	select ARCH_HAS_TICK_BROADCAST if GENERIC_CLOCKEVENTS_BROADCAST
> +	select ARCH_HAVE_ELF_PROT
>  	select ARCH_HAVE_NMI_SAFE_CMPXCHG
>  	select ARCH_INLINE_READ_LOCK if !PREEMPTION
>  	select ARCH_INLINE_READ_LOCK_BH if !PREEMPTION
> @@ -62,6 +64,7 @@ config ARM64
>  	select ARCH_INLINE_SPIN_UNLOCK_IRQRESTORE if !PREEMPTION
>  	select ARCH_KEEP_MEMBLOCK
>  	select ARCH_USE_CMPXCHG_LOCKREF
> +	select ARCH_USE_GNU_PROPERTY if BINFMT_ELF
>  	select ARCH_USE_QUEUED_RWLOCKS
>  	select ARCH_USE_QUEUED_SPINLOCKS
>  	select ARCH_SUPPORTS_MEMORY_FAILURE
> diff --git a/arch/arm64/include/asm/elf.h b/arch/arm64/include/asm/elf.h
> index b618017205a3..c72e381fa86d 100644
> --- a/arch/arm64/include/asm/elf.h
> +++ b/arch/arm64/include/asm/elf.h
> @@ -114,7 +114,11 @@
>  
>  #ifndef __ASSEMBLY__
>  
> +#include <uapi/linux/elf.h>
>  #include <linux/bug.h>
> +#include <linux/errno.h>
> +#include <linux/fs.h>
> +#include <linux/types.h>
>  #include <asm/processor.h> /* for signal_minsigstksz, used by ARCH_DLINFO */
>  
>  typedef unsigned long elf_greg_t;
> @@ -224,6 +228,53 @@ extern int aarch32_setup_additional_pages(struct linux_binprm *bprm,
>  
>  #endif /* CONFIG_COMPAT */
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
> +		    system_supports_bti() &&
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
>  #endif /* !__ASSEMBLY__ */
>  
>  #endif
> diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
> index 00626057a384..b8e3faa8d406 100644
> --- a/arch/arm64/kernel/process.c
> +++ b/arch/arm64/kernel/process.c
> @@ -11,6 +11,7 @@
>  
>  #include <linux/compat.h>
>  #include <linux/efi.h>
> +#include <linux/elf.h>
>  #include <linux/export.h>
>  #include <linux/sched.h>
>  #include <linux/sched/debug.h>
> @@ -18,6 +19,7 @@
>  #include <linux/sched/task_stack.h>
>  #include <linux/kernel.h>
>  #include <linux/lockdep.h>
> +#include <linux/mman.h>
>  #include <linux/mm.h>
>  #include <linux/stddef.h>
>  #include <linux/sysctl.h>
> @@ -654,3 +656,20 @@ asmlinkage void __sched arm64_preempt_schedule_irq(void)
>  	if (system_capabilities_finalized())
>  		preempt_schedule_irq();
>  }
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
> diff --git a/include/uapi/linux/elf.h b/include/uapi/linux/elf.h
> index 20900f4496b7..c6dd0215482e 100644
> --- a/include/uapi/linux/elf.h
> +++ b/include/uapi/linux/elf.h
> @@ -448,4 +448,10 @@ typedef struct elf64_note {
>    Elf64_Word n_type;	/* Content type */
>  } Elf64_Nhdr;
>  
> +/* .note.gnu.property types for EM_AARCH64: */
> +#define GNU_PROPERTY_AARCH64_FEATURE_1_AND	0xc0000000
> +
> +/* Bits for GNU_PROPERTY_AARCH64_FEATURE_1_BTI */
> +#define GNU_PROPERTY_AARCH64_FEATURE_1_BTI	(1U << 0)
> +
>  #endif /* _UAPI_LINUX_ELF_H */
> -- 
> 2.20.1
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
