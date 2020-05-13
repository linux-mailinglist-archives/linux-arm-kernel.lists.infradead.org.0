Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E28A21D16F7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 16:04:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6yIgdn/fILFKnazRaNV48VIZE9xHCm1EbUMwoldofNg=; b=aXF+qW/UjEnZVV
	CAk4y2f9HLvmfFcC9baI1Ow7SCEhNjdvCOsUgHB98ejBvUP/scE3pOlkw7SkDlsmE5iv0IEzcvXsC
	4C33n2kQoWciu/TQFKGEUga7bWsej7kStTwcjV8CukQh0oJREeWV4vh9/J2kT1gmk9/74nfUNe/q9
	/8L7QcqtJtOAL73Ryq3Wqq/eUa8DiwE5hdnfBnRwhzUh0V4E/ondGDOmsrJ468ejr8Ie/Ii5Saooq
	VgvOKUsX++V5Z6F1EyVKPjzv7Wl6MFg9jeFGaNUx1lIkb+2J5up6NUmJet97jrl/xW3LWrrVp/ScQ
	2vG8IG/Gn02TZHkq8m+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYs02-00013Y-P5; Wed, 13 May 2020 14:04:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrxU-0007bG-Be
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 14:02:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5BBC731B;
 Wed, 13 May 2020 07:02:03 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 761933F71E;
 Wed, 13 May 2020 07:02:02 -0700 (PDT)
Date: Wed, 13 May 2020 15:02:00 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: Re: [PATCH 13/14] prctl.2: Add SVE prctls (arm64)
Message-ID: <20200513140200.GP21779@arm.com>
References: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
 <1589301419-24459-14-git-send-email-Dave.Martin@arm.com>
 <20200513084351.GB18196@willie-the-truck>
 <20200513104635.GD21779@arm.com>
 <a01fc572-cac8-1932-c3e5-c70184417ca3@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a01fc572-cac8-1932-c3e5-c70184417ca3@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_070204_530529_1F8F520A 
