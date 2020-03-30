Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C220B198214
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 19:18:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EdUXJwm3vUZaFgEu0BKgnsOM8b7DpyVZB1bgX9w4jt4=; b=N/zSyLpyGbIx39
	o/buyX0d408iTRDmH4wQT1m62LZNHjQAIK4PIfFUOT3piOlAGVT1eXhk/+bEeR7lD26grWijdQn8E
	z8V55t5JT8X55qNcAQVrnZJtsZWZqPBW1hWWDLcF8FzbgtEpVQgDPc58IJOavhLkjzm6675mpN6W3
	OnRLbqwO2ISiD/cJ27ZtbrRF+winY+vqUTlmZ+GoimS0Zesjw4BHCVXU+d+0ymFoONBnyH6CBOa5M
	S6qJlojx8g1FhQcoL0fJK3T2QKkF8bCR991iP9FcqYWhsFCC/iKKBP+TdhyS8UMkZdNskSoybvraJ
	k4p6qr8rjlH0uxMkgkaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIy37-0003oe-2c; Mon, 30 Mar 2020 17:18:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIy2a-0003Yo-As; Mon, 30 Mar 2020 17:17:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C8DB1113E;
 Mon, 30 Mar 2020 10:17:35 -0700 (PDT)
Received: from [172.16.1.108] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BF5AE3F68F;
 Mon, 30 Mar 2020 10:17:33 -0700 (PDT)
Subject: Re: [PATCH 2/3] mm/memory_hotplug: Allow arch override of non boot
 memory resource names
To: David Hildenbrand <david@redhat.com>
References: <20200326180730.4754-1-james.morse@arm.com>
 <20200326180730.4754-3-james.morse@arm.com>
 <52d6fd33-c15d-b842-84ed-b4a74265199f@redhat.com>
 <25aa3f43-5aa9-653f-0910-dd7b75527e08@arm.com>
 <1090cc16-fa6b-8dd2-8c41-22136f733f00@redhat.com>
From: James Morse <james.morse@arm.com>
Openpgp: preference=signencrypt
Message-ID: <e3ae2e24-fdc3-bd6c-db4e-1588f9b031ff@arm.com>
Date: Mon, 30 Mar 2020 18:17:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1090cc16-fa6b-8dd2-8c41-22136f733f00@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_101736_489617_41BACE6E 
X-CRM114-Status: GOOD (  20.42  )
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
Cc: Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, kexec@lists.infradead.org,
 linux-mm@kvack.org, Eric Biederman <ebiederm@xmission.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi David,

On 3/30/20 2:23 PM, David Hildenbrand wrote:
>>>> diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
>>>> index 0a54ffac8c68..69b03dd7fc74 100644
>>>> --- a/mm/memory_hotplug.c
>>>> +++ b/mm/memory_hotplug.c
>>>> @@ -42,6 +42,10 @@
>>>>  #include "internal.h"
>>>>  #include "shuffle.h"
>>>>  
>>>> +#ifndef MEMORY_HOTPLUG_RES_NAME
>>>> +#define MEMORY_HOTPLUG_RES_NAME "System RAM"
>>>> +#endif
>>>
>>> So I assume changing this for all architectures would result in some
>>> user space tool breaking? Are we aware of any?
>>
>> Last time we had to touch arm64's /proc/iomem strings I went through debian's
>> codesearch for stuff that reads it, kexec-tools was the only thing that parsed
>> it in anger. (From memory, the other tools were looking for PCIe windows to do
>> firmware flashing..)
>>
>> Looking again, having qualifiers on the end of 'System RAM' looks like it could
>> confuse 's390-tools's detect_mem_chunks parser.
> 
> Good to know, we should find out if this could work.
> 
>>
>> It looks like the strings that come out of 'FIRMWARE_MEMMAP' are a duplicate set.
>>
>>
>>> I do wonder if we should simply change it for all architectures if possible.
>>
>> If its possible that would be great. But I suspect that ship has sailed,
>> changing it on other architectures could break some fragile parsing code.
> 
> I assume any parser has to be prepared for new types showing up.
> Otherwise these would not be future proof. The question is if a common
> prefix is problematic.
> 
> E.g., Use "Hotplugged System RAM" instead of "System RAM (hotplug)"

Aha, I went for a (suffix) because that is what 32bit Arm did for the boot alias.


>> I'm wary of changing it on arm64, the only thing that makes it tolerable is that
>> memory hot-add was relatively recently merged, and we don't anticipate it being
>> widely used until you can remove memory as well.
>>
>> Changing it on arm64 is to prevent today's versions of kexec-tools from
>> accidentally placing the new kernel in memory that wasn't described at boot.
>> This leads to an unhandled exception during boot[0] because the kernel can't
>> access itself via the mapping of all memory. (hotpluggable regions are only
>> discovered by suitably configured ACPI systems much later)

> I want the very same for virtio-mem (initially x86-only, but later open
> for all archs). Can also be interesting for Hyper-V. kexec should not
> try to use hotplugged memory as kexec target, as memory blocks can be
> partially inaccessible.

Great! I assumed these placement requirements would be arm64 specific.


> Of course, I can provide an interface to override the name via
> add_memory(), but having it on all architectures handled in a similar
> way right from the start would be nicer.

I agree having it the same on all architectures would be good.

It sounds like virtio-mem is a better argument for doing this than arm64's
firmware memory description.

I'll have a read, and maybe post something to linux-arch to do this at rc1.
(I assume we'll have a few weeks to make sure arm64 at least uses the same name
if it goes on longer)


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
