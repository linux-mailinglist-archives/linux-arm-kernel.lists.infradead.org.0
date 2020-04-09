Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C673D1A35DA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 16:28:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qMue+GPBUHVwrzG8MguUWi3fbUk6YKnH0iCnhUm5MSw=; b=UPd1HbaW7nxjmf
	k+HWPCPIM/QB36vIxXpH+oDMjb3UaTaI765qziuNR7cDOSlrX5Ib8PqFcMRrY5RGcfL//jatga6uI
	6dSXTgKG2mDKlvBuD90HrAOCdtrJrnGsO5JyxORAabAV3mamiu1O/0tBNNNRdaMn50aopotX/08/O
	La2H77BGsaEFOdq1Zk3louABIO9P9DKf+G2W0iw+QmnSlkrG+DzUZBm1nlHPE2Thkt0R7XOg5J1Kq
	bRcc5txCIWvoiSE7JuHIb54SNksIuTXYGpgCznGRrXbsAO81PWCLHlHwQ/n/1Ubn3F0NFP9rpeJVj
	SPA2gdUj3fdZiKX/7uiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMYAN-0004uq-T0; Thu, 09 Apr 2020 14:28:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMYAF-0004u8-PK
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 14:28:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 87C6630E;
 Thu,  9 Apr 2020 07:28:14 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 639733F68F;
 Thu,  9 Apr 2020 07:28:13 -0700 (PDT)
Subject: Re: Question about SEA handling process happened in user space
To: Xiaofei Tan <tanxiaofei@huawei.com>
References: <5E81EFCD.6020605@huawei.com>
 <2b0e5507-ad75-9af1-6afe-aa87d8cf597f@arm.com> <5E8587A3.6030101@huawei.com>
 <558ffd42-74d7-e364-2b79-93ab0998ab6e@arm.com> <5E8EE845.8090406@huawei.com>
From: James Morse <james.morse@arm.com>
Message-ID: <66db5a6a-e68b-00b7-6a78-2c8cd9e63aab@arm.com>
Date: Thu, 9 Apr 2020 15:28:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <5E8EE845.8090406@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_072820_534660_7D5A6D65 
X-CRM114-Status: GOOD (  19.10  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Linuxarm <linuxarm@huawei.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org, Shiju Jose <shiju.jose@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Xiaofei,

On 09/04/2020 10:17, Xiaofei Tan wrote:
> On 2020/4/8 0:37, James Morse wrote:
>> On 02/04/2020 07:35, Xiaofei Tan wrote:
>>> On 2020/3/31 0:49, James Morse wrote:
>>>> If the CPU doesn't tell us the address, we can't tell user-space what it is. The
>>>> alternative is to upgrade to SIGKILL in that case.
>>>>
>>>>
>>>> If you see this instead of the address provided via firmware-first, there is a
>>>> series to improve that here:
>>>> https://lore.kernel.org/linux-acpi/20200228174817.74278-1-james.morse@arm.com/
>>>>
>>>> (We skip this signal code of APEI promises it did all the work. This lets you
>>>> take the signal from memory_failure() instead, which may have better information.)
>>
>>> There may be an competition issue.
>>> APEI run memory_failure() in an bottom half for memory errors. Then it may be not finished
>>> before here SEA handling end, and application process may back to run.

>> With that series, it runs in process-context as task-work. memory_failure() needs to
>> sleep, so it has to run in process-context. 
> 
> 
>> Doing it as task-work means it runs before the thread returns to user-space.
> 
> Sorry, i don't understand this. i thought the task-work need to reschedule, and current thread should
> have returned to user-space before it.

ret_to_user has a loop around do_notify_resume(), if the _TIF_NOTIFY_RESUME flag is set
and we call tracehook_notify_resume() which ends up in task_work_run()...

That TIF flag effectively prevents this thread returning to user-space until that task
work has run.


> BTW, What context synchronous exception abort is? I thought it was process-context.

It depends what you interrupted.
32bit had different CPU modes for different contexts, we don't have that in 64bit. Instead
we mask asynchronous interrupts, and tinker with the preempt count to track the context.
Synchronous exceptions can't be masked, so they happen in whatever context you were
already in.
This means the exception handlers have to be be prepared for each eventuality.
(which is why that code is starting to look complex)


> Because in_interrupt() return false called in do_sea().

If you took the exception from EL0, or EL1 process context, yes. If you took the exception
from an IRQ handler, in_interrupt() would return true.


>> If another thread in the same process accesses the affected memory, I'd expect to take a
>> second external abort. If another process had the page mapped, it could access the
>> affected memory, again taking an external abort.

> Yes, it is hard to avoid another thread to access the affected memory.
> I just worry the same thread access it again.

This is the race that that series fixes.
It can't happen with mainline as the arch code unconditionally signals the affected
process, which was the pre-RAS behaviour.

>> These two could happen while the first CPU was in firmware generating the CPER records, so
>> its not a race we can fix. It should be harmless, the recovery action is the same, its
>> just the error counters that count more events than errors. If you actually see it happen,
>> we can try and make it smaller...

> Hmm, maybe this double SEA handling is an solution.

It assumes you get a second external-abort. We know this thread is affected, and will try
and consume the error again if we restart it. We shouldn't restart it until we've given
the recovery our best shot.
Letting it loose is a poor choice if you have any kind of threshold for error-counts. They
may jump NR_CPUs at a time until every CPU is waiting in memory_failure()...


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
