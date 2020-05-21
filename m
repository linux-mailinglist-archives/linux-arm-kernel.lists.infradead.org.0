Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFAEC1DD8AA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 22:49:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sli2z5EZLksb+p/e11f60mY7SHfkIAdJfmbaQ70LVL0=; b=r46kt2WON5Y/Ot
	h0dygJNLGdjdBCud9N/VCXmWLATKU4/TJPAVbeXMJYI4O1xb7L8A0Hut5btbho459mY6qTmJKYpKf
	FSxQHCMQEmIiKvjzGp5S3SbPqFZfC4sPqT5qCDdTbW2ShmYtMO0UTwARj4Mge7oIZ8l09hCq4xMTT
	yfnbiOVrXRQ7yv6Whg2YvMpd2ifscqccH7YI9TOuuEwIavryaOd/oqQtAgaijaSYH8Lp0jcKgDUMx
	SKpKYNR+p/vsQTchLC4xY6siy55xGKny54wSdGz4ckRe+pMhGrXnzbz1B6bSnPvG+9qS2ueqMcNYB
	pEYXWoGD53WsXLBG8AZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbs7c-0001nM-Fl; Thu, 21 May 2020 20:48:56 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbs7S-0001mu-F9
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 20:48:48 +0000
Received: by mail-vs1-xe41.google.com with SMTP id y13so4877373vsk.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 13:48:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=p3xW00WwjvWAE0e/7nAQkUdfg8TW9JJHt59aPfFAWV0=;
 b=OTbSU55IHoOEAjq8VYgVf5X5BibXnK/GM2FKKWLrUZwSSchRJ+t+tYmPMz1dtB0Gsw
 eUtvkcffoA5ISJ/tWavNj/gu49n/FiVynk4Kp/0FLpy0BAPC7PCSxeud0G9qaiW2rAMb
 Mg8zsD/Zh8vDU/jBCejDrw9TGstN/gE4ZML8Rvn7ozbd9BbrAJAn4OF1ioI5J1RcKk8b
 PuBeVJlVv0ZW8U3IpSJca6xPbnZWs/ct7HkPQAq2UCHRPlkFBd97/yhTY7Yp/fwiCq/b
 3sbma3Aupr2Z4iZl46K+NQfyyaaxa402DD7H748gPgPaHPZlSogW4TfKb8iUs7qvY1ku
 3t+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=p3xW00WwjvWAE0e/7nAQkUdfg8TW9JJHt59aPfFAWV0=;
 b=noylBhvUKecGFixkYOjcuuqN9+z2EKCmYpapEX0AMelSfdWnGGKT98+lCnmMf5r1FJ
 XedwUSMdBBaEq4nBrto3v7pDUn3wYyKrAzJYkYDPHuhFGDXLrmQptoXBq/wDGVAsxDCg
 ChKPF46mhwVUvqcnDJD5zNEwsSCJN4E0Rg6vc/5lwzJWRS2ri16P6BP/sbCqWlOFKZmH
 7KIqT3wDPdHigZZ3IYFloNEHfcH/FrOWGZc0sDS7OEFAzBkIk1v/f1qRWQGd/fAM9ARB
 pd9rKRmrMwF9xQskcyMr5Sap2jjZ0kXOgT+OvbvHSg/OehOyb4/mN9cjFkwsuEsvoPb1
 ddqQ==
X-Gm-Message-State: AOAM531z+eES507MRV1wdLk9QFpGfe9OECnJicyGUzkFv7PuM7DP+uPJ
 Uhp5RjlKbgJH2bqJCDEUDo400c3Ip/4ONGMRcTLJdQ==
