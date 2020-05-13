Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 174C91D202C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 22:28:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NE+Ec5HeBlN1uI8q60N3AUCvdJK2EcTGY2yEINzNZiA=; b=YnE6t3bLO/PqxF
	YRWXhPrXJMXJuGBWkDET6YrWaEKhjo/dafDWmqFzMIT2sgbm3lDkd6TfUrHIu5Im0TfqbrLTG1uH9
	dohB3+Q8ALWahUV9Uf8MY+Y08EzNfhnFEAlnWyWTSJLRs5EE4gp1HTnFxcEK2qiOjdaa0J0/G31b9
	4xxjkEHOKivCYpjBGEdC7C0gIesxfVPWccihKw/ReXqJwGamlzWMBEGCJAe/wb4jLN/ihrnsPI5pw
	L17CFLI42KkQSOCIywdZ24+JJAMSH5OwVmuugKCGj85C4mRbMwa0yM5DjEWROGfHmL2c8pEQ/HmiV
	kiEsQPaXFET5bZBt8yAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYxzV-0000hc-NE; Wed, 13 May 2020 20:28:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYxzG-0000gk-8m
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 20:28:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7A41131B;
 Wed, 13 May 2020 13:28:12 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 09A873F68F;
 Wed, 13 May 2020 13:28:10 -0700 (PDT)
Date: Wed, 13 May 2020 21:28:08 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Peter Collingbourne <pcc@google.com>
Subject: Re: [PATCH v6] arm64: Expose FAR_EL1 tag bits in sigcontext
Message-ID: <20200513202808.GY21779@arm.com>
References: <20200508020106.136652-1-pcc@google.com>
 <20200513180914.50892-1-pcc@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513180914.50892-1-pcc@google.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_132818_402665_75895D0A 
