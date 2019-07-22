Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDAE7704EE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 18:04:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hdj3b4EZL22IUeYoqjNKwWRBUbiMbr7aOrmm28sEfcY=; b=s9RqfCIfQPMccS
	n34maDXblWSlWL39AwyWanD30/rj6FLFIkpGc/AR85bk90mZakA3EI7NYSuOjdK0nCvZyAbk6ZAfL
	WywwiIAyNhABzHQlkSdNlycBGPo0UfdutzkkYdA7jRGSI5cod8yG7mgeiEGYeRh2xRxA5xnZwvHd4
	BeCYB+BwmvYcn+JYiVA8p56gETft5/uCu4EUl0l/GIHLBe5oPGsfA4dfhD1oKUg6jpa4/Lf8gxhmm
	Nt4+HXIko86Cv8ztgNLueJtmsHTpa+a6tqEyw/B2kqo6p+6fVWxFqYeF1diFGPgrg26ZbIlX7C2uU
	2w/kc2vHLLjuS/1P/qHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpao1-00075q-36; Mon, 22 Jul 2019 16:04:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpani-00075X-FS
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 16:04:35 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D9B24218EA;
 Mon, 22 Jul 2019 16:04:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563811474;
 bh=7RwDDoYMSKiJXQcAvdFCkYSTfi71JkbCJnKoEX3JQbE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KS0cpwUik1/WWl0IV4JJVch4JI4XF967dMmvdgXgADmy4ekSHl8+x9ztZdOJnq1lh
 42dcJaepPvoqmIR1ebI98pz0io9zRxnFJfVeA1AM91ZCPx1+DHfje7g4v+gdLvHFI7
 ev3/5agSRmWuLATOZxqCH9n4gs+xIuP/epyE9rUE=
Date: Mon, 22 Jul 2019 17:04:29 +0100
From: Will Deacon <will@kernel.org>
To: Neeraj Upadhyay <neeraju@codeaurora.org>
Subject: Re: [PATCH v2] arm64: Force SSBS on context switch
Message-ID: <20190722160429.wasox4nfl6t5jrew@willie-the-truck>
References: <20190722135309.43186-1-marc.zyngier@arm.com>
 <8c89dbc4-50ba-6802-e582-d4fe54426261@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8c89dbc4-50ba-6802-e582-d4fe54426261@codeaurora.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_090434_538702_93CD3F31 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Mark Rutland <mark.rutland@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 Anshuman Khandual <anshuman.khandual@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 08:28:15PM +0530, Neeraj Upadhyay wrote:
> On 7/22/19 7:23 PM, Marc Zyngier wrote:
> > +static void ssbs_thread_switch(struct task_struct *next)
> > +{
> > +	if (likely(!(next->flags & PF_KTHREAD)) &&
> > +	    arm64_get_ssbd_state() != ARM64_SSBD_FORCE_ENABLE &&
> > +	    !test_tsk_thread_flag(next, TIF_SSBD)) {
> > +		struct pt_regs *regs = task_pt_regs(next);
> > +
> > +		if (compat_user_mode(regs))
> > +			set_compat_ssbs_bit(regs);
> > +		else if (user_mode(regs))
> > +			set_ssbs_bit(regs);
> > +	}
> > +}
> > +
> >   /*
> >    * We store our current task in sp_el0, which is clobbered by userspace. Keep a
> >    * shadow copy so that we can restore this upon entry from userspace.
> > @@ -471,6 +485,7 @@ __notrace_funcgraph struct task_struct *__switch_to(struct task_struct *prev,
> >   	entry_task_switch(next);
> >   	uao_thread_switch(next);
> >   	ptrauth_thread_switch(next);
> > +	ssbs_thread_switch(next);
> >   	/*
> >   	 * Complete any pending TLB or cache maintenance on this CPU in case
> 
> Looks good to me.

I inverted the logic in ssbs_thread_switch() so I could add some comments.
Please double check:

https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/commit/?h=for-next/fixes&id=cbdf8a189a66001c36007bf0f5c975d0376c5c3a

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
