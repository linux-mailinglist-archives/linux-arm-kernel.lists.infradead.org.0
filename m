Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D2941D746D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 11:53:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1byw9iBXcvzgFR0uvuioC1ZAf9/UadeiTi7pyWKa51I=; b=Vz7v7eIfnaHlfg
	Hz5CoxwQxh8t4GHF/Kpl/fSNzMv+zVXEDDwTDecKO4rDwypU/dnkBfP1xLQi9yJvoDIanhX9UjDZg
	PiY3Z68lJdZNPmJRdpvxKVy4MBTxJ8FzOD9pbH3BtrBu+pJ6DiF6kpDKhGCMhMiFw2oSz6IQXDOee
	FqIqvRKN4xyyJcIBUjtHUTcydAR4lTABOfT/rlq24IwDDvgE1o6INwFJ/4owZbrqtpENiF+ZMNw/t
	T6yhttEKnGkLf+rF/AoB99Pv3MO4LZF2C9IdqyJv+ZrtyLRJGmtANvzvJVhONHM7BW3EJfjVnM98K
	7ITbDFavgsEmphiVbPVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jacSh-0000qg-NL; Mon, 18 May 2020 09:53:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jacSY-0000fU-MR
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 09:53:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 357D6101E;
 Mon, 18 May 2020 02:53:19 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BD1553F68F;
 Mon, 18 May 2020 02:53:17 -0700 (PDT)
Date: Mon, 18 May 2020 10:53:15 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Peter Collingbourne <pcc@google.com>
Subject: Re: [PATCH v6] arm64: Expose FAR_EL1 tag bits in sigcontext
Message-ID: <20200518095313.GZ21779@arm.com>
References: <20200508020106.136652-1-pcc@google.com>
 <20200513180914.50892-1-pcc@google.com>
 <20200513202808.GY21779@arm.com>
 <CAMn1gO4V05nD-Tq4dES0QyO73bAT-Nwo1ABnz0nuous8Rq+dGA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMn1gO4V05nD-Tq4dES0QyO73bAT-Nwo1ABnz0nuous8Rq+dGA@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_025322_834424_446D6D7D 
