Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A37C1F1EC8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 20:13:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9U0ZCsDvUt/g8cFAYAhkZe+jxF7puhY+T7Zu+4Wc/YE=; b=I6+92LOswLrcFH
	ejeTLq43voWkglxuHqci9veKxsssJGBzhct4JIXgFR9dA4zpfNDbTPq3M8YmHdGj/BCHBioZ4QFtk
	vKd6bQ1eSTQZBDzI2qOBH4cxFvazI9GVQfjvpTGKF0ouHoQgk/pwfMpfkXXkpIWBuUD9YoDVhHZvh
	LdfbC22WhmQYATG4zgLUD0CIZB+D0Jcveq2jx6DGe/XM41zSI6QzYwnWT4HI96CHrrUPYWkGmZN3G
	Bx6fxkPPpvE7HDS+jdqEsnv7Qh8LrFUm34zBgzhw/mqQquqTl5OE16avgq/GlWk7gZUL+z+1cf+Hc
	CbmqXRVVKtpmxE4uHqCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiMGV-0007XQ-Kl; Mon, 08 Jun 2020 18:12:55 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiMGN-0007Wp-Q3
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 18:12:49 +0000
Received: by mail-vs1-xe41.google.com with SMTP id t132so10106767vst.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 11:12:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9eKLyWc7pthlgXSA77k4pUXQUlKKo1sRx5BIhPqkuwc=;
 b=QJeTZ1bNy730wLFxqlZr0uQbjDsV67a8lKUAVxGiY6kqGNenq6iI8a9uRH1/lsHMRj
 r5xBxQcYKYwIZj1gzTD2FNeCC3aPe8pOG9rl1zIzAMk9/FBOPw5IYwKDZBAmna8qSgl1
 aBExEyLW1b46M18HLzdmh9PA5jgoKYBaUeGO7ZHuVUu/2N57fOjH4D+o/BMTzbBIJ/VL
 ViXTBOgmNl//vfcjE7jgjI2UX8TaPLrUAAfcY2SzyfstSqKeSvunOCnoFm42j3RkUpbp
 zTaAqHWAbm91W9xMPgveDBHYz0phvo70r+Fmy1h+npmJyqZTMxm8T4BBE702sQFQdywn
 Vwkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9eKLyWc7pthlgXSA77k4pUXQUlKKo1sRx5BIhPqkuwc=;
 b=PW9cjZw1DgEgTbSRZUJEQGfzUEXur/uQYMhsQMU0tnjTRAcZawcOOoTEbwB9t1ln3C
 kYWlyLlnqbFLycHvenHvqFgWHCSaIw2jRZt/46aD1882MegiQ2+PoP1/j2pqiI/AfYXj
 M4x0h5E2drWqyoZP7R5e54WUDF2K5RcnxIIB8BN697yRWe8gB/QwJHJCVZBS1tbHNin+
 y6K96uEyc5TUElDZAZ33+ehu7IpTzOtLIBIbRX+MiqItz5KBh1WvSqNCS24x1lDhScdH
 96kZ+NzndXXVVMAjpBprXOpFYUEZVF7B9q1dpfarjkqYlh/RVKBpvrmPKKkCLo0I6D1X
 R73w==
X-Gm-Message-State: AOAM533KpcnFdaRxrmFU3GrVF+prDv2dD/fVEjeEog0mnlCWahLbGPH3
 wZmHB5zJ6++jLnazLG8G0VwUQbKQkeDfw4iL2opc9w==
X-Google-Smtp-Source: ABdhPJyuZalyY3gyGil6Qzio2A4QY2/LwP7+/9fp9ExejA3x5UjiTPKS4bDLvJrszT9ASCr/ajmmYfJsy/gTVlYJED0=
X-Received: by 2002:a67:fc0b:: with SMTP id o11mr79713vsq.114.1591639963509;
 Mon, 08 Jun 2020 11:12:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200508020106.136652-1-pcc@google.com>
 <20200513180914.50892-1-pcc@google.com>
 <20200513202808.GY21779@arm.com>
 <CAMn1gO4V05nD-Tq4dES0QyO73bAT-Nwo1ABnz0nuous8Rq+dGA@mail.gmail.com>
 <20200518095313.GZ21779@arm.com>
 <CAMn1gO4c3-hG_i6ZWsk-+oUGQQBdzFJRMrpehT3OFERF2Z7nrg@mail.gmail.com>
 <20200520085502.GC24293@willie-the-truck> <20200520092558.GI5031@arm.com>
 <CAMn1gO7VWBcbMvqNeyBdfpO71kfhrZbHwkOC0JeSX13_HUMmWA@mail.gmail.com>
 <87zha1ea98.fsf@x220.int.ebiederm.org>
 <CAMn1gO6cgcP0O85BA_ire9j1L5zvN4i2JFRXO7R=MScXbmWG1g@mail.gmail.com>
 <874ks9drb6.fsf@x220.int.ebiederm.org>
 <CAMn1gO6POg4+aX0TNRW5ybOx+BNYbMr_ABHkGFj1hkJLOpx9jQ@mail.gmail.com>
