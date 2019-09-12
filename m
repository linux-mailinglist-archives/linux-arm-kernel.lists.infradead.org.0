Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE57FB0A79
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 10:38:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=34XAWCsMVl6Eo00K/cfaJnJCkhZJF1VibUSi0Q1ez/c=; b=MBKS/cg5uO12cV
	+VmVU6t6mbngX9I+9AtO42PACGeA2OIIYgTnCn8otc90EVM8/eEEl9mjv+z1pgoVjLilFBhQgv5md
	k3zFPdMoJOOsrx1chxHC2n/axgP769HI45Y/MIFkk47sXC5vVBRTcDy19laidE4JwE5DuAkwEKzlf
	EFpD1GFc5/MJmRCsfAlewT4BfKDVlP3hjp0d71pFPvExdAj3Z7sjgAzncG2cjyn8zIeZJdwPFuagu
	aaIPXaoU+ARccYprOGpsbbR5/5gnG5sCuFb9c7THwk/Vs/Iwy0x4p4Gy3kJZJnM6wptUFiFDbioqJ
	VQlPviw6s4dKmW/jPFeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Kc7-0002fg-41; Thu, 12 Sep 2019 08:38:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Kbq-0002fK-JI
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 08:37:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BB8C01000;
 Thu, 12 Sep 2019 01:37:45 -0700 (PDT)
Received: from [10.162.41.127] (p8cg001049571a15.blr.arm.com [10.162.41.127])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 6006D3F71F; Thu, 12 Sep 2019 01:37:39 -0700 (PDT)
Subject: Re: [PATCH V7 3/3] arm64/mm: Enable memory hot remove
To: Catalin Marinas <catalin.marinas@arm.com>
References: <1567503958-25831-1-git-send-email-anshuman.khandual@arm.com>
 <1567503958-25831-4-git-send-email-anshuman.khandual@arm.com>
 <20190910161759.GI14442@C02TF0J2HF1T.local>
 <9a7a82cd-77d0-bcab-3028-7be0599b0a10@arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <93dc87f9-b0e5-140c-fb6c-1fa3d438381f@arm.com>
Date: Thu, 12 Sep 2019 14:07:49 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <9a7a82cd-77d0-bcab-3028-7be0599b0a10@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_013746_721030_7E266862 
X-CRM114-Status: GOOD (  22.39  )
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
Cc: mark.rutland@arm.com, mhocko@suse.com, david@redhat.com, linux-mm@kvack.org,
 arunks@codeaurora.org, cpandya@codeaurora.org, ira.weiny@intel.com,
 will@kernel.org, steven.price@arm.com, valentin.schneider@arm.com,
 suzuki.poulose@arm.com, Robin.Murphy@arm.com, broonie@kernel.org, cai@lca.pw,
 ard.biesheuvel@arm.com, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de, steve.capper@arm.com,
 logang@deltatee.com, linux-kernel@vger.kernel.org, akpm@linux-foundation.org,
 mgorman@techsingularity.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 09/12/2019 09:58 AM, Anshuman Khandual wrote:
> 
> On 09/10/2019 09:47 PM, Catalin Marinas wrote:
>> On Tue, Sep 03, 2019 at 03:15:58PM +0530, Anshuman Khandual wrote:
>>> @@ -770,6 +1022,28 @@ int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
>>>  void vmemmap_free(unsigned long start, unsigned long end,
>>>  		struct vmem_altmap *altmap)
>>>  {
>>> +#ifdef CONFIG_MEMORY_HOTPLUG
>>> +	/*
>>> +	 * FIXME: We should have called remove_pagetable(start, end, true).
>>> +	 * vmemmap and vmalloc virtual range might share intermediate kernel
>>> +	 * page table entries. Removing vmemmap range page table pages here
>>> +	 * can potentially conflict with a concurrent vmalloc() allocation.
>>> +	 *
>>> +	 * This is primarily because vmalloc() does not take init_mm ptl for
>>> +	 * the entire page table walk and it's modification. Instead it just
>>> +	 * takes the lock while allocating and installing page table pages
>>> +	 * via [p4d|pud|pmd|pte]_alloc(). A concurrently vanishing page table
>>> +	 * entry via memory hot remove can cause vmalloc() kernel page table
>>> +	 * walk pointers to be invalid on the fly which can cause corruption
>>> +	 * or worst, a crash.
>>> +	 *
>>> +	 * So free_empty_tables() gets called where vmalloc and vmemmap range
>>> +	 * do not overlap at any intermediate level kernel page table entry.
>>> +	 */
>>> +	unmap_hotplug_range(start, end, true);
>>> +	if (!vmalloc_vmemmap_overlap)
>>> +		free_empty_tables(start, end);
>>> +#endif
>>>  }
>>>  #endif	/* CONFIG_SPARSEMEM_VMEMMAP */
> Hello Catalin,
> 
>> I wonder whether we could simply ignore the vmemmap freeing altogether,
>> just leave it around and not unmap it. This way, we could call
> This would have been an option (even if we just ignore for a moment that
> it might not be the cleanest possible method) if present memory hot remove
> scenarios involved just system RAM of comparable sizes.
> 
> But with persistent memory which will be plugged in as ZONE_DEVICE might
> ask for a vmem_atlamp based vmemmap mapping where the backing memory comes
> from the persistent memory range itself not from existing system RAM. IIRC
> altmap support was originally added because the amount persistent memory on
> a system might be order of magnitude higher than that of regular system RAM.
> During normal memory hot add (without altmap) would have caused great deal
> of consumption from system RAM just for persistent memory range's vmemmap
> mapping. In order to avoid such a scenario altmap was created to allocate
> vmemmap mapping backing memory from the device memory range itself.
> 
> In such cases vmemmap must be unmapped and it's backing memory freed up for
> the complete removal of persistent memory which originally requested for
> altmap based vmemmap backing.
> 
> Just as a reference, the upcoming series which enables altmap support on
> arm64 tries to allocate vmemmap mapping backing memory from the device range
> itself during memory hot add and free them up during memory hot remove. Those
> methods will not be possible if memory hot-remove does not really free up
> vmemmap backing storage.
> 
> https://patchwork.kernel.org/project/linux-mm/list/?series=139299
> 

Just to add in here. There is an ongoing work which will enable allocating
memory from the hot-add range itself even for normal system RAM. So this
might not be specific to ZONE_DEVICE based device/persistent memory alone
for a long time.

https://lore.kernel.org/lkml/20190725160207.19579-1-osalvador@suse.de/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
