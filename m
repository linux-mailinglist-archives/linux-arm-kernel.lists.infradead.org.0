Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7372DA11
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 12:10:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HtS8XxW9ykmXEJDQw68I37/bpLsIzBVtNJ+iM+csNJw=; b=Kq30hWx5l8E3lA
	9BdLJwDTM+tpOfmubvzcYvxT87BNDiH7yO+GXp3owFHm1dEB+2QhdyxLlRPVSPoimyFDfrIATTMI+
	I3XBNgErp4+j9m4jepXc8JRyYNVSJQZOoZEGMQLjC3hY8LT0spSkBWLtAM+0MAw4tWAr1W/9l2EAZ
	474qOlyeDyR+jfXC+71SgatJCBhIGAlSaydhzlTz2scNzEIAz7sCCxbefytlOrD1K1bsoBb6FiRUh
	1V7oK6FJjeu4RL2eTEg6OaqCoe4vJ2yWeNuCrnRPYzKNqBtXzOKxkpd07C8E9puqdh3AhDduDcBBf
	Fwtj9afuDaQPC+EE3HeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVvXn-0008LY-Dr; Wed, 29 May 2019 10:10:51 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVvXf-0008LP-VT; Wed, 29 May 2019 10:10:44 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 78560201A7E40; Wed, 29 May 2019 12:10:42 +0200 (CEST)
Date: Wed, 29 May 2019 12:10:42 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Will Deacon <will.deacon@arm.com>
Subject: Re: [PATCH] perf: Fix oops when kthread execs user process
Message-ID: <20190529101042.GN2623@hirez.programming.kicks-ass.net>
References: <1559046689-24091-1-git-send-email-92siuyang@gmail.com>
 <20190528140103.GT2623@hirez.programming.kicks-ass.net>
 <20190528153224.GE20758@fuggles.cambridge.arm.com>
 <20190528173228.GW2623@hirez.programming.kicks-ass.net>
 <20190529091733.GA4485@fuggles.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190529091733.GA4485@fuggles.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: mark.rutland@arm.com, Young Xiao <92siuyang@gmail.com>, mpe@ellerman.id.au,
 x86@kernel.org, linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 mingo@redhat.com, bp@alien8.de, hpa@zytor.com,
 ravi.bangoria@linux.vnet.ibm.com, linux-arm-kernel@lists.infradead.org,
 kan.liang@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 10:17:33AM +0100, Will Deacon wrote:
> On Tue, May 28, 2019 at 07:32:28PM +0200, Peter Zijlstra wrote:

> > 'funny' thing that, perf_sample_regs_user() seems to assume that
> > anything with current->mm is in fact a user task, and that assumption is
> > just plain wrong, consider use_mm().
> 
> Right, I suppose that was attempting to handle interrupt skid from the PMU
> overflow?

Nah, just a broken test to determine if there is userspace at all. It is
mostly right, just not completely :-)

> > So I'm thinking the right thing to do here is something like the below;
> > umh should get PF_KTHREAD cleared when it passes exec(). And this should
> > also fix the power splat I'm thinking.
> > 
> > ---
> > 
> > diff --git a/kernel/events/core.c b/kernel/events/core.c
> > index abbd4b3b96c2..9929404b6eb9 100644
> > --- a/kernel/events/core.c
> > +++ b/kernel/events/core.c
> > @@ -5923,7 +5923,7 @@ static void perf_sample_regs_user(struct perf_regs *regs_user,
> >  	if (user_mode(regs)) {
> >  		regs_user->abi = perf_reg_abi(current);
> >  		regs_user->regs = regs;
> > -	} else if (current->mm) {
> > +	} else if (!(current->flags & PF_KTHREAD) && current->mm) {
> >  		perf_get_regs_user(regs_user, regs, regs_user_copy);
> 
> Makes sense, but under which circumstances would we have a NULL mm here?

Dunno; I'm paranoid, and also:

  mm/memcontrol.c:        if (in_interrupt() || !current->mm || (current->flags & PF_KTHREAD))
  mm/vmacache.c:  return current->mm == mm && !(current->flags & PF_KTHREAD);


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
