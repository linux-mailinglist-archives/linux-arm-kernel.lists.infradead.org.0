Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F8E4135917
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 13:23:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x0lAl7P0hYa6QKKDNuItM7vmVUFVUErISdmNVT9hZoY=; b=hSPa3FL537GmA4
	4vQC0AasRijn5Hr79UUgqeTFFtzUbnBVndIepN1KwUABdBkCoMyqen/r0c5ZJzXdXj0zCVItP4GMp
	RBkDECDSJghb4ZxlMZgwQPFZehLLmeOH2ZdIIc1G0vY5y/8NuiOO49lWsBOiuLL8kJQaoCtV3+hRx
	n7dmUilB3cfvElQUSTVSWavRWvbWi3gNoFSTcjgTWRa8dQgOJAOwr3jTeOQoCuvvQx7zw+yAdQ1ga
	WRym5Gr5kFDQv61vQzSrLzC6bSZ+5BKRegvaGF7OC1ezb9OVyyhCFefCiAN1b6KZxVfsmH1y6VciT
	WuCwNweAAkbJ8m3JAwhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipWq0-0006qX-FY; Thu, 09 Jan 2020 12:22:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipWpr-0006pe-17
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 12:22:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0CFD531B;
 Thu,  9 Jan 2020 04:22:44 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7C0103F534;
 Thu,  9 Jan 2020 04:22:42 -0800 (PST)
Date: Thu, 9 Jan 2020 12:22:40 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH 04/17] arm64: entry: move preempt logic to C
Message-ID: <20200109122240.GB3112@lakrids.cambridge.arm.com>
References: <20200108185634.1163-1-mark.rutland@arm.com>
 <20200108185634.1163-5-mark.rutland@arm.com>
 <ed7969dc-e3a2-8b25-9383-ba1a60fb641a@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ed7969dc-e3a2-8b25-9383-ba1a60fb641a@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_042247_156700_605FECC8 
X-CRM114-Status: GOOD (  22.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: keescook@chromium.org, maz@kernel.org, robin.murphy@arm.com,
 broonie@kernel.org, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 catalin.marinas@arm.com, labbott@redhat.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, alex.popov@linux.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 09, 2020 at 12:13:13PM +0530, Anshuman Khandual wrote:
> On 01/09/2020 12:26 AM, Mark Rutland wrote:
> > Some of our preeemption logic is in C, while a portion of it is in
> > assembly. Let's pull the remainder  of it into C so that it lives in one
> > place.
> > 
> > At the same time, let's improve the comments regarding NMI preemption to
> > make it clearer why we cannot preempt from NMIs.
> > 
> > Subsequent patches will covert the caller of el1_preempt() to C.
> > 
> > Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: James Morse <james.morse@arm.com>
> > Cc: Julien Thierry <julien.thierry.kdev@gmail.com>
> > Cc: Will Deacon <will@kernel.org>
> > ---
> >  arch/arm64/kernel/entry-common.c | 18 +++++++++++++++++-
> >  arch/arm64/kernel/entry.S        | 13 +------------
> >  2 files changed, 18 insertions(+), 13 deletions(-)
> > 
> > diff --git a/arch/arm64/kernel/entry-common.c b/arch/arm64/kernel/entry-common.c
> > index 4fa058453468..b93ca2148a20 100644
> > --- a/arch/arm64/kernel/entry-common.c
> > +++ b/arch/arm64/kernel/entry-common.c
> > @@ -8,6 +8,7 @@
> >  #include <linux/context_tracking.h>
> >  #include <linux/linkage.h>
> >  #include <linux/lockdep.h>
> > +#include <linux/preempt.h>
> >  #include <linux/ptrace.h>
> >  #include <linux/sched/debug.h>
> >  #include <linux/thread_info.h>
> > @@ -334,8 +335,23 @@ asmlinkage void notrace el0_sync_compat_handler(struct pt_regs *regs)
> >  NOKPROBE_SYMBOL(el0_sync_compat_handler);
> >  #endif /* CONFIG_COMPAT */
> >  
> > -asmlinkage void __sched arm64_preempt_schedule_irq(void)
> > +asmlinkage void __sched el1_preempt(void)
> >  {
> > +	if (!IS_ENABLED(CONFIG_PREEMPT) || preempt_count())
> > +		return;
> 
> IS_ENABLED(CONFIG_PREEMPT) is not really required here as the single
> call site for el1_preempt() is still wrapped around CONFIG_PREEMPT.
> So we should retain any one of them.

Using both was deliberate.

I wanted to avoid ifdeffery here, but also wanted to avoid the
unnecessary bits being build for !CONFIG_PREEMPT buillds, in both this
function and the caller.

In a subsequent patch this'll be made static, and called
unconditionally, where we'll definitely need to IS_ENABLED(). I'll
update the commit message to make this part explicit.

> 
> > +
> > +	/*
> > +	 * To avoid nesting NMIs and overflowing the stack, we must leave NMIs
> > +	 * masked until the exception return. We want to context-switch with
> > +	 * IRQs masked but NMIs enabled, so cannot preempt an NMI.
> > +	 *
> > +	 * PSTATE.{D,A,F} are cleared for IRQ and NMI by el1_irq().
> > +	 * When gic_handle_irq() handles an NMI, it leaves PSTATE.I set.
> > +	 * If anything is set in DAIF, this is an NMI.
> > +	 */
> > +	if (system_uses_irq_prio_masking() && read_sysreg(daif) != 0)
> 
> In case above CONFIG_PREEMPT gets dropped, preempt_count() can be
> moved here as well.

As above, I'm going to leave this as-is.

I also think it's worth keeping this separate from the early return for
!preempt_count() due to the comment, which is specific to the GIC prio
masking logic.

Thanks,
Mark.

> 
> > +		return;
> > +
> >  	lockdep_assert_irqs_disabled();
> >  
> >  	/*
> > diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
> > index 7c6a0a41676f..53ce1877a4aa 100644
> > --- a/arch/arm64/kernel/entry.S
> > +++ b/arch/arm64/kernel/entry.S
> > @@ -606,18 +606,7 @@ el1_irq:
> >  	irq_handler
> >  
> >  #ifdef CONFIG_PREEMPT
> > -	ldr	x24, [tsk, #TSK_TI_PREEMPT]	// get preempt count
> > -alternative_if ARM64_HAS_IRQ_PRIO_MASKING
> > -	/*
> > -	 * DA_F were cleared at start of handling. If anything is set in DAIF,
> > -	 * we come back from an NMI, so skip preemption
> > -	 */
> > -	mrs	x0, daif
> > -	orr	x24, x24, x0
> > -alternative_else_nop_endif
> > -	cbnz	x24, 1f				// preempt count != 0 || NMI return path
> > -	bl	arm64_preempt_schedule_irq	// irq en/disable is done inside
> > -1:
> > +	bl	el1_preempt
> >  #endif
> >  
> >  #ifdef CONFIG_ARM64_PSEUDO_NMI
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
