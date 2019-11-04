Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD68EE446
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 16:51:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W6MplqTN6IRXZKqnxY0RVn1ECA+U/VnbGwOn6Dg7RX0=; b=Zn4p/GLdh519Id
	V8ll75/aPZISW9Xb3pQoGzG/h+fIaFy/aaOcz4iyq3Xir2GmFPB6VroLJXrA86/efxc04qJn1CYx/
	hW/DsA4vQihNCABiEFQt+5OSqhbNQT6MG5qE3niEr640Yc4QI/rVskCsMUscuyyLcQdTl66LWLp5z
	5V3bBBcyaTeZSY077iB/AV2PZcTejjR0Y5ccPhpJx22MlnlPBq/Esv94GQVqLSowdkD6LY9lcTseV
	3g3o1u0N8yIlorfSCrTheDkSMwCbMpJ+mPDzS+xByKjEV9EYtgeaVsWCFgak7VpTC6n6rs4RnBEzI
	I7ERh+zQH/Kg5ITgecIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRedx-0005aX-I0; Mon, 04 Nov 2019 15:51:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRedp-0005Zr-4p
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 15:51:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 15BE41FB;
 Mon,  4 Nov 2019 07:51:40 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CA20A3F71A;
 Mon,  4 Nov 2019 07:51:37 -0800 (PST)
Date: Mon, 4 Nov 2019 15:51:33 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org, Jessica Yu <jeyu@kernel.org>,
 Helge Deller <deller@gmx.de>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>
Subject: Re: [PATCHv2 2/8] module/ftrace: handle patchable-function-entry
Message-ID: <20191104155132.GA1643@lakrids.cambridge.arm.com>
References: <20191029165832.33606-1-mark.rutland@arm.com>
 <20191029165832.33606-3-mark.rutland@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029165832.33606-3-mark.rutland@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_075141_277736_EF0FB748 
X-CRM114-Status: GOOD (  26.20  )
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
 catalin.marinas@arm.com, duwe@suse.de, linux-kernel@vger.kernel.org,
 rostedt@goodmis.org, takahiro.akashi@linaro.org, will@kernel.org,
 mingo@redhat.com, james.morse@arm.com, jpoimboe@redhat.com,
 amit.kachhap@arm.com, svens@stackframe.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jessica, Helge,

Are you ok with the module and parisc changes, repectively?

The kbuild test robot is happy building this for multiple architectures,
Sven has tested that this works correctly on parisc, and others have
tested other architectures.

I'd like to queue this in the arm64 tree soon if possible.

Thanks,
Mark.

