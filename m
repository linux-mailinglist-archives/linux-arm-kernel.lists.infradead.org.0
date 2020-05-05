Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ADED1C53E7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 13:05:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1zVqrGrhq24CwD5Bf/JMoWZBJ9q3lFRzZzXQFfenWjs=; b=iGQqdU5sXp1FEc
	CIoIqOOJImi9M6fOjjPFtPfRRezbWRjLtkr7x+2fTG0414Sv3xzer/X2Zn114Q06x38k9ZfYKvV8m
	QwHyBLRFJn+p4mS4l0USob0VPmnzYLTsa8dgI6LGaKy+7kMV4jaZ995FeONT2OpWD1eAi6ed/N0+U
	k8J7BGT78KnJn9MYwF/fnCfyZiYyn1eniJqA6Zt2ln+UoAGt89fZixd8MNqCzBikPqmoW9bTcgyCb
	EMcnPB0rXmQsnH8nKCO3+sTejl2pr9wExGV6eyZuvDI84S44sLG/AxvktHRUiyDAELGxOFcFDZkXb
	L7eNzDkv0NJa2IIdT2hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVvOH-0000N4-VF; Tue, 05 May 2020 11:05:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVvO7-0000LE-EA
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 11:05:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AD1CD30E;
 Tue,  5 May 2020 04:05:22 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ABBB23F305;
 Tue,  5 May 2020 04:05:21 -0700 (PDT)
Date: Tue, 5 May 2020 12:05:19 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: RFC: Adding arch-specific user ABI documentation in linux-man
Message-ID: <20200505110519.GM30377@arm.com>
References: <20200504153214.GH30377@arm.com>
 <20200505104454.GC19710@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505104454.GC19710@willie-the-truck>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_040523_517858_12F91E7C 
X-CRM114-Status: GOOD (  22.43  )
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
 Catalin Marinas <catalin.marinas@arm.com>,
 Michael Kerrisk <mtk.manpages@gmail.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 05, 2020 at 11:44:55AM +0100, Will Deacon wrote:
> Hi Dave,
> 
> On Mon, May 04, 2020 at 04:32:35PM +0100, Dave Martin wrote:
> > I considering trying to plug some gaps in the arch-specific ABI
> > documentation in the linux man-pages, specifically for arm64 (and
> > possibly arm, where compat means we have some overlap).
> > 
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
> >  * aux vector, hwcaps
> >  * arch-specific signals
> >  * signal frame
> >  * mmap/mprotect extensions
> >  * prctl calls
> >  * ptrace quirks and extensions
> >  * coredump contents
> > 
> > 
> > Not everything has an obvious home in an existing page, and adding
> > specifics for every architecture could make some existing manpages very
> > unwieldy.
> > 
> > I think for some arch features, we really need some "overview" pages
> > too: just documenting the low-level details is of limited value
> > without some guide as to how to use them together.
> > 
> > 
> > Does the following sketch look reasonable?
> > 
> >  * man7/arm64.7: new page: overview of arm64-specific ABI extensions
> > 
> >  * man7/sve.7 (or man7/arm64-sve.7 or man7/sve.7arm64): new page:
> >    overview of arm64 SVE ABI
> > 
> >  * man2/arm64-ptrace.2 (or man2/ptrace.2arm64): new page:
> >    arm64 ptrace extensions
> 
> Michael has been nagging me on and off about that for, what, 10 years now?
> I would therefore be very much in favour of having our ptrace extensions
> documented!
> 
> We could even put this stuff under Documentation/arm64/man/ if it's deemed
> too CPU-specific for the man-pages project, but my preference would still
> be for it to be hosted there alongside all the other man pages.

Heh, perhaps we could build that into the kernel and mount it somewhere.


Seriously though,

I guess I can start off with straightforward small things for which the
documentation has an obvious home (like prctls[*]) and then move on to
the bigger stuff like ptrace.

If people start shouting about a page getting too big or messy I can try
to split it up.

Make sense?

Cheers
---Dave


[*] "straightforward" was a joke, obviously

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
