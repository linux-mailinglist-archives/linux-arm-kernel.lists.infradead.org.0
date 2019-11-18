Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF28100644
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 14:15:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o7rlpiAZR12H5xBFLyaXdF8MzAQfuGC7jikadasgQ/0=; b=Y2euGE/BhyZ8uE
	X7u736mwOz5+NGOxWHior74ysM6Q39+Z/aWqktdkjbNy3guPX8Uj8IPZXexY+LPPFW5yxdybIWvJZ
	IyYQOtJJhLPA5sZSu2GbJ94DoAoTQi2EAWiqernRCUgQoZMcH9cm0AXq+TXUvPHLXSyIsrgzz6pDT
	PFRD8Ed8uKbj0ipgm8Oi13JVqFvcaBN/PNUZ+pt+25ighKiXsdee68EKfB97bEiOa4jT+/nMC1e7l
	obeAEZNKoPte+JaCkU2qwFzD+8ZW6ICJzIOh9z0mkcaoPp16KMm6PB2hU/BHGZrNSrxgJLR56Lq2s
	IfJ314rD4puwOieoPtzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWgsW-0003MG-PR; Mon, 18 Nov 2019 13:15:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWgsM-0003Lb-9D
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 13:15:33 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 795E2206D4;
 Mon, 18 Nov 2019 13:15:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574082929;
 bh=pXZKqXKB1ADgO133RNdWUfosrwUntcLYppya6O7UalY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uB6UvArADYsi0UJTTbxMBTZ3Jqq55bo38alhn94mCy90Lwfu9ifIgvIwGzSXtxJWZ
 t4mwPt9AlUWUuI1NqxVEDeF9Te2KlUCqzAsaR5VE1qFERolbbZSJOPl9BQ/R5IyRjl
 y3WheairMAJPEEL21RBgX6GCzv49lFvOeTKI7W5A=
Date: Mon, 18 Nov 2019 13:15:25 +0000
From: Will Deacon <will@kernel.org>
To: Luis Machado <luis.machado@linaro.org>
Subject: Re: [arm64, debug] PTRACE_SINGLESTEP does not single-step a valid
 instruction
Message-ID: <20191118131525.GA4180@willie-the-truck>
References: <1eed6d69-d53d-9657-1fc9-c089be07f98c@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1eed6d69-d53d-9657-1fc9-c089be07f98c@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_051531_919316_7AE5F616 
X-CRM114-Status: GOOD (  20.22  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Luis,

[+Mark for the valid_user_regs() part]

On Tue, Nov 12, 2019 at 08:22:10PM -0300, Luis Machado wrote:
> I've noticed, under very specific conditions, that a PTRACE_SINGLESTEP
> request by GDB won't execute the underlying instruction. As a consequence,
> the PC doesn't move, but we return a SIGTRAP just like we would for a
> regular successful PTRACE_SINGLESTEP request.
> 
> Since there are no software breakpoints inserted at PC (we are actually
> stepping over a breakpoint, so GDB removes the breakpoint at PC before
> issuing a PTRACE_SINGLESTEP request), this is an odd behavior.
> 
> Though not too harmful, i see this manifesting in the GDB testsuite
> (gdb.reverse/insn-reverse.exp), which throws the test off by making GDB
> think it is further in the instruction stream than it really is. In fact, we
> get lucky here and no FAIL's show up, only many more spurious PASSes.

I managed to reproduce this locally and I think I've figured out what's
going on, although I'm not sure that the kernel is the best place to fix
it.

Looking at the specific reproducer:

> Execute gdb like so:
> 
> gdb -ex "set displaced-stepping off" -ex "b load" -ex "run" -ex "record" -ex
> "si" -ex "rsi" -ex "record stop" insn-reverse

So we've got a couple of instructions as follows (it doesn't actually matter
what they are, so I've changed the LD1 in your binary for a NOP in order to
avoid confusion with the "load" label not actually pointing at a load):

	0x7b8:		mov	// "load"
	0x7bc:		nop

"b load" places a breakpoint at 0x7b8:

	ptrace(PTRACE_POKEDATA, 662, 0xaaaaaaaaa7b8, 0xd503201fd4200000) = 0

We run to a software breakpoint on "load" (the mov instruction). We take
the trap and try to execute the "si", which means we need to remove the
breakpoint while we step over it:

	ptrace(PTRACE_POKEDATA, 662, 0xaaaaaaaaa7b8, 0xd503201f910003e0) = 0
	[...]
	ptrace(PTRACE_SINGLESTEP, 662, 0x1, 0)  = 0

This causes the kernel to arm the single-step state machine so that
MDSCR_EL1.SS == SPSR_EL1.SS == 1 (known as "active-not-pending"). Running
an instruction in userspace will transition to MDSCR_EL1.SS ==1 and
SPSR_EL1.SS == 0 (known as "active-pending"), which will cause the trap to
trigger, at which point gdb puts the breakpoint instruction back since the
step is complete:

	ptrace(PTRACE_POKEDATA, 662, 0xaaaaaaaaa7b8, 0xd503201fd4200000) = 0

This is where things start to go wrong. The "rsi" command attempts to
perform a reverse step, which means restoring the old state when we were
previously executing at 0x7b8. It starts by removing the breakpoint again,
since we've already hit that:

	ptrace(PTRACE_POKEDATA, 662, 0xaaaaaaaaa7b8, 0xd503201f910003e0) = 0

and then resets the CPU registers to their old values:

	(I don't know why it does this three times)
	ptrace(PTRACE_SETREGSET, 662, NT_PRSTATUS, [{iov_base=0xffffff64b3c8, iov_len=272}]) = 0
	ptrace(PTRACE_SETREGSET, 662, NT_PRSTATUS, [{iov_base=0xffffff64b3c8, iov_len=272}]) = 0
	ptrace(PTRACE_SETREGSET, 662, NT_PRSTATUS, [{iov_base=0xffffff64b3c8, iov_len=272}]) = 0

The problem with this is that we have moved the PC back to 0x7b8 but we have
also cleared SPSR_EL1.SS to 0. Internally, the kernel hasn't seen stepping
get disabled (this usually happens by PTRACE_CONT calling
user_disable_single_step()) which means that MDSCR_EL1.SS remains set to 1
and we're in the active-pending state! Consequently, we immediately take a
step exception if a step operation is attempted.

Now, we *could* consider hacking the TIF_SINGLESTEP check in
valid_user_regs() so that SPSR_EL1.SS is preserved when stepping is active
but this is a user-visible change and may break things like stepping out of
signal handlers. I would prefer that GDB manages the SS bit explicitly in
this scenario, by setting it to 1 when restoring the old state in the
reverse step, a bit like when it disables the old breakpoint. You can
emulate this by doing:

	(gdb) set $cpsr |= (1<<21)

Thoughts?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
