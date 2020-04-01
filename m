Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC2519A407
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 05:50:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+clVTiKk9W9RpDbNqi4R/wTxwlIUyXHwng+nxbMEdF0=; b=QDkrcw8bAHMoBK
	NW4S6sq1VFXW85wLk+wZ4x6qJtAnmRTPZOJJfq6ReGN4RW+laTrtHZz0B8UjxUrty05A+9FZGqPn4
	fKwZPRuWr1P8a6EMc4piCz1p1awCBgwU/DjkkwyfeldKbixAkPTpQL34IhthYjMlFbYbV7wpHVcTw
	GgPLIrtS7R5oT/aerV29qbVyTVTDeLpjMkgjmRDaA7Z4tw1OZVsK1WZVeTPWaWMH+CDSa6Ay0A3EP
	VrBCXGYp0li27SiBJo8NaFwOZQNpw0+IXmO3yZU88gnQ40KoukKxtiDsozAVCh8vQURn2k/3KQbcj
	DgoB50Q+/tkejkpao7FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJUNy-0004cZ-OV; Wed, 01 Apr 2020 03:49:50 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJUNp-0004bu-Lv
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 03:49:43 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 21949870C77692B5C964;
 Wed,  1 Apr 2020 11:49:23 +0800 (CST)
Received: from [127.0.0.1] (10.74.184.86) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.487.0; Wed, 1 Apr 2020
 11:49:16 +0800
Subject: Re: Question about SEA handling process happened in user space
To: James Morse <james.morse@arm.com>
References: <5E81EFCD.6020605@huawei.com>
 <2b0e5507-ad75-9af1-6afe-aa87d8cf597f@arm.com> <5E83104A.7020803@huawei.com>
 <f9732852-046c-347c-21e1-7690e6b84a50@arm.com>
From: Xiaofei Tan <tanxiaofei@huawei.com>
Message-ID: <5E840F3B.6040803@huawei.com>
Date: Wed, 1 Apr 2020 11:49:15 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <f9732852-046c-347c-21e1-7690e6b84a50@arm.com>
X-Originating-IP: [10.74.184.86]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_204941_884066_BBFE8549 
X-CRM114-Status: GOOD (  27.66  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Linuxarm <linuxarm@huawei.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org, Shiju Jose <shiju.jose@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James

On 2020/4/1 1:00, James Morse wrote:
> On 3/31/20 10:41 AM, Xiaofei Tan wrote:
>> On 2020/3/31 0:49, James Morse wrote:
>>> On 3/30/20 2:10 PM, Xiaofei Tan wrote:
>>>> I'm a little confused about the handling process of SEA happened in user space.
>>>
>>>> Following the description of FnV bit of register ESR_ELx in ARMv8.4 SPEC,FAR is
>>>> valid only for synchronous External abort on a translation table walk.
>>>
>>>> But for this FAR valid scenario(attached code from line 684 to 687),
>>>> we send signal SIGKILL to kill process. For some other scenario, such as line 680,
>>>> FAR is not valid, but we send SIGBUS and transfer error address to process to try to do some recovery.
>>>
>>> 'FAR is not valid': its optional. The ESR_EL1.FnV bit can be set for the 'catch
>>> all' external abort fault-status-code. This lets the CPU tell us that it doesn't
>>> know what the faulting virtual address is.
> 
>>> I'm not quite sure what your question is.
>>>
>>> If the CPU doesn't tell us the address, we can't tell user-space what it is. The
>>> alternative is to upgrade to SIGKILL in that case.
> 
>> Got it. May be the description of FnV bit of register ESR_ELx is not quite exactly. Because
>> following the code, CPU may still have an chance to tell the address for SEA, not on translation table walk.
> 
> Its up to the CPU. If it has a VA for this fault, it can store it in FAR_EL1. If
> it doesn't, it can set ESR_EL1.FnV to say the value in FAR_EL1 is UNKNOWN.
> 
> (these are some made up examples, I don't know how any particular CPU does this...)
> For example, the address translation may be the last thing the CPU does. When it
> gets an error, it still has the VA address on hand, and can report it in FAR_EL1.
> Another CPU may do all the address translation early, when it gets an error, all
> it has is the physical address, which it can't put in FAR_EL1.
> 

OK.

> For the translation table walks, the CPU obviously has to have the VA on hand to
> do the walk, so its expected to report it.
> 

OK.

> 
>>> If you see this instead of the address provided via firmware-first, there is a
>>> series to improve that here:
>>> https://lore.kernel.org/linux-acpi/20200228174817.74278-1-james.morse@arm.com/
>>>
>>> (We skip this signal code of APEI promises it did all the work. This lets you
>>> take the signal from memory_failure() instead, which may have better information.)
> 
>> This should be an great direction.
>> I have two concerns.
>> 1.memory_failure() is only called for "memory error section" record. Then
>> should we use this memory record for ghes sea report? Our platform is
>> using "ARM processor error section".
> 
> For what classes of error?
> 

Both processor cache ecc error and memory error (marked by poison) can lead to SEA.

> If memory has become corrupted, you should tell the OS about the memory error.
> 
>>From (my) memory: linux will just print out 'processor errors', and panic() if
> they are marked as fatal. I don't think you can use these to convey a memory
> error...
> 

OK. Then firmware should detect error source. If it is processor cache error,
we use "ARM processor error section", else if it is memory error, we use "memory error section".

Normally, we report memory error only from RAS node of DDRC or HHA module. For SEA,
It is a little strange to report as memory error when collect errors from processor RAS node.

> 
>> 2.Should we define an error source structure for each cpu core in HEST table?
>> If not, there may be conflict if more than one cpu core fall into SEA.
> 
> This is a question for the people who wrote your firmware.
> For firmware first, you must have set SCR_EL3.EA. What does your firmware do if
> two CPUs take an external abort at the same time?

Will block the second one until first SEA finished and error source of HEST table free.

> 
> Each CPU having its own area to read/write CPER would mean you need one
> NOTIFY_SEA entry in the HEST for each area ... but how does the OS know which
> CPU is which?

Yes, OS don't know this.
So, it is ok to share the only one area for all CPUs.

> 
> I think its better for there to be one area for CPER. If a second CPU takes an
> external abort while the first is processing it, it has to be held in firmware
> until the GHESv2 ACK says the area is no longer in use.
> This way firmware guarantees the CPU taking the emulated external abort, will
> always find its records in the CPER area.
> 

Agree.

> 
>>> If its the SIGKILL entries: these are for the translation table walk.
>>> There is no point telling user-space about corruption in its page tables as it
>>> can't do anything about it. The kernel's handling of this is to kill the
>>> process. (page tables make up a very small amount of memory, so this should be
>>> rarer than the regular 'external abort' case)
> 
>> Hmm, then it is useless that CPU record address for this entries.
> 
> An OS that is better than linux may use FAR_EL1 to handle these errors!
> 
> Linux doesn't because user-space memory can be re-mapped by another CPU. We need
> to know the affected physical-address in order to handle the error, but can't
> know what that was if a remote CPU remapped the page between us taking the
> external abort, and do_sea() starting to walk the page-tables with FAR_EL1.
> 
> Firmware-first's memory-error description gives us the physical address if
> firmware can learn it by imp-def means. v8.2 RAS extensions gives us an ERRxADDR
> register that holds the physical-address.
> 

Got it, thanks.

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
