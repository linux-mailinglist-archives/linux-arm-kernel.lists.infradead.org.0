Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB2C16ED38
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 18:56:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=porVWNggpF5gSs7GX/+qXEXicdWqCSKx3L2GS0ISlYU=; b=FeUK+DHU79dLzY
	TX7GDYOBBlz/v1Ok6TYA5FFur+9O+iE02AH0MtWrpFK4CJfH8lcuASmnhGNr6VqmiwIVIqFgw8eaf
	k2SgWhQ7EfRgXRHgwrnb8XnDDhYS7yJoINflsiGwUPH4b7G0f6mSK1a7TFLW0ByGEMzCymXETv/Sw
	GUcoUMydpyhbzEPGsGf+uwXx26liOFwilRSQQginKor3SO1jYpFblNOQ3kK+vYtJcte7/lY5T9xCu
	u8rJHEfVJO97jLk08+hhksYStOg6efOydBybppU71XccdqlhGnwCT/8qHMjL+EgbySSBl3tbNZRdV
	ldfOBk1LhB0x+gQxoE3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6eR4-0002Xw-Am; Tue, 25 Feb 2020 17:55:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6eQu-0002XL-6U
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 17:55:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5C6EBFEC;
 Tue, 25 Feb 2020 09:55:47 -0800 (PST)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 50ACA3F6CF;
 Tue, 25 Feb 2020 09:55:45 -0800 (PST)
Subject: Re: [PATCH v2] arm64:kgdb: Fix kernel single-stepping
To: cminyard@mvista.com
References: <20200219152403.3495-1-minyard@acm.org>
 <20200220142214.GC14459@willie-the-truck> <20200220163038.GJ3704@minyard.net>
 <20200220213040.GA2919@minyard.net>
 <9e2eac0b-ab60-6316-4976-686a8ab7ac8f@arm.com>
 <20200225153801.GD3865@minyard.net>
From: James Morse <james.morse@arm.com>
Message-ID: <52fbb8a7-9dc9-508a-80f6-36ba42d5dacb@arm.com>
Date: Tue, 25 Feb 2020 17:55:44 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200225153801.GD3865@minyard.net>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_095548_327126_427C44D2 
X-CRM114-Status: GOOD (  36.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, minyard@acm.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Corey,

On 25/02/2020 15:38, Corey Minyard wrote:
> On Mon, Feb 24, 2020 at 06:07:17PM +0000, James Morse wrote:
>> On 20/02/2020 21:30, Corey Minyard wrote:
>>> Ok, this is the disconnect.  I was assuming that single step would stop
>>> at the next instruction after returning from an exception.  qemu works
>>> the same way the hardware I have does.  So I'm assuming arm64 doesn't
>>> clear PTRACE.SS on an exception, even though that seems to be what the
>>> manual says.
>>
>> PSTATE.SS isn't an enable bit for single step ... its part of a bigger state-machine.
>> (my made-up terminology for it is 'PSTATE.Suppress-Step'...)
>>
>> The diagram in the Arm-Arm's D2.12.3 "The software step state machine" may help.
>>
>> MDSCR_EL1.SS enables single-step, if PSTATE.D is clear the CPU will now take step
>> exceptions instead of pretty much anything else. (active pending state)
>> To execute one instruction you need to ERET with SPSR_ELx.SS set. (active, not pending)
>> The CPU will execute one instruction, then clear PSTATE.SS. (taking us back to active pending)
>>
>> Taking an exception clears PSTATE.SS so that you know you're in active-pending state, and
>> will take a step exception once you re-enable debug with PSTATE.D. This lets you step the
>> exception handlers.
>> (if it was set, you wouldn't see the first instruction in the step handler, if it was
>> inherited, you couldn't know if you would see the first instruction or not).
>> If you take something other than a step exception, PSTATE.SS will be preserved in SPSR_EL1.SS.
>>
>>
>> What I think you are seeing is the step exception once debug is re-enabled, after taking
>> an exception you didn't want. This happens because MDSCR_EL1.SS is still set.


> Ok, I was familiar with that diagram, but I was trying to fit it into
> how the other architectures where I have done this type of work.  This
> is a little bizarre to me, but I understand now.  Your explaination was
> very helpful, though the code I have is correct either way.

| +/*
| + * The task that is currently being single-stepped.  There can be only
| + * one.
| + */
| +struct task_struct *single_step_task;

? I think this would break kprobes and perf's use of single-step on SMP systems.


> The problem is that kgdb doesn't work right with the current
> implementation.  If you continue from a breakpoint, it does not
> continue.  It just stops at the same place.  What happens is:
> 
> * gdb remove the breakpoint and single steps.
> * An exception happens and the single step stops in the kernel entry.
>   Thus the state machine goes to inactive.

(e.g. the original instruction caused a page fault)


> * gdb re-inserts the breakpoint and continues.

> * When the exception returns, the breakpoint is there and is hit again.

Yes, because the original instruction hadn't run, it caused a page fault. This time its
more likely to succeed.

perf's use of arm64's breakpoints is quite happy with this. It means if you hit a
breakpoint in the fault handler, you see those too. If an instruction causes a page-fault,
you may see it twice, but that is because the CPU tried to execute it twice.

(I agree the irq case is probably just annoying for kgdb)


> You can never continue from a breakpoint without removing it, because
> there's alway a timer interrupt pending.

Are you driving the single-step hardware directly here, or using the behaviour from
breakpoint_handler() and reinstall_suspended_bps()?

These disable breakpoints and step the original instruction, then re-enable breakpoints.
This is because breakpoints fire before the instruction runs, and single-step doesn't
suppress breakpoints. This has to happen regardless of asynchronous exceptions.


> You can't single-step through
> instructions (stepi) because it always stops in the kernel entry.  If
> you do a normal gdb single step in code it just hangs because it keeps
> trying to single step through instructions and keeps stopping in kernel
> entry.  So gdb does not expect the behavior that is currently
> implemented.

Is it fair to say that the user driving kgdb is very-slow compared to IRQs firing?
This isn't true for the other consumers of single-step (kprobes, perf).


> The patch as I have posted it is probably the simplest way to fix it.
> It basically makes single-step work like other architectures, and like
> the userspace single step works.  I could ifdef it so that the entry
> code is only there if kgdb is enabled.  You can single step through
> instructions that cause page faults, so it's a little more general.

> The other way is to run the single-stepped instruction with interrupts
> disabled and emulate any messing with the DAIF bits.  I assume
> that's only "MRS <Xt>, DAIF", "MSR DAIF, <Xt>", "MSR DAIFSet, #<imm>",
> and "MSR DAIFClr, #<imm>". 

> Well, I guess ERET also does that, but maybe
> that's ok, probably not a big deal.

(tangent: you can't step ERET!)


> In this case you can't single step over instructions that take page faults.

This works for perf. It doesn't for kprobes, which is why kprobes blacklists those sites.


> I'm not sure if that's a big
> deal or not, but I assume users would do that.  And it's more complex
> since you have to emulate those instructions messing with DAIF.
> 
> I would like to get this fixed, either way.

If the problem is IRQs preventing the very-slow user making forward-progress, it may be
possible for kgdb to ask the irqchip code to mute all IRQs on this CPU while it is
stepping. The PMR mechanism we use for pNMI could do this for the GIC. (Caveat: I don't
know anything about the GIC). For the pi ... no idea.

This doesn't stop you seeing instructions that fault from taking a fault, or taking the
breakpoint twice when the CPU tries to run the instruction twice. This is just the debug
hardware showing you what happened.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
