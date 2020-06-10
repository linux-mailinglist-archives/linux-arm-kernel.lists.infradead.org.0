Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A23D91F5526
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 14:49:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=25dZglVIAQvZ6vHrFBUIf2iKF1W7IznnRxiZrSiM0V0=; b=kv1ALe0nze3fQ9
	GhCd03MKrf9J3fKhRIWZxf52eGySm1uYO2H4sanvbcRq4pfu7KuyV/vvltCgiUFcU1voKHn1y8QPd
	bRwlNn54pGQuJBrUFX+0ZhyPbgfsR4edf6SILUJDhnt0hVOdyMCj5BlK3Wu04RielhhoKNaf+pMzk
	lNDQ9kojxprRVn531CGxfh/tZw86g0LdLS3Wl4HsGGZJY2CrYmIeYTFKwwKPbybL+V47ZpouqbBe0
	0d181wm4yxzP+0GRDYyFnyPGC8Ucm/RbRK+fHoUxzp/4D8BfvBDRoxXw7OyshpCSg6zOJ/t21b3GP
	/HJMWLEbm2CT4UK3F9Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj09z-0004Ab-Vn; Wed, 10 Jun 2020 12:48:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj09s-00049w-OA
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 12:48:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 96B891F1;
 Wed, 10 Jun 2020 05:48:43 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D485D3F66F;
 Wed, 10 Jun 2020 05:48:42 -0700 (PDT)
Date: Wed, 10 Jun 2020 13:48:40 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2 4/6] prctl.2: Add SVE prctls (arm64)
Message-ID: <20200610124838.GG25945@arm.com>
References: <1590614258-24728-1-git-send-email-Dave.Martin@arm.com>
 <1590614258-24728-5-git-send-email-Dave.Martin@arm.com>
 <20200609095734.GA25362@willie-the-truck>
 <20200609140948.GA25945@arm.com>
 <20200609144905.GA28353@willie-the-truck>
 <20200610094440.GD25945@arm.com>
 <20200610101649.GA17788@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200610101649.GA17788@willie-the-truck>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_054844_876515_6FE07494 
X-CRM114-Status: GOOD (  35.77  )
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
Cc: linux-arch@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 10, 2020 at 11:16:49AM +0100, Will Deacon wrote:
> [Dropped linux-man and Michael]
> 
> On Wed, Jun 10, 2020 at 10:44:42AM +0100, Dave Martin wrote:
> > On Tue, Jun 09, 2020 at 03:49:05PM +0100, Will Deacon wrote:
> > > On Tue, Jun 09, 2020 at 03:11:42PM +0100, Dave Martin wrote:
> > > > On Tue, Jun 09, 2020 at 10:57:35AM +0100, Will Deacon wrote:
> > > > > On Wed, May 27, 2020 at 10:17:36PM +0100, Dave Martin wrote:
> > > > > > +.RS
> > > > > > +.TP
> > > > > > +.B 0
> > > > > > +Perform the change immediately.
> > > > > > +At the next
> > > > > > +.BR execve (2)
> > > > > > +in the thread,
> > > > > > +the vector length will be reset to the value configured in
> > > > > > +.IR /proc/sys/abi/sve_default_vector_length .
> > > > > 
> > > > > (implementation note: does this mean that 'sve_default_vl' should be
> > > > >  an atomic_t, as it can be accessed concurrently? We probably need
> > > > >  {READ,WRITE}_ONCE() at the very least, as I'm not seeing any locks
> > > > >  that help us here...)
> > > > 
> > > > Is this purely theoretical?  Can you point to what could go wrong?
> > > 
> > > If the write is torn by the compiler, then a concurrent reader could end
> > > up seeing a bogus value. There could also be ToCToU issues if it's re-read.
> > 
> > It won't be torn in practice, no decision logic depends on the value
> > read, and you can't even get from the write to the read or vice-versa
> > without crossing a TU boundary (even under LTO), so there's basically
> > zero scope for sabotXXXXXoptimisation by the compiler.
> 
> Perhaps, but I'm not brave enough to state that :) Look at this crazy
> thing, for example:
> 
> https://lore.kernel.org/lkml/CAG48ez2nFks+yN1Kp4TZisso+rjvv_4UW0FTo8iFUd4Qyq1qDw@mail.gmail.com/
> 
> Could the same sort of technique be applied to:
> 
> 
> 	vl = current->thread.sve_vl_onexec ?
> 	     current->thread.sve_vl_onexec : sve_default_vl;
> 
> 	if (WARN_ON(!sve_vl_valid(vl)))
> 		vl = SVE_VL_MIN;
> 
> 	supported_vl = find_supported_vector_length(vl);
> 
> 
> so that the compiled code does something like:
> 
> 
> 	if (within_valid_bounds(sve_default_vl)) {
> 		supported_vl = jump_table(sve_default_vl); // Reload the variable
> 	} else {
> 		WARN_ON(1);
> 		supported_vl = SVE_VL_MIN;
> 	}
> 
> 
> ?
> 
> I'd certainly prefer not to have to think about that!

Well sure, but the compiler has much to lose and nothing to gain from
such a transformation here.  This is a bit different from a load of
conditional code that can be heavily const-folded during specialisation.

Anyway, I'm not saying that you're not correct about the risk, just that
this feels like a common pattern.


> > Only root is allowed to write this thing anyway.
> > 
> > > > While I doubt I thought about this very hard and I agree that you're
> > > > right in principle, I think there are probably non-atomic sysctls and
> > > > debugs files etc. all over the place.
> > > > 
> > > > I didn't want to clutter the code unnecessarily.
> > > 
> > > Right, but KCSAN is coming along and so somebody less familiar with the code
> > > will hit this eventually.
> > 
> > So the issue is theoretical, probably one of very many similar issues,
> > and anyway we have a tool for tracking them down if we need to?
> > 
> > I'm playing devil's advocate here, but I'd debate whether it's worth
> > it -- or even wise -- to fix these piecemeal unless we're confident this
> > is an egregious case.  Doing so may encourage a false sense of safety.
> > When we're in a position to do a treewide cleanup, that would be better,
> > no?
> 
> That's a good point, but it is inevitable that people will try to attempt
> treewide introduction of {READ,WRITE}_ONCE() based solely on KCSAN reports
> rather than an understanding of the code, and so I'd much rather somebody
> who understands the code (that's you ;) deals with it first.
> 
> If the race is benign, then you can annotate the accesses with data_race()
> and add a comment along the lines of your "It won't be torn in practice..."
> paragraph above.

Oh, it's complex enough to reason about that we should definitely use
proper atomics here so that we don't have to think about it.  Also, I'd
concede that the fact that this code has a custom sysctl accessor may
make justify a special case fix.

For most users, it would be better to clip sysctl's wings so that only
atomic accesses are allowed if the default implementation is used.  sysctl
is not a fast path: for single values of fundamental types, there's no
reason I can think of not to use atomics across the board.


> Anyway, this is entirely independent to the manpage effort, just that the
> concurrency wasn't clear to me before I read what you'd written and thought
> I'd mention this before I forget. It's also looking less likely that KCSAN
> is going to land for 5.8, so there's no urgency to this at all.

Sure, and I don't think I thought much beyond "I wonder what happens if
... nah, probably fine, if it mattered then everyone would be doing it."

I'm pretty sure I didn't get that wording out of the C spec.

It's a good spot though, and I may look at a fix if I get around to it.
Can't promise when, though.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
