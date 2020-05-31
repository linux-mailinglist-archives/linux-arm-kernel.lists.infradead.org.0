Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81EEF1E96AE
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 31 May 2020 11:52:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Mv+DV1891hv1SDT2OXdbis+nKWapBLnLNNByGW1rwk=; b=jbiCv/FgE96YYl
	azmBOBjJWsVSYzSYMoLLvI01VfPSGNKNM6v64Ov761ookX5/RwWoiOc6afZyd3CrAsBImHXIpVuU1
	Ow3CaMKodkvpJfy6UdCDEcuBESFgrGh+A+8uLNRD/qNVb2XzQpbPj91eXQkBdoyi/RXWRZf5xNymw
	GzpYlNmfHpFsP2MIBC7/8sCv2He1UqJNQU3H80vcZdmyihMNKcv00PpiFLcr+SrLs7G0YtpEQjBVw
	grxfuvB0dd5Ek2rfPwr259Prq9OuPx1L2InsMr0LJpxCwobH0KCfwhSIIYZPNUFXFR5+JuCoPQh/H
	dW1hT+gOb03zN752tcAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfKdt-00082q-7O; Sun, 31 May 2020 09:52:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfKdg-00082D-ST
 for linux-arm-kernel@lists.infradead.org; Sun, 31 May 2020 09:52:23 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CB7342074A;
 Sun, 31 May 2020 09:52:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590918740;
 bh=gD4GKFK41IpCLBqeo/tgYdpMHvbkJn4gmZy6eB6SFXA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1mSrWdtS2q28re0uUMwwGW2EoQhc25CyvyBljdiGYrLEOo5rhyZ2WiGMyu6Klw0cC
 p64hbTBJE7FOcZiiUTisnXD8njBoprAz/sQ9VWaRlRZ6v0nDNPvBfBzkXAym3+LK8J
 G9tVVE2e5u3yQUUTYGoUTGkFwBb8pjE+PjACSN9s=
Date: Sun, 31 May 2020 10:52:16 +0100
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [arm64, debug] PTRACE_SINGLESTEP does not single-step a valid
 instruction
Message-ID: <20200531095216.GB30204@willie-the-truck>
References: <1eed6d69-d53d-9657-1fc9-c089be07f98c@linaro.org>
 <20191118131525.GA4180@willie-the-truck>
 <b3a9ae7e-8a45-7c14-7bc6-1d3b62728a0c@linaro.org>
 <307ece3d-4e9d-21c4-0abf-9f4f3b313e74@linaro.org>
 <82cb3dea-db82-1c71-3b08-957102b85c93@linaro.org>
 <20200213120115.GD1405@willie-the-truck>
 <20200220130222.GA28634@lakrids.cambridge.arm.com>
 <20200220132941.GB14459@willie-the-truck>
 <20200221111652.GB45022@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200221111652.GB45022@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_025220_953148_0A8797EE 
X-CRM114-Status: GOOD (  35.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

Hi folks,

Sorry, I wrote a reply to this on a plane (so you can tell how long ago that
was!) and then forgot about it.

On Fri, Feb 21, 2020 at 11:16:53AM +0000, Mark Rutland wrote:
> On Thu, Feb 20, 2020 at 01:29:42PM +0000, Will Deacon wrote:
> > On Thu, Feb 20, 2020 at 01:02:22PM +0000, Mark Rutland wrote:
> > > On Thu, Feb 13, 2020 at 12:01:16PM +0000, Will Deacon wrote:
> > > > diff --git a/arch/arm64/kernel/ptrace.c b/arch/arm64/kernel/ptrace.c
> > > > index cd6e5fa48b9c..d479fbcbd0d2 100644
> > > > --- a/arch/arm64/kernel/ptrace.c
> > > > +++ b/arch/arm64/kernel/ptrace.c
> > > > @@ -1934,8 +1934,8 @@ static int valid_native_regs(struct user_pt_regs *regs)
> > > >   */
> > > >  int valid_user_regs(struct user_pt_regs *regs, struct task_struct *task)
> > > >  {
> > > > -	if (!test_tsk_thread_flag(task, TIF_SINGLESTEP))
> > > > -		regs->pstate &= ~DBG_SPSR_SS;
> > > > +	/* https://lore.kernel.org/lkml/20191118131525.GA4180@willie-the-truck */
> > > > +	user_regs_reset_single_step(regs, task);
> > > 
> > > I think this change means we do the right thing for signal entry/return
> > > and ptrace messing with the regs. Instruction emulation seems to do the
> > > right thing via skip_faulting_instruction().
> > > 
> > > I think there are a few more single-step edge cases lying around (e.g.
> > > uprobes, rseq), but it looks like those have to be fixed separately. I
> > > fear fixing uprobes might require a largler structural change to single
> > > step, but ignoring uprobes the changes above seem to be sound.
> > 
> > Rseq should just abort when delivering the step signal and I'm not sure I
> > see the issue with uprobes. Can you elaborate on your concerns a bit,
> > please?
> 
> For rseq I wasn't sure what state PSTATE.SS should be when we head to
> the abort handler -- I think the sensible thing would be that it
> immediately triggers a single-step exception, but I don't see where we'd
> clear PSTATE.SS to ensure that.
> 
> For uprobes I fear that the uprobes xol single-stepping might end up
> conflicting with the regular ptrace single-stepping, and that the
> uprobes emulation might not always advance the state machine correctly.
> 
> > > If userspace doesn't consume the SS value today, I wonder if we should
> > > hide it when dumping the SPSR to userspace, so that userspace has a
> > > consistent view regardless of whether it's being stepped.
> > 
> > You can't really hide it though, because '0' has a meaning so I don't think
> > it gains us a lot other than increasing the scope of the change.
> 
> I think that it reduces the likelihood that single-stepping a program
> changes its behaviour unexpectedly. This patch makes the kernel
> disregard the PSTATE.SS value provided by userspace, so what is gained
> by exposing PSTATE.SS to userspace at all?
> 
> I do agree that there are potentially subtle landmines here; I just
> can't see a legitimate reason for userspace to need the value.
> 
> > > I'll try to dig into the uprobes stuff this afternoon, just in case
> > > that
> > > needs us to do something substantially different.
> > 
> > Thanks.
> 
> I didn't get the chance to do this yesterday, but I did think of another
> potential problem.
> 
> I *think* that when attempting to single-step a syscall, if prior to
> return from the syscall the tracer messed with the tracee's regs (e.g.
> to mess with arguments or the retun value) then valid_user_regs() will
> set the SS bit, and upon return from the syscall the next instruction
> would be executed rather than first raising a single-step exception.

I don't actually think that's a problem: if the tracer has taken control by
e.g. PTRACE_SYSCALL and modified the registers on the syscall return path,
then it has to resume execution of the tracee somehow. There's nothing like
a "PTRACE_RESUME_SINGLESTEP" request, so it would need to issue something
like PTRACE_CONT (which disables stepping altogether) or PTRACE_SINGLESTEP,
which would step over the first instruction after the SVC. That's the same
as the behaviour today.

> This patch relies on valid_user_regs() being a signal that PSTATE.SS is
> stale, but that's not always the case. To handle that generally I
> suspect we need two bits of state rather than just TIF_SINGLESTEP.

Added another bit of state feels like we'll open up another can of worms.
Given that I don't think we need it for ptrace, I'll write this up as a
proper patch.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