X-CRM114-Status: GOOD (  42.29  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kostya Serebryany <kcc@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Evgenii Stepanov <eugenis@google.com>, Richard Henderson <rth@twiddle.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 11:09:14AM -0700, Peter Collingbourne wrote:
> The kernel currently clears the tag bits (i.e. bits 56-63) in the fault
> address exposed via siginfo.si_addr and sigcontext.fault_address. However,
> the tag bits may be needed by tools in order to accurately diagnose
> memory errors, such as HWASan [1] or future tools based on the Memory
> Tagging Extension (MTE).
> 
> We should not stop clearing these bits in the existing fault address fields,
> because there may be existing userspace applications that are expecting the tag
> bits to be cleared. Instead, create a fault_addr_top_byte_context in sigcontext
> (similar to the existing esr_context), and store the tag bits of FAR_EL1 there.
> 
> [1] http://clang.llvm.org/docs/HardwareAssistedAddressSanitizerDesign.html
> 
> Signed-off-by: Peter Collingbourne <pcc@google.com>
> ---
> v6:
> - bring back comment about __reserved[]
> 
> v5:
> - add padding to fault_addr_top_byte_context in order to ensure the correct
>   size and preserve sp alignment
> 
> v4:
> - expose only the tag bits in the context instead of the entire FAR_EL1
> - remove mention of the new context from the sigcontext.__reserved[] note
> 
> v3:
> - add documentation to tagged-pointers.rst
> - update comments in sigcontext.h
> 
> v2:
> - revert changes to hw_breakpoint.c
> - rename set_thread_esr to set_thread_far_esr
> 
>  Documentation/arm64/tagged-pointers.rst  | 17 +++++----
>  arch/arm64/include/asm/exception.h       |  2 +-
>  arch/arm64/include/asm/processor.h       |  2 +-
>  arch/arm64/include/uapi/asm/sigcontext.h | 22 ++++++++----
>  arch/arm64/kernel/entry-common.c         |  2 --
>  arch/arm64/kernel/signal.c               | 22 +++++++++++-
>  arch/arm64/mm/fault.c                    | 45 ++++++++++++++----------
>  7 files changed, 77 insertions(+), 35 deletions(-)
> 
> diff --git a/Documentation/arm64/tagged-pointers.rst b/Documentation/arm64/tagged-pointers.rst
> index eab4323609b9..c6e9592a9dea 100644
> --- a/Documentation/arm64/tagged-pointers.rst
> +++ b/Documentation/arm64/tagged-pointers.rst
> @@ -53,12 +53,17 @@ visibility.
>  Preserving tags
>  ---------------
>  
> -Non-zero tags are not preserved when delivering signals. This means that
> -signal handlers in applications making use of tags cannot rely on the
> -tag information for user virtual addresses being maintained for fields
> -inside siginfo_t. One exception to this rule is for signals raised in
> -response to watchpoint debug exceptions, where the tag information will
> -be preserved.
> +Non-zero tags are not preserved in the fault address fields
> +siginfo.si_addr or sigcontext.fault_address when delivering
> +signals. This means that signal handlers in applications making use
> +of tags cannot rely on the tag information for user virtual addresses
> +being maintained in these fields. One exception to this rule is for
> +signals raised in response to watchpoint debug exceptions, where the
> +tag information will be preserved.
> +
> +The fault address tag is preserved in the fault_addr_top_byte field of
> +the signal frame record fault_addr_top_byte_context, which is present
> +for signals raised in response to data aborts and instruction aborts.
>  
>  The architecture prevents the use of a tagged PC, so the upper byte will
>  be set to a sign-extension of bit 55 on exception return.
> diff --git a/arch/arm64/include/asm/exception.h b/arch/arm64/include/asm/exception.h
> index 7a6e81ca23a8..90e772d9b2cd 100644
> --- a/arch/arm64/include/asm/exception.h
> +++ b/arch/arm64/include/asm/exception.h
> @@ -32,7 +32,7 @@ static inline u32 disr_to_esr(u64 disr)
>  }
>  
>  asmlinkage void enter_from_user_mode(void);
> -void do_mem_abort(unsigned long addr, unsigned int esr, struct pt_regs *regs);
> +void do_mem_abort(unsigned long far, unsigned int esr, struct pt_regs *regs);
>  void do_undefinstr(struct pt_regs *regs);
>  asmlinkage void bad_mode(struct pt_regs *regs, int reason, unsigned int esr);
>  void do_debug_exception(unsigned long addr_if_watchpoint, unsigned int esr,
> diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
> index 240fe5e5b720..63185be29ff9 100644
> --- a/arch/arm64/include/asm/processor.h
> +++ b/arch/arm64/include/asm/processor.h
> @@ -144,7 +144,7 @@ struct thread_struct {
>  	void			*sve_state;	/* SVE registers, if any */
>  	unsigned int		sve_vl;		/* SVE vector length */
>  	unsigned int		sve_vl_onexec;	/* SVE vl after next exec */
> -	unsigned long		fault_address;	/* fault info */
> +	unsigned long		fault_address;	/* FAR_EL1 value */
>  	unsigned long		fault_code;	/* ESR_EL1 value */
>  	struct debug_info	debug;		/* debugging */
>  #ifdef CONFIG_ARM64_PTR_AUTH
> diff --git a/arch/arm64/include/uapi/asm/sigcontext.h b/arch/arm64/include/uapi/asm/sigcontext.h
> index 8b0ebce92427..2a3fe3de899d 100644
> --- a/arch/arm64/include/uapi/asm/sigcontext.h
> +++ b/arch/arm64/include/uapi/asm/sigcontext.h
> @@ -44,11 +44,12 @@ struct sigcontext {
>   *
>   *	0x210		fpsimd_context
>   *	 0x10		esr_context
> + *	 0x10		fault_addr_top_byte_context
>   *	0x8a0		sve_context (vl <= 64) (optional)
>   *	 0x20		extra_context (optional)
>   *	 0x10		terminator (null _aarch64_ctx)
>   *
> - *	0x510		(reserved for future allocation)
> + *	0x500		(reserved for future allocation)
>   *
>   * New records that can exceed this space need to be opt-in for userspace, so
>   * that an expanded signal frame is not generated unexpectedly.  The mechanism
> @@ -94,17 +95,26 @@ struct esr_context {
>  	__u64 esr;
>  };
>  
> +/* Top byte of fault address (normally not exposed via si_addr) */
> +#define FAULT_ADDR_TOP_BYTE_MAGIC	0x46544201
> +
> +struct fault_addr_top_byte_context {
> +	struct _aarch64_ctx head;
> +	__u8 fault_addr_top_byte;
> +	__u8 __reserved[7];
> +};
> +

Nit: the name here is a bit cumbersome (obviously bikeshedding...)


For the rest, some of my comments may be bogus -- I haven't dug into
this stuff for a little while!


Anyway:

Do we really get the whole top byte of the address in the FAR?  If so,
fine, but I'm having trouble finding a clear statement in the
architecture one way or the other.  (I didn't attempt to dive into the
pseudocode.)


Also, since we're burning 16 bytes here, I'd prefer if we make this
extensible.  At present the __reserved[7] is unusable because
userspace has no way to know whether it's valid or not.

Options include an additional flag byte (0 for now), or just making
the whole thing a __u64.  In that case we can leave the top byte bits
in their original positions if we want, but it would be a good idea to
include a flag to say that field is valid at all.  (See comments below
on Synchronous external abort.)

So, say, foo_context->fault_info = (esr & (~0ULL << 56)) | TOP_BYTE_VALID.
(with #defines for the bits/fields as appropriate).


>  /*
>   * extra_context: describes extra space in the signal frame for
>   * additional structures that don't fit in sigcontext.__reserved[].
>   *
>   * Note:
>   *
> - * 1) fpsimd_context, esr_context and extra_context must be placed in
> - * sigcontext.__reserved[] if present.  They cannot be placed in the
> - * extra space.  Any other record can be placed either in the extra
> - * space or in sigcontext.__reserved[], unless otherwise specified in
> - * this file.
> + * 1) fpsimd_context, esr_context, fault_addr_top_byte_context and
> + * extra_context must be placed in sigcontext.__reserved[] if present.
> + * They cannot be placed in the extra space.  Any other record can be
> + * placed either in the extra space or in sigcontext.__reserved[],
> + * unless otherwise specified in this file.
>   *
>   * 2) There must not be more than one extra_context.
>   *
> diff --git a/arch/arm64/kernel/entry-common.c b/arch/arm64/kernel/entry-common.c
> index c839b5bf1904..045b4f518836 100644
> --- a/arch/arm64/kernel/entry-common.c
> +++ b/arch/arm64/kernel/entry-common.c
> @@ -22,7 +22,6 @@ static void notrace el1_abort(struct pt_regs *regs, unsigned long esr)
>  	unsigned long far = read_sysreg(far_el1);
>  
>  	local_daif_inherit(regs);
> -	far = untagged_addr(far);
>  	do_mem_abort(far, esr, regs);
>  }
>  NOKPROBE_SYMBOL(el1_abort);
> @@ -104,7 +103,6 @@ static void notrace el0_da(struct pt_regs *regs, unsigned long esr)
>  
>  	user_exit_irqoff();
>  	local_daif_restore(DAIF_PROCCTX);
> -	far = untagged_addr(far);
>  	do_mem_abort(far, esr, regs);
>  }
>  NOKPROBE_SYMBOL(el0_da);
> diff --git a/arch/arm64/kernel/signal.c b/arch/arm64/kernel/signal.c
> index 339882db5a91..baa88dc02e5c 100644
> --- a/arch/arm64/kernel/signal.c
> +++ b/arch/arm64/kernel/signal.c
> @@ -55,6 +55,7 @@ struct rt_sigframe_user_layout {
>  
>  	unsigned long fpsimd_offset;
>  	unsigned long esr_offset;
> +	unsigned long ftb_offset;
>  	unsigned long sve_offset;
>  	unsigned long extra_offset;
>  	unsigned long end_offset;
> @@ -383,6 +384,7 @@ static int parse_user_sigframe(struct user_ctxs *user,
>  			break;
>  
>  		case ESR_MAGIC:
> +		case FAULT_ADDR_TOP_BYTE_MAGIC:
>  			/* ignore */
>  			break;
>  
> @@ -581,6 +583,12 @@ static int setup_sigframe_layout(struct rt_sigframe_user_layout *user,
>  				     sizeof(struct esr_context));
>  		if (err)
>  			return err;
> +
> +		err = sigframe_alloc(
> +			user, &user->ftb_offset,
> +			sizeof(struct fault_addr_top_byte_context));

Nit: inconsistent indentation?

(Mostly just because it makes the change look odd against the hunk
context, but not a big deal.)

> +		if (err)
> +			return err;
>  	}
>  
>  	if (system_supports_sve()) {
> @@ -621,7 +629,8 @@ static int setup_sigframe(struct rt_sigframe_user_layout *user,
>  	__put_user_error(regs->pc, &sf->uc.uc_mcontext.pc, err);
>  	__put_user_error(regs->pstate, &sf->uc.uc_mcontext.pstate, err);
>  
> -	__put_user_error(current->thread.fault_address, &sf->uc.uc_mcontext.fault_address, err);
> +	__put_user_error(untagged_addr(current->thread.fault_address),
> +			 &sf->uc.uc_mcontext.fault_address, err);
>  
>  	err |= __copy_to_user(&sf->uc.uc_sigmask, set, sizeof(*set));
>  
> @@ -641,6 +650,17 @@ static int setup_sigframe(struct rt_sigframe_user_layout *user,
>  		__put_user_error(current->thread.fault_code, &esr_ctx->esr, err);
>  	}
>  
> +	if (err == 0 && user->ftb_offset) {
> +		struct fault_addr_top_byte_context __user *ftb_ctx =
> +			apply_user_offset(user, user->ftb_offset);
> +
> +		__put_user_error(FAULT_ADDR_TOP_BYTE_MAGIC,
> +				 &ftb_ctx->head.magic, err);
> +		__put_user_error(sizeof(*ftb_ctx), &ftb_ctx->head.size, err);
> +		__put_user_error(current->thread.fault_address >> 56,
> +				 &ftb_ctx->fault_addr_top_byte, err);
> +	}
> +

How do we handle the fact that the top byte of FAR is sometimes UNKNOWN?

For Synchronous external aborts in particular, those bits are documented
as UNKNOWN, but I don't see any special handling,  There may be other
cases I haven't spotted.

For preference we can omit this record entirely if we don't have any
information we can report, but certainly we shouldn't expose UNKNOWN
bits.


[ Aside:

Also, what if we're not reporting a memory abort at all?  Does
thread.fault_address just contain junk from the last fault?  I see
nothing anywhere that cleans this up.  (This is historical and not
your fault, but it would be good to close this down while we're about
it.)


Hmmm, looking at the code I think we probably leak fault_address etc.
across execve() too, so it may even be stale junk from an old process
:/

Maybe I just confused myself. 

End aside. ]


Apart from these issues, the actual code looks reasonable.

Cheers
---Dave


>  	/* Scalable Vector Extension state, if present */
>  	if (system_supports_sve() && err == 0 && user->sve_offset) {
>  		struct sve_context __user *sve_ctx =
> diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
> index c9cedc0432d2..39bbaa05f162 100644
> --- a/arch/arm64/mm/fault.c
> +++ b/arch/arm64/mm/fault.c
> @@ -41,7 +41,7 @@
>  #include <asm/traps.h>
>  
>  struct fault_info {
> -	int	(*fn)(unsigned long addr, unsigned int esr,
> +	int	(*fn)(unsigned long far, unsigned int esr,
>  		      struct pt_regs *regs);
>  	int	sig;
>  	int	code;
> @@ -320,9 +320,11 @@ static void __do_kernel_fault(unsigned long addr, unsigned int esr,
>  	die_kernel_fault(msg, addr, esr, regs);
>  }
>  
> -static void set_thread_esr(unsigned long address, unsigned int esr)
> +static void set_thread_far_esr(unsigned long far, unsigned int esr)
>  {
> -	current->thread.fault_address = address;
> +	unsigned long addr = untagged_addr(far);
> +
> +	current->thread.fault_address = far;
>  
>  	/*
>  	 * If the faulting address is in the kernel, we must sanitize the ESR.
> @@ -336,7 +338,7 @@ static void set_thread_esr(unsigned long address, unsigned int esr)
>  	 * type", so we ignore this wrinkle and just return the translation
>  	 * fault.)
>  	 */
> -	if (!is_ttbr0_addr(current->thread.fault_address)) {
> +	if (!is_ttbr0_addr(addr)) {
>  		switch (ESR_ELx_EC(esr)) {
>  		case ESR_ELx_EC_DABT_LOW:
>  			/*
> @@ -377,8 +379,11 @@ static void set_thread_esr(unsigned long address, unsigned int esr)
>  	current->thread.fault_code = esr;
>  }
>  
> -static void do_bad_area(unsigned long addr, unsigned int esr, struct pt_regs *regs)
> +static void do_bad_area(unsigned long far, unsigned int esr,
> +			struct pt_regs *regs)
>  {
> +	unsigned long addr = untagged_addr(far);
> +
>  	/*
>  	 * If we are in kernel mode at this point, we have no context to
>  	 * handle this fault with.
> @@ -386,7 +391,7 @@ static void do_bad_area(unsigned long addr, unsigned int esr, struct pt_regs *re
>  	if (user_mode(regs)) {
>  		const struct fault_info *inf = esr_to_fault_info(esr);
>  
> -		set_thread_esr(addr, esr);
> +		set_thread_far_esr(far, esr);
>  		arm64_force_sig_fault(inf->sig, inf->code, (void __user *)addr,
>  				      inf->name);
>  	} else {
> @@ -439,7 +444,7 @@ static bool is_write_abort(unsigned int esr)
>  	return (esr & ESR_ELx_WNR) && !(esr & ESR_ELx_CM);
>  }
>  
> -static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
> +static int __kprobes do_page_fault(unsigned long far, unsigned int esr,
>  				   struct pt_regs *regs)
>  {
>  	const struct fault_info *inf;
> @@ -447,6 +452,7 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
>  	vm_fault_t fault, major = 0;
>  	unsigned long vm_flags = VM_ACCESS_FLAGS;
>  	unsigned int mm_flags = FAULT_FLAG_DEFAULT;
> +	unsigned long addr = untagged_addr(far);
>  
>  	if (kprobe_page_fault(regs, esr))
>  		return 0;
> @@ -570,7 +576,7 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
>  	}
>  
>  	inf = esr_to_fault_info(esr);
> -	set_thread_esr(addr, esr);
> +	set_thread_far_esr(far, esr);
>  	if (fault & VM_FAULT_SIGBUS) {
>  		/*
>  		 * We had some memory, but were unable to successfully fix up
> @@ -605,30 +611,32 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
>  	return 0;
>  }
>  
> -static int __kprobes do_translation_fault(unsigned long addr,
> +static int __kprobes do_translation_fault(unsigned long far,
>  					  unsigned int esr,
>  					  struct pt_regs *regs)
>  {
> +	unsigned long addr = untagged_addr(far);
> +
>  	if (is_ttbr0_addr(addr))
> -		return do_page_fault(addr, esr, regs);
> +		return do_page_fault(far, esr, regs);
>  
> -	do_bad_area(addr, esr, regs);
> +	do_bad_area(far, esr, regs);
>  	return 0;
>  }
>  
> -static int do_alignment_fault(unsigned long addr, unsigned int esr,
> +static int do_alignment_fault(unsigned long far, unsigned int esr,
>  			      struct pt_regs *regs)
>  {
> -	do_bad_area(addr, esr, regs);
> +	do_bad_area(far, esr, regs);
>  	return 0;
>  }
>  
> -static int do_bad(unsigned long addr, unsigned int esr, struct pt_regs *regs)
> +static int do_bad(unsigned long far, unsigned int esr, struct pt_regs *regs)
>  {
>  	return 1; /* "fault" */
>  }
>  
> -static int do_sea(unsigned long addr, unsigned int esr, struct pt_regs *regs)
> +static int do_sea(unsigned long far, unsigned int esr, struct pt_regs *regs)
>  {
>  	const struct fault_info *inf;
>  	void __user *siaddr;
> @@ -644,7 +652,7 @@ static int do_sea(unsigned long addr, unsigned int esr, struct pt_regs *regs)
>  	if (esr & ESR_ELx_FnV)
>  		siaddr = NULL;
>  	else
> -		siaddr  = (void __user *)addr;
> +		siaddr  = (void __user *)untagged_addr(far);
>  	arm64_notify_die(inf->name, regs, inf->sig, inf->code, siaddr, esr);
>  
>  	return 0;
> @@ -717,11 +725,12 @@ static const struct fault_info fault_info[] = {
>  	{ do_bad,		SIGKILL, SI_KERNEL,	"unknown 63"			},
>  };
>  
> -void do_mem_abort(unsigned long addr, unsigned int esr, struct pt_regs *regs)
> +void do_mem_abort(unsigned long far, unsigned int esr, struct pt_regs *regs)
>  {
>  	const struct fault_info *inf = esr_to_fault_info(esr);
> +	unsigned long addr = untagged_addr(far);
>  
> -	if (!inf->fn(addr, esr, regs))
> +	if (!inf->fn(far, esr, regs))
>  		return;
>  
>  	if (!user_mode(regs)) {
> -- 
> 2.26.2.645.ge9eca65c58-goog
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
