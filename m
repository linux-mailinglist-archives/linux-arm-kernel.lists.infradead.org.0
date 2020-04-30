Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DFC31BF464
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 11:44:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1p2dvVf2724VbRcbmhhd2B8CXxBzrZgtwjeZyCYdVvc=; b=nNN31gSWhZ4RC0
	eoumYk14SAPlFSDqqKl6jhWxtgejLc6BuzpMV00LYQ3s2dLvkM0KCFF309F+gsKVZTJhjt4nZLmfT
	YyDT97sJK/7/gMPyIOTyTRmHovIUtbHgdPia220JYVwduiec4d0SbSUUGwpnDh7XffeVP6sGVMrw6
	BE4JttR+kakNBkn7r33VPXTwjUrR2p4Pnv77hqOFdvWiH6+r3ssqIyTtjvL9j8PJT9G4ZZxqzYC+h
	EadkA14lFas1J5A32OvoU0fFoBygQXCki+DB8P9MtyK3ctzY4SKYGE5JFm0sCw9baj6vptb3sNIEh
	u/o0yRr1awi0NgDKBlOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU5kK-0006il-KZ; Thu, 30 Apr 2020 09:44:44 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU5jw-0006ZI-Fu
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 09:44:22 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 4B94FCD1098734C8882D;
 Thu, 30 Apr 2020 17:44:09 +0800 (CST)
Received: from [127.0.0.1] (10.166.215.120) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.487.0;
 Thu, 30 Apr 2020 17:44:02 +0800
Subject: Re: [PATCH] arm64: panic on synchronous external abort in kernel
 context
To: James Morse <james.morse@arm.com>
References: <20200410015245.23230-1-xiexiuqi@huawei.com>
 <20200414105923.GA2486@C02TD0UTHF1T.local>
 <adc93578-5cfc-09c3-0b88-b265e310ef97@arm.com>
 <21997719-c521-c39a-f521-54feae16fc45@huawei.com>
 <60131aba-4e09-7824-17b2-a6fc711c150b@arm.com>
