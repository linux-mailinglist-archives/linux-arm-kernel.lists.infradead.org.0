Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31ADE1D428F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 02:59:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aBbn8tiCBZMKKQpohc22afO7xiDK9afVApqIvHdJIyM=; b=DsWpmWM47VZYra
	rYZzlcoFb+GS5+Wks8sHo1Y9xtY0XCJNA/3Sqgqid5AVWjkRpjFGs9+cnL+beJ8pcblQ95+AfgXP3
	rurZMcjmmptGN2uDmmIHfw/aR+Tf9irYaxeb+MFdXoj0J+mnuKypJ3maQvV1DRSDoV8KsUBxT6iRK
	KowbsdaDEUAdO8Zx6CUkSjU7D24QJMJDufMwShUg2mVY4bSWsGdxUgZNTvNTWTF87NBlB67q95T2K
	Y8Sn8UuoZjdufgtffjfUpB0HUd/ogb/52/KfbgcZ/TZNYJ6PRofO77KrCLBJAlIHlhlpDM1zmmec0
	Vz6BQsEs07QH8KL4ALcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZOgj-0004IJ-Bt; Fri, 15 May 2020 00:58:57 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZOgX-0004HV-LF
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 00:58:50 +0000
Received: by mail-vs1-xe44.google.com with SMTP id o26so217552vsr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 17:58:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DYF5K2XXla74NZfFX2tH+bHs6aMgRcFvHzCeEp7n+bQ=;
 b=CpbCESXh5UZSveikAB+xS269S+/G83yQmWn4BaA9cbQuluUx3KGhuiUwS0cwnDQjya
 5hOeugx3cNfRvNJRjJmvikEloXlE7jzS3dQ+w7yhllQHTbgjjpnKZEsv9DSvurod16XL
 o99tcEG0qG48IrjzOeNCOai7NQ2UAHRKAbe+nt4/swRGv+9yCDuFUKVwds6SVos5uaqn
 VerZuydheO0d2vSUOHZfZrv6ecP0NR8BRWA9wGzBpSA4mBOn1cz0XeHyPjlKJAPMuDLj
 iUoW2kUbjQ6Xdiyl/Ozj7ryGKoJwlsoMkLkImX9YTZnt7myZ4uiK4oBQEyOzzHQ4cftY
 YauQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DYF5K2XXla74NZfFX2tH+bHs6aMgRcFvHzCeEp7n+bQ=;
 b=aCjGRbUGjB9QAdtwuLnkY8dJRSO8/PW0J6bcAxUnB4sDe3WpcpFMo/ymz96aXO2gO4
 cvJzeV+D8Iz4rD7pYVVsFRUz9HA+luH4c70dV3mcoyvnS63ePg6lOTYrHpwLH2U+JZFM
 7TwcBaooq1EbrnwzDVm9XOKUe8mjGaqgaltV2EY1VT5U4gQEx7Pdw3HRy/fG7jJbhn1x
 /wZ2Pv8hls1MbZ6DWm9tzB/flDKpCYRZqi365uQm+gqtH/zAvnRpHw2jeCQmRhts3R7b
 I6B5LACSisg5ex9sVuJo/jO4uq9o+IwB3BLF6qLQj/9wfTjCP+wRIjVh1RT/a0F8V6NB
 X3RQ==
X-Gm-Message-State: AOAM533u80ESVlt9ceDWkv+2NzNN8lqmfx7O/eOVwGrNT3tS9snkxLc3
 WHR5pnEWOmLdfw75j1sx5nQhGI0pvtqX+LV4BP7DeA==
X-Google-Smtp-Source: ABdhPJzb0I/ibxNRGZUEegT32Un8eMIKxiU2J9iBvernI/sWSoIjXf4BAme6FZUq3eu1kDToUe6O2knk/TXF+5seEb4=
X-Received: by 2002:a67:e096:: with SMTP id f22mr646432vsl.54.1589504314886;
 Thu, 14 May 2020 17:58:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200508020106.136652-1-pcc@google.com>
 <20200513180914.50892-1-pcc@google.com>
 <20200513202808.GY21779@arm.com>
