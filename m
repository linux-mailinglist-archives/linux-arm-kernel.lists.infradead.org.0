Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE9716AE54
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 19:07:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VC3Ng9UBXJzkoJqkHPBUbQ4l/rPapZNJsV6LF5p4kmg=; b=TrgWsQCmnNXfDC
	MZsWhzLmgCOzIIKEOJ8Qij20n6NY7F84aAR1/QW8jqtqg9soVy+TeBW9y1/IHNT9F/Y9bKEbTPe28
	b3pVI6pdN3Bz7wS7Lv3Umn2YX39NwekaoNMvvLux964KKk0iDi0gH0Egy/KDvR2Yj7xFqL8eJv0oF
	xjWt/XxfNWljwaaoT3DjACrLi0OglPbNmvlMcjqZY0pvfnqxyJfgZmQVC5vXXnme1bPVM22kcRg5O
	nb2jbXQE5KFZaJpPXE7Wmz2o1FRJ5xYl/DgFtK7e4IiHmqCPu1MWdLf/hFqtG//1dcEWBDbKtfGVY
	84PyYoN8rMj9ABP9Qf0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6I8n-0006fC-M7; Mon, 24 Feb 2020 18:07:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6I8c-0006eV-DK
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 18:07:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 285191FB;
 Mon, 24 Feb 2020 10:07:23 -0800 (PST)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5CEF83F703;
 Mon, 24 Feb 2020 10:07:22 -0800 (PST)
Subject: Re: [PATCH v2] arm64:kgdb: Fix kernel single-stepping
To: minyard@acm.org
References: <20200219152403.3495-1-minyard@acm.org>
 <20200220142214.GC14459@willie-the-truck> <20200220163038.GJ3704@minyard.net>
 <20200220213040.GA2919@minyard.net>
From: James Morse <james.morse@arm.com>
Message-ID: <9e2eac0b-ab60-6316-4976-686a8ab7ac8f@arm.com>
Date: Mon, 24 Feb 2020 18:07:17 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200220213040.GA2919@minyard.net>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_100726_539799_C0CDB552 
X-CRM114-Status: GOOD (  22.94  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Corey Minyard <cminyard@mvista.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Corey,

On 20/02/2020 21:30, Corey Minyard wrote:
> On Thu, Feb 20, 2020 at 10:30:38AM -0600, Corey Minyard wrote:
>> On Thu, Feb 20, 2020 at 02:22:14PM +0000, Will Deacon wrote:
>>> On Wed, Feb 19, 2020 at 09:24:03AM -0600, minyard@acm.org wrote:
>>>> After fixing this and doing some more testing, I ran into another issue:
>>>>
>>>> * Kernel enables the pt_regs single step
>>>> * Kernel returns from the exception with ERET.
>>>> * An interrupt or page fault happens on the instruction, causing the
>>>>   instruction to not be run, but the exception handler runs.
>>>
>>> This sounds like you've broken debug; we should take the step exception
>>> in the exception handler. That's the way this is supposed to work.
>>
>> Ok, here is the disconnect, I think.  If that is the case, then what I'm
>> seeing is working like it should.  That doesn't work with gdb, though,
>> gdb expects to be able to single-step and get to the next instruction.
>> The scenario I mentioned at the top of this email.
>>
>> Let me look at this a bit more.  I'll look at this on qemu and maybe a
>> pi.

> Ok, this is the disconnect.  I was assuming that single step would stop
> at the next instruction after returning from an exception.  qemu works
> the same way the hardware I have does.  So I'm assuming arm64 doesn't
> clear PTRACE.SS on an exception, even though that seems to be what the
> manual says.

PSTATE.SS isn't an enable bit for single step ... its part of a bigger state-machine.
(my made-up terminology for it is 'PSTATE.Suppress-Step'...)

The diagram in the Arm-Arm's D2.12.3 "The software step state machine" may help.

MDSCR_EL1.SS enables single-step, if PSTATE.D is clear the CPU will now take step
exceptions instead of pretty much anything else. (active pending state)
To execute one instruction you need to ERET with SPSR_ELx.SS set. (active, not pending)
The CPU will execute one instruction, then clear PSTATE.SS. (taking us back to active pending)

Taking an exception clears PSTATE.SS so that you know you're in active-pending state, and
will take a step exception once you re-enable debug with PSTATE.D. This lets you step the
exception handlers.
(if it was set, you wouldn't see the first instruction in the step handler, if it was
inherited, you couldn't know if you would see the first instruction or not).
If you take something other than a step exception, PSTATE.SS will be preserved in SPSR_EL1.SS.


What I think you are seeing is the step exception once debug is re-enabled, after taking
an exception you didn't want. This happens because MDSCR_EL1.SS is still set.


> You can reproduce this by setting up kgdb on the kernel and hooking up
> gdb, setting a breakpoint somewhere that has interrupts enabled, then
> doing a "continue".  It will hit the same breakpoint again and again
> because the PC doesn't get advanced by the single step and the timer
> interrupt is always going to be pending.  I can do a more detailed set
> of instructions with qemu, if you like.

> I looked at kprobes a bit.  I don't think kprobes will have a problem
> with this particular issue, it disables interrupts while single
> stepping and doesn't allow a probe on any instruction that would modify
> the interrupt settings.  I didn't look at page faults, but I assume that
> it also won't allow a probe where there can be a page fault.

Yes, arch_prepare_kprobe() checks search_exception_tables() for locations that we know may
cause page faults. These are blacklisted.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