X-Google-Smtp-Source: ABdhPJzIyWCsLJkisZerG1fXep4TEAoNG/35nPSCKsA5M+QVFVExr0B0BT3hnUf+3Qf2Kjl1taNTQrfEjTA/KZKuEns=
X-Received: by 2002:a67:d981:: with SMTP id u1mr8728499vsj.240.1590094121699; 
 Thu, 21 May 2020 13:48:41 -0700 (PDT)
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
In-Reply-To: <874ks9drb6.fsf@x220.int.ebiederm.org>
From: Peter Collingbourne <pcc@google.com>
Date: Thu, 21 May 2020 13:48:29 -0700
Message-ID: <CAMn1gO6POg4+aX0TNRW5ybOx+BNYbMr_ABHkGFj1hkJLOpx9jQ@mail.gmail.com>
Subject: Re: [PATCH v6] arm64: Expose FAR_EL1 tag bits in sigcontext
To: "Eric W. Biederman" <ebiederm@xmission.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_134846_534081_DF0B51D5 
X-CRM114-Status: GOOD (  56.84  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Thu, May 21, 2020 at 12:28 PM Eric W. Biederman
<ebiederm@xmission.com> wrote:
>
> Peter Collingbourne <pcc@google.com> writes:
>
> > On Thu, May 21, 2020 at 5:39 AM Eric W. Biederman <ebiederm@xmission.com> wrote:
> >>
> >> Peter Collingbourne <pcc@google.com> writes:
> >>
> >> > On Wed, May 20, 2020 at 2:26 AM Dave Martin <Dave.Martin@arm.com> wrote:
> >> >>
> >> >> On Wed, May 20, 2020 at 09:55:03AM +0100, Will Deacon wrote:
> >> >> > On Tue, May 19, 2020 at 03:00:12PM -0700, Peter Collingbourne wrote:
> >> >> > > On Mon, May 18, 2020 at 2:53 AM Dave Martin <Dave.Martin@arm.com> wrote:
> >> >> > > > On Thu, May 14, 2020 at 05:58:21PM -0700, Peter Collingbourne wrote:
> >> >> > > > > diff --git a/arch/arm64/kernel/signal.c b/arch/arm64/kernel/signal.c
> >> >> > > > > index baa88dc02e5c..5867f2fdbe64 100644
> >> >> > > > > --- a/arch/arm64/kernel/signal.c
> >> >> > > > > +++ b/arch/arm64/kernel/signal.c
> >> >> > > > > @@ -648,6 +648,7 @@ static int setup_sigframe(struct
> >> >> > > > > rt_sigframe_user_layout *user,
> >> >> > > > >                 __put_user_error(ESR_MAGIC, &esr_ctx->head.magic, err);
> >> >> > > > >                 __put_user_error(sizeof(*esr_ctx), &esr_ctx->head.size, err);
> >> >> > > > >                 __put_user_error(current->thread.fault_code,
> >> >> > > > > &esr_ctx->esr, err);
> >> >> > > > > +               current->thread.fault_code = 0;
> >> >> > > >
> >> >> > > > Perhaps, but we'd need to be careful.  For example, can we run out of
> >> >> > > > user stack before this and deliver a SIGSEGV, but with the old
> >> >> > > > fault_code still set?  Then we'd emit the old fault code with the
> >> >> > > > new "can't deliver signal" signal, which doesn't make sense.
> >> >> > > >
> >> >> > > > Stuff may also go wrong with signal prioritisation.
> >> >> > > >
> >> >> > > > If a higher-priority signal (say SIGINT) comes in after a data abort
> >> >> > > > enters the kernel but before the resulting SIGSEGV is dequeued for
> >> >> > > > delivery, wouldn't we deliver SIGINT first, with the bogus fault code?
> >> >> > > > With your change we'd then have cleared the fault code by the time we
> >> >> > > > deliver the SIGSEGV it actually relates to, if I've understood right.
> >> >> > > >
> >> >> > > > Today, I think we just attach that fault code to every signal that's
> >> >> > > > delivered until something overwrites or resets it, which means that
> >> >> > > > a signal that needs fault_code gets it, at the expense of attaching
> >> >> > > > it to a bunch of other random signals too.
> >> >> > > >
> >> >> > > >
> >> >> > > > Checking the signal number and si_code might help us to know what we
> >> >> > > > should be doing with fault_code.  We need to have sure userspace can't
> >> >> > > > trick us with a non kernel generated signal here.  It would also be
> >> >> > > > necessary to check how PTRACE_SETSIGINFO interacts with this.
> >> >> > >
> >> >> > > With these possible interactions in mind I think we should store the
> >> >> > > fault code and fault address in kernel_siginfo instead of
> >> >> > > thread_struct (and clear these fields when we receive a siginfo from
> >> >> > > userspace, i.e. in copy_siginfo_from_user which is used by
> >> >> > > ptrace(PTRACE_SETSIGINFO) among other places). That way, the
> >> >> > > information is clearly associated with the signal itself and not the
> >> >> > > thread, so we don't need to worry about our signal being delivered out
> >> >> > > of order.
> >> >> >
> >> >> > Hmm, I can't see a way to do that that isn't horribly invasive in the core
> >> >> > signal code. Can you?
> >> >
> >> > I think I've come up with a way that doesn't seem to be too invasive.
> >> > See patch #1 of the series that I'm about to send out.
> >> >
> >> >> > But generally, I agree: the per-thread handling of fault_address and
> >> >> > fault_code appears to be quite broken in the face of signal prioritisation
> >> >> > and signals that don't correspond directly to hardware trap. It would be
> >> >> > nice to have some tests for this...
> >> >> >
> >> >> > If we want to pile on more bodges, perhaps we could stash the signal number
> >> >> > to which the fault_{address,code} relate, and then check that at delivery
> >> >> > and clear on a match. I hate it.
> >> >>
> >> >> I agree with Daniel's suggestion in principle, but I was also concerned
> >> >> about whether it would be too invasive elsewhere.
> >> >>
> >> >> Question though: does the core code take special care to make sure that
> >> >> a force_sig cannot be outprioritised by a regular signal?  If so,
> >> >> perhaps we get away with it.  I ask this, because the same same issue
> >> >> may be hitting other arches otherwise.
> >> >
> >> > Not as far as I can tell. There does appear to be prioritisation for
> >> > synchronous signals [1] but as far as I can tell nothing to
> >> > distinguish one of these signals from one with the same signal number
> >> > sent from userspace (e.g. via kill(2)).
> >>
> >> The si_code will differ between signals generated between userspace
> >> and signals generated by the kernel.
> >>
> >> We do allow a little bit of ptrace and sending to yourself to spoof
> >> kernel generated signals, for reasons of debugging and process migration
> >> where an existing process needs to be reconstructed.  But the defenses
> >> should be strong enough you can assume that we reliably distinguish
> >> between a signal from userspace and a signal from the kernel.
> >
> > So check for SIGBUS || SIGSEGV and one of the below si_codes, and only
> > add the context in that case? Seems fragile to me, but I suppose I
> > could live with it.
> >
> >> I don't fully follow what you are doing but this feels like the
> >> kind of case where a new si_code has been defined as well as additional
> >> fields in siginfo.
> >
> > There is no new si_code for this, the information will be exposed for
> > several existing si_code types (BUS_ADRERR, BUS_ADRALN, BUS_MCEERR_AR,
> > SEGV_ACCERR, SEGV_MAPERR), and possibly others in the future
> > (particularly SEGV_MTESERR, which is part of the proposed MTE patch
> > set). Note that we already have a union field for BUS_MCEERR_AR, and
> > we may want to expose it for the other si_codes that already have
> > union fields as well.
> >
> > That being said, taking a closer look at siginfo, I think we are in
> > luck and we might be able to make this work in a reasonable way by
> > reusing padding (see below).
> >
> >> In your patchset I really hate that you were going back to
> >> force_sig_info, and filling out struct siginfo by hand.  That is an
> >> error prone pattern, and I have fixed enough bugs in the kernel to prove
> >> that.
> >
> > To be fair, most of the callers are in helper functions that take
> > explicit parameters similar to force_sig_fault et al, and the SIGILL
> > one could easily be made that way as well.
> >
> >> I take exception to the idea that including the full address might break
> >> userspace.  That means typically means someone has been too lazy to look
> >> and see what userspace is doing.  When that userspace that might break
> >> is the same userspace you are changing the kernel to serve that makes me
> >> nervous.  AKA the userspace that cares about this signal and how it is
> >> represented in siginfo.
> >
> > It's not a matter of being lazy. This behaviour isn't just an accident
> > but has been explicitly documented for years (see the
> > tagged-pointers.rst file that I changed: "Non-zero tags are not
> > preserved when delivering signals."), so users can reasonably rely on
> > it. Furthermore we simply don't have visibility into the majority of
> > userspace. For example, there are a lot of closed source Android apps
> > out there, and who knows what signal handlers they're installing and
> > how they're making use of the si_addr field on e.g. SEGV_MAPERR. We
> > can't just change the documented semantics under their feet.
> >
> > It's also not the same userspace either. The userspace that's
> > initially going to be consuming the new fields is in a part of the
> > Android system that handles and reports crashes, and that's something
> > that we control unlike all the apps.
> >
> > Finally, the userspace may need to know whether the tag bits were
> > actually zero or whether they were just unavailable, otherwise
> > userspace could for example produce a misleading crash report. Simply
> > having the kernel set the top bits of si_addr wouldn't accomplish that
> > due to the kernel's previous behaviour, hence the mask to let
> > userspace know which bits are accurate.
> >
> >> A fix of one instance of SIGILL should not be included with a patch that
> >> does something else, and really should come before everything else if
> >> possible.
> >
> > Fair point. I can see if I can split that part out.
> >
> >> If this information really belongs in struct siginfo (as it sounds like)
> >> please actually put the information in siginfo, and let userspace look
> >> in siginfo to find it.  struct siginfo is a union with plenty of space,
> >> and plenty of si_codes.
> >>
> >> If this applies to multiple cases then it might be trickier but please
> >> dig into the details, don't toss things into sigcontext just because
> >> you can't figure out a clean design for reporting this.
> >
> > If we wanted this in siginfo, one idea that I had was to revert commit
> > b68a68d3dcc15ebbf23cbe91af1abf57591bd96b and add unsigned char fields
> > _addr_top_byte and _addr_top_byte_mask in the padding between
> > _addr_lsb and the union (with comments on all the fields of course to
> > say when they are filled in). I think that would work since we are
> > already clearing padding in siginfo, one nice property of the new
> > fields is that the zero values are correct in the case where the
> > information isn't being exposed (so old kernels would already have the
> > correct behaviour). That would only work on certain architectures
> > (i.e. at least alignof(void*) >= 4) so I suppose it could have an
> > #ifdef __aarch64__ around it.
>
> Perhaps add a 4th padding member to the union inside of _sigfault, that
> adds something like 4 unsigned long's worth of data, and then have your
> fields after the union.

Maybe. I guess we could always add another union after my fields if we
end up needing another union member that is larger than the 4 unsigned
longs, which would be ugly but at least it would work. Reusing the
padding would avoid that but maybe it's not that likely that we'll
need that much.

> Is it quite a bit of work to gather that information from the
> instructions that faulted?  I am just checking that this work is really
> makes sense.

I think so. At a glance there are hundreds of load and store
instructions on arm64 and we would need to know how to disassemble all
of them and recompute the si_addr from scratch (since the tag bits
could come from any of the registers used to compute the address). And
we really don't want to be doing this tricky stuff in a signal handler
where we've just crashed.

> What I really don't understand is how well this problem generalizes to
> other architectures to tell if this is something other people need to
> solve at some point as well.

An architecture with a feature similar to ARM's TBI or MTE may need
something like this as well, depending on whether they decide to
expose the tag bits in si_addr from the start (and if the feature is
similar to TBI it certainly seems like a reasonable choice to follow
arm64 for compatibility reasons). I would imagine that the main thing
that could vary between architectures is the number of bits involved,
which suggests making the fields arch-specific (or making them larger,
but that may be wasteful).

The only other architecture that I'm aware of with such a feature is
SPARC (whose ADI is similar to MTE). The documentation [1] seems to
suggest that the tag bits are available in si_addr but isn't very
specific.

Peter

[1] https://www.kernel.org/doc/Documentation/sparc/adi.rst

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
