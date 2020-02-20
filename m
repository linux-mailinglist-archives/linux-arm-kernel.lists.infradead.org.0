Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 142C0166306
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 17:33:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5OqGY9roZgLI7v7E5bsVzGXOY0HTTBi439C9jjtelbE=; b=HP8/bDuMycNSWu
	O62Q7K0Eww0Ha2mBlbZlUuJ9T8x7InRs1SlBKvINDKVxx0mV88G7ScFKksq0o4yMOV+o+ISXt7PxS
	//vPc1x4kQxZJdYbe5PlWuL9d2KjN7IuW2RJ9ysjAp14YagddbqWMoIWwSIvtxPlUeVDTKqnoUts+
	BJOAJoHbGt5Chl01ioELLz+P+7+IrBPGrhm49C0Vxemp4Z4JdQ3FuwtpDB5U5b/vnfpHUAs7JQqDT
	0A+ZKvM7zHrjajn2nHmuAJijtYacCmSWbt1rwXFZu9Od91xmrX/2uSn/62G1oHG7m7SnuvsC5doYI
	kJASMTe9tVVDAVXXSTWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4ol5-0001ep-3b; Thu, 20 Feb 2020 16:33:03 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4oip-0007m8-8r
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 16:30:45 +0000
Received: by mail-oi1-x244.google.com with SMTP id a142so28115767oii.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 08:30:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=y9HQfeZQmR3ITWVRctdqux0hlFnrN0+7nUWBuGoGzbI=;
 b=rAl0vrUdgC6BPCfHywHFImldtnI3m6Nj5ysAz5uBGUmEKyEPKdjcAq4t7lUO2stDK+
 1t3k0thBRBULY6f2rwgUO2JbXJGA0QlMISutM6QHwTyDBTBJlbmBD42BOKB1LWHD9cCb
 lLr8xuRQr6btT8GLq7QtB/mgo10L0lG4LZsXg4XoI0rCuOBHvgdD4fTMHBUmOrNKYVvI
 Y2wkvJ93jpOQUYL2074hW4b9p6uKhmFrj1nT9Ujn/a1+5BWhVVbwa+ul+fLPkqZcp7yX
 fFdEp07Q+lRUC7+7z07jRmsN4cOg07ydrTv4s7yBhE4Guyzi7TlUG+LCHTGLVXck9aFH
 rVpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=y9HQfeZQmR3ITWVRctdqux0hlFnrN0+7nUWBuGoGzbI=;
 b=f8HqPuatRZsKVK0SegwITv67Yutq6rgY4pbrJs/xlou2O4FPShMVzT5wo8UYTuJBJq
 podJtANeJG2IlcCCUMxVnoMfH97rtzTTF8d88ax1FA1q4laixEHYaVcRFXs5VgYNAnHn
 7Bg/HOWPxCEUGrlKKUS2VuGSol3/pFiXpnA73WN6yGhnJ1++e2bFfeMltr1LFwIFWlTs
 75FSaogmtyJSoKwNmvibBlva7Pv/LI1jGj/GC5h9Gi7wsbT57IHUl0TAw7FkuWPrraYT
 Tz2phLO8nMhF+CjE7e5SvZhyP2uP2Y7LMldxOwTjqrvM5/2QhXZuBTMhfG54W1pHKqrw
 hS5g==
X-Gm-Message-State: APjAAAXtTIh9VtY4i6athnqIBpIa8APBhSNklSdgwS7SxIhq74iaNLAM
 /yFPGglhK0ibnbgl9dGR7Q==
X-Google-Smtp-Source: APXvYqzJvnK1s6UOpaxFEdvEcJ3Bw6Mh437NhoRzotRpwK6fSKE5IJWYi7CGh3MjxZGTDTSpff+Czw==
X-Received: by 2002:aca:d484:: with SMTP id l126mr2584473oig.114.1582216241151; 
 Thu, 20 Feb 2020 08:30:41 -0800 (PST)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id 9sm1299958otx.75.2020.02.20.08.30.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2020 08:30:40 -0800 (PST)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:9129:b2b8:445c:a4ff])
 by serve.minyard.net (Postfix) with ESMTPSA id D290B18000D;
 Thu, 20 Feb 2020 16:30:39 +0000 (UTC)
Date: Thu, 20 Feb 2020 10:30:38 -0600
From: Corey Minyard <minyard@acm.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2] arm64:kgdb: Fix kernel single-stepping
Message-ID: <20200220163038.GJ3704@minyard.net>
References: <20200219152403.3495-1-minyard@acm.org>
 <20200220142214.GC14459@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200220142214.GC14459@willie-the-truck>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_083043_366499_041327E5 
