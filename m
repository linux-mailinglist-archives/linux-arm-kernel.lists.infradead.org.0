Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22080199C5E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 19:01:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U3H7WOO6orm1qOTFhXFxr4BOJVsyhNNB7Y8r/qW1t74=; b=ALSZFVvnKAuk2M
	p5wDkIzykKis1ppSbW58XaRiw96tFt5d5TYC4iCPJEErtU70TyN8awL5ba0cbEPQgzEUhTq2PhyWk
	YqvadLmEgcmY1Vtbin2ylyst0RIc8IPS4rVlADXTcGFQuI+BEoCz0/sJV9HeUEFd6JOLADzGavVfW
	4c8i9YowHmTZj9GKbINnzZc2f6B3UR55q8Dukc3jGhXeNcDaE0qsD2S0LoRSW+Q6m2zb9XfhtiwdB
	OdJb0ju0RISZGTjQsnb++0cBwASaJHfVWjOCk5uCzSz9SUzvW24NH3IlPYSZEIGmKqZ3jcXIvLeUp
	MeeUveHthqGSuiAdPsdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJKG7-00060M-6s; Tue, 31 Mar 2020 17:01:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJKFu-0005yp-Ci
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 17:00:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A3DFD30E;
 Tue, 31 Mar 2020 10:00:49 -0700 (PDT)
Received: from [172.16.1.108] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 61BAC3F71E;
 Tue, 31 Mar 2020 10:00:48 -0700 (PDT)
Subject: Re: Question about SEA handling process happened in user space
To: Xiaofei Tan <tanxiaofei@huawei.com>
References: <5E81EFCD.6020605@huawei.com>
 <2b0e5507-ad75-9af1-6afe-aa87d8cf597f@arm.com> <5E83104A.7020803@huawei.com>
From: James Morse <james.morse@arm.com>
Openpgp: preference=signencrypt
Message-ID: <f9732852-046c-347c-21e1-7690e6b84a50@arm.com>
Date: Tue, 31 Mar 2020 18:00:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <5E83104A.7020803@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_100050_524304_3305BB4D 
X-CRM114-Status: GOOD (  25.75  )
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

On 3/31/20 10:41 AM, Xiaofei Tan wrote:
> On 2020/3/31 0:49, James Morse wrote:
>> On 3/30/20 2:10 PM, Xiaofei Tan wrote:
>>> I'm a little confused about the handling process of SEA happened in user space.
>>
>>> Following the description of FnV bit of register ESR_ELx in ARMv8.4 SPEC,FAR is
>>> valid only for synchronous External abort on a translation table walk.
>>
>>> But for this FAR valid scenario(attached code from line 684 to 687),
>>> we send signal SIGKILL to kill process. For some other scenario, such as line 680,
>>> FAR is not valid, but we send SIGBUS and transfer error address to process to try to do some recovery.
>>
>> 'FAR is not valid': its optional. The ESR_EL1.FnV bit can be set for the 'catch
>> all' external abort fault-status-code. This lets the CPU tell us that it doesn't
>> know what the faulting virtual address is.

>> I'm not quite sure what your question is.
>>
>> If the CPU doesn't tell us the address, we can't tell user-space what it is. The
>> alternative is to upgrade to SIGKILL in that case.

> Got it. May be the description of FnV bit of register ESR_ELx is not quite exactly. Because
> following the code, CPU may still have an chance to tell the address for SEA, not on translation table walk.

Its up to the CPU. If it has a VA for this fault, it can store it in FAR_EL1. If
it doesn't, it can set ESR_EL1.FnV to say the value in FAR_EL1 is UNKNOWN.

(these are some made up examples, I don't know how any particular CPU does this...)
For example, the address translation may be the last thing the CPU does. When it
gets an error, it still has the VA address on hand, and can report it in FAR_EL1.
Another CPU may do all the address translation early, when it gets an error, all
it has is the physical address, which it can't put in FAR_EL1.

For the translation table walks, the CPU obviously has to have the VA on hand to
do the walk, so its expected to report it.


>> If you see this instead of the address provided via firmware-first, there is a
>> series to improve that here:
>> https://lore.kernel.org/linux-acpi/20200228174817.74278-1-james.morse@arm.com/
>>
>> (We skip this signal code of APEI promises it did all the work. This lets you
>> take the signal from memory_failure() instead, which may have better information.)

> This should be an great direction.
> I have two concerns.
> 1.memory_failure() is only called for "memory error section" record. Then
> should we use this memory record for ghes sea report? Our platform is
> using "ARM processor error section".

For what classes of error?

If memory has become corrupted, you should tell the OS about the memory error.

From (my) memory: linux will just print out 'processor errors', and panic() if
they are marked as fatal. I don't think you can use these to convey a memory
error...


> 2.Should we define an error source structure for each cpu core in HEST table?
> If not, there may be conflict if more than one cpu core fall into SEA.

This is a question for the people who wrote your firmware.
For firmware first, you must have set SCR_EL3.EA. What does your firmware do if
two CPUs take an external abort at the same time?

Each CPU having its own area to read/write CPER would mean you need one
NOTIFY_SEA entry in the HEST for each area ... but how does the OS know which
CPU is which?

I think its better for there to be one area for CPER. If a second CPU takes an
external abort while the first is processing it, it has to be held in firmware
until the GHESv2 ACK says the area is no longer in use.
This way firmware guarantees the CPU taking the emulated external abort, will
always find its records in the CPER area.


>> If its the SIGKILL entries: these are for the translation table walk.
>> There is no point telling user-space about corruption in its page tables as it
>> can't do anything about it. The kernel's handling of this is to kill the
>> process. (page tables make up a very small amount of memory, so this should be
>> rarer than the regular 'external abort' case)

> Hmm, then it is useless that CPU record address for this entries.

An OS that is better than linux may use FAR_EL1 to handle these errors!

Linux doesn't because user-space memory can be re-mapped by another CPU. We need
to know the affected physical-address in order to handle the error, but can't
know what that was if a remote CPU remapped the page between us taking the
external abort, and do_sea() starting to walk the page-tables with FAR_EL1.

Firmware-first's memory-error description gives us the physical address if
firmware can learn it by imp-def means. v8.2 RAS extensions gives us an ERRxADDR
register that holds the physical-address.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