In-Reply-To: <20200513202808.GY21779@arm.com>
From: Peter Collingbourne <pcc@google.com>
Date: Thu, 14 May 2020 17:58:21 -0700
Message-ID: <CAMn1gO4V05nD-Tq4dES0QyO73bAT-Nwo1ABnz0nuous8Rq+dGA@mail.gmail.com>
Subject: Re: [PATCH v6] arm64: Expose FAR_EL1 tag bits in sigcontext
To: Dave Martin <Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_175845_727495_033EBCB2 
X-CRM114-Status: GOOD (  38.74  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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

On Wed, May 13, 2020 at 1:28 PM Dave Martin <Dave.Martin@arm.com> wrote:
>
> On Wed, May 13, 2020 at 11:09:14AM -0700, Peter Collingbourne wrote:
> > The kernel currently clears the tag bits (i.e. bits 56-63) in the fault
> > address exposed via siginfo.si_addr and sigcontext.fault_address. However,
> > the tag bits may be needed by tools in order to accurately diagnose
> > memory errors, such as HWASan [1] or future tools based on the Memory
> > Tagging Extension (MTE).
> >
> > We should not stop clearing these bits in the existing fault address fields,
> > because there may be existing userspace applications that are expecting the tag
> > bits to be cleared. Instead, create a fault_addr_top_byte_context in sigcontext
> > (similar to the existing esr_context), and store the tag bits of FAR_EL1 there.
> >
> > [1] http://clang.llvm.org/docs/HardwareAssistedAddressSanitizerDesign.html
> >
> > Signed-off-by: Peter Collingbourne <pcc@google.com>
> > ---
> > v6:
> > - bring back comment about __reserved[]
> >
> > v5:
> > - add padding to fault_addr_top_byte_context in order to ensure the correct
> >   size and preserve sp alignment
> >
> > v4:
> > - expose only the tag bits in the context instead of the entire FAR_EL1
> > - remove mention of the new context from the sigcontext.__reserved[] note
> >
> > v3:
> > - add documentation to tagged-pointers.rst
> > - update comments in sigcontext.h
> >
> > v2:
> > - revert changes to hw_breakpoint.c
> > - rename set_thread_esr to set_thread_far_esr
> >
> >  Documentation/arm64/tagged-pointers.rst  | 17 +++++----
> >  arch/arm64/include/asm/exception.h       |  2 +-
> >  arch/arm64/include/asm/processor.h       |  2 +-
> >  arch/arm64/include/uapi/asm/sigcontext.h | 22 ++++++++----
> >  arch/arm64/kernel/entry-common.c         |  2 --
> >  arch/arm64/kernel/signal.c               | 22 +++++++++++-
> >  arch/arm64/mm/fault.c                    | 45 ++++++++++++++----------
> >  7 files changed, 77 insertions(+), 35 deletions(-)
> >
> > diff --git a/Documentation/arm64/tagged-pointers.rst b/Documentation/arm64/tagged-pointers.rst
> > index eab4323609b9..c6e9592a9dea 100644
> > --- a/Documentation/arm64/tagged-pointers.rst
> > +++ b/Documentation/arm64/tagged-pointers.rst
> > @@ -53,12 +53,17 @@ visibility.
> >  Preserving tags
> >  ---------------
> >
> > -Non-zero tags are not preserved when delivering signals. This means that
> > -signal handlers in applications making use of tags cannot rely on the
> > -tag information for user virtual addresses being maintained for fields
> > -inside siginfo_t. One exception to this rule is for signals raised in
> > -response to watchpoint debug exceptions, where the tag information will
> > -be preserved.
> > +Non-zero tags are not preserved in the fault address fields
> > +siginfo.si_addr or sigcontext.fault_address when delivering
> > +signals. This means that signal handlers in applications making use
> > +of tags cannot rely on the tag information for user virtual addresses
> > +being maintained in these fields. One exception to this rule is for
> > +signals raised in response to watchpoint debug exceptions, where the
> > +tag information will be preserved.
> > +
> > +The fault address tag is preserved in the fault_addr_top_byte field of
> > +the signal frame record fault_addr_top_byte_context, which is present
> > +for signals raised in response to data aborts and instruction aborts.
> >
> >  The architecture prevents the use of a tagged PC, so the upper byte will
> >  be set to a sign-extension of bit 55 on exception return.
> > diff --git a/arch/arm64/include/asm/exception.h b/arch/arm64/include/asm/exception.h
> > index 7a6e81ca23a8..90e772d9b2cd 100644
> > --- a/arch/arm64/include/asm/exception.h
> > +++ b/arch/arm64/include/asm/exception.h
> > @@ -32,7 +32,7 @@ static inline u32 disr_to_esr(u64 disr)
> >  }
> >
> >  asmlinkage void enter_from_user_mode(void);
> > -void do_mem_abort(unsigned long addr, unsigned int esr, struct pt_regs *regs);
> > +void do_mem_abort(unsigned long far, unsigned int esr, struct pt_regs *regs);
> >  void do_undefinstr(struct pt_regs *regs);
> >  asmlinkage void bad_mode(struct pt_regs *regs, int reason, unsigned int esr);
> >  void do_debug_exception(unsigned long addr_if_watchpoint, unsigned int esr,
> > diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
> > index 240fe5e5b720..63185be29ff9 100644
> > --- a/arch/arm64/include/asm/processor.h
> > +++ b/arch/arm64/include/asm/processor.h
> > @@ -144,7 +144,7 @@ struct thread_struct {
> >       void                    *sve_state;     /* SVE registers, if any */
> >       unsigned int            sve_vl;         /* SVE vector length */
> >       unsigned int            sve_vl_onexec;  /* SVE vl after next exec */
> > -     unsigned long           fault_address;  /* fault info */
> > +     unsigned long           fault_address;  /* FAR_EL1 value */
> >       unsigned long           fault_code;     /* ESR_EL1 value */
> >       struct debug_info       debug;          /* debugging */
> >  #ifdef CONFIG_ARM64_PTR_AUTH
> > diff --git a/arch/arm64/include/uapi/asm/sigcontext.h b/arch/arm64/include/uapi/asm/sigcontext.h
> > index 8b0ebce92427..2a3fe3de899d 100644
> > --- a/arch/arm64/include/uapi/asm/sigcontext.h
> > +++ b/arch/arm64/include/uapi/asm/sigcontext.h
> > @@ -44,11 +44,12 @@ struct sigcontext {
> >   *
> >   *   0x210           fpsimd_context
> >   *    0x10           esr_context
> > + *    0x10           fault_addr_top_byte_context
> >   *   0x8a0           sve_context (vl <= 64) (optional)
> >   *    0x20           extra_context (optional)
> >   *    0x10           terminator (null _aarch64_ctx)
> >   *
> > - *   0x510           (reserved for future allocation)
> > + *   0x500           (reserved for future allocation)
> >   *
> >   * New records that can exceed this space need to be opt-in for userspace, so
> >   * that an expanded signal frame is not generated unexpectedly.  The mechanism
> > @@ -94,17 +95,26 @@ struct esr_context {
> >       __u64 esr;
> >  };
> >
> > +/* Top byte of fault address (normally not exposed via si_addr) */
> > +#define FAULT_ADDR_TOP_BYTE_MAGIC    0x46544201
> > +
> > +struct fault_addr_top_byte_context {
> > +     struct _aarch64_ctx head;
> > +     __u8 fault_addr_top_byte;
> > +     __u8 __reserved[7];
> > +};
> > +
>
> Nit: the name here is a bit cumbersome (obviously bikeshedding...)
>
>
> For the rest, some of my comments may be bogus -- I haven't dug into
> this stuff for a little while!
>
>
> Anyway:
>
> Do we really get the whole top byte of the address in the FAR?  If so,
> fine, but I'm having trouble finding a clear statement in the
> architecture one way or the other.  (I didn't attempt to dive into the
> pseudocode.)

I rely on this statement in the ARM:

https://developer.arm.com/docs/ddi0595/b/aarch64-system-registers/far_el1
"For a Data Abort or Watchpoint exception, if address tagging is
enabled for the address accessed by the data access that caused the
exception, then this field includes the tag."

And note that address tagging here essentially means TBI (which is
always enabled on Linux), and not memory tagging.

> Also, since we're burning 16 bytes here, I'd prefer if we make this
> extensible.  At present the __reserved[7] is unusable because
> userspace has no way to know whether it's valid or not.
>
> Options include an additional flag byte (0 for now), or just making
> the whole thing a __u64.  In that case we can leave the top byte bits
> in their original positions if we want, but it would be a good idea to
> include a flag to say that field is valid at all.  (See comments below
> on Synchronous external abort.)
>
> So, say, foo_context->fault_info = (esr & (~0ULL << 56)) | TOP_BYTE_VALID.
> (with #defines for the bits/fields as appropriate).

The flag bits seem like a good idea. Thinking ahead to the MTE sync
tag fault (which might not provide us with bits 60-63), we may
consider having separate bits to indicate "bits 56-59 valid" and "bits
60-63 valid", set both bits for regular data aborts and only the
former for sync tag faults, which would avoid the need to define a
separate context for these faults. And if a future architecture
revision provides us with bits 60-63 for tag faults, we could start
setting both flag bits even for tag faults.

> >  /*
> >   * extra_context: describes extra space in the signal frame for
> >   * additional structures that don't fit in sigcontext.__reserved[].
> >   *
> >   * Note:
> >   *
> > - * 1) fpsimd_context, esr_context and extra_context must be placed in
> > - * sigcontext.__reserved[] if present.  They cannot be placed in the
> > - * extra space.  Any other record can be placed either in the extra
> > - * space or in sigcontext.__reserved[], unless otherwise specified in
> > - * this file.
> > + * 1) fpsimd_context, esr_context, fault_addr_top_byte_context and
> > + * extra_context must be placed in sigcontext.__reserved[] if present.
> > + * They cannot be placed in the extra space.  Any other record can be
> > + * placed either in the extra space or in sigcontext.__reserved[],
> > + * unless otherwise specified in this file.
> >   *
> >   * 2) There must not be more than one extra_context.
> >   *
> > diff --git a/arch/arm64/kernel/entry-common.c b/arch/arm64/kernel/entry-common.c
> > index c839b5bf1904..045b4f518836 100644
> > --- a/arch/arm64/kernel/entry-common.c
> > +++ b/arch/arm64/kernel/entry-common.c
> > @@ -22,7 +22,6 @@ static void notrace el1_abort(struct pt_regs *regs, unsigned long esr)
> >       unsigned long far = read_sysreg(far_el1);
> >
> >       local_daif_inherit(regs);
> > -     far = untagged_addr(far);
> >       do_mem_abort(far, esr, regs);
> >  }
> >  NOKPROBE_SYMBOL(el1_abort);
> > @@ -104,7 +103,6 @@ static void notrace el0_da(struct pt_regs *regs, unsigned long esr)
> >
> >       user_exit_irqoff();
> >       local_daif_restore(DAIF_PROCCTX);
> > -     far = untagged_addr(far);
> >       do_mem_abort(far, esr, regs);
> >  }
> >  NOKPROBE_SYMBOL(el0_da);
> > diff --git a/arch/arm64/kernel/signal.c b/arch/arm64/kernel/signal.c
> > index 339882db5a91..baa88dc02e5c 100644
> > --- a/arch/arm64/kernel/signal.c
> > +++ b/arch/arm64/kernel/signal.c
> > @@ -55,6 +55,7 @@ struct rt_sigframe_user_layout {
> >
> >       unsigned long fpsimd_offset;
> >       unsigned long esr_offset;
> > +     unsigned long ftb_offset;
> >       unsigned long sve_offset;
> >       unsigned long extra_offset;
> >       unsigned long end_offset;
> > @@ -383,6 +384,7 @@ static int parse_user_sigframe(struct user_ctxs *user,
> >                       break;
> >
> >               case ESR_MAGIC:
> > +             case FAULT_ADDR_TOP_BYTE_MAGIC:
> >                       /* ignore */
> >                       break;
> >
> > @@ -581,6 +583,12 @@ static int setup_sigframe_layout(struct rt_sigframe_user_layout *user,
> >                                    sizeof(struct esr_context));
> >               if (err)
> >                       return err;
> > +
> > +             err = sigframe_alloc(
> > +                     user, &user->ftb_offset,
> > +                     sizeof(struct fault_addr_top_byte_context));
>
> Nit: inconsistent indentation?
>
> (Mostly just because it makes the change look odd against the hunk
> context, but not a big deal.)

With consistent indentation we violate 80 cols due to the extra long
struct name. The indentation is what clang-format is giving me.

> > +             if (err)
> > +                     return err;
> >       }
> >
> >       if (system_supports_sve()) {
> > @@ -621,7 +629,8 @@ static int setup_sigframe(struct rt_sigframe_user_layout *user,
> >       __put_user_error(regs->pc, &sf->uc.uc_mcontext.pc, err);
> >       __put_user_error(regs->pstate, &sf->uc.uc_mcontext.pstate, err);
> >
> > -     __put_user_error(current->thread.fault_address, &sf->uc.uc_mcontext.fault_address, err);
> > +     __put_user_error(untagged_addr(current->thread.fault_address),
> > +                      &sf->uc.uc_mcontext.fault_address, err);
> >
> >       err |= __copy_to_user(&sf->uc.uc_sigmask, set, sizeof(*set));
> >
> > @@ -641,6 +650,17 @@ static int setup_sigframe(struct rt_sigframe_user_layout *user,
> >               __put_user_error(current->thread.fault_code, &esr_ctx->esr, err);
> >       }
> >
> > +     if (err == 0 && user->ftb_offset) {
> > +             struct fault_addr_top_byte_context __user *ftb_ctx =
> > +                     apply_user_offset(user, user->ftb_offset);
> > +
> > +             __put_user_error(FAULT_ADDR_TOP_BYTE_MAGIC,
> > +                              &ftb_ctx->head.magic, err);
> > +             __put_user_error(sizeof(*ftb_ctx), &ftb_ctx->head.size, err);
> > +             __put_user_error(current->thread.fault_address >> 56,
> > +                              &ftb_ctx->fault_addr_top_byte, err);
> > +     }
> > +
>
> How do we handle the fact that the top byte of FAR is sometimes UNKNOWN?
>
> For Synchronous external aborts in particular, those bits are documented
> as UNKNOWN, but I don't see any special handling,  There may be other
> cases I haven't spotted.
>
> For preference we can omit this record entirely if we don't have any
> information we can report, but certainly we shouldn't expose UNKNOWN
> bits.

In this case we mask out the top byte in do_sea before passing the
address to arm64_notify_die (which clears fault_address and passes the
address argument on to arm64_force_sig_fault to be exposed via
si_addr). So the record would always contain a 0 byte. It seems
reasonable to omit the record in this case instead.

> [ Aside:
>
> Also, what if we're not reporting a memory abort at all?  Does
> thread.fault_address just contain junk from the last fault?  I see
> nothing anywhere that cleans this up.  (This is historical and not
> your fault, but it would be good to close this down while we're about
> it.)
>
>
> Hmmm, looking at the code I think we probably leak fault_address etc.
> across execve() too, so it may even be stale junk from an old process
> :/
>
> Maybe I just confused myself.
>
> End aside. ]

Yes, it's unclear whether we always manage to not expose a fault
address if we're not reporting a data or instruction abort. The code
would need to arrange for fault_code to be set to 0 in order to avoid
exposing previous fault_address values via future signals. I don't see
anywhere where we're resetting these fields after delivering a signal,
so it seems possible by calling arm64_force_sig_fault without first
setting fault_code (most callers do this, but the calls in
arch/arm64/kernel/debug-monitors.c and arch/arm64/kernel/ptrace.c seem
not to), or simply by calling force_sig_fault (which happens in many
places throughout the kernel).

Maybe something like this would do the trick? (Untested, and forgive
spaces instead of tabs, grumble grumble gmail):

diff --git a/arch/arm64/kernel/signal.c b/arch/arm64/kernel/signal.c
index baa88dc02e5c..5867f2fdbe64 100644
--- a/arch/arm64/kernel/signal.c
+++ b/arch/arm64/kernel/signal.c
@@ -648,6 +648,7 @@ static int setup_sigframe(struct
rt_sigframe_user_layout *user,
                __put_user_error(ESR_MAGIC, &esr_ctx->head.magic, err);
                __put_user_error(sizeof(*esr_ctx), &esr_ctx->head.size, err);
                __put_user_error(current->thread.fault_code,
&esr_ctx->esr, err);
+               current->thread.fault_code = 0;
        }

        if (err == 0 && user->ftb_offset) {

> Apart from these issues, the actual code looks reasonable.

Thanks for the review.

Peter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
