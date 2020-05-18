Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6328F1D79E9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 15:32:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wGMk3sAzendnUdmn5m7vsJ1Nj6Pe40A1M276s26WoHo=; b=WMWDDqgemCbbE6
	+7b8fMB3SyDtc9k4q8UOf85lsqo8GAMaoa9VMj5soEcl3cXHWR8ZCfvbYwvAPcCybQfwEw7Gy0hU2
	ShneUSlTgpQPpNfRcjQUyMYUoD7tZ7hj2AK+pPhsq+HyFCxZEHxXiakf06H0j5RKMbyY3bWOAOwP+
	6oCNULThfJmCLb2f1jI1bIqFeBVj2DByI6rg8IMV9wFDc+Ie4O6vbrUKKTPD3ih6LY/hUqqDRSMj6
	pLJ1vA2N9LMdWnN3ZS/qsL/ijFZK5lvo/PdfG24qRKMbtu6yBaqbxx9lUoSkGWfgkAYl7TN6O779G
	G3v0/wZrpYn2Yrii9QZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jafst-00074u-II; Mon, 18 May 2020 13:32:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jafsk-00073x-7y
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 13:32:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4178C101E;
 Mon, 18 May 2020 06:32:37 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.29.34])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D82EF3F305;
 Mon, 18 May 2020 06:32:34 -0700 (PDT)
Date: Mon, 18 May 2020 14:32:31 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 4/6] scs: Move scs_overflow_check() out of architecture
 code
Message-ID: <20200518133231.GC2787@C02TD0UTHF1T.local>
References: <20200515172756.27185-1-will@kernel.org>
 <20200515172756.27185-5-will@kernel.org>
 <20200518121210.GD1957@C02TD0UTHF1T.local>
 <20200518132346.GD32394@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200518132346.GD32394@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_063238_371676_02470379 
X-CRM114-Status: GOOD (  29.13  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Mark Rutland <mark.rutland@am.com>, Sami Tolvanen <samitolvanen@google.com>,
 kernel-team@android.com, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 02:23:47PM +0100, Will Deacon wrote:
> On Mon, May 18, 2020 at 01:12:10PM +0100, Mark Rutland wrote:
> > On Fri, May 15, 2020 at 06:27:54PM +0100, Will Deacon wrote:
> > > There is nothing architecture-specific about scs_overflow_check() as
> > > it's just a trivial wrapper around scs_corrupted().
> > > 
> > > For parity with task_stack_end_corrupted(), rename scs_corrupted() to
> > > task_scs_end_corrupted() and call it from schedule_debug() when
> > > CONFIG_SCHED_STACK_END_CHECK_is enabled. Finally, remove the unused
> > > scs_overflow_check() function entirely.
> > > 
> > > This has absolutely no impact on architectures that do not support SCS
> > > (currently arm64 only).
> > > 
> > > Signed-off-by: Will Deacon <will@kernel.org>
> > 
> > Pulling this out of arch code seems sane to me, and the arch-specific
> > chanes look sound. However, I have a concern with the changes within the
> > scheduler context-switch.
> > 
> > > diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
> > > index a35d3318492c..56be4cbf771f 100644
> > > --- a/arch/arm64/kernel/process.c
> > > +++ b/arch/arm64/kernel/process.c
> > > @@ -52,7 +52,6 @@
> > >  #include <asm/mmu_context.h>
> > >  #include <asm/processor.h>
> > >  #include <asm/pointer_auth.h>
> > > -#include <asm/scs.h>
> > >  #include <asm/stacktrace.h>
> > >  
> > >  #if defined(CONFIG_STACKPROTECTOR) && !defined(CONFIG_STACKPROTECTOR_PER_TASK)
> > > @@ -516,7 +515,6 @@ __notrace_funcgraph struct task_struct *__switch_to(struct task_struct *prev,
> > >  	entry_task_switch(next);
> > >  	uao_thread_switch(next);
> > >  	ssbs_thread_switch(next);
> > > -	scs_overflow_check(next);
> > 
> > Prior to this patch, we'd never switch to a task whose SCS had already
> > been corrupted.
> > 
> > With this patch, we only check that when switching away from a task, and
> > only when CONFIG_SCHED_STACK_END_CHECK is selected, which at first
> > glance seems to weaken that.
> 
> Yes, ignoring vmap'd stacks, this patch brings the SCS checking in-line with
> the main stack checking when CONFIG_SCHED_STACK_END_CHECK=y.
> 
> > Arguably:
> > 
> > * If the next task's SCS was corrupted by that task while it was
> >   running, we had already lost at that point.
> 
> With this change, we'll at least catch this one sooner, and that might be
> useful if a bug has caused us to overflow the SCS but not the main stack.

Sure, but only if CONFIG_SCHED_STACK_END_CHECK is selected.

> > * If the next task's SCS was corrupted by another task, then that could
> >   also happen immediately after the check (though timing to avoid the
> >   check but affect the process could be harder).
> 
> We're only checking the magic end value, so the cross-task case is basically
> if you overrun your own SCS as above, but then continue to overrun entire
> SCSs for other tasks as well. It's probably not very useful in that case.
> 
> > ... and a VMAP'd SCS would be much nicer in this regard.
> > 
> > Do we think this is weakening the check, or do we think it wasn't all
> > that helpful to begin with?
> 
> I see it as a debug check to catch SCS overflow, rather than a hardening
> feature, and I agree that using something like vmap stack for the SCS would
> be better because we could have a guard page instead.

Fair enough. Could we put something into the commit message that more
explicitly calls out debug-not-hardening? I agree that under that model
this patch looks fine, and with something to that effect:

Reviewed-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> This is something I would like to revisit, but we need more
> information from Sami about why Android rejected the larger allocation
> size, since I don't think there's an awful lot of point merging this
> series if Android doesn't pick it up.

Indeed. I'd certainly prefer the robustness of a VMAP'd SCS if we can do
that.

Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
