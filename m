Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E5044EC19
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 17:34:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N7AjxqMfXKC+ngqNmDAD4QVKikzhzYJ+7Qwm4lEVAJA=; b=PCLWymBR4KpOiy
	0EcG2L/FjOlL4UqPiOWKYppTaY1clhoZf6aF+UXvZuWhwlgfvzjy5N8aabmnOvxjY2hR0R29nGaFq
	/CP9Gp9eKIWzlbfz6iNusuUn8G7wpNQ/R9nwbHch9/AeDuDfPL7AB9ZuFOft59qXetyRsrY7tbNl3
	N0VBoHnThJYp1GV1DefW5dubVLt8A7W4PzF8u8Rq/WAosj/2xW5gOjolgB6poa0fJqSHIdgk2w8yV
	V4gXzD+4kF9fC1LECI25EGcYNC2sbaJFtKV0MAwmSERDKnQ6L97zK1Wt1nRJIJ+RkC/zrWFTwCWKd
	aiE830hqEX9xBZwrLsiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heLYv-0001Vv-7E; Fri, 21 Jun 2019 15:34:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heLXV-0000ZE-48
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 15:33:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7BE5C1515;
 Fri, 21 Jun 2019 08:33:20 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 426953F575;
 Fri, 21 Jun 2019 08:33:19 -0700 (PDT)
Date: Fri, 21 Jun 2019 16:33:16 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Julien Grall <julien.grall@arm.com>
Subject: Re: [RFC PATCH v2 7/8] arm64/sve: Don't disable SVE on syscalls return
Message-ID: <20190621153316.GC2790@e103592.cambridge.arm.com>
References: <20190613161656.20765-1-julien.grall@arm.com>
 <20190613161656.20765-8-julien.grall@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613161656.20765-8-julien.grall@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_083321_364837_A2A63CAD 
