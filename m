Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E52B1A1197
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 18:37:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XmzCd3letIhVqLRlWvVJH00kY0XkuMl2qZ5oknnQQ80=; b=NFLTGW7S39BtAu
	atHvtWnmWjjjriv7kLilv8nhTFrjvH5tmyBBHoiG+F2cDEwCdmP/uj9xVTnsUonrcoEuHT/YXargA
	wygQ+40ydct0mnciFdxrJ5UPUWSQCFwK+GN7s3o5dT/734JHfGd48XZ95fGH/RYjj1O+6wr2liYTd
	FPOhkYjtFKLLfjc4XvxwvQ84NMj8CfqhURevlvDoQydbVOhBOM2lg2QSw/cTIzDq3bcsFVv1LGbbo
	JevJ/JCwfGKteQz+X7BP2Xwb66uinLv/1xz34O479BLboLLGBYPWzxM2G9qTuAk/UH5yJPcBKm90B
	8YxfCdpOxGvsS/ORSmaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLrED-0004Wz-2S; Tue, 07 Apr 2020 16:37:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLrE5-0004WU-1u
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 16:37:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 621BB30E;
 Tue,  7 Apr 2020 09:37:22 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 50B663F52E;
 Tue,  7 Apr 2020 09:37:21 -0700 (PDT)
Subject: Re: Question about SEA handling process happened in user space
To: Xiaofei Tan <tanxiaofei@huawei.com>
References: <5E81EFCD.6020605@huawei.com>
 <2b0e5507-ad75-9af1-6afe-aa87d8cf597f@arm.com> <5E83104A.7020803@huawei.com>
 <f9732852-046c-347c-21e1-7690e6b84a50@arm.com> <5E840F3B.6040803@huawei.com>
From: James Morse <james.morse@arm.com>
Message-ID: <7d6668d6-ec4a-e362-94a3-c31950651c02@arm.com>
Date: Tue, 7 Apr 2020 17:37:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <5E840F3B.6040803@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_093725_184398_65072060 
X-CRM114-Status: GOOD (  22.69  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Linuxarm <linuxarm@huawei.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org, Shiju Jose <shiju.jose@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Xiaofei,

On 01/04/2020 04:49, Xiaofei Tan wrote:
> On 2020/4/1 1:00, James Morse wrote:
>> On 3/31/20 10:41 AM, Xiaofei Tan wrote:
>>> 1.memory_failure() is only called for "memory error section" record. Then
>>> should we use this memory record for ghes sea report? Our platform is
>>> using "ARM processor error section".

>> For what classes of error?

> Both processor cache ecc error and memory error (marked by poison) can lead to SEA.

These are the errors that can cause the hardware to notify software via external abort.
For which classes of error does your firmware then use a 'processor error'?

It sounds like you assume everything reported in the CPU records must be a processor
error, and everything reported by the memory error must be a memory error.


(digression: this isn't really true!
The CPU could report that it read poison from memory. Is this a memory error, or a CPU
error? Equally the memory controller could report that a PCIe device wrote to a
not-present DIMM. Is this a memory error?)


>> If memory has become corrupted, you should tell the OS about the memory error.
>>
>> >From (my) memory: linux will just print out 'processor errors', and panic() if
>> they are marked as fatal. I don't think you can use these to convey a memory
>> error...
>>
> 
> OK. Then firmware should detect error source. If it is processor cache error,
> we use "ARM processor error section", else if it is memory error, we use "memory error section".

> Normally, we report memory error only from RAS node of DDRC or HHA module. For SEA,

Do you have patches to get linux to do something useful with the processor error nodes?

We'd need it to handle uncorrected cache errors with a physical address, as if they were
memory errors...

A virtual address is no-use as the memory may have been re-mapped in the meantime.


> It is a little strange to report as memory error when collect errors from processor
> RAS node.

Its pragmatic: today linux ignores the processor errors.
If you suffer a cache error, the memory that backed that cached location is now also
corrupt, as you've lost the writes that made the cache-line dirty.

If you can describe this memory corruption, without treating it as 'the error' then an OS
that doesn't know about the process error sections will still do the right thing. (i.e.
leave out the device/row/rank stuff to avoid it being attributed to a DIMM)

The downside is you have fake memory errors when nothing bad happened to the DIMM. These
should be uniform, and smaller than the errors actually occurring at the DIMM.

I've no idea if patches adding support for the processor error nodes would be considered
for stable.


>>> 2.Should we define an error source structure for each cpu core in HEST table?
>>> If not, there may be conflict if more than one cpu core fall into SEA.
>>
>> This is a question for the people who wrote your firmware.
>> For firmware first, you must have set SCR_EL3.EA. What does your firmware do if
>> two CPUs take an external abort at the same time?
> 
> Will block the second one until first SEA finished and error source of HEST table free.

Okay, so one 'SEA' entry in the HEST describes the single region that CPER will be written to.


>> Each CPU having its own area to read/write CPER would mean you need one
>> NOTIFY_SEA entry in the HEST for each area ... but how does the OS know which
>> CPU is which?
> 
> Yes, OS don't know this.
> So, it is ok to share the only one area for all CPUs.

Yes, as there is no way to pair the memory with the CPUs.

If there is more than one region, then each CPU taking an external abort will walk the
list, checking each one.

Its up to firmware to ensure this is serialised. Sounds like you've got this sorted.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