X-CRM114-Status: GOOD (  37.73  )
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
Cc: linux-arch@vger.kernel.org, linux-man@vger.kernel.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 01:01:12PM +0200, Michael Kerrisk (man-pages) wrote:
> Hi,
> 
> On 5/13/20 12:46 PM, Dave Martin wrote:
> > On Wed, May 13, 2020 at 09:43:52AM +0100, Will Deacon wrote:
> >> Hi Dave,
> >>
> >> On Tue, May 12, 2020 at 05:36:58PM +0100, Dave Martin wrote:
> >>> diff --git a/man2/prctl.2 b/man2/prctl.2
> >>> index 7f511d2..dd16227 100644
> >>> --- a/man2/prctl.2
> >>> +++ b/man2/prctl.2
> >>> @@ -1291,6 +1291,104 @@ call failing with the error
> >>>  .BR ENXIO .
> >>>  For further details, see the kernel source file
> >>>  .IR Documentation/admin-guide/kernel-parameters.txt .
> >>> +.\" prctl PR_SVE_SET_VL
> >>> +.\" commit 2d2123bc7c7f843aa9db87720de159a049839862
> >>> +.\" linux-5.6/Documentation/arm64/sve.rst
> >>> +.TP
> >>> +.BR PR_SVE_SET_VL " (since Linux 4.15, only on arm64)"
> >>> +Configure the thread's SVE vector length,
> >>> +as specified by
> >>> +.IR arg2 .
> >>> +Arguments
> >>> +.IR arg3 ", " arg4 " and " arg5
> >>> +are ignored.
> >>
> >> Bugger, did we forget to force these to zero? I guess we should write the
> >> man-page first next time :(
> 
> Quite...
> 
> > Not an accident, but there does seem to be some inconsistency in policy
> > among the various prctls here.
> 
> The whole 5-args-for-prctl thing was a bit of a misdesign.
> 
> The general preference is that, for new prctls, unused arguments 
> should be required to be zero. Historically, there was much
> inconsistency.
> 
> > glibc explicitly has
> > 
> > 	extern int prctl (int __option, ...);
> > 
> > (and nobody has to write _exit(0, 0, 0, 0, 0, 0) after all.)
> > 
> > Is there some agreed rationale for requiring redundant arguments to be
> > supplied explicitly as zero?  For now there are likely to be few users
> > of this, so we _might_ get away with changing the behaviour here if it's
> > considered important enough.
> 
> See above.

So there is no bulletproof rationale for either approach, but the main
concern is inconsistency?  Have I understood that right?

I'll propose to get that written down in the kernel source somewhere
if so.

(From my end, the pros and cons of the two approaches seem superficial
but the inconsistency is indeed annoying.  For PR_SVE_SET_VL, I think
the first example I looked at didn't zero the trailing arguments, so I
didn't either... but it's been upstream for several releases, so most
likely we're stuck with it.)

> 
> > There is no forwards compatibility problem with this prctl though,
> > because there are spare bits in arg2 which can "turn on" additional
> > args if needed.
> > 
> > Also, it's implausible that PR_SVE_GET_VL will ever want an argument.
> > 
> > There are still 2 billion unallocated prctl numbers, so new prctls can
> > always be added if there's ever a need to work around these limitations,
> > but it seems extremely unlikely.
> > 
> >>
> >>> +.IP
> >>> +The bits of
> >>> +.I arg2
> >>> +corresponding to
> >>> +.B SVE_VL_LEN_MASK
> >>
> >> PR_SVE_LEN_MASK
> > 
> > Hmm, not sure how that happened.  Good spot!
> > 
> > I'll recheck that all the names are real when reposting.
> > 
> >>> +must be set to the desired vector length in bytes.
> >>> +In addition,
> >>> +.I arg2
> >>> +may include zero or more of the following flags:
> >>> +.RS
> >>> +.TP
> >>> +.B PR_SVE_VL_INHERIT
> >>> +Inherit the configured vector length across
> >>> +.BR execve (2).
> >>> +.TP
> >>> +.B PR_SVE_SET_VL_ONEXEC
> >>> +Defer the change until the next
> >>> +.BR execve (2)
> >>> +in this thread.
> >>
> >> (aside, it's weird that we didn't allocate (1<<16) for one of these flags)
> > 
> > The flag definitions are shared with ptrace: ptrace is the
> > SVE_PT_REGS_SVE format selection bit, which isn't relevant to the prctl.
> > 
> > Maybe it would have made more sense to keep the definitions completely
> > separate, but it's there now.
> > 
> >>> +If
> >>> +.B PR_SVE_VL_INHERIT
> >>> +is also included in
> >>> +.IR arg2 ,
> >>> +it takes effect
> >>> +.I after
> >>> +this deferred change.
> >>
> >> I find this a bit hard to follow, since it's not clear to me whether the
> >> INHERIT flag is effectively set before or after the next execve(). In other
> >> words, if both PR_SVE_SET_VL_ONEXEC and PR_SVE_VL_INHERIT are specified,
> >> is the vector length preserved or reset on the next execve()?
> > 
> > It makes no difference, because the ONEXEC handling takes priority over
> > the INHERIT handling. But either way INHERIT is never cleared by execve()
> > and will apply at subsequent execs().
> > 
> > Explaining all this properly seems out of scope here.  Maybe this should
> > be trimmed down rather than elaborated?  Or perhaps just explain it in
> > terms of what the kernel does instead of futile attempts to make it
> > intuitive?
> > 
> > Ultimately I'll probably write a separate page or pages for SVE and other
> > arm64 specifics.
> 
> (okay.)
> 
> >>> +.RE
> >>> +.IP
> >>> +On success, the vector length and flags are set as requested,
> >>> +and any deferred change that was pending immediately before the
> >>> +.B PR_SVE_SET_VL
> >>> +call is canceled.
> >>
> >> Huh, turns out 'canceled' is a valid US spelling. Fair enough, but it looks
> >> wrong to me ;)
> > 
> > Yeah, I know, but the man pages do have a documented policy on this...
> > 
> > prctl.2 has a lot of authors, so having mixed spellings could get
> > particularly messy.
> 
> Quite. Indeed, that was how things were when I took over as
> maintainer: a hodge-podge of British and American spellings,
> occasionally even in the same page. I decided we needed
> consistency, and though American is not my native spelling,
> it seemed the most appropriate convention.
> 
> >>
> >>> +If
> >>> +.B PR_SVE_SET_VL_ONEXEC
> >>> +was included in
> >>> +.IR arg2 ,
> >>> +the returned value describes the configuration
> >>> +scheduled to take effect at the next
> >>> +.BR execve (2).
> >>
> >> "describes the configuration" how?
> >>
> >>> +Otherwise, the effect is immediate and
> >>> +the returned value describes the new configuration.
> >>> +The returned value is encoded in the same way as the return value of
> >>> +.BR PR_SVE_GET_VL .
> >>
> >> Aha. Maybe move this bit up slightly?
> > 
> > Yes, I'll reorder that.
> > 
> >>
> >>> +.IP
> >>> +If neither of the above flags is included in
> >>
> >> are included
> > 
> > Debatable.
> > 
> > The subject of the verb here is not "flags" (plural), but "neither of
> > the above flags" (which is more nuanced, though it can be interpreted
> > as singular).  Usage varies, and I don't consider this wrong.
> 
> As far as I know, the grammarians are with you on this one,
> Dave, and if I was writing carefully, I'd do the same as you.

Good, because I just made that up to justify myself!

> But, the plural here is also frequent (and so common that I would
> hesitate to call it "wrong").

Sure, I don't think either is wrong as such.  My preference is only a
preference, and partly depends on the context anyway.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