X-CRM114-Status: GOOD (  41.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Anton.Kirilov@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 oleg@redhat.com, zhang.lei@jp.fujitsu.com, alex.bennee@linaro.org,
 linux-arm-kernel@lists.infradead.org, Daniel.Kiss@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 05:16:55PM +0100, Julien Grall wrote:
> Per the syscalls ABI, SVE registers will be unknown after a syscalls. In

This patch is quite hard to understand, though this is more down to the
code being modified than the patch itself.  So, I may ask some stupid
questions...

In particular, we now have up to 8 task states (all the combinations of
TIF_FOREIGN_FPSTATE, TIF_SVE and TIF_SVE_NEEDS_FLUSH).  Sketching out
the state machine and highlighting any states that we consider invalid
may be a useful exercise, but I've not attempted that yes.

Nit: "after a syscall"

(Inessential to fix these pedantic commit message nits, but probably
worth addressing if respinning the patch.)

> practice the kernel will disable SVE and zero all the registers but the
> first 128-bits of the vector on the next SVE instructions. In workload

Nit: "instruction"
Nit: "In workloads" or "In a workload"

> mixing SVE and syscall, this will result of 2 entry/exit to the kernel

Nit: "and syscalls"
Nit: "will result in"

> per exit.

"2 [...] exit [...] per exit"?  I can see what you're getting at, but I
wonder if this can be reworded, say:

"[...] will result in at least one extra kernel entry/exit per syscall".

> To avoid the second entry/exit, a new flag TIF_SVE_NEEDS_FLUSH is
> introduced to mark a task that needs to flush the SVE context on
> return to userspace.
> 
> On entry to a syscall, the flag TIF_SVE will still be cleared. It will
> be restored on return to userspace once the SVE state has been flushed.
> This means that if a task requires to synchronize the FP state during a
> syscall (e.g context switch, signal), only the FPSIMD registers will be
> saved. When the task is rescheduled, the SVE state will be loaded from
> FPSIMD state.
> 
> Signed-off-by: Julien Grall <julien.grall@arm.com>
> 
> ---
>     Changes in v2:
>         - Fix typo in a comment
> ---
>  arch/arm64/include/asm/thread_info.h |  5 ++++-
>  arch/arm64/kernel/fpsimd.c           | 32 ++++++++++++++++++++++++++++++++
>  arch/arm64/kernel/process.c          |  1 +
>  arch/arm64/kernel/ptrace.c           |  7 +++++++
>  arch/arm64/kernel/signal.c           | 14 +++++++++++++-
>  arch/arm64/kernel/syscall.c          | 13 +++++--------
>  6 files changed, 62 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/thread_info.h b/arch/arm64/include/asm/thread_info.h
> index f1d032be628a..d87bcd80cb0f 100644
> --- a/arch/arm64/include/asm/thread_info.h
> +++ b/arch/arm64/include/asm/thread_info.h
> @@ -86,6 +86,7 @@ void arch_release_task_struct(struct task_struct *tsk);
>  #define TIF_FOREIGN_FPSTATE	3	/* CPU's FP state is not current's */
>  #define TIF_UPROBE		4	/* uprobe breakpoint or singlestep */
>  #define TIF_FSCHECK		5	/* Check FS is USER_DS on return */
> +#define TIF_SVE_NEEDS_FLUSH	6	/* Flush SVE registers on return */
>  #define TIF_NOHZ		7
>  #define TIF_SYSCALL_TRACE	8
>  #define TIF_SYSCALL_AUDIT	9
> @@ -113,10 +114,12 @@ void arch_release_task_struct(struct task_struct *tsk);
>  #define _TIF_FSCHECK		(1 << TIF_FSCHECK)
>  #define _TIF_32BIT		(1 << TIF_32BIT)
>  #define _TIF_SVE		(1 << TIF_SVE)
> +#define _TIF_SVE_NEEDS_FLUSH	(1 << TIF_SVE_NEEDS_FLUSH)
>  
>  #define _TIF_WORK_MASK		(_TIF_NEED_RESCHED | _TIF_SIGPENDING | \
>  				 _TIF_NOTIFY_RESUME | _TIF_FOREIGN_FPSTATE | \
> -				 _TIF_UPROBE | _TIF_FSCHECK)
> +				 _TIF_UPROBE | _TIF_FSCHECK | \
> +				 _TIF_SVE_NEEDS_FLUSH)
>  
>  #define _TIF_SYSCALL_WORK	(_TIF_SYSCALL_TRACE | _TIF_SYSCALL_AUDIT | \
>  				 _TIF_SYSCALL_TRACEPOINT | _TIF_SECCOMP | \
> diff --git a/arch/arm64/kernel/fpsimd.c b/arch/arm64/kernel/fpsimd.c
> index 92f418e4f989..41ab73b12f4a 100644
> --- a/arch/arm64/kernel/fpsimd.c
> +++ b/arch/arm64/kernel/fpsimd.c
> @@ -161,6 +161,8 @@ extern void __percpu *efi_sve_state;
>   */
>  static void __sve_free(struct task_struct *task)
>  {
> +	/* SVE context will be zeroed when allocated. */
> +	clear_tsk_thread_flag(task, TIF_SVE_NEEDS_FLUSH);
>  	kfree(task->thread.sve_state);
>  	task->thread.sve_state = NULL;
>  }
> @@ -217,6 +219,11 @@ static void sve_free(struct task_struct *task)
>   *  * FPSR and FPCR are always stored in task->thread.uw.fpsimd_state
>   *    irrespective of whether TIF_SVE is clear or set, since these are
>   *    not vector length dependent.
> + *
> + *  * When TIF_SVE_NEEDS_FLUSH is set, all the SVE registers but the first
> + *    128-bits of the Z-registers are logically zero but not stored anywhere.
> + *    Saving logically zero bits across context switches is therefore
> + *    pointless, although they must be zeroed before re-entering userspace.
>   */
>  
>  /*
> @@ -226,6 +233,14 @@ static void sve_free(struct task_struct *task)
>   * thread_struct is known to be up to date, when preparing to enter
>   * userspace.
>   *
> + * When TIF_SVE_NEEDS_FLUSH is set, the SVE state will be restored from the
> + * FPSIMD state.
> + *
> + * TIF_SVE_NEEDS_FLUSH and TIF_SVE set at the same time should never happen.
> + * In the unlikely case it happens, the code is able to cope with it. It will
> + * first restore the SVE registers and then flush them in
> + * fpsimd_restore_current_state.
> + *
>   * Softirqs (and preemption) must be disabled.
>   */