X-CRM114-Status: GOOD (  43.58  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Reply-To: minyard@acm.org
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Corey Minyard <cminyard@mvista.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 20, 2020 at 02:22:14PM +0000, Will Deacon wrote:
> On Wed, Feb 19, 2020 at 09:24:03AM -0600, minyard@acm.org wrote:
> > From: Corey Minyard <cminyard@mvista.com>
> > 
> > I was working on a single-step bug on kgdb on an ARM64 system, and I saw
> > this scenario:
> > 
> > * A single step is setup to return to el1
> > * The ERET return to el1
> > * An interrupt is pending and runs before the instruction
> > * As soon as PSTATE.D (the debug disable bit) is cleared, the single
> >     step happens in that location, not where it should have.
> > 
> > This appears to be due to PSTATE.SS not being cleared when the exception
> > happens.  Per section D.2.12.5 of the ARMv8 reference manual, that
> > appears to be incorrect, it says "As part of exception entry, the PE
> > does all of the following: ...  Sets PSTATE.SS to 0."
> 
> Sorry, but I don't follow you here. If PSTATE.SS is not cleared, why would
> you take the step exception?

I don't follow.  If PSTATE.SS is set and MDSCR_EL1.SS is set, the
processor will take a single-step exception as soon as the debug
exceptions are enabled.  That's what I'm seeing.  The hardware bug is
that PSTATE.SS is not cleared on an exception, and MDSCR_EL1.SS is not
cleared on kernel entry from el1.

I'm not 100% sure that PSTATE.SS is supposed to clear on an exception.
The debug handling documentation in the ARM64 manual is extremely hard
to follow.  But I'm pretty sure about this, as you would see this
problem on every processor and it would be obvious.  You could never
continue from a breakpoint, because the following happens when
continuing from a breakpoint in what I'm seeing:

* gdb disables the breakpoint
* gdb does a single step
* The single step triggers when debug excecption are enabled, not
  after the instruction in question.
* gdb restores the breakpoint and continues
* The breakpoint occurs again because the single step never really
  happened.

> 
> > However, I appear to not be the first person who has noticed this.  In
> > the el0-only portion of the kernel_entry macro in entry.S, I found the
> > following comment: "Ensure MDSCR_EL1.SS is clear, since we can unmask
> > debug exceptions when scheduling."  Exactly the same scenario, except
> > coming from a userland single step, not a kernel one.
> 
> No, I think you might be conflating PSTATE.SS and MDSCR_EL1.SS.

Not exactly.  If the processor clears PSTATE.SS, why would you need to
clear MDSCR_EL1.SS?  You can just ignore it.  But looking at the git
commit where that code was introduced, I can see that wasn't the reason.

> 
> > As I was studying this, though, I realized that the following scenario
> > had an issue:
> > 
> > * Kernel enables MDSCR.SS, MDSCR.KDE, MDSCR.MDE (unnecessary), and
> >   PSTATE.SS to enable a single step in el1, for kgdb or kprobes,
> >   on the current CPU's MDSCR register and the process' PSTATE.SS
> >   register.
> > * Kernel returns from the exception with ERET.
> > * An interrupt or page fault happens on the instruction, causing the
> >   instruction to not be run, but the exception handler runs.
> > * The exception causes the task to migrate to a new core.
> > * The return from the exception runs on a different processor now,
> >   where the MDSCR values are not set up for a single step.
> > * The single step fails to happen.
> > 
> > This is bad for kgdb, of course, but it seems really bad for kprobes if
> > this happens.
> 
> I don't see how this can happen for kprobes. Have you managed to reproduce
> the failure?

Can a migration happen if kprobes sets up a single-step, does the step,
and an interrupt or page fault happens before the single step occurs?
If so, that single-step will never happen.

I would be hard to reproduce.  I think I could force this to happen by
modifying the kernel to force a migration in the single-step code, but
it would be hard without modifying the kernel.

> 
> > To fix both these problems, rework the handling of single steps to clear
> > things out upon entry to the kernel from el1, and then to set up single
> > step when returning to el1, and not do the setup in debug-monitors.c.
> > This means that single stepping does not use
> > enable/disable_debug_monitors(); it is no longer necessary to track
> > those flags for single stepping.  This is much like single stepping is
> > handled for el0.  A new flag is added in pt_regs to enable single
> > stepping from el1.  Unfortunately, the old value of PSTATE.SS cannot be
> > used for this because of the hardware bug mentioned earlier.
> 
> I don't think there's a hardware bug.
> 
> It sound like you're trying to make kernel debugging per-task instead
> of per-cpu, but I don't think that's the right thing to do. What if I /want/
> to debug an interrupt handler? For example, I might have a watchpoint on
> something accessed by timer interrupt.
> 
> > As part of this, there is an interaction between single stepping and the
> > other users of debug monitors with the MDSCR.KDE bit.  That bit has to
> > be set for both hardware breakpoints at el1 and single stepping at el1.
> > A new variable was created to store the cpu-wide value of MDSCR.KDE; the
> > single stepping code makes sure not to clear that bit on kernel entry if
> > it's set in the per-cpu variable.
> > 
> > After fixing this and doing some more testing, I ran into another issue:
> > 
> > * Kernel enables the pt_regs single step
> > * Kernel returns from the exception with ERET.
> > * An interrupt or page fault happens on the instruction, causing the
> >   instruction to not be run, but the exception handler runs.
> 
> This sounds like you've broken debug; we should take the step exception
> in the exception handler. That's the way this is supposed to work.

Ok, here is the disconnect, I think.  If that is the case, then what I'm
seeing is working like it should.  That doesn't work with gdb, though,
gdb expects to be able to single-step and get to the next instruction.
The scenario I mentioned at the top of this email.

Let me look at this a bit more.  I'll look at this on qemu and maybe a
pi.

-corey

> 
> > There's no easy way to find the pt_regs that has the single step flag
> > set.  So a thread info flag was added so that the single step could be
> > disabled in this case.  Both that flag and the flag in pt_regs must be
> > set to enable a single step.
> 
> Honestly, I get the feeling that you don't really understand the code
> you're changing here and it's a tonne of effort to try to untangle what
> you're doing. That's not necessarily your fault because the debug
> architecture is a nightmare to comprehend, but I'm not keen to change it
> unless we have a really good justification. I'm sure kgdb is riddled with
> bugs but, as I said before, the fixes should be in kgdb, not by tearing
> up the low-level debug code (which has the potential to break other users).
> 
> Maybe it would be easier if you tried to fix one problem per patch,
> preferably with a way to reproduce the issue you're seeing each time?
> 
> Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
