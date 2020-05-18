Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5008F1D79BB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 15:24:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DNeMmXNu84F3pjBUl++1TK3SxqDLE92L1n1gFfjatOw=; b=g9BRChqLphJe8x
	ZIET+haniz1Uw2DRtU86WcfBC9/D0mc2S/f3j812tcw0gsiMyljGRYyWJhyrQwVRtPpzhdZMqI13p
	91F9omljc3huF/DNPEEbNdt3z3qahNDIdEDUtfdtZw8Il3n/iEfSiliLpRDGzY4KO6og+PLlZ2WgT
	f9Y2TgoH4KSeIMMsyKmwKrPW0CxO7vQ0yVVUyNJrBwt4I3Uo8pWx4Its2VmYufKZzTIYM8Hey30Ic
	GhLYFYU3bcTqK9mNSJKJKgcRz33mWYDvk62vOsHXBkhaIgEA6OKMm1J2XOjO4qTV6Te8LrDCRel8G
	Zo6DSyVqnEE9y9LAQHxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jafkP-0008PL-0m; Mon, 18 May 2020 13:24:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jafkG-0008OG-L6
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 13:23:53 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 73656207F9;
 Mon, 18 May 2020 13:23:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589808232;
 bh=VRHqp4EH6ZCXx3q/nKzQbhc50sXdlhPesaPcLuWElWU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JK8h+I3656sP2fg7WK8m+s26PlqWyYK5YmqtE6IW3Op9VK8D8B/UqDER4PdbsMSQ5
 p5sP8nzfJLTy2vv+9qvzJqkifgwB0IuSdn+9i8AFFs0qbrVy6rF0Gc0WQSn7rvJYtN
 sDiipVGvZG87aUDUNlQjHd0PvJY3D6ZvzjmJje/g=
Date: Mon, 18 May 2020 14:23:47 +0100
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 4/6] scs: Move scs_overflow_check() out of architecture
 code
Message-ID: <20200518132346.GD32394@willie-the-truck>
References: <20200515172756.27185-1-will@kernel.org>
 <20200515172756.27185-5-will@kernel.org>
 <20200518121210.GD1957@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200518121210.GD1957@C02TD0UTHF1T.local>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_062352_739736_4172CF8C 
X-CRM114-Status: GOOD (  25.31  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Mon, May 18, 2020 at 01:12:10PM +0100, Mark Rutland wrote:
> On Fri, May 15, 2020 at 06:27:54PM +0100, Will Deacon wrote:
> > There is nothing architecture-specific about scs_overflow_check() as
> > it's just a trivial wrapper around scs_corrupted().
> > 
> > For parity with task_stack_end_corrupted(), rename scs_corrupted() to
> > task_scs_end_corrupted() and call it from schedule_debug() when
> > CONFIG_SCHED_STACK_END_CHECK_is enabled. Finally, remove the unused
> > scs_overflow_check() function entirely.
> > 
> > This has absolutely no impact on architectures that do not support SCS
> > (currently arm64 only).
> > 
> > Signed-off-by: Will Deacon <will@kernel.org>
> 
> Pulling this out of arch code seems sane to me, and the arch-specific
> chanes look sound. However, I have a concern with the changes within the
> scheduler context-switch.
> 
> > diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
> > index a35d3318492c..56be4cbf771f 100644
> > --- a/arch/arm64/kernel/process.c
> > +++ b/arch/arm64/kernel/process.c
> > @@ -52,7 +52,6 @@
> >  #include <asm/mmu_context.h>
> >  #include <asm/processor.h>
> >  #include <asm/pointer_auth.h>
> > -#include <asm/scs.h>
> >  #include <asm/stacktrace.h>
> >  
> >  #if defined(CONFIG_STACKPROTECTOR) && !defined(CONFIG_STACKPROTECTOR_PER_TASK)
> > @@ -516,7 +515,6 @@ __notrace_funcgraph struct task_struct *__switch_to(struct task_struct *prev,
> >  	entry_task_switch(next);
> >  	uao_thread_switch(next);
> >  	ssbs_thread_switch(next);
> > -	scs_overflow_check(next);
> 
> Prior to this patch, we'd never switch to a task whose SCS had already
> been corrupted.
> 
> With this patch, we only check that when switching away from a task, and
> only when CONFIG_SCHED_STACK_END_CHECK is selected, which at first
> glance seems to weaken that.

Yes, ignoring vmap'd stacks, this patch brings the SCS checking in-line with
the main stack checking when CONFIG_SCHED_STACK_END_CHECK=y.

> Arguably:
> 
> * If the next task's SCS was corrupted by that task while it was
>   running, we had already lost at that point.

With this change, we'll at least catch this one sooner, and that might be
useful if a bug has caused us to overflow the SCS but not the main stack.

> * If the next task's SCS was corrupted by another task, then that could
>   also happen immediately after the check (though timing to avoid the
>   check but affect the process could be harder).

We're only checking the magic end value, so the cross-task case is basically
if you overrun your own SCS as above, but then continue to overrun entire
SCSs for other tasks as well. It's probably not very useful in that case.

> ... and a VMAP'd SCS would be much nicer in this regard.
> 
> Do we think this is weakening the check, or do we think it wasn't all
> that helpful to begin with?

I see it as a debug check to catch SCS overflow, rather than a hardening
feature, and I agree that using something like vmap stack for the SCS would
be better because we could have a guard page instead. This is something I
would like to revisit, but we need more information from Sami about why
Android rejected the larger allocation size, since I don't think there's an
awful lot of point merging this series if Android doesn't pick it up.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