In-Reply-To: <CAMn1gO6POg4+aX0TNRW5ybOx+BNYbMr_ABHkGFj1hkJLOpx9jQ@mail.gmail.com>
From: Peter Collingbourne <pcc@google.com>
Date: Mon, 8 Jun 2020 11:12:31 -0700
Message-ID: <CAMn1gO4CL6FVQh3dzxmYiuiOLKfEZi4jrKvc7N6UegxKSw7n2A@mail.gmail.com>
Subject: Re: [PATCH v6] arm64: Expose FAR_EL1 tag bits in sigcontext
To: "Eric W. Biederman" <ebiederm@xmission.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_111247_871203_8AC08FF8 
X-CRM114-Status: GOOD (  58.80  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
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
 Kevin Brodsky <kevin.brodsky@arm.com>, Oleg Nesterov <oleg@redhat.com>,
 Kostya Serebryany <kcc@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, Evgenii Stepanov <eugenis@google.com>,
 Richard Henderson <rth@twiddle.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 1:48 PM Peter Collingbourne <pcc@google.com> wrote:
>
> On Thu, May 21, 2020 at 12:28 PM Eric W. Biederman
> <ebiederm@xmission.com> wrote:
> >
> > Peter Collingbourne <pcc@google.com> writes:
> >
> > > On Thu, May 21, 2020 at 5:39 AM Eric W. Biederman <ebiederm@xmission.com> wrote:
> > >>
> > >> Peter Collingbourne <pcc@google.com> writes:
> > >>
> > >> > On Wed, May 20, 2020 at 2:26 AM Dave Martin <Dave.Martin@arm.com> wrote:
> > >> >>
> > >> >> On Wed, May 20, 2020 at 09:55:03AM +0100, Will Deacon wrote:
> > >> >> > On Tue, May 19, 2020 at 03:00:12PM -0700, Peter Collingbourne wrote:
> > >> >> > > On Mon, May 18, 2020 at 2:53 AM Dave Martin <Dave.Martin@arm.com> wrote:
> > >> >> > > > On Thu, May 14, 2020 at 05:58:21PM -0700, Peter Collingbourne wrote:
> > >> >> > > > > diff --git a/arch/arm64/kernel/signal.c b/arch/arm64/kernel/signal.c
> > >> >> > > > > index baa88dc02e5c..5867f2fdbe64 100644
> > >> >> > > > > --- a/arch/arm64/kernel/signal.c
> > >> >> > > > > +++ b/arch/arm64/kernel/signal.c
> > >> >> > > > > @@ -648,6 +648,7 @@ static int setup_sigframe(struct
> > >> >> > > > > rt_sigframe_user_layout *user,
> > >> >> > > > >                 __put_user_error(ESR_MAGIC, &esr_ctx->head.magic, err);
> > >> >> > > > >                 __put_user_error(sizeof(*esr_ctx), &esr_ctx->head.size, err);
> > >> >> > > > >                 __put_user_error(current->thread.fault_code,
> > >> >> > > > > &esr_ctx->esr, err);
> > >> >> > > > > +               current->thread.fault_code = 0;
> > >> >> > > >
> > >> >> > > > Perhaps, but we'd need to be careful.  For example, can we run out of
> > >> >> > > > user stack before this and deliver a SIGSEGV, but with the old
> > >> >> > > > fault_code still set?  Then we'd emit the old fault code with the
> > >> >> > > > new "can't deliver signal" signal, which doesn't make sense.
> > >> >> > > >
> > >> >> > > > Stuff may also go wrong with signal prioritisation.
> > >> >> > > >
> > >> >> > > > If a higher-priority signal (say SIGINT) comes in after a data abort
> > >> >> > > > enters the kernel but before the resulting SIGSEGV is dequeued for
> > >> >> > > > delivery, wouldn't we deliver SIGINT first, with the bogus fault code?
> > >> >> > > > With your change we'd then have cleared the fault code by the time we
> > >> >> > > > deliver the SIGSEGV it actually relates to, if I've understood right.
> > >> >> > > >
> > >> >> > > > Today, I think we just attach that fault code to every signal that's
> > >> >> > > > delivered until something overwrites or resets it, which means that
> > >> >> > > > a signal that needs fault_code gets it, at the expense of attaching
> > >> >> > > > it to a bunch of other random signals too.
> > >> >> > > >
> > >> >> > > >
> > >> >> > > > Checking the signal number and si_code might help us to know what we
> > >> >> > > > should be doing with fault_code.  We need to have sure userspace can't
> > >> >> > > > trick us with a non kernel generated signal here.  It would also be
> > >> >> > > > necessary to check how PTRACE_SETSIGINFO interacts with this.
> > >> >> > >
> > >> >> > > With these possible interactions in mind I think we should store the
> > >> >> > > fault code and fault address in kernel_siginfo instead of
> > >> >> > > thread_struct (and clear these fields when we receive a siginfo from
> > >> >> > > userspace, i.e. in copy_siginfo_from_user which is used by
> > >> >> > > ptrace(PTRACE_SETSIGINFO) among other places). That way, the
> > >> >> > > information is clearly associated with the signal itself and not the
> > >> >> > > thread, so we don't need to worry about our signal being delivered out
> > >> >> > > of order.
> > >> >> >
> > >> >> > Hmm, I can't see a way to do that that isn't horribly invasive in the core
> > >> >> > signal code. Can you?
> > >> >
> > >> > I think I've come up with a way that doesn't seem to be too invasive.
> > >> > See patch #1 of the series that I'm about to send out.
> > >> >
> > >> >> > But generally, I agree: the per-thread handling of fault_address and
> > >> >> > fault_code appears to be quite broken in the face of signal prioritisation
> > >> >> > and signals that don't correspond directly to hardware trap. It would be
> > >> >> > nice to have some tests for this...
> > >> >> >
> > >> >> > If we want to pile on more bodges, perhaps we could stash the signal number
> > >> >> > to which the fault_{address,code} relate, and then check that at delivery
> > >> >> > and clear on a match. I hate it.
> > >> >>
> > >> >> I agree with Daniel's suggestion in principle, but I was also concerned
> > >> >> about whether it would be too invasive elsewhere.
> > >> >>
> > >> >> Question though: does the core code take special care to make sure that
> > >> >> a force_sig cannot be outprioritised by a regular signal?  If so,
> > >> >> perhaps we get away with it.  I ask this, because the same same issue
> > >> >> may be hitting other arches otherwise.
> > >> >
> > >> > Not as far as I can tell. There does appear to be prioritisation for
> > >> > synchronous signals [1] but as far as I can tell nothing to
> > >> > distinguish one of these signals from one with the same signal number
> > >> > sent from userspace (e.g. via kill(2)).
> > >>
> > >> The si_code will differ between signals generated between userspace
> > >> and signals generated by the kernel.
> > >>
> > >> We do allow a little bit of ptrace and sending to yourself to spoof
> > >> kernel generated signals, for reasons of debugging and process migration
> > >> where an existing process needs to be reconstructed.  But the defenses
> > >> should be strong enough you can assume that we reliably distinguish
> > >> between a signal from userspace and a signal from the kernel.
> > >
> > > So check for SIGBUS || SIGSEGV and one of the below si_codes, and only
> > > add the context in that case? Seems fragile to me, but I suppose I
> > > could live with it.
> > >
> > >> I don't fully follow what you are doing but this feels like the
> > >> kind of case where a new si_code has been defined as well as additional
> > >> fields in siginfo.
> > >
> > > There is no new si_code for this, the information will be exposed for
> > > several existing si_code types (BUS_ADRERR, BUS_ADRALN, BUS_MCEERR_AR,
> > > SEGV_ACCERR, SEGV_MAPERR), and possibly others in the future
> > > (particularly SEGV_MTESERR, which is part of the proposed MTE patch
> > > set). Note that we already have a union field for BUS_MCEERR_AR, and
> > > we may want to expose it for the other si_codes that already have
> > > union fields as well.
> > >
> > > That being said, taking a closer look at siginfo, I think we are in
> > > luck and we might be able to make this work in a reasonable way by
> > > reusing padding (see below).
> > >
> > >> In your patchset I really hate that you were going back to
> > >> force_sig_info, and filling out struct siginfo by hand.  That is an
> > >> error prone pattern, and I have fixed enough bugs in the kernel to prove
> > >> that.
> > >
> > > To be fair, most of the callers are in helper functions that take
> > > explicit parameters similar to force_sig_fault et al, and the SIGILL
> > > one could easily be made that way as well.
> > >
> > >> I take exception to the idea that including the full address might break
> > >> userspace.  That means typically means someone has been too lazy to look
> > >> and see what userspace is doing.  When that userspace that might break
> > >> is the same userspace you are changing the kernel to serve that makes me
> > >> nervous.  AKA the userspace that cares about this signal and how it is
> > >> represented in siginfo.
> > >
> > > It's not a matter of being lazy. This behaviour isn't just an accident
> > > but has been explicitly documented for years (see the
> > > tagged-pointers.rst file that I changed: "Non-zero tags are not
> > > preserved when delivering signals."), so users can reasonably rely on
> > > it. Furthermore we simply don't have visibility into the majority of
> > > userspace. For example, there are a lot of closed source Android apps
> > > out there, and who knows what signal handlers they're installing and
> > > how they're making use of the si_addr field on e.g. SEGV_MAPERR. We
> > > can't just change the documented semantics under their feet.
> > >
> > > It's also not the same userspace either. The userspace that's
> > > initially going to be consuming the new fields is in a part of the
> > > Android system that handles and reports crashes, and that's something
> > > that we control unlike all the apps.
> > >
> > > Finally, the userspace may need to know whether the tag bits were
> > > actually zero or whether they were just unavailable, otherwise
> > > userspace could for example produce a misleading crash report. Simply
> > > having the kernel set the top bits of si_addr wouldn't accomplish that
> > > due to the kernel's previous behaviour, hence the mask to let
> > > userspace know which bits are accurate.
> > >
> > >> A fix of one instance of SIGILL should not be included with a patch that
> > >> does something else, and really should come before everything else if
> > >> possible.
> > >
> > > Fair point. I can see if I can split that part out.
> > >
> > >> If this information really belongs in struct siginfo (as it sounds like)
> > >> please actually put the information in siginfo, and let userspace look
> > >> in siginfo to find it.  struct siginfo is a union with plenty of space,
> > >> and plenty of si_codes.
> > >>
> > >> If this applies to multiple cases then it might be trickier but please
> > >> dig into the details, don't toss things into sigcontext just because
> > >> you can't figure out a clean design for reporting this.
> > >
> > > If we wanted this in siginfo, one idea that I had was to revert commit
> > > b68a68d3dcc15ebbf23cbe91af1abf57591bd96b and add unsigned char fields
> > > _addr_top_byte and _addr_top_byte_mask in the padding between
> > > _addr_lsb and the union (with comments on all the fields of course to
> > > say when they are filled in). I think that would work since we are
> > > already clearing padding in siginfo, one nice property of the new
> > > fields is that the zero values are correct in the case where the
> > > information isn't being exposed (so old kernels would already have the
> > > correct behaviour). That would only work on certain architectures
> > > (i.e. at least alignof(void*) >= 4) so I suppose it could have an
> > > #ifdef __aarch64__ around it.
> >
> > Perhaps add a 4th padding member to the union inside of _sigfault, that
> > adds something like 4 unsigned long's worth of data, and then have your
> > fields after the union.
>
> Maybe. I guess we could always add another union after my fields if we
> end up needing another union member that is larger than the 4 unsigned
> longs, which would be ugly but at least it would work. Reusing the
> padding would avoid that but maybe it's not that likely that we'll
> need that much.

In the interests of getting the discussion on this started again I'm
sending a v7 which moves the fields into the padding bytes after
si_addr_lsb. It should be easy to switch to another location in
siginfo if you don't like this one.

> > Is it quite a bit of work to gather that information from the
> > instructions that faulted?  I am just checking that this work is really
> > makes sense.
>
> I think so. At a glance there are hundreds of load and store
> instructions on arm64 and we would need to know how to disassemble all
> of them and recompute the si_addr from scratch (since the tag bits
> could come from any of the registers used to compute the address). And
> we really don't want to be doing this tricky stuff in a signal handler
> where we've just crashed.
>
> > What I really don't understand is how well this problem generalizes to
> > other architectures to tell if this is something other people need to
> > solve at some point as well.
>
> An architecture with a feature similar to ARM's TBI or MTE may need
> something like this as well, depending on whether they decide to
> expose the tag bits in si_addr from the start (and if the feature is
> similar to TBI it certainly seems like a reasonable choice to follow
> arm64 for compatibility reasons). I would imagine that the main thing
> that could vary between architectures is the number of bits involved,
> which suggests making the fields arch-specific (or making them larger,
> but that may be wasteful).

I made the new fields arch-specific given the points that I made above.

Peter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
