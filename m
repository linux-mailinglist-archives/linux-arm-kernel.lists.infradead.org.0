Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEF871DB0EF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 13:03:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=000H4UWqsvhd4GjkJ9YACS/3sBr8H0PeEwzyRa50kP4=; b=Y8NJxVOdujSe2S
	+3KZ0Atz48b6LXolYDdb5MRr6EOIg3rRh1tBaNV3yKyCLleaT/2CvphuWq7j3yq/81zMaEbXgG7rC
	kypplkmWWfSnabdX1EvwLw2Qt/sur+8y/S44Y4DBENLsz0xIvJNcKL+ds5adzAFN05hRdLumgv4lO
	pQtsD6K6jj6zos9bXNufmjhRqGFN3+SE4XCvdc9wltXA/JzGBTMCnKU8TPMESV0tea6WYP2KlyWaT
	2v9LmLQhKPIw66fTbcyZos7BbAAxQtSJXCeiGSs14AVt8saTAxWoP9M2LYYB2m2v35G6kzEHpNWdQ
	F94VSlLma82HZKIl7sUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbMVd-0004tg-KR; Wed, 20 May 2020 11:03:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbMVU-0004t1-5k
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 11:03:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7D34831B;
 Wed, 20 May 2020 04:03:27 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9819D3F68F;
 Wed, 20 May 2020 04:03:26 -0700 (PDT)
Date: Wed, 20 May 2020 12:03:24 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2 2/2] arm64: vdso: Fix CFI directives in sigreturn
 trampoline
Message-ID: <20200520110323.GN5031@arm.com>
References: <20200519162821.16857-1-will@kernel.org>
 <20200519162821.16857-3-will@kernel.org>
 <20200520094212.GK5031@arm.com>
 <20200520095027.GE24293@willie-the-truck>
 <20200520102747.GM5031@arm.com>
 <20200520103640.GA25539@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520103640.GA25539@willie-the-truck>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_040328_303179_85F6DA98 
X-CRM114-Status: GOOD (  32.05  )
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
Cc: Tamas Zsoldos <tamas.zsoldos@arm.com>, Mark Brown <broonie@kernel.org>,
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org,
 Daniel Kiss <daniel.kiss@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 11:36:40AM +0100, Will Deacon wrote:
> On Wed, May 20, 2020 at 11:27:47AM +0100, Dave Martin wrote:
> > On Wed, May 20, 2020 at 10:50:28AM +0100, Will Deacon wrote:
> > > On Wed, May 20, 2020 at 10:42:13AM +0100, Dave Martin wrote:
> > > > On Tue, May 19, 2020 at 05:28:21PM +0100, Will Deacon wrote:
> > > > > @@ -14,7 +18,34 @@
> > > > >  
> > > > >  	.text
> > > > >  
> > > > > -	nop
> > > > > +/* Ensure that the mysterious NOP can be associated with a function. */
> > > > > +	.cfi_startproc
> > > > > +
> > > > > +/*
> > > > > + * .cfi_signal_frame causes the corresponding Frame Description Entry in the
> > > > > + * .eh_frame section to be annotated as a signal frame. This allows DWARF
> > > > > + * unwinders (e.g. libstdc++) to implement _Unwind_GetIPInfo(), which permits
> > > > > + * unwinding out of the signal trampoline without the need for the mysterious
> > > > > + * NOP.
> > > > > + */
> > > > > +	.cfi_signal_frame
> > > > > +
> > > > > +/*
> > > > > + * Tell the unwinder where to locate the frame record linking back to the
> > > > > + * interrupted context.
> > > > > + */
> > > > > +	.cfi_def_cfa    x29, 0
> > > > > +	.cfi_offset     x29, 0 * 8
> > > > > +	.cfi_offset     x29, 1 * 8
> > > > 
> > > > We should also give rationale for why we don't describe how to recover
> > > > other regs here.  At a signal, every reg is potentially live with data
> > > > essential to the backtrace, so custom unwind entries further up the
> > > > stack may unwind badly after trying to unwind out of the signal handler.
> > > 
> > > Hmm, I'm not sure I get what you're asking for. We can't recover the other
> > > registers even if we tried, can we? I think the only way to get a reliable
> > > backtrace here is not to clobber the framepointer.
> > 
> > A caller somewhere up the stack could have stashed stuff in nonstandard
> > places, with a custom unwind entry that doesn't use x29 in the usual way.
> > 
> > If x29 and x30 were stashed in x8 and x9, say, then the unwinder needs
> > to restore x8 and x9 correctly before that frame is reached.  Dwarf
> > unwind tables are expressive enough to describe how to unwind such a
> > frames: the directives work on all the registers, not just x29, lr.
> 
> Understood, I just can't figure out how we could support that even if we
> wanted to. The only evidence we have of those registers is in the
> sigcontext, but that may have been modified by the time we end up in the
> return trampoline. Would we need to push the registers twice (i.e. expand
> the frame record to include the GPRs)? Not saying we should do this, just
> wondering what it would take.

No, it's inevitably best effort.

If the signal handler doesn't intend to return, than the backtrace may
be nonsense anyway.  The signal might result from the regs being garbage
anyway, or the signal might be deliberate suicide by the "caller".

If the signal handler does intend to return normally, then it is
responsible for manipulating the sigcontext in a way that doesn't break
the interrupted code -- which implies that the backtrace will be valid,
and also means that invasive non-atomic changes to the sigcontext are
unlikely.  Because we can't know the intent of the handler, no amount
of pushing duplicates etc. can work 100% of the time.

The overwhelmingly common case of is that the signal handler doesn't
mess with sigcontext at all, though.  So we could probably restore the
integer regs correctly for the common case.


Nonetheless, there are limitations.  Dwarf unwind can't describe how to
unwind the FPSIMD/SVE regs etc.  We're really into debugger territory
if we start to care about that stuff.


> > For this kind of unwinding scenario to wokr, the userspace environment
> > would need to provide correct unwind info for _everything_ rather than
> > relying on the frame chain on the stack alone, so this scenario isn't
> > applicable to C.
> > 
> > I'm not saying we should try to support this, but a comment to indicate
> > what we are and are not trying to do might be a good idea.
> > 
> > How about something along these lines:
> > 
> > /*
> >  * Don't try to provide unwind into for the other regs of the
> >  * interrupted context here.  C/C++ based runtimes don't rely on
> >  * this for unwinding in practice.  Debuggers need more, but they
> >  * already have baked-in knowledge about how to unwind out of
> >  * signals.
> >  */
> 
> I'll fold that in, thanks.

Thanks.  This just avoids having to ask the question again or go back
over all the messy rationale above.

If someone _needs_ this to be extended in future, we can revisit it.
But I hope not!

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
