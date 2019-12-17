Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4712812341D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 19:02:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ZSUp8Sz8Kb/8TFohMhfR3Cx7tSOhTsA9AWHQbPvQFE=; b=LSs+w4tLrjOb+a
	VX3ygAJDBLo/dYCtuROTY0A8wmVo67Ufs8MXzn6f46yqT3aMK4HYKIh+sreZvejghN/vCJQQfPtjv
	+3ODWNRRxMBiVWXYFgySvXY5uJQA++7pMWPPDMmwU0EwbvEbueQuKQffMUwdLdF0xccMFf76zlw93
	uKBuwVy1AaVLAucVMKL9DHa7eUdS07ZGwEIP6BVHdvLwXjazQJpPfYX+FR545Dt7vkE1UQFb5sSj3
	lODmqqGBa/nNhdmiEBtenhQ+wn8xH1QzEmmkit9klhhMYM3v2lU05x/amxM8n7pUesWAWUY6ezfI3
	JV47VKlVWzWnuXPqhJ7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihHAe-0003YF-M3; Tue, 17 Dec 2019 18:02:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihHAT-0003Xl-Db
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 18:01:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1BF2E30E;
 Tue, 17 Dec 2019 10:01:56 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 70A7B3F67D; Tue, 17 Dec 2019 10:01:54 -0800 (PST)
Date: Tue, 17 Dec 2019 18:01:52 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Peter Collingbourne <pcc@google.com>
Subject: Re: [PATCH 13/22] arm64: mte: Handle synchronous and asynchronous
 tag check faults
Message-ID: <20191217180152.GO5624@arrakis.emea.arm.com>
References: <20191211184027.20130-1-catalin.marinas@arm.com>
 <20191211184027.20130-14-catalin.marinas@arm.com>
 <CAMn1gO6RDrpkO6hygTUuXbsE5XTD+FEsZKpo5cqgg+nQWfBVKQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMn1gO6RDrpkO6hygTUuXbsE5XTD+FEsZKpo5cqgg+nQWfBVKQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_100157_501788_F281B2E9 
X-CRM114-Status: GOOD (  18.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 linux-mm@kvack.org, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Marc Zyngier <maz@kernel.org>, Kevin Brodsky <kevin.brodsky@arm.com>,
 Kostya Serebryany <kcc@google.com>, Evgenii Stepanov <eugenis@google.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 13, 2019 at 05:43:15PM -0800, Peter Collingbourne wrote:
> On Wed, Dec 11, 2019 at 10:44 AM Catalin Marinas
> <catalin.marinas@arm.com> wrote:
> > diff --git a/arch/arm64/kernel/signal.c b/arch/arm64/kernel/signal.c
> > index dd2cdc0d5be2..41fae64af82a 100644
> > --- a/arch/arm64/kernel/signal.c
> > +++ b/arch/arm64/kernel/signal.c
> > @@ -730,6 +730,9 @@ static void setup_return(struct pt_regs *regs, struct k_sigaction *ka,
> >         regs->regs[29] = (unsigned long)&user->next_frame->fp;
> >         regs->pc = (unsigned long)ka->sa.sa_handler;
> >
> > +       /* TCO (Tag Check Override) always cleared for signal handlers */
> > +       regs->pstate &= ~PSR_TCO_BIT;
> > +
> >         if (ka->sa.sa_flags & SA_RESTORER)
> >                 sigtramp = ka->sa.sa_restorer;
> >         else
> > @@ -921,6 +924,11 @@ asmlinkage void do_notify_resume(struct pt_regs *regs,
> >                         if (thread_flags & _TIF_UPROBE)
> >                                 uprobe_notify_resume(regs);
> >
> > +                       if (thread_flags & _TIF_MTE_ASYNC_FAULT) {
> > +                               clear_thread_flag(TIF_MTE_ASYNC_FAULT);
> > +                               force_signal_inject(SIGSEGV, SEGV_MTEAERR, 0);
> 
> In the case where the kernel is entered due to a syscall, this will
> inject a signal, but only after servicing the syscall. This means
> that, for example, if the syscall is exit(), the async tag check
> failure will be silently ignored. I can reproduce the problem with the
> program below:
[...]
> This patch fixes the problem for me:
> 
> diff --git a/arch/arm64/kernel/syscall.c b/arch/arm64/kernel/syscall.c
> index 9a9d98a443fc..d0c8918dee00 100644
> --- a/arch/arm64/kernel/syscall.c
> +++ b/arch/arm64/kernel/syscall.c
> @@ -94,6 +94,8 @@ static void el0_svc_common(struct pt_regs *regs, int
> scno, int sc_nr,
>                            const syscall_fn_t syscall_table[])
>  {
>         unsigned long flags = current_thread_info()->flags;
> +       if (flags & _TIF_MTE_ASYNC_FAULT)
> +               return;

It needs a bit of thinking. This one wouldn't work if you want to handle
the signal and resume since it would skip the SVC instruction. We'd need
at least to do a regs->pc -= 4 and probably move it further down in this
function.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
