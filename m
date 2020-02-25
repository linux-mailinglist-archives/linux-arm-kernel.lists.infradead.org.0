Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65F0F16EA3E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 16:38:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=USEeVry3ksy0R16FWeT21SzIESpHUmeKbbFvbqW1buo=; b=LbfZ2pyYvLC2oE
	m9wlq6vPPIs0bmC0n1Vx5ytItxxBmEihubgN19jLXHTsvA/sHrylkap7QGlTdqVjg98ZdZPSvkDif
	PB6Ns7/vY7Idi9oGr3VFm4i2RwgPh4+kUj5OMPg6SjZmKmUBjE940qFIisbDFh+iXjymEy203bLkr
	MYiSaQLUSCPmZVhNN7vkllcmnJ1uVvw3JszrjGxpZwSel2I53WHG9ttJBshNLSd+KhptHNWvwCRpV
	P7OEYWhq08dqOEXx0x9cAk4uOIubGHcIrxSRcUVb2Ew6Lt4+uGoMKy9nAvwmdHxNV12Q2cpyqJMYl
	4f5h9Le3TKp2qSbcYr1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6cHr-0007wL-OA; Tue, 25 Feb 2020 15:38:19 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6cHf-0007vX-C7
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 15:38:10 +0000
Received: by mail-ot1-x344.google.com with SMTP id w6so12464036otk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 07:38:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mvista-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Jwm+TSOeImzPHrCD9+lr7kAphC4tuL6RMLlaxgsWLqw=;
 b=NAMzzxg4+soT+611ryWdedqsp05j0VTIolEkKeHONvyN311QDu89YCrHUICEQqTdvn
 M5nooEvKfDPn2IASXdOmA5n22+QBKB8XZDW6Abj9n7gTea3irchcWoJFVw5OA0kJXv8M
 OiUOg2+xDp1m/SmIVM8xXJdxaVUeMxf0N+0hj0UAo2CTclY+95z5ie5j1eW4RpFs3qpL
 shKJzM3XAkjG2kpAvh1pevfSU4byujyD5nrdhMlL0PbU7rqph2LIxx1dxMSin3aD0lb/
 sSVnAAR/gmsTKft1GakaEONG1M3olZrYg+RE0Q//C2Db7mQj6B+YeGlJjOzgEvAuNI7T
 HJ2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=Jwm+TSOeImzPHrCD9+lr7kAphC4tuL6RMLlaxgsWLqw=;
 b=ej2CsaoccdzPhANID3Yaq9s37khV2mh9123eN1HFB9DBLX2PNcDgQ56SbHdD0m1mVj
 11+xgqV1Eg4CnFNm66u1ZRTvzyOGNwSz//neufVoTHDiP7dGKUhlqB8WGvAqpHdBW0qz
 vYiXScxnscPk2KdpyA0sXOXo9yKkz0sSmCoAj8BAPowEzzDwvVeQZ7H6ymGe+QnzZ9aK
 9n9YuVQiyjsxLNYj/nSVdYah4e6pEOXb90xifiJWJVk6obpB/K12yqM5PSdsprPPN2jb
 1Z6gHrhzioeNAUgRqHcSQZTJc8QaTQeare8vNvnKoe5SKthZuQWM8wJrNshYDXzWo41t
 hoCg==
X-Gm-Message-State: APjAAAWTSgApHaw2KFQJOSY2pgXvvhEmWOChlwimbDSlj8bKw+A2iIwb
 o1Y53b9UlcvJjSYm77P41yAcMw==
X-Google-Smtp-Source: APXvYqzHldmwrTqVl+AAsrIVCTX7Jlh9PnwFXlMGuP+jUutbKK3H1p0bCLeuppv2h2dFsswPzzKHLg==
X-Received: by 2002:a9d:5d09:: with SMTP id b9mr44627552oti.207.1582645084501; 
 Tue, 25 Feb 2020 07:38:04 -0800 (PST)
Received: from minyard.net ([2001:470:b8f6:1b:4db:878f:ca6f:b716])
 by smtp.gmail.com with ESMTPSA id l8sm2363087otn.31.2020.02.25.07.38.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Feb 2020 07:38:03 -0800 (PST)
Date: Tue, 25 Feb 2020 09:38:01 -0600
From: Corey Minyard <cminyard@mvista.com>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH v2] arm64:kgdb: Fix kernel single-stepping
Message-ID: <20200225153801.GD3865@minyard.net>
References: <20200219152403.3495-1-minyard@acm.org>
 <20200220142214.GC14459@willie-the-truck>
 <20200220163038.GJ3704@minyard.net>
 <20200220213040.GA2919@minyard.net>
 <9e2eac0b-ab60-6316-4976-686a8ab7ac8f@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9e2eac0b-ab60-6316-4976-686a8ab7ac8f@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_073807_555227_6FCC05D2 
