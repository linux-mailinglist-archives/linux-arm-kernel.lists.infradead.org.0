Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C95E1D7EB6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 18:38:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LJrxAewZpKPVCQzjxWoYtreIe+AmkfathV4NYo9I6LQ=; b=l9HE0OWA3jPRCP
	0mvYNCEmLEmHMfa7RXAhT0EaBxKpkp5+/BKgTgbm1UjtygAP2i2QYvR/z5eDgRgAwx9xGb66E50dR
	EIRLfPnz3lLLVs0B9Ndqs8brHvj28THzQXUNFQaKnXJuhd8FvI9xil3R4GN+UMVNfDnhCFY+s0j+6
	U+PpsCZCGCLxnhahnayUhaXpOifJ1Od8UI7FdY0bSpFk1BFsHRGiUm6SHBOtjVlTIOLw/oMG8nl3n
	r1Ni8EDsYIxUD/CswOsV2fsLaDMEk45I+8xeCGzcC0tHc9iwkj++Ekispw5G4415uly8ckvwhchF4
	K5ztenM+/j5NFQDs+04g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaim6-0006fR-2K; Mon, 18 May 2020 16:37:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jailv-0006f6-27
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 16:37:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 80620106F;
 Mon, 18 May 2020 09:37:46 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 94B893F52E;
 Mon, 18 May 2020 09:37:45 -0700 (PDT)
Date: Mon, 18 May 2020 17:37:43 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 13/14] prctl.2: Add SVE prctls (arm64)
Message-ID: <20200518163742.GC21779@arm.com>
References: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
 <1589301419-24459-14-git-send-email-Dave.Martin@arm.com>
 <20200513084351.GB18196@willie-the-truck>
 <20200513104635.GD21779@arm.com>
 <a01fc572-cac8-1932-c3e5-c70184417ca3@gmail.com>
 <20200513140200.GP21779@arm.com>
 <20200513211153.GB28594@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513211153.GB28594@willie-the-truck>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_093747_187606_3A49E0D2 
X-CRM114-Status: GOOD (  33.21  )
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
Cc: linux-arch@vger.kernel.org, linux-man@vger.kernel.org,
 "Michael Kerrisk \(man-pages\)" <mtk.manpages@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 10:11:54PM +0100, Will Deacon wrote:
> On Wed, May 13, 2020 at 03:02:00PM +0100, Dave Martin wrote:
> > On Wed, May 13, 2020 at 01:01:12PM +0200, Michael Kerrisk (man-pages) wrote:
> > > On 5/13/20 12:46 PM, Dave Martin wrote:
> > > > On Wed, May 13, 2020 at 09:43:52AM +0100, Will Deacon wrote:
> > > >> On Tue, May 12, 2020 at 05:36:58PM +0100, Dave Martin wrote:
> > > > glibc explicitly has
> > > > 
> > > > 	extern int prctl (int __option, ...);
> > > > 
> > > > (and nobody has to write _exit(0, 0, 0, 0, 0, 0) after all.)
> > > > 
> > > > Is there some agreed rationale for requiring redundant arguments to be
> > > > supplied explicitly as zero?  For now there are likely to be few users
> > > > of this, so we _might_ get away with changing the behaviour here if it's
> > > > considered important enough.
> > > 
> > > See above.
> > 
> > So there is no bulletproof rationale for either approach, but the main
> > concern is inconsistency?  Have I understood that right?
> 
> I think it's all just an extension of "make sure unused parameters are 0"
> idiom which allows those bits to be safely repurposed for flags and things
> later on without the worry of existing applications getting away with
> passing junk.

I'd say that the explicit zeroing may give a false sense of safety, but
I sympathise with the intent.

At least, I think the explicit zeroing means that any resulting bugs are
more likely to be fixable in userspace.

> > I'll propose to get that written down in the kernel source somewhere
> > if so.
> 
> That would be a really good idea, actually!
> 
> > (From my end, the pros and cons of the two approaches seem superficial
> > but the inconsistency is indeed annoying.  For PR_SVE_SET_VL, I think
> > the first example I looked at didn't zero the trailing arguments, so I
> > didn't either... but it's been upstream for several releases, so most
> > likely we're stuck with it.)
> 
> FWIW, I wasn't blaming you for this. Just that these oversights aren't
> always apparent when reviewing patches, but become more clear when
> reviewing the documentation.

I'll have a think, so long as nobody implies that the SVE prctls are
"wrong" ;)

Adding comments in the code about how the implementation of those prctls
can and can't safely be extended would be sensible though.  I'll try to
address that at some point.

> > > > There is no forwards compatibility problem with this prctl though,
> > > > because there are spare bits in arg2 which can "turn on" additional
> > > > args if needed.
> > > > 
> > > > Also, it's implausible that PR_SVE_GET_VL will ever want an argument.
> > > > 
> > > > There are still 2 billion unallocated prctl numbers, so new prctls can
> > > > always be added if there's ever a need to work around these limitations,
> > > > but it seems extremely unlikely.
> 
> Oh, there are ways out, but had I noticed this during code review it
> would've been very easy just to enforce zero for the other args and be done
> with it.

Ack

> > > >>> +If
> > > >>> +.B PR_SVE_VL_INHERIT
> > > >>> +is also included in
> > > >>> +.IR arg2 ,
> > > >>> +it takes effect
> > > >>> +.I after
> > > >>> +this deferred change.
> > > >>
> > > >> I find this a bit hard to follow, since it's not clear to me whether the
> > > >> INHERIT flag is effectively set before or after the next execve(). In other
> > > >> words, if both PR_SVE_SET_VL_ONEXEC and PR_SVE_VL_INHERIT are specified,
> > > >> is the vector length preserved or reset on the next execve()?
> > > > 
> > > > It makes no difference, because the ONEXEC handling takes priority over
> > > > the INHERIT handling. But either way INHERIT is never cleared by execve()
> > > > and will apply at subsequent execs().
> > > > 
> > > > Explaining all this properly seems out of scope here.  Maybe this should
> > > > be trimmed down rather than elaborated?  Or perhaps just explain it in
> > > > terms of what the kernel does instead of futile attempts to make it
> > > > intuitive?
> 
> Hmm, if we don't explain it in the man page then we should at least point
> people to somewhere where they can get the gory details, because I think
> they're necessary in order to use the prctl() request correctly. I'm still
> not confident that I understand the semantics of setting both
> PR_SVE_SET_VL_ONEXEC and PR_SVE_VL_INHERIT without reading the code, which
> may change.
> 
> (I concede on all the spelling/grammar discussions ;)

Ultimately I aim to add another page, but for now would it be sufficient
to refer to Documentation/?

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
