Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C12F91A4491
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 11:44:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jHcwhULV7o1VkQV13R7T4DEga/ZzyEJ6dOPsISf8uk4=; b=enyiZwAHIPOSxy
	+Vn25ACvrv/l+O1ZfkkSINMWnOPXCG9aKTxtAVJnJ3/z7N1WDnOKrX9wpThzSqJdlSWByhEHKl+dP
	AyphK0n04CCagKv/EJFNVjgSIjbxUeXpynOqkjoEW0WKGjn3FjS4iTPrEhUHez5dTJzNHemw2Vnsw
	BmrJoNAwgVopjHq2GH99iUtfU6YRSCt4KQn2zSn546yK29w1c9JvZNLYMwbi+zfcJkwVoF139pv98
	vKF+ZSCpYa6zVHxhiQMKHKRnqbKc+ZU9rzTBctnlecxqmNoVa/LBM7BugjYbFnfZcESFR/y0dcZ4n
	Qzi9pXdD/95I/uYplVow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMqD1-00041j-Ja; Fri, 10 Apr 2020 09:44:23 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMqCo-0003z9-4f
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 09:44:13 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 58D42A4F5147C91BC171;
 Fri, 10 Apr 2020 17:44:05 +0800 (CST)
Received: from [127.0.0.1] (10.74.184.86) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.487.0; Fri, 10 Apr 2020
 17:43:57 +0800
Subject: Re: Question about SEA handling process happened in user space
To: James Morse <james.morse@arm.com>
References: <5E81EFCD.6020605@huawei.com>
 <2b0e5507-ad75-9af1-6afe-aa87d8cf597f@arm.com> <5E8587A3.6030101@huawei.com>
 <558ffd42-74d7-e364-2b79-93ab0998ab6e@arm.com> <5E8EE845.8090406@huawei.com>
 <66db5a6a-e68b-00b7-6a78-2c8cd9e63aab@arm.com>
From: Xiaofei Tan <tanxiaofei@huawei.com>
Message-ID: <5E903FDD.4080106@huawei.com>
Date: Fri, 10 Apr 2020 17:43:57 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <66db5a6a-e68b-00b7-6a78-2c8cd9e63aab@arm.com>
X-Originating-IP: [10.74.184.86]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_024411_149671_46E104B4 
X-CRM114-Status: GOOD (  21.78  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Linuxarm <linuxarm@huawei.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org, Shiju Jose <shiju.jose@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

On 2020/4/9 22:28, James Morse wrote:
> On 09/04/2020 10:17, Xiaofei Tan wrote:
>> On 2020/4/8 0:37, James Morse wrote:
>>> On 02/04/2020 07:35, Xiaofei Tan wrote:
>>>> On 2020/3/31 0:49, James Morse wrote:
>>>>> If the CPU doesn't tell us the address, we can't tell user-space what it is. The
>>>>> alternative is to upgrade to SIGKILL in that case.
>>>>>
>>>>>
>>>>> If you see this instead of the address provided via firmware-first, there is a
>>>>> series to improve that here:
>>>>> https://lore.kernel.org/linux-acpi/20200228174817.74278-1-james.morse@arm.com/
>>>>>
>>>>> (We skip this signal code of APEI promises it did all the work. This lets you
>>>>> take the signal from memory_failure() instead, which may have better information.)
>>>
>>>> There may be an competition issue.
>>>> APEI run memory_failure() in an bottom half for memory errors. Then it may be not finished
>>>> before here SEA handling end, and application process may back to run.
> 
>>> With that series, it runs in process-context as task-work. memory_failure() needs to
>>> sleep, so it has to run in process-context. 
>>
>>
>>> Doing it as task-work means it runs before the thread returns to user-space.
>>
>> Sorry, i don't understand this. i thought the task-work need to reschedule, and current thread should
>> have returned to user-space before it.
> 
> ret_to_user has a loop around do_notify_resume(), if the _TIF_NOTIFY_RESUME flag is set
> and we call tracehook_notify_resume() which ends up in task_work_run()...
> 
> That TIF flag effectively prevents this thread returning to user-space until that task
> work has run.
> 

Got it. This function is great.
BTW, i have not found the place of setting the flag _TIF_NOTIFY_RESUME. Is it set by default for each thread?

> 
>> BTW, What context synchronous exception abort is? I thought it was process-context.
> 
> It depends what you interrupted.
> 32bit had different CPU modes for different contexts, we don't have that in 64bit. Instead
> we mask asynchronous interrupts, and tinker with the preempt count to track the context.
> Synchronous exceptions can't be masked, so they happen in whatever context you were
> already in.
> This means the exception handlers have to be be prepared for each eventuality.
> (which is why that code is starting to look complex)
> 

OK.

> 
>> Because in_interrupt() return false called in do_sea().
> 
> If you took the exception from EL0, or EL1 process context, yes. If you took the exception
> from an IRQ handler, in_interrupt() would return true.
> 

Got it.

> 
>>> If another thread in the same process accesses the affected memory, I'd expect to take a
>>> second external abort. If another process had the page mapped, it could access the
>>> affected memory, again taking an external abort.
> 
>> Yes, it is hard to avoid another thread to access the affected memory.
>> I just worry the same thread access it again.
> 
> This is the race that that series fixes.
> It can't happen with mainline as the arch code unconditionally signals the affected
> process, which was the pre-RAS behaviour.
> 

OK

>>> These two could happen while the first CPU was in firmware generating the CPER records, so
>>> its not a race we can fix. It should be harmless, the recovery action is the same, its
>>> just the error counters that count more events than errors. If you actually see it happen,
>>> we can try and make it smaller...
> 
>> Hmm, maybe this double SEA handling is an solution.
> 
> It assumes you get a second external-abort. We know this thread is affected, and will try
> and consume the error again if we restart it. We shouldn't restart it until we've given
> the recovery our best shot.
> Letting it loose is a poor choice if you have any kind of threshold for error-counts. They
> may jump NR_CPUs at a time until every CPU is waiting in memory_failure()...
> 

Got it. Thanks.

> 
> Thanks,
> 
> James
> 
> .
> 

-- 
 thanks
tanxiaofei


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
