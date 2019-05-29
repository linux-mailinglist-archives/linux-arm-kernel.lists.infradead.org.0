Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C21352DA53
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 12:20:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LU+mXJPimD/9X8bMj1/Psaf4fI6iXDJ8SsXB3AX11Ug=; b=Q50RdpMUWKxgvh
	EsigsS0CyniTUn+FdpuNN33jBuISI3rxQd1jebws7Wg+H57Wpb+Trf2uaEOLGJ5ULy8z02u4qIADW
	KnwRfyvAVtoPuVVOiZlvI2XlJhmE+iMVQx5ipUnW32H76v/HVehI1HRd2Ago3rmacPKrLMIajpqy7
	HdKso81KdHEEDOWOmuKZAIOaQDVyzNyWOiUhzujhrYZZ0lZ2Mo/dMM1eyb0N1LnZ+9EmQPdlhvqnZ
	9JnrHW8Sn8BImVUu9b6uWqRwooC/JRqs/hGKI68/BBKrLaLujybtt1Xx3Hzvi2z4D/8NDVa9SIXSL
	iMAM/puBeVXZocwpFxVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVvhO-0005KO-TS; Wed, 29 May 2019 10:20:46 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVvh7-00054n-DI
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 10:20:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 31E86341;
 Wed, 29 May 2019 03:20:27 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ED5933F59C;
 Wed, 29 May 2019 03:20:24 -0700 (PDT)
Date: Wed, 29 May 2019 11:20:22 +0100
From: Will Deacon <will.deacon@arm.com>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH] perf: Fix oops when kthread execs user process
Message-ID: <20190529102022.GC4485@fuggles.cambridge.arm.com>
References: <1559046689-24091-1-git-send-email-92siuyang@gmail.com>
 <20190528140103.GT2623@hirez.programming.kicks-ass.net>
 <20190528153224.GE20758@fuggles.cambridge.arm.com>
 <20190528173228.GW2623@hirez.programming.kicks-ass.net>
 <20190529091733.GA4485@fuggles.cambridge.arm.com>
 <20190529101042.GN2623@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190529101042.GN2623@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_032029_479170_CB35C3F8 
X-CRM114-Status: GOOD (  19.41  )
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

On Wed, May 29, 2019 at 12:10:42PM +0200, Peter Zijlstra wrote:
> On Wed, May 29, 2019 at 10:17:33AM +0100, Will Deacon wrote:
> > On Tue, May 28, 2019 at 07:32:28PM +0200, Peter Zijlstra wrote:
> 
> > > 'funny' thing that, perf_sample_regs_user() seems to assume that
> > > anything with current->mm is in fact a user task, and that assumption is
> > > just plain wrong, consider use_mm().
> > 
> > Right, I suppose that was attempting to handle interrupt skid from the PMU
> > overflow?
> 
> Nah, just a broken test to determine if there is userspace at all. It is
> mostly right, just not completely :-)
> 
> > > So I'm thinking the right thing to do here is something like the below;
> > > umh should get PF_KTHREAD cleared when it passes exec(). And this should
> > > also fix the power splat I'm thinking.
> > > 
> > > ---
> > > 
> > > diff --git a/kernel/events/core.c b/kernel/events/core.c
> > > index abbd4b3b96c2..9929404b6eb9 100644
> > > --- a/kernel/events/core.c
> > > +++ b/kernel/events/core.c
> > > @@ -5923,7 +5923,7 @@ static void perf_sample_regs_user(struct perf_regs *regs_user,
> > >  	if (user_mode(regs)) {
> > >  		regs_user->abi = perf_reg_abi(current);
> > >  		regs_user->regs = regs;
> > > -	} else if (current->mm) {
> > > +	} else if (!(current->flags & PF_KTHREAD) && current->mm) {
> > >  		perf_get_regs_user(regs_user, regs, regs_user_copy);
> > 
> > Makes sense, but under which circumstances would we have a NULL mm here?
> 
> Dunno; I'm paranoid, and also:
> 
>   mm/memcontrol.c:        if (in_interrupt() || !current->mm || (current->flags & PF_KTHREAD))

So this one I also don't understand...

>   mm/vmacache.c:  return current->mm == mm && !(current->flags & PF_KTHREAD);

... but this one is just about an mm mismatch, rather than a NULL mm.

Anyway, you can add my ack to your patch, but I bet we can remove that mm
check :D

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
