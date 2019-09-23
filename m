Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55615BB1F9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 12:11:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NlZyYTWXNbqar26kAgEyrIa2rEUG8R5Iq4eOi5Uc3LM=; b=duAXDD1Yjmurfe
	d8tMkLPUqbGw00/1fg46fZSUaEZi891z/uWORy2BOFfX9iYVMaLm7SVF8tNpkbCzHEN6Hcqovj6g6
	0J7NS7+gL+LtTQ70PcgTwjuOcz3dR0Yq5IOF6tQlDioeeF0ujGqhN8BkTd3Ipp4geLyM4DpwtUETH
	DxANdM+OvRL9wZTjdEqZnSQ3lwi0Xy6spumrDWyJSMFWhu2WWqGDr8ioKPX2i+21nUxMYLnGfvVKn
	PZ25+1zPMnwzQzHw16uVPnIAGGBaJEtyHj43CmUe+q+weMucX4utnkcatlMD6yzWULT0XOET6I7+o
	2KuoztSWmaKQr1Bl/1oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCLJj-0005yh-QL; Mon, 23 Sep 2019 10:11:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCLJd-0005xw-Ne
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 10:11:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C59CA1000;
 Mon, 23 Sep 2019 03:11:31 -0700 (PDT)
Received: from [10.162.40.137] (p8cg001049571a15.blr.arm.com [10.162.40.137])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 537933F694; Mon, 23 Sep 2019 03:11:29 -0700 (PDT)
Subject: Re: [PATCH] arm64: use generic free_initrd_mem()
To: Mike Rapoport <rppt@kernel.org>, Laura Abbott <labbott@redhat.com>
References: <1568618488-19055-1-git-send-email-rppt@kernel.org>
 <0ba20aa4-d2dd-2263-6b5f-16a5c8a39f67@redhat.com>
 <20190916135542.GC5196@rapoport-lnx>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <e1ffc4f9-91cc-a4e1-b549-c28a392bdc71@arm.com>
Date: Mon, 23 Sep 2019 15:41:46 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190916135542.GC5196@rapoport-lnx>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_031133_856878_6C5E6F93 
X-CRM114-Status: GOOD (  20.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-arch@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 09/16/2019 07:25 PM, Mike Rapoport wrote:
> (added linux-arch)
> 
> On Mon, Sep 16, 2019 at 08:23:29AM -0400, Laura Abbott wrote:
>> On 9/16/19 8:21 AM, Mike Rapoport wrote:
>>> From: Mike Rapoport <rppt@linux.ibm.com>
>>>
>>> arm64 calls memblock_free() for the initrd area in its implementation of
>>> free_initrd_mem(), but this call has no actual effect that late in the boot
>>> process. By the time initrd is freed, all the reserved memory is managed by
>>> the page allocator and the memblock.reserved is unused, so there is no
>>> point to update it.
>>>
>>
>> People like to use memblock for keeping track of memory even if it has no
>> actual effect. We made this change explicitly (see 05c58752f9dc ("arm64: To remove
>> initrd reserved area entry from memblock") That said, moving to the generic
>> APIs would be nice. Maybe we can find another place to update the accounting?
> 
> Any other place in arch/arm64 would make it messy because it would have to
> duplicate keepinitrd logic.
> 
> We could put the memblock_free() in the generic free_initrd_mem() with
> something like:
> 
> diff --git a/init/initramfs.c b/init/initramfs.c
> index c47dad0..403c6a0 100644
> --- a/init/initramfs.c
> +++ b/init/initramfs.c
> @@ -531,6 +531,10 @@ void __weak free_initrd_mem(unsigned long start,
> unsigned long end)
>  {
>         free_reserved_area((void *)start, (void *)end, POISON_FREE_INITMEM,
>                         "initrd");
> +
> +#ifdef CONFIG_ARCH_KEEP_MEMBLOCK
> +       memblock_free(__virt_to_phys(start), end - start);
> +#endif
>  }

This makes sense.

>  
>  #ifdef CONFIG_KEXEC_CORE
> 
> 
> Then powerpc and s390 folks will also be able to track the initrd memory :)

Sure.

> 
>>> Without the memblock_free() call the only difference between arm64 and the
>>> generic versions of free_initrd_mem() is the memory poisoning. Switching
>>> arm64 to the generic version will enable the poisoning.
>>>
>>> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
>>> ---
>>>
>>> I've boot tested it on qemu and I've checked that kexec works.
>>>
>>>  arch/arm64/mm/init.c | 8 --------
>>>  1 file changed, 8 deletions(-)
>>>
>>> diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
>>> index f3c7952..8ad2934 100644
>>> --- a/arch/arm64/mm/init.c
>>> +++ b/arch/arm64/mm/init.c
>>> @@ -567,14 +567,6 @@ void free_initmem(void)
>>>  	unmap_kernel_range((u64)__init_begin, (u64)(__init_end - __init_begin));
>>>  }
>>> -#ifdef CONFIG_BLK_DEV_INITRD
>>> -void __init free_initrd_mem(unsigned long start, unsigned long end)
>>> -{
>>> -	free_reserved_area((void *)start, (void *)end, 0, "initrd");
>>> -	memblock_free(__virt_to_phys(start), end - start);
>>> -}
>>> -#endif
>>> -
>>>  /*
>>>   * Dump out memory limit information on panic.
>>>   */
>>>
>>
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
