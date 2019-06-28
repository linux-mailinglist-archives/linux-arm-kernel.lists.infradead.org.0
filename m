Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D23559947
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 13:32:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Re88pLw0zCzk7DPdNUZ2BaZDR3KJ+XhFpGcw8o3ec68=; b=bEgUPF2p3Oi1AD
	mjJ+Ge2jBVkzeENXoN4Q36Lt/WrpYanPFvXZw3LT2ZgYIISnpe8bnUU0wdXXP7JyMSoBDhRjcbZdw
	oiCiSRDytSH9QDbI5g0bWD/73D6GCggpAQ4vNF+QetYhr5o1hgLB+ZXoewcuidSgKwAA7EtrveREI
	GPD1r5cEN54YnlLGOnfm7jVa2RGM+qshtAJQIEUlbBNzYxCJEOkAO7Nh4UI4mdzmFxxuUnfKN0kcO
	4wqWUBt7nS90V6RTuyVVvQ1oBPiKULwfnk6x7jVjFyM5Mj1ds4KvbkIxXYXIoUvwoutpEn/OE+h2M
	w00xn5Aycg0NIKNkse3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgp75-0006p6-VB; Fri, 28 Jun 2019 11:32:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgp6q-0006og-Oo
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 11:32:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E95B228;
 Fri, 28 Jun 2019 04:32:03 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0D14E3F718;
 Fri, 28 Jun 2019 04:32:02 -0700 (PDT)
Date: Fri, 28 Jun 2019 12:32:00 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH 3/3] arm64: stacktrace: better handle corrupted stacks
Message-ID: <20190628113200.GI36437@lakrids.cambridge.arm.com>
References: <20190606125402.10229-1-mark.rutland@arm.com>
 <20190606125402.10229-4-mark.rutland@arm.com>
 <20190621163721.GF2790@e103592.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190621163721.GF2790@e103592.cambridge.arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_043204_903652_A1891C17 
X-CRM114-Status: GOOD (  25.94  )
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

On Fri, Jun 21, 2019 at 05:37:21PM +0100, Dave Martin wrote:
> On Thu, Jun 06, 2019 at 01:54:02PM +0100, Mark Rutland wrote:
> > The arm64 stacktrace code is careful to only dereference frame records
> > in valid stack ranges, ensuring that a corrupted frame record won't
> > result in a faulting access.
> > 
> > However, it's still possible for corrupt frame records to result in
> > infinite loops in the stacktrace code, which is also undesirable.
> > 
> > This patch ensures that we complete a stacktrace in finite time, by
> > keeping track of which stacks we have already completed unwinding, and
> > verifying that if the next frame record is on the same stack, it is at a
> > higher address.
> > 
> > Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: Dave Martin <dave.martin@arm.com>
> > Cc: James Morse <james.morse@arm.com>
> > Cc: Tengfei Fan <tengfeif@codeaurora.org>
> > Cc: Will Deacon <will.deacon@arm.com>
> > ---
> >  arch/arm64/include/asm/stacktrace.h | 34 ++++++++++++++++++++++++++--------
> >  arch/arm64/kernel/process.c         |  2 +-
> >  arch/arm64/kernel/stacktrace.c      | 16 +++++++++++++++-
> >  arch/arm64/kernel/time.c            |  2 +-
> >  arch/arm64/kernel/traps.c           |  4 ++--
> >  5 files changed, 45 insertions(+), 13 deletions(-)
> > 
> > diff --git a/arch/arm64/include/asm/stacktrace.h b/arch/arm64/include/asm/stacktrace.h
> > index 18f90bf1385c..4ebf8a8997b0 100644
> > --- a/arch/arm64/include/asm/stacktrace.h
> > +++ b/arch/arm64/include/asm/stacktrace.h
> > @@ -19,19 +19,12 @@
> >  #include <linux/percpu.h>
> >  #include <linux/sched.h>
> >  #include <linux/sched/task_stack.h>
> > +#include <linux/types.h>
> >  
> >  #include <asm/memory.h>
> >  #include <asm/ptrace.h>
> >  #include <asm/sdei.h>
> >  
> > -struct stackframe {
> > -	unsigned long fp;
> > -	unsigned long pc;
> > -#ifdef CONFIG_FUNCTION_GRAPH_TRACER
> > -	int graph;
> > -#endif
> > -};
> > -
> >  enum stack_type {
> >  	STACK_TYPE_UNKNOWN,
> >  	STACK_TYPE_TASK,
> > @@ -39,6 +32,7 @@ enum stack_type {
> >  	STACK_TYPE_OVERFLOW,
> >  	STACK_TYPE_SDEI_NORMAL,
> >  	STACK_TYPE_SDEI_CRITICAL,
> > +	__NR_STACK_TYPES
> 
> The number of stack types is actually 1 less than this, and the zeroth
> bit in stacks_done doesn't get used if we use this enum as an index.
> 
> Would STACK_TYPE_UNKNOWN = 0 fix this, or would that break something
> elsewhere?

Huh? STACK_TYPE_UNKNOWN is 0, as it's the first entry in the enum.

__NR_STACK types is used for the bitmap, where I rely on being able to
set the STACK_TYPE_UNKNOWN bit. I apprecaite it's one more than the
number of real stack types, but I wasn't able to come up with an
obviously better name.

> > @@ -50,12 +52,24 @@ int notrace unwind_frame(struct task_struct *tsk, struct stackframe *frame)
> >  	if (!tsk)
> >  		tsk = current;
> >  
> > -	if (!on_accessible_stack(tsk, fp, NULL))
> > +	if (!on_accessible_stack(tsk, fp, &info))
> >  		return -EINVAL;
> >  
> > +	if (test_bit(info.type, frame->stacks_done))
> > +		return -EINVAL;
> 
> Doesn't this fire when we unwind a sequence of frames on the same stack
> (i.e., the common case)?
> 
> I may be missing something obvious here.
> 
> > +
> > +	if (frame->stack_current != info.type) {
> > +		set_bit(frame->stack_current, frame->stacks_done);
> 
> Oh, right, stacks_done is the set of stacks we have been on, excluding
> the current one?  If so, a comment somewhere explaining that, or some
> more explicit name, like "past_stacks" might make sense.

I thought that stacks_done was sufficient, but I guess I could
rename that to stacks_prev, to match the stack_current naming.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