X-CRM114-Status: GOOD (  43.07  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kostya Serebryany <kcc@google.com>,
 Evgenii Stepanov <eugenis@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Richard Henderson <rth@twiddle.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 14, 2020 at 05:58:21PM -0700, Peter Collingbourne wrote:
> On Wed, May 13, 2020 at 1:28 PM Dave Martin <Dave.Martin@arm.com> wrote:
> >
> > On Wed, May 13, 2020 at 11:09:14AM -0700, Peter Collingbourne wrote:
> > > The kernel currently clears the tag bits (i.e. bits 56-63) in the fault
> > > address exposed via siginfo.si_addr and sigcontext.fault_address. However,
> > > the tag bits may be needed by tools in order to accurately diagnose
> > > memory errors, such as HWASan [1] or future tools based on the Memory
> > > Tagging Extension (MTE).
> > >
> > > We should not stop clearing these bits in the existing fault address fields,
> > > because there may be existing userspace applications that are expecting the tag
> > > bits to be cleared. Instead, create a fault_addr_top_byte_context in sigcontext
> > > (similar to the existing esr_context), and store the tag bits of FAR_EL1 there.
> > >
> > > [1] http://clang.llvm.org/docs/HardwareAssistedAddressSanitizerDesign.html
> > >
> > > Signed-off-by: Peter Collingbourne <pcc@google.com>
> > > ---
> > > v6:
> > > - bring back comment about __reserved[]
> > >
> > > v5:
> > > - add padding to fault_addr_top_byte_context in order to ensure the correct
> > >   size and preserve sp alignment
> > >
> > > v4:
> > > - expose only the tag bits in the context instead of the entire FAR_EL1
> > > - remove mention of the new context from the sigcontext.__reserved[] note
> > >
> > > v3:
> > > - add documentation to tagged-pointers.rst
> > > - update comments in sigcontext.h
> > >
> > > v2:
> > > - revert changes to hw_breakpoint.c
> > > - rename set_thread_esr to set_thread_far_esr
> > >
> > >  Documentation/arm64/tagged-pointers.rst  | 17 +++++----
> > >  arch/arm64/include/asm/exception.h       |  2 +-
> > >  arch/arm64/include/asm/processor.h       |  2 +-
> > >  arch/arm64/include/uapi/asm/sigcontext.h | 22 ++++++++----
> > >  arch/arm64/kernel/entry-common.c         |  2 --
> > >  arch/arm64/kernel/signal.c               | 22 +++++++++++-
> > >  arch/arm64/mm/fault.c                    | 45 ++++++++++++++----------
> > >  7 files changed, 77 insertions(+), 35 deletions(-)
> > >
> > > diff --git a/Documentation/arm64/tagged-pointers.rst b/Documentation/arm64/tagged-pointers.rst
> > > index eab4323609b9..c6e9592a9dea 100644
> > > --- a/Documentation/arm64/tagged-pointers.rst
> > > +++ b/Documentation/arm64/tagged-pointers.rst
> > > @@ -53,12 +53,17 @@ visibility.
> > >  Preserving tags
> > >  ---------------
> > >
> > > -Non-zero tags are not preserved when delivering signals. This means that
> > > -signal handlers in applications making use of tags cannot rely on the
> > > -tag information for user virtual addresses being maintained for fields
> > > -inside siginfo_t. One exception to this rule is for signals raised in
> > > -response to watchpoint debug exceptions, where the tag information will
> > > -be preserved.
> > > +Non-zero tags are not preserved in the fault address fields
> > > +siginfo.si_addr or sigcontext.fault_address when delivering
> > > +signals. This means that signal handlers in applications making use
> > > +of tags cannot rely on the tag information for user virtual addresses
> > > +being maintained in these fields. One exception to this rule is for
> > > +signals raised in response to watchpoint debug exceptions, where the
> > > +tag information will be preserved.
> > > +
> > > +The fault address tag is preserved in the fault_addr_top_byte field of
> > > +the signal frame record fault_addr_top_byte_context, which is present
> > > +for signals raised in response to data aborts and instruction aborts.
> > >
> > >  The architecture prevents the use of a tagged PC, so the upper byte will
> > >  be set to a sign-extension of bit 55 on exception return.
> > > diff --git a/arch/arm64/include/asm/exception.h b/arch/arm64/include/asm/exception.h
> > > index 7a6e81ca23a8..90e772d9b2cd 100644
> > > --- a/arch/arm64/include/asm/exception.h
> > > +++ b/arch/arm64/include/asm/exception.h
> > > @@ -32,7 +32,7 @@ static inline u32 disr_to_esr(u64 disr)
> > >  }
> > >
> > >  asmlinkage void enter_from_user_mode(void);
> > > -void do_mem_abort(unsigned long addr, unsigned int esr, struct pt_regs *regs);
> > > +void do_mem_abort(unsigned long far, unsigned int esr, struct pt_regs *regs);
> > >  void do_undefinstr(struct pt_regs *regs);
> > >  asmlinkage void bad_mode(struct pt_regs *regs, int reason, unsigned int esr);
> > >  void do_debug_exception(unsigned long addr_if_watchpoint, unsigned int esr,
> > > diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
> > > index 240fe5e5b720..63185be29ff9 100644
> > > --- a/arch/arm64/include/asm/processor.h
> > > +++ b/arch/arm64/include/asm/processor.h
> > > @@ -144,7 +144,7 @@ struct thread_struct {
> > >       void                    *sve_state;     /* SVE registers, if any */
> > >       unsigned int            sve_vl;         /* SVE vector length */
> > >       unsigned int            sve_vl_onexec;  /* SVE vl after next exec */
> > > -     unsigned long           fault_address;  /* fault info */
> > > +     unsigned long           fault_address;  /* FAR_EL1 value */
> > >       unsigned long           fault_code;     /* ESR_EL1 value */
> > >       struct debug_info       debug;          /* debugging */
> > >  #ifdef CONFIG_ARM64_PTR_AUTH
> > > diff --git a/arch/arm64/include/uapi/asm/sigcontext.h b/arch/arm64/include/uapi/asm/sigcontext.h
> > > index 8b0ebce92427..2a3fe3de899d 100644
> > > --- a/arch/arm64/include/uapi/asm/sigcontext.h
> > > +++ b/arch/arm64/include/uapi/asm/sigcontext.h
> > > @@ -44,11 +44,12 @@ struct sigcontext {
> > >   *
> > >   *   0x210           fpsimd_context
> > >   *    0x10           esr_context
> > > + *    0x10           fault_addr_top_byte_context
> > >   *   0x8a0           sve_context (vl <= 64) (optional)
> > >   *    0x20           extra_context (optional)
> > >   *    0x10           terminator (null _aarch64_ctx)
> > >   *
> > > - *   0x510           (reserved for future allocation)
> > > + *   0x500           (reserved for future allocation)
> > >   *
> > >   * New records that can exceed this space need to be opt-in for userspace, so
> > >   * that an expanded signal frame is not generated unexpectedly.  The mechanism
> > > @@ -94,17 +95,26 @@ struct esr_context {
> > >       __u64 esr;
> > >  };
> > >
> > > +/* Top byte of fault address (normally not exposed via si_addr) */
> > > +#define FAULT_ADDR_TOP_BYTE_MAGIC    0x46544201
> > > +
> > > +struct fault_addr_top_byte_context {
> > > +     struct _aarch64_ctx head;
> > > +     __u8 fault_addr_top_byte;
> > > +     __u8 __reserved[7];
> > > +};
> > > +
> >
> > Nit: the name here is a bit cumbersome (obviously bikeshedding...)
> >
> >
> > For the rest, some of my comments may be bogus -- I haven't dug into
> > this stuff for a little while!
> >
> >
> > Anyway:
> >
> > Do we really get the whole top byte of the address in the FAR?  If so,
> > fine, but I'm having trouble finding a clear statement in the
> > architecture one way or the other.  (I didn't attempt to dive into the
> > pseudocode.)
> 
> I rely on this statement in the ARM:
> 
> https://developer.arm.com/docs/ddi0595/b/aarch64-system-registers/far_el1
> "For a Data Abort or Watchpoint exception, if address tagging is
> enabled for the address accessed by the data access that caused the
> exception, then this field includes the tag."

Yes, I think that covers it.  I hadn't found a clear definition of
"tag", but I think the TBI mechanism makes it "reasonably obvious" the
non-address (i.e., tag) bits are [63:56].

> And note that address tagging here essentially means TBI (which is
> always enabled on Linux), and not memory tagging.
> 
> > Also, since we're burning 16 bytes here, I'd prefer if we make this
> > extensible.  At present the __reserved[7] is unusable because
> > userspace has no way to know whether it's valid or not.
> >
> > Options include an additional flag byte (0 for now), or just making
> > the whole thing a __u64.  In that case we can leave the top byte bits
> > in their original positions if we want, but it would be a good idea to
> > include a flag to say that field is valid at all.  (See comments below
> > on Synchronous external abort.)
> >
> > So, say, foo_context->fault_info = (esr & (~0ULL << 56)) | TOP_BYTE_VALID.
> > (with #defines for the bits/fields as appropriate).
> 
> The flag bits seem like a good idea. Thinking ahead to the MTE sync
> tag fault (which might not provide us with bits 60-63), we may
> consider having separate bits to indicate "bits 56-59 valid" and "bits
> 60-63 valid", set both bits for regular data aborts and only the
> former for sync tag faults, which would avoid the need to define a
> separate context for these faults. And if a future architecture
> revision provides us with bits 60-63 for tag faults, we could start
> setting both flag bits even for tag faults.

Seems reasonable, but a "tag mask" field of some sort might be
preferable to hard-wiring, just in case a future update to MTE supports
more than 4 bits.

> > >  /*
> > >   * extra_context: describes extra space in the signal frame for
> > >   * additional structures that don't fit in sigcontext.__reserved[].
> > >   *
> > >   * Note:
> > >   *
> > > - * 1) fpsimd_context, esr_context and extra_context must be placed in
> > > - * sigcontext.__reserved[] if present.  They cannot be placed in the
> > > - * extra space.  Any other record can be placed either in the extra
> > > - * space or in sigcontext.__reserved[], unless otherwise specified in
> > > - * this file.
> > > + * 1) fpsimd_context, esr_context, fault_addr_top_byte_context and
> > > + * extra_context must be placed in sigcontext.__reserved[] if present.
> > > + * They cannot be placed in the extra space.  Any other record can be
> > > + * placed either in the extra space or in sigcontext.__reserved[],
> > > + * unless otherwise specified in this file.
> > >   *
> > >   * 2) There must not be more than one extra_context.
> > >   *
> > > diff --git a/arch/arm64/kernel/entry-common.c b/arch/arm64/kernel/entry-common.c
> > > index c839b5bf1904..045b4f518836 100644
> > > --- a/arch/arm64/kernel/entry-common.c
> > > +++ b/arch/arm64/kernel/entry-common.c
> > > @@ -22,7 +22,6 @@ static void notrace el1_abort(struct pt_regs *regs, unsigned long esr)
> > >       unsigned long far = read_sysreg(far_el1);
> > >
> > >       local_daif_inherit(regs);
> > > -     far = untagged_addr(far);
> > >       do_mem_abort(far, esr, regs);
> > >  }
> > >  NOKPROBE_SYMBOL(el1_abort);
> > > @@ -104,7 +103,6 @@ static void notrace el0_da(struct pt_regs *regs, unsigned long esr)
> > >
> > >       user_exit_irqoff();
> > >       local_daif_restore(DAIF_PROCCTX);
> > > -     far = untagged_addr(far);
> > >       do_mem_abort(far, esr, regs);
> > >  }
> > >  NOKPROBE_SYMBOL(el0_da);
> > > diff --git a/arch/arm64/kernel/signal.c b/arch/arm64/kernel/signal.c
> > > index 339882db5a91..baa88dc02e5c 100644
> > > --- a/arch/arm64/kernel/signal.c
> > > +++ b/arch/arm64/kernel/signal.c
> > > @@ -55,6 +55,7 @@ struct rt_sigframe_user_layout {
> > >
> > >       unsigned long fpsimd_offset;
> > >       unsigned long esr_offset;
> > > +     unsigned long ftb_offset;
> > >       unsigned long sve_offset;
> > >       unsigned long extra_offset;
> > >       unsigned long end_offset;
> > > @@ -383,6 +384,7 @@ static int parse_user_sigframe(struct user_ctxs *user,
> > >                       break;
> > >
> > >               case ESR_MAGIC:
> > > +             case FAULT_ADDR_TOP_BYTE_MAGIC:
> > >                       /* ignore */
> > >                       break;
> > >
> > > @@ -581,6 +583,12 @@ static int setup_sigframe_layout(struct rt_sigframe_user_layout *user,
> > >                                    sizeof(struct esr_context));
> > >               if (err)
> > >                       return err;
> > > +
> > > +             err = sigframe_alloc(
> > > +                     user, &user->ftb_offset,
> > > +                     sizeof(struct fault_addr_top_byte_context));
> >
> > Nit: inconsistent indentation?
> >
> > (Mostly just because it makes the change look odd against the hunk
> > context, but not a big deal.)
> 
> With consistent indentation we violate 80 cols due to the extra long
> struct name. The indentation is what clang-format is giving me.

I suspected that might be why.  Fair enough (though a shorter name would
be no bad thing, it's not worth changing that just for nicer indentation).

> 
> > > +             if (err)
> > > +                     return err;
> > >       }
> > >
> > >       if (system_supports_sve()) {
> > > @@ -621,7 +629,8 @@ static int setup_sigframe(struct rt_sigframe_user_layout *user,
> > >       __put_user_error(regs->pc, &sf->uc.uc_mcontext.pc, err);
> > >       __put_user_error(regs->pstate, &sf->uc.uc_mcontext.pstate, err);
> > >
> > > -     __put_user_error(current->thread.fault_address, &sf->uc.uc_mcontext.fault_address, err);
> > > +     __put_user_error(untagged_addr(current->thread.fault_address),
> > > +                      &sf->uc.uc_mcontext.fault_address, err);
> > >
> > >       err |= __copy_to_user(&sf->uc.uc_sigmask, set, sizeof(*set));
> > >
> > > @@ -641,6 +650,17 @@ static int setup_sigframe(struct rt_sigframe_user_layout *user,
> > >               __put_user_error(current->thread.fault_code, &esr_ctx->esr, err);
> > >       }
> > >
> > > +     if (err == 0 && user->ftb_offset) {
> > > +             struct fault_addr_top_byte_context __user *ftb_ctx =
> > > +                     apply_user_offset(user, user->ftb_offset);
> > > +
> > > +             __put_user_error(FAULT_ADDR_TOP_BYTE_MAGIC,
> > > +                              &ftb_ctx->head.magic, err);
> > > +             __put_user_error(sizeof(*ftb_ctx), &ftb_ctx->head.size, err);
> > > +             __put_user_error(current->thread.fault_address >> 56,
> > > +                              &ftb_ctx->fault_addr_top_byte, err);
> > > +     }
> > > +
> >
> > How do we handle the fact that the top byte of FAR is sometimes UNKNOWN?
> >
> > For Synchronous external aborts in particular, those bits are documented
> > as UNKNOWN, but I don't see any special handling,  There may be other
> > cases I haven't spotted.
> >
> > For preference we can omit this record entirely if we don't have any
> > information we can report, but certainly we shouldn't expose UNKNOWN
> > bits.
> 
> In this case we mask out the top byte in do_sea before passing the
> address to arm64_notify_die (which clears fault_address and passes the
> address argument on to arm64_force_sig_fault to be exposed via
> si_addr). So the record would always contain a 0 byte. It seems
> reasonable to omit the record in this case instead.

Ah, right.  Missed that.

The record is already omitted when fault_code == 0 IIUC, so perhaps
we're already doing the right thing for synchronous external aborts.

> > [ Aside:
> >
> > Also, what if we're not reporting a memory abort at all?  Does
> > thread.fault_address just contain junk from the last fault?  I see
> > nothing anywhere that cleans this up.  (This is historical and not
> > your fault, but it would be good to close this down while we're about
> > it.)
> >
> >
> > Hmmm, looking at the code I think we probably leak fault_address etc.
> > across execve() too, so it may even be stale junk from an old process
> > :/
> >
> > Maybe I just confused myself.
> >
> > End aside. ]
> 
> Yes, it's unclear whether we always manage to not expose a fault
> address if we're not reporting a data or instruction abort. The code
> would need to arrange for fault_code to be set to 0 in order to avoid
> exposing previous fault_address values via future signals. I don't see
> anywhere where we're resetting these fields after delivering a signal,
> so it seems possible by calling arm64_force_sig_fault without first
> setting fault_code (most callers do this, but the calls in
> arch/arm64/kernel/debug-monitors.c and arch/arm64/kernel/ptrace.c seem
> not to), or simply by calling force_sig_fault (which happens in many
> places throughout the kernel).
> 
> Maybe something like this would do the trick? (Untested, and forgive
> spaces instead of tabs, grumble grumble gmail):
> 
> diff --git a/arch/arm64/kernel/signal.c b/arch/arm64/kernel/signal.c
> index baa88dc02e5c..5867f2fdbe64 100644
> --- a/arch/arm64/kernel/signal.c
> +++ b/arch/arm64/kernel/signal.c
> @@ -648,6 +648,7 @@ static int setup_sigframe(struct
> rt_sigframe_user_layout *user,
>                 __put_user_error(ESR_MAGIC, &esr_ctx->head.magic, err);
>                 __put_user_error(sizeof(*esr_ctx), &esr_ctx->head.size, err);
>                 __put_user_error(current->thread.fault_code,
> &esr_ctx->esr, err);
> +               current->thread.fault_code = 0;

Perhaps, but we'd need to be careful.  For example, can we run out of
user stack before this and deliver a SIGSEGV, but with the old
fault_code still set?  Then we'd emit the old fault code with the
new "can't deliver signal" signal, which doesn't make sense.

Stuff may also go wrong with signal prioritisation.

If a higher-priority signal (say SIGINT) comes in after a data abort
enters the kernel but before the resulting SIGSEGV is dequeued for
delivery, wouldn't we deliver SIGINT first, with the bogus fault code?
With your change we'd then have cleared the fault code by the time we
deliver the SIGSEGV it actually relates to, if I've understood right.

Today, I think we just attach that fault code to every signal that's
delivered until something overwrites or resets it, which means that
a signal that needs fault_code gets it, at the expense of attaching
it to a bunch of other random signals too.


Checking the signal number and si_code might help us to know what we
should be doing with fault_code.  We need to have sure userspace can't
trick us with a non kernel generated signal here.  It would also be
necessary to check how PTRACE_SETSIGINFO interacts with this.


Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
