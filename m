Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9478959943
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 13:28:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JryzKs9XMqQtRe35Rr7od0XAyYXUEl5ztHn1s01ObhI=; b=VAch3go0+K44bB
	Ln+Xszx9St+IJlwTdrHlO1fdWNF/iaIkBUyHkclm7Ogdn3eROGJ0h0QfX/IGLSUxbcmlJN/eMrw27
	yrktYI3p3sRVb0c17LEyEMs/0ZIP96yOKsUTs8Ejw9c+1Ux/SUUX9Ylz8E8M8S+vwcRV+DmYBmShA
	PRtOsvsejA+VctlP80SGaKH4g/dJIvq04QF6sN3pXa++yPvv2lnLVVBnvcFtr0xCOMaIXFKoZwa97
	tc6DMvtQPWQyc/L6MWDt0c3l2eHiWaMuOuDUHiI/47AIjKD7/u7+rrzhzL7C+ZK7fTylYypymWXEG
	tah5d7IP1dU0iudWYY3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgp3h-00052V-NS; Fri, 28 Jun 2019 11:28:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgp2b-0004W2-Nt
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 11:27:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1B7AA28;
 Fri, 28 Jun 2019 04:27:41 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3355D3F718;
 Fri, 28 Jun 2019 04:27:40 -0700 (PDT)
Date: Fri, 28 Jun 2019 12:27:38 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH 2/3] arm64: stacktrace: Factor out backtrace initialisation
Message-ID: <20190628112737.GH36437@lakrids.cambridge.arm.com>
References: <20190606125402.10229-1-mark.rutland@arm.com>
 <20190606125402.10229-3-mark.rutland@arm.com>
 <20190621155047.GE2790@e103592.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190621155047.GE2790@e103592.cambridge.arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_042741_933160_7D3FA4BA 
X-CRM114-Status: GOOD (  20.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: catalin.marinas@arm.com, tengfeif@codeaurora.org, will.deacon@arm.com,
 james.morse@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 04:50:48PM +0100, Dave Martin wrote:
> On Thu, Jun 06, 2019 at 01:54:01PM +0100, Mark Rutland wrote:
> > From: Dave Martin <Dave.Martin@arm.com>
> > 
> > Some common code is required by each stacktrace user to initialise
> > struct stackframe before the first call to unwind_frame().
> > 
> > In preparation for adding to the common code, this patch factors it
> > out into a separate function start_backtrace(), and modifies the
> > stacktrace callers appropriately.
> > 
> > No functional change.
> > 
> > Signed-off-by: Dave Martin <dave.martin@arm.com>
> > Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> 
> Ack (from memory you just added the CONFIG_FUNCTION_GRAPH_TRACER stuff,
> the lack of which was causing build failures in my original version).

You handled that in the version of the seires this was picked from [1].

I removed the tsk parameter, which now gets added in patch 3. I can
re-add that to this patch, or leave this as-is -- I have no strong
feelings either way.

> Have you added any new calls to start_backtrace() here?

No; I have not added any new calls.

Thanks,
Mark.

[1] http://lists.infradead.org/pipermail/linux-arm-kernel/2018-April/572687.html

> 
> Cheers
> ---Dave
> 
> > ---
> >  arch/arm64/include/asm/stacktrace.h | 10 ++++++++++
> >  arch/arm64/kernel/process.c         |  6 +-----
> >  arch/arm64/kernel/time.c            |  6 +-----
> >  arch/arm64/kernel/traps.c           | 13 ++++++-------
> >  4 files changed, 18 insertions(+), 17 deletions(-)
> > 
> > diff --git a/arch/arm64/include/asm/stacktrace.h b/arch/arm64/include/asm/stacktrace.h
> > index 4dd569592e65..18f90bf1385c 100644
> > --- a/arch/arm64/include/asm/stacktrace.h
> > +++ b/arch/arm64/include/asm/stacktrace.h
> > @@ -142,4 +142,14 @@ static inline bool on_accessible_stack(const struct task_struct *tsk,
> >  	return false;
> >  }
> >  
> > +static inline void start_backtrace(struct stackframe *frame,
> > +				   unsigned long fp, unsigned long pc)
> > +{
> > +	frame->fp = fp;
> > +	frame->pc = pc;
> > +#ifdef CONFIG_FUNCTION_GRAPH_TRACER
> > +	frame->graph = 0;
> > +#endif
> > +}
> > +
> >  #endif	/* __ASM_STACKTRACE_H */
> > diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
> > index 3767fb21a5b8..122d88fccd13 100644
> > --- a/arch/arm64/kernel/process.c
> > +++ b/arch/arm64/kernel/process.c
> > @@ -509,11 +509,7 @@ unsigned long get_wchan(struct task_struct *p)
> >  	if (!stack_page)
> >  		return 0;
> >  
> > -	frame.fp = thread_saved_fp(p);
> > -	frame.pc = thread_saved_pc(p);
> > -#ifdef CONFIG_FUNCTION_GRAPH_TRACER
> > -	frame.graph = 0;
> > -#endif
> > +	start_backtrace(&frame, thread_saved_fp(p), thread_saved_pc(p));
> >  	do {
> >  		if (unwind_frame(p, &frame))
> >  			goto out;
> > diff --git a/arch/arm64/kernel/time.c b/arch/arm64/kernel/time.c
> > index a777ae90044d..aa3489f3a452 100644
> > --- a/arch/arm64/kernel/time.c
> > +++ b/arch/arm64/kernel/time.c
> > @@ -49,11 +49,7 @@ unsigned long profile_pc(struct pt_regs *regs)
> >  	if (!in_lock_functions(regs->pc))
> >  		return regs->pc;
> >  
> > -	frame.fp = regs->regs[29];
> > -	frame.pc = regs->pc;
> > -#ifdef CONFIG_FUNCTION_GRAPH_TRACER
> > -	frame.graph = 0;
> > -#endif
> > +	start_backtrace(&frame, regs->regs[29], regs->pc);
> >  	do {
> >  		int ret = unwind_frame(NULL, &frame);
> >  		if (ret < 0)
> > diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
> > index ade32046f3fe..8053bbed8776 100644
> > --- a/arch/arm64/kernel/traps.c
> > +++ b/arch/arm64/kernel/traps.c
> > @@ -119,18 +119,17 @@ void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
> >  		return;
> >  
> >  	if (tsk == current) {
> > -		frame.fp = (unsigned long)__builtin_frame_address(0);
> > -		frame.pc = (unsigned long)dump_backtrace;
> > +		start_backtrace(&frame,
> > +				(unsigned long)__builtin_frame_address(0),
> > +				(unsigned long)dump_backtrace);
> >  	} else {
> >  		/*
> >  		 * task blocked in __switch_to
> >  		 */
> > -		frame.fp = thread_saved_fp(tsk);
> > -		frame.pc = thread_saved_pc(tsk);
> > +		start_backtrace(&frame,
> > +				thread_saved_fp(tsk),
> > +				thread_saved_pc(tsk));
> >  	}
> > -#ifdef CONFIG_FUNCTION_GRAPH_TRACER
> > -	frame.graph = 0;
> > -#endif
> >  
> >  	printk("Call trace:\n");
> >  	do {
> > -- 
> > 2.11.0
> > 
> > 
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