On Tue, Oct 29, 2019 at 04:58:26PM +0000, Mark Rutland wrote:
> When using patchable-function-entry, the compiler will record the
> callsites into a section named "__patchable_function_entries" rather
> than "__mcount_loc". Let's abstract this difference behind a new
> FTRACE_CALLSITE_SECTION, so that architectures don't have to handle this
> explicitly (e.g. with custom module linker scripts).
> 
> As parisc currently handles this explicitly, it is fixed up accordingly,
> with its custom linker script removed. Since FTRACE_CALLSITE_SECTION is
> only defined when DYNAMIC_FTRACE is selected, the parisc module loading
> code is updated to only use the definition in that case. When
> DYNAMIC_FTRACE is not selected, modules shouldn't have this section, so
> this removes some redundant work in that case.
> 
> I built parisc generic-{32,64}bit_defconfig with DYNAMIC_FTRACE enabled,
> and verified that the section made it into the .ko files for modules.
> 
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> Reviewed-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Cc: Helge Deller <deller@gmx.de>
> Cc: Ingo Molnar <mingo@redhat.com>
> Cc: James E.J. Bottomley <James.Bottomley@HansenPartnership.com>
> Cc: Jessica Yu <jeyu@kernel.org>
> Cc: Steven Rostedt <rostedt@goodmis.org>
> Cc: Sven Schnelle <svens@stackframe.org>
> Cc: linux-parisc@vger.kernel.org
> ---
>  arch/parisc/Makefile          |  1 -
>  arch/parisc/kernel/module.c   | 10 +++++++---
>  arch/parisc/kernel/module.lds |  7 -------
>  include/linux/ftrace.h        |  5 +++++
>  kernel/module.c               |  2 +-
>  5 files changed, 13 insertions(+), 12 deletions(-)
>  delete mode 100644 arch/parisc/kernel/module.lds
> 
> diff --git a/arch/parisc/Makefile b/arch/parisc/Makefile
> index 36b834f1c933..dca8f2de8cf5 100644
> --- a/arch/parisc/Makefile
> +++ b/arch/parisc/Makefile
> @@ -60,7 +60,6 @@ KBUILD_CFLAGS += -DCC_USING_PATCHABLE_FUNCTION_ENTRY=1 \
>  		 -DFTRACE_PATCHABLE_FUNCTION_SIZE=$(NOP_COUNT)
>  
>  CC_FLAGS_FTRACE := -fpatchable-function-entry=$(NOP_COUNT),$(shell echo $$(($(NOP_COUNT)-1)))
> -KBUILD_LDS_MODULE += $(srctree)/arch/parisc/kernel/module.lds
>  endif
>  
>  OBJCOPY_FLAGS =-O binary -R .note -R .comment -S
> diff --git a/arch/parisc/kernel/module.c b/arch/parisc/kernel/module.c
> index ac5f34993b53..1c50093e2ebe 100644
> --- a/arch/parisc/kernel/module.c
> +++ b/arch/parisc/kernel/module.c
> @@ -43,6 +43,7 @@
>  #include <linux/elf.h>
>  #include <linux/vmalloc.h>
>  #include <linux/fs.h>
> +#include <linux/ftrace.h>
>  #include <linux/string.h>
>  #include <linux/kernel.h>
>  #include <linux/bug.h>
> @@ -862,7 +863,7 @@ int module_finalize(const Elf_Ehdr *hdr,
>  	const char *strtab = NULL;
>  	const Elf_Shdr *s;
>  	char *secstrings;
> -	int err, symindex = -1;
> +	int symindex = -1;
>  	Elf_Sym *newptr, *oldptr;
>  	Elf_Shdr *symhdr = NULL;
>  #ifdef DEBUG
> @@ -946,11 +947,13 @@ int module_finalize(const Elf_Ehdr *hdr,
>  			/* patch .altinstructions */
>  			apply_alternatives(aseg, aseg + s->sh_size, me->name);
>  
> +#ifdef CONFIG_DYNAMIC_FTRACE
>  		/* For 32 bit kernels we're compiling modules with
>  		 * -ffunction-sections so we must relocate the addresses in the
> -		 *__mcount_loc section.
> +		 *  ftrace callsite section.
>  		 */
> -		if (symindex != -1 && !strcmp(secname, "__mcount_loc")) {
> +		if (symindex != -1 && !strcmp(secname, FTRACE_CALLSITE_SECTION)) {
> +			int err;
>  			if (s->sh_type == SHT_REL)
>  				err = apply_relocate((Elf_Shdr *)sechdrs,
>  							strtab, symindex,
> @@ -962,6 +965,7 @@ int module_finalize(const Elf_Ehdr *hdr,
>  			if (err)
>  				return err;
>  		}
> +#endif
>  	}
>  	return 0;
>  }
> diff --git a/arch/parisc/kernel/module.lds b/arch/parisc/kernel/module.lds
> deleted file mode 100644
> index 1a9a92aca5c8..000000000000
> --- a/arch/parisc/kernel/module.lds
> +++ /dev/null
> @@ -1,7 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0 */
> -
> -SECTIONS {
> -	__mcount_loc : {
> -		*(__patchable_function_entries)
> -	}
> -}
> diff --git a/include/linux/ftrace.h b/include/linux/ftrace.h
> index 9867d90d635e..9141f2263286 100644
> --- a/include/linux/ftrace.h
> +++ b/include/linux/ftrace.h
> @@ -738,6 +738,11 @@ static inline unsigned long get_lock_parent_ip(void)
>  
>  #ifdef CONFIG_FTRACE_MCOUNT_RECORD
>  extern void ftrace_init(void);
> +#ifdef CC_USING_PATCHABLE_FUNCTION_ENTRY
> +#define FTRACE_CALLSITE_SECTION	"__patchable_function_entries"
> +#else
> +#define FTRACE_CALLSITE_SECTION	"__mcount_loc"
> +#endif
>  #else
>  static inline void ftrace_init(void) { }
>  #endif
> diff --git a/kernel/module.c b/kernel/module.c
> index ff2d7359a418..acf7962936c4 100644
> --- a/kernel/module.c
> +++ b/kernel/module.c
> @@ -3222,7 +3222,7 @@ static int find_module_sections(struct module *mod, struct load_info *info)
>  #endif
>  #ifdef CONFIG_FTRACE_MCOUNT_RECORD
>  	/* sechdrs[0].sh_size is always zero */
> -	mod->ftrace_callsites = section_objs(info, "__mcount_loc",
> +	mod->ftrace_callsites = section_objs(info, FTRACE_CALLSITE_SECTION,
>  					     sizeof(*mod->ftrace_callsites),
>  					     &mod->num_ftrace_callsites);
>  #endif
> -- 
> 2.11.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
