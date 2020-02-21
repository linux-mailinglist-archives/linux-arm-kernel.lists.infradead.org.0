Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEBF8167BDA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 12:17:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QHaPvarWjlJqwbimZ1v5FE0Yu0670MqwUkMhloDhzok=; b=m34R9475ZbakY6
	G9WDkk1h+OI7oFP6LvYCTlAMRVTjQSMegxro+IeiKJgFPJ4/XoIs5krAhUVSKhp+/PrVGgkpo1lfd
	0lm9FRk5/muxK+Vfn1ipPTihhs8SXEZSe5CxLSw5BuXVqSFiFI+c2enHDY1tXJ8OOO+1U9AwZlmOY
	E8bzEBqkda8l88SAncMXq2rCBEAz8pJsJvxa4reB16iekxPgLBX6QITPt4fS+/nCqK693Q6j/74SB
	7NzHJ5YWCGVHgsHeg68eYcYQ7hROA4dDV9O3nWuBuk0Yg/MSmTbYy9QqJLXvHYaYzyYL1ZSRoC7Hr
	inkwjw+/Qm4Bn/3NmpIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j56It-0005Ol-5G; Fri, 21 Feb 2020 11:17:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j56Ii-0005ON-GE
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 11:16:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C249631B;
 Fri, 21 Feb 2020 03:16:55 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 378503F68F;
 Fri, 21 Feb 2020 03:16:55 -0800 (PST)
Date: Fri, 21 Feb 2020 11:16:53 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [arm64, debug] PTRACE_SINGLESTEP does not single-step a valid
 instruction
Message-ID: <20200221111652.GB45022@lakrids.cambridge.arm.com>
References: <1eed6d69-d53d-9657-1fc9-c089be07f98c@linaro.org>
 <20191118131525.GA4180@willie-the-truck>
 <b3a9ae7e-8a45-7c14-7bc6-1d3b62728a0c@linaro.org>
 <307ece3d-4e9d-21c4-0abf-9f4f3b313e74@linaro.org>
 <82cb3dea-db82-1c71-3b08-957102b85c93@linaro.org>
 <20200213120115.GD1405@willie-the-truck>
 <20200220130222.GA28634@lakrids.cambridge.arm.com>
 <20200220132941.GB14459@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200220132941.GB14459@willie-the-truck>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_031656_626722_4C8BB2A1 
X-CRM114-Status: GOOD (  36.48  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Luis Machado <luis.machado@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 20, 2020 at 01:29:42PM +0000, Will Deacon wrote:
> Hi Mark,
> 
> Thanks for having a look.
> 
> On Thu, Feb 20, 2020 at 01:02:22PM +0000, Mark Rutland wrote:
> > On Thu, Feb 13, 2020 at 12:01:16PM +0000, Will Deacon wrote:
> > > diff --git a/arch/arm64/kernel/ptrace.c b/arch/arm64/kernel/ptrace.c
> > > index cd6e5fa48b9c..d479fbcbd0d2 100644
> > > --- a/arch/arm64/kernel/ptrace.c
> > > +++ b/arch/arm64/kernel/ptrace.c
> > > @@ -1934,8 +1934,8 @@ static int valid_native_regs(struct user_pt_regs *regs)
> > >   */
> > >  int valid_user_regs(struct user_pt_regs *regs, struct task_struct *task)
> > >  {
> > > -	if (!test_tsk_thread_flag(task, TIF_SINGLESTEP))
> > > -		regs->pstate &= ~DBG_SPSR_SS;
> > > +	/* https://lore.kernel.org/lkml/20191118131525.GA4180@willie-the-truck */
> > > +	user_regs_reset_single_step(regs, task);
> > 
> > I think this change means we do the right thing for signal entry/return
> > and ptrace messing with the regs. Instruction emulation seems to do the
> > right thing via skip_faulting_instruction().
> > 
> > I think there are a few more single-step edge cases lying around (e.g.
> > uprobes, rseq), but it looks like those have to be fixed separately. I
> > fear fixing uprobes might require a largler structural change to single
> > step, but ignoring uprobes the changes above seem to be sound.
> 
> Rseq should just abort when delivering the step signal and I'm not sure I
> see the issue with uprobes. Can you elaborate on your concerns a bit,
> please?

For rseq I wasn't sure what state PSTATE.SS should be when we head to
the abort handler -- I think the sensible thing would be that it
immediately triggers a single-step exception, but I don't see where we'd
clear PSTATE.SS to ensure that.

For uprobes I fear that the uprobes xol single-stepping might end up
conflicting with the regular ptrace single-stepping, and that the
uprobes emulation might not always advance the state machine correctly.

> > If userspace doesn't consume the SS value today, I wonder if we should
> > hide it when dumping the SPSR to userspace, so that userspace has a
> > consistent view regardless of whether it's being stepped.
> 
> You can't really hide it though, because '0' has a meaning so I don't think
> it gains us a lot other than increasing the scope of the change.

I think that it reduces the likelihood that single-stepping a program
changes its behaviour unexpectedly. This patch makes the kernel
disregard the PSTATE.SS value provided by userspace, so what is gained
by exposing PSTATE.SS to userspace at all?

I do agree that there are potentially subtle landmines here; I just
can't see a legitimate reason for userspace to need the value.

> > I'll try to dig into the uprobes stuff this afternoon, just in case
> > that
> > needs us to do something substantially different.
> 
> Thanks.

I didn't get the chance to do this yesterday, but I did think of another
potential problem.

I *think* that when attempting to single-step a syscall, if prior to
return from the syscall the tracer messed with the tracee's regs (e.g.
to mess with arguments or the retun value) then valid_user_regs() will
set the SS bit, and upon return from the syscall the next instruction
would be executed rather than first raising a single-step exception.

This patch relies on valid_user_regs() being a signal that PSTATE.SS is
stale, but that's not always the case. To handle that generally I
suspect we need two bits of state rather than just TIF_SINGLESTEP.

> > The existing logic in valid_user_regs() doesn't make sense to me, given
> > SPSR_EL1.SS is immaterial unless MSCDR_EL1.SS == 1. I'm not sure if that
> > was overzealous or I've forgotten an edge case that we cared about in
> > the past.
> 
> I think it was just part of sanitising the registers to a consistent value,
> but I agree that it wouldn't have a functional impact.

Thanks for confirming my understanding. I guess this may have minimized
the cases where userspace saw PSTATE.SS set.

> > > diff --git a/arch/arm64/kernel/signal.c b/arch/arm64/kernel/signal.c
> > > index 339882db5a91..bc54bdbfd760 100644
> > > --- a/arch/arm64/kernel/signal.c
> > > +++ b/arch/arm64/kernel/signal.c
> > > @@ -505,8 +505,12 @@ static int restore_sigframe(struct pt_regs *regs,
> > >  	forget_syscall(regs);
> > >  
> > >  	err |= !valid_user_regs(&regs->user_regs, current);
> > > -	if (err == 0)
> > > +
> > > +	if (err == 0) {
> > > +		/* Make it look like we stepped the sigreturn system call */
> > > +		user_fastforward_single_step(current);
> > >  		err = parse_user_sigframe(&user, sf);
> > > +	}
> > 
> > I don't understand this. AFAICT  we don't likewise for other SVCs, so
> > either I'm missing that, or there's something else I'm missing.
> > 
> > Why do we need to step sigreturn but not SVC generally?
> 
> Because we restore the SPSR from the sigframe during sigreturn, so we will
> end up with PSTATE.SS set when it should be cleared.

Ah, I see. As above, I think we can hit a similar case when
single-stepping an SVC for a regular syscall.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