From: Xie XiuQi <xiexiuqi@huawei.com>
Message-ID: <483792fd-5b01-8cf7-7687-abe513cd3474@huawei.com>
Date: Thu, 30 Apr 2020 17:44:00 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <60131aba-4e09-7824-17b2-a6fc711c150b@arm.com>
Content-Language: en-US
X-Originating-IP: [10.166.215.120]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_024420_770658_01E2BF7D 
X-CRM114-Status: GOOD (  30.96  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, tanxiaofei@huawei.com, tglx@linutronix.de,
 will@kernel.org, wangxiongfeng2@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

Sorry for reply late.

On 2020/4/14 22:53, James Morse wrote:
> Hi Xie,
> 
> On 14/04/2020 13:39, Xie XiuQi wrote:
>> On 2020/4/14 20:16, James Morse wrote:
>>> On 14/04/2020 11:59, Mark Rutland wrote:
>>>> On Fri, Apr 10, 2020 at 09:52:45AM +0800, Xie XiuQi wrote:
>>>>> We should panic even panic_on_oops is not set, when we can't recover
>>>>> from synchronous external abort in kernel context.
>>>
>>> Hmm, fault-from-kernel-context doesn't mean the fault affects the kernel. If the kernel is
>>> reading or writing from user-space memory for a syscall, its the user-space memory that is
>>> affected. This thread can't make progress, so we kill it.
>>> If its a kernel thread or we were in irq context, we panic().
>>>
>>> I don't think you really want all faults that happen as a result of a kernel access to be
>>> fatal!
> 
>> Yes, you're right. I just want to fix a hung up when ras error inject testing.
>>
>> panic_on_oops is not set in the kernel image for testing. When receiving a sea in kernel
>> context, the PE trap in do_exit(), and can't return any more.
> 
> trap? gets trapped, (or gets stuck, to prevent confusion with the architectures use of the
> word 'trap'!)
> 
> 
>> I analyze the source code, the call trace might like this:
>>    do_mem_abort
>>      -> arm64_notify_die
>>         -> die                    # kernel context, call die() directly;
>>            -> do_exit             # kernel process context, call do_exit(SIGSEGV);
>>               -> do_task_dead()   # call do_task_dead(), and hung up this core;
> 
> Thanks for the trace. This describes a corrected error in your I-cache, that occurred
> while the kernel was executing a kernel thread. These shouldn't be fatal, because it was
> corrected ... but the kernel doesn't know that because it doesn't know how to parse those
> records.
> 
> There are two things wrong here:
> 1. it locks up while trying to kill the thread.
> 2. it tried to kill the thread in the first place!
> 
> For 1, does your l1l2_inject module take any spinlocks or tinker with the pre-empt counter?
> 
> I suspect this is some rarely-tested path in do_task_dead() that sleeps, but can't from
> your l1l2_inject module because the pre-empt counter has been raised.
> 
> CONFIG_DEBUG_ATOMIC_SLEEP may point at the function to blame.
> 
> It may be accessing some thread data that kthreads don't have, taking a second exception
> and blocking on the die_lock. LOCKDEP should catch this one.
> 
> We should fix this one first.
> 

I analyze the l1l2_inject module, there is a kworker thread used to inject error.
do_sea() try to kill the kworker thread, so the work(s) queued on this kworker
is blocked.

panic_on_oops option is usually set on production environment, so if someone
unset this option for testing, he should take his own risk. Is it right?

> 
> 2 is a bit more complicated. Today, this is fatal because the arch code assumes this was
> probably a memory error, and if it returns to user-space it can't avoid getting stuck in a
> loop until the scheduled memory_failure() work runs. Instead it unconditionally signals
> the process.
> 
> [0] fixes this up for memory errors. But in this case it will assume all the work has been
> done by APEI, (or will be before we get back to user-space). APEI ignored the processor
> error you fed it, because it doesn't know what they are, they are just printed out.
> 
> This is fine for corrected errors, but were are reliant on your firmware describing
> uncorrected errors with a 'fatal' severity... which might be too heavy a hammer. (Ideally
> that would mean 'uncontained', and the kernel should handle, or detect it can't, any other
> errror...)
> 
> We can discuss the right thing to do here when support for parsing these 'arm processor
> errors' is posted.
> (If you think I need to do something different in [0] because of this, please shout!)

For some errors which could be recoverable or corrected, do_sea() should not kill process
or die() unconditionally. It's better detect this situation.

> 
> 
>> [  387.740609] {1}[Hardware Error]: Hardware error from APEI Generic Hardware Error Source: 9
>> [  387.748837] {1}[Hardware Error]: event severity: recoverable
>> [  387.754470] {1}[Hardware Error]:  Error 0, type: recoverable
> 
>> [  387.760103] {1}[Hardware Error]:   section_type: ARM processor error
> 
> et voila! Case 2. Linux doesn't handle these 'ARM processor error' things, because it
> doesn't know what they are. It just prints them out.
> 
> 
>> [  387.766425] {1}[Hardware Error]:   MIDR: 0x00000000481fd010
>> [  387.771972] {1}[Hardware Error]:   Multiprocessor Affinity Register (MPIDR): 0x0000000081080000
>> [  387.780628] {1}[Hardware Error]:   error affinity level: 0
>> [  387.786088] {1}[Hardware Error]:   running state: 0x1
>> [  387.791115] {1}[Hardware Error]:   Power State Coordination Interface state: 0
>> [  387.798301] {1}[Hardware Error]:   Error info structure 0:
>> [  387.803761] {1}[Hardware Error]:   num errors: 1
>> [  387.808356] {1}[Hardware Error]:    error_type: 0, cache error
>> [  387.814160] {1}[Hardware Error]:    error_info: 0x0000000024400017
>> [  387.820311] {1}[Hardware Error]:     transaction type: Instruction
>> [  387.826461] {1}[Hardware Error]:     operation type: Generic error (type cannot be determined)
>> [  387.835031] {1}[Hardware Error]:     cache level: 1
> 
>> [  387.839878] {1}[Hardware Error]:     the error has been corrected
> 
> As this is corrected, I think the bug is a deadlock somewhere in do_task_dead().
> 
> 
>> [  387.845942] {1}[Hardware Error]:    physical fault address: 0x00000027caf50770
> 
> (and your firmware gives you the physical address, excellent, the kernel can do something
> with this!)
> 
> 
>> [  388.021037] Call trace:
>> [  388.023475]  lsu_inj_ue+0x58/0x70 [l1l2_inject]
>> [  388.029019]  error_inject+0x64/0xb0 [l1l2_inject]
>> [  388.033707]  process_one_work+0x158/0x4b8
>> [  388.037699]  worker_thread+0x50/0x498
>> [  388.041348]  kthread+0xfc/0x128
>> [  388.044480]  ret_from_fork+0x10/0x1c
>> [  388.048042] Code: b2790000 d519f780 f9800020 d5033f9f (58001001)
>> [  388.054109] ---[ end trace 39d51c21b0e42ba6 ]---
>>
>> core 0 hung up at here.
> 
> DEBUG_ATOMIC_SLEEP and maybe LOCKDEP should help you pin down where the kernel is getting
> stuck. It looks like a bug in the core code.
> 
> 
> Thanks,
> 
> James
> 
> [0] https://lore.kernel.org/linux-acpi/20200228174817.74278-4-james.morse@arm.com/
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
