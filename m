Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 076BA2D8D1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 11:17:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nljwyx75cgnZnHAlnc/rNirT2NM8jO9tXRHFVbm1wPo=; b=OaV4Z5PQHv9jjG
	0LQHMxnhD1T+NNSlbgTgY+598F4sV4N/bMCPvXsEkxmcO55NqYZ5SHzy98J3Ah01IyS2SRbZgyUaj
	KgNsPaKyGTK9aHDyoXoncH63OMUWktuEbujUHSdyvztbf0n3OnsI3WKnIfVSrjYUtW414j40SMds4
	GMUcvTkokOvF42cRp4B8sz4XKS1Ev2HHhC5uPdfa9ITAUVl1joAO5foIP2IYoBMEhVQmzfXe2CFVT
	ppkjyg8okBV+2xlP8vSGla74RlkEOIZznpfH9bPxc5e1+/PQMyxx8d1N4Bxnpb+fHCF/WvvZTnn2E
	cLoSx5TnHBld1vTH0jNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVuiV-0000ZJ-V6; Wed, 29 May 2019 09:17:51 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVuiN-0000YR-GD
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 09:17:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 05C1F341;
 Wed, 29 May 2019 02:17:43 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C177F3F5AF;
 Wed, 29 May 2019 02:17:40 -0700 (PDT)
Date: Wed, 29 May 2019 10:17:33 +0100
From: Will Deacon <will.deacon@arm.com>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH] perf: Fix oops when kthread execs user process
Message-ID: <20190529091733.GA4485@fuggles.cambridge.arm.com>
References: <1559046689-24091-1-git-send-email-92siuyang@gmail.com>
 <20190528140103.GT2623@hirez.programming.kicks-ass.net>
 <20190528153224.GE20758@fuggles.cambridge.arm.com>
 <20190528173228.GW2623@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190528173228.GW2623@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_021743_544391_662E3D3E 
X-CRM114-Status: GOOD (  18.63  )
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
Cc: mark.rutland@arm.com, Young Xiao <92siuyang@gmail.com>, mpe@ellerman.id.au,
 x86@kernel.org, linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 mingo@redhat.com, bp@alien8.de, hpa@zytor.com,
 ravi.bangoria@linux.vnet.ibm.com, linux-arm-kernel@lists.infradead.org,
 kan.liang@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 07:32:28PM +0200, Peter Zijlstra wrote:
> On Tue, May 28, 2019 at 04:32:24PM +0100, Will Deacon wrote:
> > On Tue, May 28, 2019 at 04:01:03PM +0200, Peter Zijlstra wrote:
> > > On Tue, May 28, 2019 at 08:31:29PM +0800, Young Xiao wrote:
> > > > When a kthread calls call_usermodehelper() the steps are:
> > > >   1. allocate current->mm
> > > >   2. load_elf_binary()
> > > >   3. populate current->thread.regs
> > > > 
> > > > While doing this, interrupts are not disabled. If there is a perf
> > > > interrupt in the middle of this process (i.e. step 1 has completed
> > > > but not yet reached to step 3) and if perf tries to read userspace
> > > > regs, kernel oops.
> > 
> > This seems to be because pt_regs(current) gives NULL for kthreads on Power.
> 
> 'funny' thing that, perf_sample_regs_user() seems to assume that
> anything with current->mm is in fact a user task, and that assumption is
> just plain wrong, consider use_mm().

Right, I suppose that was attempting to handle interrupt skid from the PMU
overflow?

> So I'm thinking the right thing to do here is something like the below;
> umh should get PF_KTHREAD cleared when it passes exec(). And this should
> also fix the power splat I'm thinking.
> 
> ---
> 
> diff --git a/kernel/events/core.c b/kernel/events/core.c
> index abbd4b3b96c2..9929404b6eb9 100644
> --- a/kernel/events/core.c
> +++ b/kernel/events/core.c
> @@ -5923,7 +5923,7 @@ static void perf_sample_regs_user(struct perf_regs *regs_user,
>  	if (user_mode(regs)) {
>  		regs_user->abi = perf_reg_abi(current);
>  		regs_user->regs = regs;
> -	} else if (current->mm) {
> +	} else if (!(current->flags & PF_KTHREAD) && current->mm) {
>  		perf_get_regs_user(regs_user, regs, regs_user_copy);

Makes sense, but under which circumstances would we have a NULL mm here?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
