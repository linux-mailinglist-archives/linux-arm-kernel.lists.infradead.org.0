Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AED71C72DB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 16:30:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=22NfiafRB211SbNNPj86ey16St38HY8iXuu/uKqqiJU=; b=h4/6EdmcyaGBgn
	3VIIncA2lnpiZDZsBtFgAOMsAItKve6UK3J81D8u7etCLUXFJnVr+AItrZ88cxoC30m24N4MfSlMX
	ZJ9L7vP0nhb0VmuPnP/ldF0odNAlasT0HSPcTopfYkH1tN9h9ZBrVxeHK03YZQO4r5Qg8oy4KGqzA
	HnGm5bm8SpkOOo8bpjkMg3uPXWDFyVPF+XnVLj6Ypn9s7fYVDYAiXOmbUBrsL0cYrG8mBHlBvqlnH
	cL17BWtZoEzRlfNKSjI8GpexRsBJXqvmXeIdFjUUdbSgDIPFx1fZ9RR1yiFVZGybbz+UJrwGo4fSf
	n4DD1+3RLnt3QIjWVQ9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWL3c-0008PN-3a; Wed, 06 May 2020 14:29:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWL3U-0008OE-09
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 14:29:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D21CCD6E;
 Wed,  6 May 2020 07:29:45 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D27893F68F;
 Wed,  6 May 2020 07:29:44 -0700 (PDT)
Date: Wed, 6 May 2020 15:29:42 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: Re: RFC: Adding arch-specific user ABI documentation in linux-man
Message-ID: <20200506142942.GV30377@arm.com>
References: <20200504153214.GH30377@arm.com>
 <07855941-d0f7-2ec6-819e-e43a8935e29e@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <07855941-d0f7-2ec6-819e-e43a8935e29e@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_072948_130727_8DF37C12 
X-CRM114-Status: GOOD (  30.59  )
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
 Catalin Marinas <catalin.marinas@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 06, 2020 at 12:47:17PM +0200, Michael Kerrisk (man-pages) wrote:
> Hello Dave, et al.
> 
> On 5/4/20 5:32 PM, Dave Martin wrote:
> > Hi all,
> > 
> > I considering trying to plug some gaps in the arch-specific ABI
> > documentation in the linux man-pages, specifically for arm64 (and
> > possibly arm, where compat means we have some overlap).
> 
> Sounds good to me.
> 
> > For arm64, there are now significant new extensions (Pointer
> > authentication, SVE, MTE etc.)  Currently there is some user-facing
> > documentation mixed in with the kernel-facing documentation in the
> > kernel tree, but this situation isn't ideal.
> > 
> > Do you have an opinion on where in the man-pages documentation should be
> > added, and how to structure it?
> > 
> > 
> > Affected areas include:
> > 
> >  * exec interface
> 
> Not sure what the details are here, so I have no opinion yet.
> But probably, as additions to execve(2).

Having looked at that page again, probably yes.

This would include things like how arch-specific registers get reset,
and how various thread properties are reset/inherited.

Possibly, much of this would be documented by cross-referencing other
pages.

> 
> >  * aux vector, hwcaps
> 
> ==> getauxval(3)

Ah, yes.  I keep forgetting that because it's provided by libc.

There are a few things missing, but we can add them in there.

> >  * arch-specific signals
> >  * signal frame
> 
> Not sure what the details are here, so I have no opinion yet.

Stuff like architecture-specific si_codes and how they are used.

Signal handlers that poke about in the signal frame need to know how it
is structured, and for arm64 this is now quite complex.  I want to
document some example code for parsing it somewhere, and I feel that
will be too much noise for signal(7).

I guess I can try to write something and than we can figure out where to
put it.

> 
> >  * mmap/mprotect extensions
> 
> See below.
> 
> >  * prctl calls
> 
> As additions in prctl(2) would be fine, I think.
> 
> >  * ptrace quirks and extensions
> 
> See below.
> 
> >  * coredump contents
> 
> Not sure what the details are here, so I have no opinion yet.
> Possibly as additions to core(5).

Things like arch-specific regsets.  Some of that can probabably live
in the ptrace page, with cross-references from core(5).

> > Not everything has an obvious home in an existing page, 
> 
> Yes.
> 
> > and adding
> > specifics for every architecture could make some existing manpages very
> > unwieldy.
> 
> Still, I think it's worth adding details, especially for widely
> used architectures.

Agreed.  If there's a lot of explanation required for somethings which
feels out of scope for the core page, then I might still be tempted to
push some of that out into a more arch-specific page and cross-reference
it.  We can play that by ear, though.

> > I think for some arch features, we really need some "overview" pages
> > too: just documenting the low-level details is of limited value
> > without some guide as to how to use them together.
> > 
> > 
> > Does the following sketch look reasonable?
> > 
> >  * man7/arm64.7: new page: overview of arm64-specific ABI extensions
> 
> I'm a little unclear on what would land in here, but sounds 
> reasonable in principle.

I probably won't attempt to add such a page until I find a use for it.

I mainly intended this as an overview of what areas are impacted by the
architecture and which other pages to go look at.

> >  * man7/sve.7 (or man7/arm64-sve.7 or man7/sve.7arm64): new page:
> >    overview of arm64 SVE ABI
> 
> Sounds reasonable to me.
> 
> >  * man2/arm64-ptrace.2 (or man2/ptrace.2arm64): new page:
> >    arm64 ptrace extensions
> 
> I think maybe better is: ptrace-arm64.2

Agreed.  That's probably easier to for people to place in their mental
map.

> 
> I'm agnostic about whether there should be a new page, or whether 
> these should be added to ptrace(2). But, we could start with the
> idea of a new page.
> 
> >  * man2/mmap.2: extend with arm64-specific flags (only two flags, so we
> >    add them to the existing man page rather than creating a new one).
> 
> Sounds good to me
> 
> > etc.
> > 
> > 
> > Ideally, I'd like to adopt a pattern that other arches can follow.
> 
> Well, if they do follow. Arch-specific documentation is woefully
> thin at the moment. I'm not going to worry too much about the right
> pattern (don't let perfect get in the way of good, yadda, yadda),
> until I get so much arch-specific documentation that some refactoring
> may be required. (I'm not going to hold my breath waiting for that
> to happen ;-).)

Sure.  I don't want to do something obviously broken, but it sounds like
you're reasonably happy with my approach.  In any case I'll start with the
simple stuff.

Where it's easy to do so, I may try to trawl up some undocumented non-
ARM stuff, but I'm not the expert there...

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
