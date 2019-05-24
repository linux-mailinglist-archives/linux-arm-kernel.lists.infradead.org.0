Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD0629CC6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 19:19:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iWIqynzqycJJM5faaiboILR39qiEbYM7Y3ohUNXG87Q=; b=CvsqDhQI3V/pdK
	mffhwo3jOxHEmYFUWGTXSfgc7QjMbZy5FR5dmjufx1/k+SgCBb+oQir3h6Ln+wVWBtIDBTo03ye4K
	I4UjJFf/WMtVsgTqBOzX2B45gIqgBmH+CSrV8Nuo5RqXGVrRwEQFtkYuwjp3go6buV78qKX0MEUo+
	6qkmntG6U/y+Ys4uGEaW+NfJhDWtu9r4zdPUYnEdIYZmj1NnhroyGH0bY4AWaoOj83YoJehWq9p0f
	BO0eusePD/r9mPvdRBlImp95FYS2D7f6AB/VYy5vuFwN+myZINKPB7ECKyPZNma7v69uxWCqL9jsT
	wopjbd5QVTmaxdId3JWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUDqo-0002Wx-OE; Fri, 24 May 2019 17:19:26 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUDqh-0002W4-K9
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 17:19:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 053E780D;
 Fri, 24 May 2019 10:19:18 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 784923F703;
 Fri, 24 May 2019 10:19:15 -0700 (PDT)
Date: Fri, 24 May 2019 18:19:10 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH 4/8] arm64: Basic Branch Target Identification support
Message-ID: <20190524171908.GA18057@lakrids.cambridge.arm.com>
References: <1558693533-13465-1-git-send-email-Dave.Martin@arm.com>
 <1558693533-13465-5-git-send-email-Dave.Martin@arm.com>
 <20190524130217.GA15566@lakrids.cambridge.arm.com>
 <20190524145306.GZ28398@e103592.cambridge.arm.com>
 <20190524153847.GE15566@lakrids.cambridge.arm.com>
 <20190524161239.GA28398@e103592.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190524161239.GA28398@e103592.cambridge.arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_101919_676714_752E43B4 
X-CRM114-Status: GOOD (  45.62  )
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
 Yu-cheng Yu <yu-cheng.yu@intel.com>, Paul Elliott <paul.elliott@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 Andrew Jones <drjones@redhat.com>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 linux-kernel@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Sudakshina Das <sudi.das@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 24, 2019 at 05:12:40PM +0100, Dave Martin wrote:
> On Fri, May 24, 2019 at 04:38:48PM +0100, Mark Rutland wrote:
> > On Fri, May 24, 2019 at 03:53:06PM +0100, Dave Martin wrote:
> > > On Fri, May 24, 2019 at 02:02:17PM +0100, Mark Rutland wrote:
> > > > On Fri, May 24, 2019 at 11:25:29AM +0100, Dave Martin wrote:
> > > > >  /* Additional SPSR bits not exposed in the UABI */
> > > > >  #define PSR_IL_BIT		(1 << 20)
> > > > > +#define PSR_BTYPE_CALL		(2 << 10)
> > > > 
> > > > I thought BTYPE was a 2-bit field, so isn't there at leat one other
> > > > value to have a mnemonic for?
> > > > 
> > > > Is it an enumeration or a bitmask?
> > > 
> > > It's a 2-bit enumeration, and for now this is the only value that the
> > > kernel uses: this determines the types of BTI landing pad permitted at
> > > signal handler entry points in BTI guarded pages.
> > > 
> > > Possibly it would be clearer to write it
> > > 
> > > #define PSR_BTYPE_CALL		(0b10 << 10)
> > > 
> > > but we don't write other ptrace.h constants this way.  In UAPI headers
> > > we should avoid GCC-isms, but here it's OK since we already rely on this
> > > syntax internally.
> > > 
> > > I can change it if you prefer, though my preference is to leave it.
> > 
> > I have no issue with the (2 << 10) form, but could we add mnemonics for
> > the other values now, even if we're not using them at this instant?
> 
> Can do.  How about.
> 
> 	PSR_BTYPE_NONE	(0 << 10)
> 	PSR_BTYPE_JC	(1 << 10)
> 	PSR_BTYPE_C	(2 << 10)
> 	PSR_BTYPE_J	(3 << 10)
> 
> That matches the way I decode PSTATE for splats.
> 
> The architecture does not define mnemonics so these are my invention,
> but anyway this is just for the kernel.

That looks good to me!

[...]

