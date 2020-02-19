Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B121649B0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 17:16:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FdoFP+3hhF+o705PX01JCcz9fjkfFHq7FIKzn5S4tsM=; b=pFsWjfJO9suvIE
	XOfGnfi9ayxvR7LLyQPOSe+EXzk3h+GhYs4YLAhD2yzfJOBMySc5JSXumJHyWkHs4W7Q5CDa25GtM
	URHhj1So6SrmNVLh9CcA6tKAk6eRWHibvX8+kvk0J4rPSWYn8oduloeKuBdifHQDxK+HZ3pcll6YJ
	WSzRmGLlP5v/V3u1O8OXzYWWzrxRQa0CJNrHivfptoWTafJsk9NuR9+5U+R4Uer59tNt4FLzH+191
	MwukwDnoMaK/6p8oiHw7lQvHYAksWUlVO6ZWZ4KzTyYxGW/e1nVAez7e1q69ftSDLtgTY53lyopjy
	0mQZxUSH44vF7v9BDhIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4S1R-0005mE-PE; Wed, 19 Feb 2020 16:16:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4S1D-0005lV-FH
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 16:16:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C6F231FB;
 Wed, 19 Feb 2020 08:16:09 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 C4CF63F703; Wed, 19 Feb 2020 08:16:07 -0800 (PST)
Date: Wed, 19 Feb 2020 16:16:05 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Peter Collingbourne <pcc@google.com>
Subject: Re: [PATCH] arm64: mte: Do not service syscalls after async tag fault
Message-ID: <20200219161605.GA84712@arrakis.emea.arm.com>
References: <20191217180152.GO5624@arrakis.emea.arm.com>
 <20191220013639.212396-1-pcc@google.com>
 <20200212110903.GE488264@arrakis.emea.arm.com>
 <CAMn1gO6bDenF95Rk2sUyGhm0f7PfEj6i_tmH+geVdU3ZqcRifw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMn1gO6bDenF95Rk2sUyGhm0f7PfEj6i_tmH+geVdU3ZqcRifw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_081611_598623_E96B96A8 
X-CRM114-Status: GOOD (  24.37  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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

On Tue, Feb 18, 2020 at 01:59:34PM -0800, Peter Collingbourne wrote:
> On Wed, Feb 12, 2020 at 3:09 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
> > On Thu, Dec 19, 2019 at 05:36:39PM -0800, Peter Collingbourne wrote:
> > > When entering the kernel after an async tag fault due to a syscall, rather
> > > than for another reason (e.g. preemption), we don't want to service the
> > > syscall as it may mask the tag fault. Rewind the PC to the svc instruction
> > > in order to give a userspace signal handler an opportunity to handle the
> > > fault and resume, and skip all other syscall processing.
> > >
> > > Signed-off-by: Peter Collingbourne <pcc@google.com>
> > > ---
> > [...]
> > >  arch/arm64/kernel/syscall.c | 22 +++++++++++++++++++---
> > >  1 file changed, 19 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/arch/arm64/kernel/syscall.c b/arch/arm64/kernel/syscall.c
> > > index 9a9d98a443fc..49ea9bb47190 100644
> > > --- a/arch/arm64/kernel/syscall.c
> > > +++ b/arch/arm64/kernel/syscall.c
> > > @@ -95,13 +95,29 @@ static void el0_svc_common(struct pt_regs *regs, int scno, int sc_nr,
> > >  {
> > >       unsigned long flags = current_thread_info()->flags;
> > >
> > > -     regs->orig_x0 = regs->regs[0];
> > > -     regs->syscallno = scno;
> > > -
> > >       cortex_a76_erratum_1463225_svc_handler();
> > >       local_daif_restore(DAIF_PROCCTX);
> > >       user_exit();
> > >
> > > +#ifdef CONFIG_ARM64_MTE
> > > +     if (flags & _TIF_MTE_ASYNC_FAULT) {
> > > +             /*
> > > +              * We entered the kernel after an async tag fault due to a
> > > +              * syscall, rather than for another reason (e.g. preemption).
> > > +              * In this case, we don't want to service the syscall as it may
> > > +              * mask the tag fault. Rewind the PC to the svc instruction in
> > > +              * order to give a userspace signal handler an opportunity to
> > > +              * handle the fault and resume, and skip all other syscall
> > > +              * processing.
> > > +              */
> > > +             regs->pc -= 4;
> > > +             return;
> > > +     }
> > > +#endif
> > > +
> > > +     regs->orig_x0 = regs->regs[0];
> > > +     regs->syscallno = scno;
> >
> > I'm slightly worried about the interaction with single-step, other
> > signals. It might be better if we just use the existing syscall
> > restarting mechanism. Untested diff below:
> >
> > -------------------8<-------------------------------
> > diff --git a/arch/arm64/kernel/syscall.c b/arch/arm64/kernel/syscall.c
> > index a12c0c88d345..db25f5d6a07c 100644
> > --- a/arch/arm64/kernel/syscall.c
> > +++ b/arch/arm64/kernel/syscall.c
> > @@ -102,6 +102,16 @@ static void el0_svc_common(struct pt_regs *regs, int scno, int sc_nr,
> >         local_daif_restore(DAIF_PROCCTX);
> >         user_exit();
> >
> > +       if (system_supports_mte() && (flags & _TIF_MTE_ASYNC_FAULT)) {
> > +               /*
> > +                * Process the asynchronous tag check fault before the actual
> > +                * syscall. do_notify_resume() will send a signal to userspace
> > +                * before the syscall is restarted.
> > +                */
> > +               regs->regs[0] = -ERESTARTNOINTR;
> > +               return;
> > +       }
> > +
> >         if (has_syscall_work(flags)) {
> >                 /* set default errno for user-issued syscall(-1) */
> >                 if (scno == NO_SYSCALL)
> 
> That works for me, and I verified that my small test program as well
> as some larger unit tests behave as expected.
> 
> Tested-by: Peter Collingbourne <pcc@google.com>

Thanks Peter.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
