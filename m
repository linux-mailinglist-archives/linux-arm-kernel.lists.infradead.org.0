Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B31E165ECC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 14:30:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8PFUqJ0Q+7mCQiprwTjxb6R1G5ziRpZGCMajRTwSE3k=; b=O0aVSpvtqrbqTl
	+0uxBy1xoY6Kh0cvrDiGJ3Jopx37QunIPUbK3zOH0ks5alQdZ73t899HAex9yLgtnQYPQLjRhuc4S
	YAcZSt2DHd58F1w45F0iT9Qf5FnNVmPVc0uDWEJKwnBxda3iCVGvHsn9DtnVe1oiYgdQG6Ipq/AhO
	BYVdj7tY6/Z6Rjww9KF/bnCnOU/IM25rQlRX2rgWX67NMfF0LDNOsOb8YjnNZzAVmGbIYV7tPs68a
	cfX+KNnifCYHHa06LdevOhV4kcrcG/QQm6LEcHNXWLketD3KUpU7TGwfuZcADoglrM1FeIbRPdSWi
	qt3bxRjJLVI9mjpPAG5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4ltw-0005tL-4J; Thu, 20 Feb 2020 13:30:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4lti-0005sf-Sx
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 13:29:48 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E0ABB206E2;
 Thu, 20 Feb 2020 13:29:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582205386;
 bh=HpHYMalTAx75MOu2ZOzbWx3D0HRkyiLHKVfy+te1EJw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tz1ojHgPlqU8UH54G7o16GZGP9mOqNhJP7Hv+PKR4OM+sYJJFYBfJ/cwSgb8GucGz
 jZ9dsjQIu2s9OQmtDqYbRANDWOHjv1PPlKrwWsw9yRSdKQMrQbVKbtsFanfLJW1Ure
 0Fp2llb7OHPFrta5OA8zuT0Z2ZimZAUJRbWDXktQ=
Date: Thu, 20 Feb 2020 13:29:42 +0000
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [arm64, debug] PTRACE_SINGLESTEP does not single-step a valid
 instruction
Message-ID: <20200220132941.GB14459@willie-the-truck>
References: <1eed6d69-d53d-9657-1fc9-c089be07f98c@linaro.org>
 <20191118131525.GA4180@willie-the-truck>
 <b3a9ae7e-8a45-7c14-7bc6-1d3b62728a0c@linaro.org>
 <307ece3d-4e9d-21c4-0abf-9f4f3b313e74@linaro.org>
 <82cb3dea-db82-1c71-3b08-957102b85c93@linaro.org>
 <20200213120115.GD1405@willie-the-truck>
 <20200220130222.GA28634@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200220130222.GA28634@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_052946_979388_867F55B8 
X-CRM114-Status: GOOD (  25.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Hi Mark,

Thanks for having a look.

On Thu, Feb 20, 2020 at 01:02:22PM +0000, Mark Rutland wrote:
> On Thu, Feb 13, 2020 at 12:01:16PM +0000, Will Deacon wrote:
> > diff --git a/arch/arm64/kernel/ptrace.c b/arch/arm64/kernel/ptrace.c
> > index cd6e5fa48b9c..d479fbcbd0d2 100644
> > --- a/arch/arm64/kernel/ptrace.c
> > +++ b/arch/arm64/kernel/ptrace.c
> > @@ -1934,8 +1934,8 @@ static int valid_native_regs(struct user_pt_regs *regs)
> >   */
> >  int valid_user_regs(struct user_pt_regs *regs, struct task_struct *task)
> >  {
> > -	if (!test_tsk_thread_flag(task, TIF_SINGLESTEP))
> > -		regs->pstate &= ~DBG_SPSR_SS;
> > +	/* https://lore.kernel.org/lkml/20191118131525.GA4180@willie-the-truck */
> > +	user_regs_reset_single_step(regs, task);
> 
> I think this change means we do the right thing for signal entry/return
> and ptrace messing with the regs. Instruction emulation seems to do the
> right thing via skip_faulting_instruction().
> 
> I think there are a few more single-step edge cases lying around (e.g.
> uprobes, rseq), but it looks like those have to be fixed separately. I
> fear fixing uprobes might require a largler structural change to single
> step, but ignoring uprobes the changes above seem to be sound.

Rseq should just abort when delivering the step signal and I'm not sure I
see the issue with uprobes. Can you elaborate on your concerns a bit,
please?

> If userspace doesn't consume the SS value today, I wonder if we should
> hide it when dumping the SPSR to userspace, so that userspace has a
> consistent view regardless of whether it's being stepped.

You can't really hide it though, because '0' has a meaning so I don't think
it gains us a lot other than increasing the scope of the change.

> I'll try to dig into the uprobes stuff this afternoon, just in case that
> needs us to do something substantially different.

Thanks.

> The existing logic in valid_user_regs() doesn't make sense to me, given
> SPSR_EL1.SS is immaterial unless MSCDR_EL1.SS == 1. I'm not sure if that
> was overzealous or I've forgotten an edge case that we cared about in
> the past.

I think it was just part of sanitising the registers to a consistent value,
but I agree that it wouldn't have a functional impact.

> > diff --git a/arch/arm64/kernel/signal.c b/arch/arm64/kernel/signal.c
> > index 339882db5a91..bc54bdbfd760 100644
> > --- a/arch/arm64/kernel/signal.c
> > +++ b/arch/arm64/kernel/signal.c
> > @@ -505,8 +505,12 @@ static int restore_sigframe(struct pt_regs *regs,
> >  	forget_syscall(regs);
> >  
> >  	err |= !valid_user_regs(&regs->user_regs, current);
> > -	if (err == 0)
> > +
> > +	if (err == 0) {
> > +		/* Make it look like we stepped the sigreturn system call */
> > +		user_fastforward_single_step(current);
> >  		err = parse_user_sigframe(&user, sf);
> > +	}
> 
> I don't understand this. AFAICT  we don't likewise for other SVCs, so
> either I'm missing that, or there's something else I'm missing.
> 
> Why do we need to step sigreturn but not SVC generally?

Because we restore the SPSR from the sigframe during sigreturn, so we will
end up with PSTATE.SS set when it should be cleared.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