If we are scheduled out with TIF_SVE_NEEDS_FLUSH set, 
>  static void task_fpsimd_load(void)
> @@ -236,6 +251,12 @@ static void task_fpsimd_load(void)
>  		sve_load_state(sve_pffr(&current->thread),
>  			       &current->thread.uw.fpsimd_state.fpsr,
>  			       sve_vq_from_vl(current->thread.sve_vl) - 1);
> +	else if (system_supports_sve() &&

Can we factor this in a way that doesn't duplicate the
system_supports_sve() check?  Static key checks, are cheap, but not
free, and the compiler can't merge them.

> +		 test_and_clear_thread_flag(TIF_SVE_NEEDS_FLUSH)) {
> +		sve_load_from_fpsimd_state(&current->thread.uw.fpsimd_state,
> +					   sve_vq_from_vl(current->thread.sve_vl) - 1);
> +		set_thread_flag(TIF_SVE);
> +	}
>  	else
>  		fpsimd_load_state(&current->thread.uw.fpsimd_state);
>  }
> @@ -1070,6 +1091,17 @@ void fpsimd_restore_current_state(void)
>  		fpsimd_bind_task_to_cpu();
>  	}

Should this be an else if?

IIUC, if TIF_FOREIGN_FPSTATE and TIF_SVE_NEEDS_FLUSH are both set, we'll
already have gone down the sve_load_from_fpsimd_state() path in
task_fpsimd_load().