X-CRM114-Status: GOOD (  41.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Reply-To: cminyard@mvista.com
Cc: linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, minyard@acm.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 24, 2020 at 06:07:17PM +0000, James Morse wrote:
> Hi Corey,
> 
> On 20/02/2020 21:30, Corey Minyard wrote:
> > On Thu, Feb 20, 2020 at 10:30:38AM -0600, Corey Minyard wrote:
> >> On Thu, Feb 20, 2020 at 02:22:14PM +0000, Will Deacon wrote:
> >>> On Wed, Feb 19, 2020 at 09:24:03AM -0600, minyard@acm.org wrote:
> >>>> After fixing this and doing some more testing, I ran into another issue:
> >>>>
> >>>> * Kernel enables the pt_regs single step
> >>>> * Kernel returns from the exception with ERET.
> >>>> * An interrupt or page fault happens on the instruction, causing the
> >>>>   instruction to not be run, but the exception handler runs.
> >>>
> >>> This sounds like you've broken debug; we should take the step exception
> >>> in the exception handler. That's the way this is supposed to work.
> >>
> >> Ok, here is the disconnect, I think.  If that is the case, then what I'm
> >> seeing is working like it should.  That doesn't work with gdb, though,
> >> gdb expects to be able to single-step and get to the next instruction.
> >> The scenario I mentioned at the top of this email.
> >>
> >> Let me look at this a bit more.  I'll look at this on qemu and maybe a
> >> pi.
> 
> > Ok, this is the disconnect.  I was assuming that single step would stop
> > at the next instruction after returning from an exception.  qemu works
> > the same way the hardware I have does.  So I'm assuming arm64 doesn't
> > clear PTRACE.SS on an exception, even though that seems to be what the
> > manual says.
> 
> PSTATE.SS isn't an enable bit for single step ... its part of a bigger state-machine.
> (my made-up terminology for it is 'PSTATE.Suppress-Step'...)
> 
> The diagram in the Arm-Arm's D2.12.3 "The software step state machine" may help.
> 
> MDSCR_EL1.SS enables single-step, if PSTATE.D is clear the CPU will now take step
> exceptions instead of pretty much anything else. (active pending state)
> To execute one instruction you need to ERET with SPSR_ELx.SS set. (active, not pending)
> The CPU will execute one instruction, then clear PSTATE.SS. (taking us back to active pending)
> 
> Taking an exception clears PSTATE.SS so that you know you're in active-pending state, and
> will take a step exception once you re-enable debug with PSTATE.D. This lets you step the
> exception handlers.
> (if it was set, you wouldn't see the first instruction in the step handler, if it was
> inherited, you couldn't know if you would see the first instruction or not).
> If you take something other than a step exception, PSTATE.SS will be preserved in SPSR_EL1.SS.
> 
> 
> What I think you are seeing is the step exception once debug is re-enabled, after taking
> an exception you didn't want. This happens because MDSCR_EL1.SS is still set.

Ok, I was familiar with that diagram, but I was trying to fit it into
how the other architectures where I have done this type of work.  This
is a little bizarre to me, but I understand now.  Your explaination was
very helpful, though the code I have is correct either way.

The problem is that kgdb doesn't work right with the current
implementation.  If you continue from a breakpoint, it does not
continue.  It just stops at the same place.  What happens is:

* gdb remove the breakpoint and single steps.
* An exception happens and the single step stops in the kernel entry.
  Thus the state machine goes to inactive.
* gdb re-inserts the breakpoint and continues.
* When the exception returns, the breakpoint is there and is hit again.

You can never continue from a breakpoint without removing it, because
there's alway a timer interrupt pending.  You can't single-step through
instructions (stepi) because it always stops in the kernel entry.  If
you do a normal gdb single step in code it just hangs because it keeps
trying to single step through instructions and keeps stopping in kernel
entry.  So gdb does not expect the behavior that is currently
implemented.

The patch as I have posted it is probably the simplest way to fix it.
It basically makes single-step work like other architectures, and like
the userspace single step works.  I could ifdef it so that the entry
code is only there if kgdb is enabled.  You can single step through
instructions that cause page faults, so it's a little more general.

The other way is to run the single-stepped instruction with interrupts
disabled and emulate any messing with the DAIF bits.  I assume
that's only "MRS <Xt>, DAIF", "MSR DAIF, <Xt>", "MSR DAIFSet, #<imm>",
and "MSR DAIFClr, #<imm>".  Well, I guess ERET also does that, but maybe
that's ok, probably not a big deal.  In this case you can't single step
over instructions that take page faults.  I'm not sure if that's a big
deal or not, but I assume users would do that.  And it's more complex
since you have to emulate those instructions messing with DAIF.

I would like to get this fixed, either way.

Thanks,

-corey

> 
> 
> > You can reproduce this by setting up kgdb on the kernel and hooking up
> > gdb, setting a breakpoint somewhere that has interrupts enabled, then
> > doing a "continue".  It will hit the same breakpoint again and again
> > because the PC doesn't get advanced by the single step and the timer
> > interrupt is always going to be pending.  I can do a more detailed set
> > of instructions with qemu, if you like.
> 
> > I looked at kprobes a bit.  I don't think kprobes will have a problem
> > with this particular issue, it disables interrupts while single
> > stepping and doesn't allow a probe on any instruction that would modify
> > the interrupt settings.  I didn't look at page faults, but I assume that
> > it also won't allow a probe where there can be a page fault.
> 
> Yes, arch_prepare_kprobe() checks search_exception_tables() for locations that we know may
> cause page faults. These are blacklisted.
> 
> 
> Thanks,
> 
> James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