> > > > > @@ -741,6 +741,11 @@ static void setup_return(struct pt_regs *regs, struct k_sigaction *ka,
> > > > >  	regs->regs[29] = (unsigned long)&user->next_frame->fp;
> > > > >  	regs->pc = (unsigned long)ka->sa.sa_handler;
> > > > >  
> > > > > +	if (system_supports_bti()) {
> > > > > +		regs->pstate &= ~(regs->pstate & PSR_BTYPE_MASK);
> > > > 
> > > > Nit: that can be:
> > > > 
> > > > 		regs->pstate &= ~PSR_BTYPE_MASK;
> > > 
> > > x & ~y is sensitive to the type of y and can clobber high bits, so I
> > > prefer not to write it.  GCC generates the same code either way.
> > 
> > Ah, I thought this might befor type promotion.
> > 
> > > However, this will also trip us up elsewhere when the time comes, so
> > > maybe it's a waste of time working around it here.
> > > 
> > > If you feel strongly, I'm happy to change it.
> > 
> > I'd rather we followed the same pattern as elsewhere, as having this
> > special case is confusing, and we'd still have the same bug elsewhere.
> > 
> > My concern here is consistency, so if you want to fix up all instances
> > to preserve the upper 32 bits of regs->pstate, I'd be happy. :)
> > 
> > I also think there are nicer/clearer ways to fix the type promotion
> > issue, like using UL in the field definitions, using explicit casts, or
> > adding helpers to set/clear bits with appropriate promotion.
> 
> Sure, I change it to be more consistent.
> 
> Wrapping this idiom up in a clear_bits() wrapper might be an idea, 
> but in advance of that it makes little sense to do it just in this one
> place.
> 
> I don't really like annotating header #defines with arbitrary types
> until it's really necessary, so I'll leave it for now.

Sure, that's fine by me.

[...]

> > > > > diff --git a/arch/arm64/kernel/syscall.c b/arch/arm64/kernel/syscall.c
> > > > > index 5610ac0..85b456b 100644
> > > > > --- a/arch/arm64/kernel/syscall.c
> > > > > +++ b/arch/arm64/kernel/syscall.c
> > > > > @@ -66,6 +66,7 @@ static void el0_svc_common(struct pt_regs *regs, int scno, int sc_nr,
> > > > >  	unsigned long flags = current_thread_info()->flags;
> > > > >  
> > > > >  	regs->orig_x0 = regs->regs[0];
> > > > > +	regs->pstate &= ~(regs->pstate & PSR_BTYPE_MASK);
> > > > 
> > > > Likewise:
> > > > 
> > > > 	regs->pstate &= ~PSR_BTYPE_MASK;
> > > > 
> > > > ... though I don't understand why that would matter to syscalls, nor how
> > > > those bits could ever be set given we had to execute an SVC to get here.
> > > > 
> > > > What am I missing?
> > > 
> > > The behaviour is counterintuivite here.  The architecture guarantees to
> > > preserve BTYPE for traps, faults and asynchronous exceptions, but for a
> > > synchronous execption from normal architectural execution of an
> > > exception-generating instruction (SVC/HVC/SMC) the architecture leaves
> > > it IMP DEF whether BTYPE is preserved or zeroed in SPSR.
> > 
> > I'm still missing something here. IIUC were BTYPE was non-zero, we
> > should take the BTI trap before executing the SVC/HVC/SMC, right?
> > 
> > Otherwise, it would be possible to erroneously branch to an SVC/HVC/SMC,
> > which would logically violate the BTI protection.
> 
> Only if the SVC (etc.) is in a BTI guarded page.  Otherwise, we could
> have legitimately branched to the SVC insn directly and BTYPE would
> be nonzero, but no trap would occur.

I agree that would be the case immediately before we execute the SVC,
but I think there's a subtlety here w.r.t. what exactly happens as an
SVC is executed.

My understanding was that even for unguarded pages, the execution of any
(non branch/eret) instruction would zero PSTATE.BTYPE.

For SVC it's not clear to me whether generating the SVC exception is
considered to be an effect of completing the execution of an SVC,
whether it's considered as preempting the execution of the SVC, or
whether that's IMPLEMENTATION DEFINED.

Consequently it's not clear to me whether or not executing an SVC clears
PSTATE.BTYPE before the act of taking the exception samples PSTATE. I
would hope that it does, as this would be in keeping with the way the
ELR is updated.

I think that we should try to clarify that before we commit ourselves to
the most painful interpretation here. Especially as similar would apply
to HVC and SMC, and I strongly suspect firmware in general is unlikely
to fix up the PSTATE.BTYPE of a caller.

> We should still logically zero BTYPE across SVC in that case, because 
> the SVC may itself branch:  a signal could be delivered on return and
> we want the prevailing BTYPE then to be 0 for capture in the signal
> frame.  Doing this zeroing in signal delivery because if the signal
> is not delivered in SVE then a nonzero BTYPE might be live, and we
> must then restore it properly on sigreturn.

I'm not sure I follow this.

If we deliver a signal, the kernel generates a pristine PSTATE for the
signal handler, and the interrupted context doesn't matter.

Saving/restoring the state of the interrupted context is identical to
returning without delivering the signal, and we'd have a problem
regardless.

> As you observe, this scenario should be impossible if the SVC insn
> is in a guarded page, unless userspace does something foolhardy like
> catching the SIGILL and fudging BTYPE or the return address.

I think userspace gets to pick up the pieces in this case. Much like
signal delivery, it would need to generate a sensible PSTATE itself.

[...]

> (Now I come to think of it I also need to look at rseq etc., which is
> another magic kernel-mediated branch mechanism.)

Fun. ;)

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