>  
> +	if (system_supports_sve() &&
> +	    test_and_clear_thread_flag(TIF_SVE_NEEDS_FLUSH)) {
> +		/*
> +		 * The userspace had SVE enabled on entry to the kernel
> +		 * and requires the state to be flushed.
> +		 */
> +		sve_flush_live();
> +		sve_user_enable();

Is this needed?  It TIF_FOREIGN_FPSTATE wasn't set on entry to
fpsimd_restore_current_state(), SVE should already be enabled.

Maybe we can simplify things by simply calling
fpsimd_bind_state_to_cpu() unconditionally before the local_bh_enable().
If the state is already bound, rebinding it should to no harm.

Otherwise, this bare call to sve_user_enable() feels a bit weird here.

Alternatively, perhaps it makes sense to do the TIF_SVE_NEEDS_FLUSH
handling in fpsimd_bind_state_to_cpu() itself.  I haven't thought about
this in detail though.

> +		set_thread_flag(TIF_SVE);
> +	}
> +
>  	local_bh_enable();
>  }
>  
> diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
> index 3767fb21a5b8..8c67ef89b01a 100644
> --- a/arch/arm64/kernel/process.c
> +++ b/arch/arm64/kernel/process.c
> @@ -367,6 +367,7 @@ int copy_thread(unsigned long clone_flags, unsigned long stack_start,
>  	 * and disable discard SVE state for p:
>  	 */
>  	clear_tsk_thread_flag(p, TIF_SVE);
> +	clear_tsk_thread_flag(p, TIF_SVE_NEEDS_FLUSH);
>  	p->thread.sve_state = NULL;

Should we clear it in fpsimd_flush_thread() too?  Otherwise, I think we
could leak SVE-ness across exec, which is not really the intent.

Any place that we clear TIF_SVE but not TIF_SVE_NEEDS_FLUSH is
potentially suspicious.

What happens in sve_set_vector_length() for example?

>  	/*
> diff --git a/arch/arm64/kernel/ptrace.c b/arch/arm64/kernel/ptrace.c
> index b82e0a9b3da3..f44016052cba 100644
> --- a/arch/arm64/kernel/ptrace.c
> +++ b/arch/arm64/kernel/ptrace.c
> @@ -899,6 +899,11 @@ static int sve_set(struct task_struct *target,
>  		ret = __fpr_set(target, regset, pos, count, kbuf, ubuf,
>  				SVE_PT_FPSIMD_OFFSET);
>  		clear_tsk_thread_flag(target, TIF_SVE);
> +		/*
> +		 * If ptrace requested to use FPSIMD, then don't try to
> +		 * re-enable SVE when the task is running again.
> +		 */
> +		clear_tsk_thread_flag(target, TIF_SVE_NEEDS_FLUSH);

Since we have this clear-both-flags op in a few places, it may be worth
having a helper to express what we're trying to do more clearly.

>  		goto out;
>  	}
>  
> @@ -923,6 +928,8 @@ static int sve_set(struct task_struct *target,
>  	 */
>  	fpsimd_sync_to_sve(target);
>  	set_tsk_thread_flag(target, TIF_SVE);
> +	/* Don't flush SVE registers on return as ptrace will update them. */
> +	clear_tsk_thread_flag(target, TIF_SVE_NEEDS_FLUSH);
>  	BUILD_BUG_ON(SVE_PT_SVE_OFFSET != sizeof(header));
>  	start = SVE_PT_SVE_OFFSET;
> diff --git a/arch/arm64/kernel/signal.c b/arch/arm64/kernel/signal.c
> index ab3e56bbfb07..83a23a1edc7e 100644
> --- a/arch/arm64/kernel/signal.c
> +++ b/arch/arm64/kernel/signal.c
> @@ -530,6 +530,17 @@ static int restore_sigframe(struct pt_regs *regs,
>  		} else {
>  			err = restore_fpsimd_context(user.fpsimd);
>  		}
> +
> +		/*
> +		 * When successfully restoring the:
> +		 *	- FPSIMD context, we don't want to re-enable SVE
> +		 *	- SVE context, we don't want to override what was
> +		 *	restored
> +		 */
> +		if (err == 0)
> +			clear_thread_flag(TIF_SVE_NEEDS_FLUSH);
> +
> +

Similarly, we seem to have a common pattern of setting TIF_SVE and
TIF_SVE_NEEDS_FLUSH to specific values together.

Can these be abstracted in some way?

>  	}
>  
>  	return err;
> @@ -942,7 +953,8 @@ asmlinkage void do_notify_resume(struct pt_regs *regs,
>  				rseq_handle_notify_resume(NULL, regs);
>  			}
>  
> -			if (thread_flags & _TIF_FOREIGN_FPSTATE)
> +			if (thread_flags & (_TIF_FOREIGN_FPSTATE |
> +					    _TIF_SVE_NEEDS_FLUSH))
>  				fpsimd_restore_current_state();
>  		}
>  
> diff --git a/arch/arm64/kernel/syscall.c b/arch/arm64/kernel/syscall.c
> index 871c739f060a..b9bd7092e253 100644
> --- a/arch/arm64/kernel/syscall.c
> +++ b/arch/arm64/kernel/syscall.c
> @@ -142,16 +142,13 @@ static inline void sve_user_discard(void)
>  	if (!system_supports_sve())
>  		return;
>  
> -	clear_thread_flag(TIF_SVE);
> -
>  	/*
> -	 * task_fpsimd_load() won't be called to update CPACR_EL1 in
> -	 * ret_to_user unless TIF_FOREIGN_FPSTATE is still set, which only
> -	 * happens if a context switch or kernel_neon_begin() or context
> -	 * modification (sigreturn, ptrace) intervenes.
> -	 * So, ensure that CPACR_EL1 is already correct for the fast-path case.
> +	 * TIF_SVE is cleared to save the FPSIMD state rather than the SVE

Nit: somethine like: "cleared so that any writeback via
task_fpsimd_save() will save the FPSIMD state rather than [...]"

(Otherwise, this sounds a bit like this code is actually doing the save
somehow.)

> +	 * state on context switch. The bit will be set again while
> +	 * restoring/zeroing the registers.
>  	 */
> -	sve_user_disable();
> +	if (test_and_clear_thread_flag(TIF_SVE))
> +		set_thread_flag(TIF_SVE_NEEDS_FLUSH);

Do we need to do this under local_bh_disable()?  Does it matter?

It looks to me like this is called when we still have interrupts
disabled, which is probably worth fixing.  This may actually be a bug:
if kzalloc() causes us to sleep, we have the potential to trigger
sleeping-while-atomic splats.

If you agree that's a bug, try to come up with a preliminary patch
that's suitable for stable.

(I may have just misunderstood / misremembered something here.)

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
