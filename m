Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13078165FA5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 15:22:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pTR0y2H/r1T5VxpWAsjwB3BAnzcXXCCEff65eQBHKFY=; b=mZCcuqKTKTf0X5
	WHaAfZMf30bggtt9c0GMyNr7jvNhRaSaNwu34CUyMkXX7h9khr1KRdECQb7LniNww8noONqmKBsRS
	WwSl8eU+++6mkDNkuRRImP83HJd55MvyJ0Xwb2I160IUjBZx8oMzFdq5dHyAFmmT43EM2lRJr/X2u
	ED0J0fEnACBwaxccjZKEr4+n8fi/VKj4Ci45RsWBy4Vx8n6F8ROdy9Xx0Y/6TyvHQo+gTFOcOnBNh
	Ge7ECCGZrFFrkKLHyV4tZd6vpeVVe/VW140cvqC24e3deG3tP4flp9AjADWBH+A/qrqOn8dAC2Vge
	nxA1CZNfJdra6Lf1oseQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4mii-0005W8-3r; Thu, 20 Feb 2020 14:22:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4miZ-0005VH-5V
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 14:22:20 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DD9D3207FD;
 Thu, 20 Feb 2020 14:22:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582208538;
 bh=W1XxzghoGomPsmEhrSpUB0orTne/xvHkP5/NBHjVR6I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aukdObaxSVYsNKMVYAMJUK+bIjeopCk3WB0kVw86qSBO96Nc4OpardnPbvs248AlF
 NiOPdcTB6tZmQIVJmTflhGN5trI+GwEIQST54rJZWCWav+lRPvUyxyWtttoYqASXzr
 bt25A9vCnTQHAB6/MklKtQthxtcU641JIWLBpc5Y=
Date: Thu, 20 Feb 2020 14:22:14 +0000
From: Will Deacon <will@kernel.org>
To: minyard@acm.org
Subject: Re: [PATCH v2] arm64:kgdb: Fix kernel single-stepping
Message-ID: <20200220142214.GC14459@willie-the-truck>
References: <20200219152403.3495-1-minyard@acm.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219152403.3495-1-minyard@acm.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_062219_266300_426E6740 
X-CRM114-Status: GOOD (  33.82  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Corey Minyard <cminyard@mvista.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 09:24:03AM -0600, minyard@acm.org wrote:
> From: Corey Minyard <cminyard@mvista.com>
> 
> I was working on a single-step bug on kgdb on an ARM64 system, and I saw
> this scenario:
> 
> * A single step is setup to return to el1
> * The ERET return to el1
> * An interrupt is pending and runs before the instruction
> * As soon as PSTATE.D (the debug disable bit) is cleared, the single
>     step happens in that location, not where it should have.
> 
> This appears to be due to PSTATE.SS not being cleared when the exception
> happens.  Per section D.2.12.5 of the ARMv8 reference manual, that
> appears to be incorrect, it says "As part of exception entry, the PE
> does all of the following: ...  Sets PSTATE.SS to 0."

Sorry, but I don't follow you here. If PSTATE.SS is not cleared, why would
you take the step exception?

> However, I appear to not be the first person who has noticed this.  In
> the el0-only portion of the kernel_entry macro in entry.S, I found the
> following comment: "Ensure MDSCR_EL1.SS is clear, since we can unmask
> debug exceptions when scheduling."  Exactly the same scenario, except
> coming from a userland single step, not a kernel one.

No, I think you might be conflating PSTATE.SS and MDSCR_EL1.SS.

> As I was studying this, though, I realized that the following scenario
> had an issue:
> 
> * Kernel enables MDSCR.SS, MDSCR.KDE, MDSCR.MDE (unnecessary), and
>   PSTATE.SS to enable a single step in el1, for kgdb or kprobes,
>   on the current CPU's MDSCR register and the process' PSTATE.SS
>   register.
> * Kernel returns from the exception with ERET.
> * An interrupt or page fault happens on the instruction, causing the
>   instruction to not be run, but the exception handler runs.
> * The exception causes the task to migrate to a new core.
> * The return from the exception runs on a different processor now,
>   where the MDSCR values are not set up for a single step.
> * The single step fails to happen.
> 
> This is bad for kgdb, of course, but it seems really bad for kprobes if
> this happens.

I don't see how this can happen for kprobes. Have you managed to reproduce
the failure?

> To fix both these problems, rework the handling of single steps to clear
> things out upon entry to the kernel from el1, and then to set up single
> step when returning to el1, and not do the setup in debug-monitors.c.
> This means that single stepping does not use
> enable/disable_debug_monitors(); it is no longer necessary to track
> those flags for single stepping.  This is much like single stepping is
> handled for el0.  A new flag is added in pt_regs to enable single
> stepping from el1.  Unfortunately, the old value of PSTATE.SS cannot be
> used for this because of the hardware bug mentioned earlier.

I don't think there's a hardware bug.

It sound like you're trying to make kernel debugging per-task instead
of per-cpu, but I don't think that's the right thing to do. What if I /want/
to debug an interrupt handler? For example, I might have a watchpoint on
something accessed by timer interrupt.

> As part of this, there is an interaction between single stepping and the
> other users of debug monitors with the MDSCR.KDE bit.  That bit has to
> be set for both hardware breakpoints at el1 and single stepping at el1.
> A new variable was created to store the cpu-wide value of MDSCR.KDE; the
> single stepping code makes sure not to clear that bit on kernel entry if
> it's set in the per-cpu variable.
> 
> After fixing this and doing some more testing, I ran into another issue:
> 
> * Kernel enables the pt_regs single step
> * Kernel returns from the exception with ERET.
> * An interrupt or page fault happens on the instruction, causing the
>   instruction to not be run, but the exception handler runs.

This sounds like you've broken debug; we should take the step exception
in the exception handler. That's the way this is supposed to work.

> There's no easy way to find the pt_regs that has the single step flag
> set.  So a thread info flag was added so that the single step could be
> disabled in this case.  Both that flag and the flag in pt_regs must be
> set to enable a single step.

Honestly, I get the feeling that you don't really understand the code
you're changing here and it's a tonne of effort to try to untangle what
you're doing. That's not necessarily your fault because the debug
architecture is a nightmare to comprehend, but I'm not keen to change it
unless we have a really good justification. I'm sure kgdb is riddled with
bugs but, as I said before, the fixes should be in kgdb, not by tearing
up the low-level debug code (which has the potential to break other users).

Maybe it would be easier if you tried to fix one problem per patch,
preferably with a way to reproduce the issue you're seeing each time?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
