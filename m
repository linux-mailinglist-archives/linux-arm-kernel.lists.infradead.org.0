Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01113CB767
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 11:33:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bl6krdM8oVbY+qGCQy9KNYMBEA/znomXTh+oFg/A6vE=; b=o9OeeKhxajeg3l
	J61emLpdcNx0Rual7ydOsB9p0YUUWVobhtX27pKu2ZyyAMHOIk2E7oewsxkD2XfW6hNG5YIjhYyyk
	PyLQwDegIrl4nSpb4KtXF7nn/OElaT6eXNp037Tzg3eWd4bceoYyVNg0v2dqOCDHgj25YnE79A+Nw
	b0T+K9SDhaEg2asGB6U+LgpNnFoNrer/cHDZ0j5AcdrClxD6QJVXYKzytmxmqCuRVsT7hPHzwYJkz
	iJgJkgvAVmW9+mnS4kCBMfPSIFQkGl1l/SsCTu550f5Ezo3bgj/G9K2hE7Z7I1u7rqH6Y4ztxeaCi
	C3u1Awh6QOOJhzfYL61Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGJxY-00076q-LV; Fri, 04 Oct 2019 09:33:12 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGJxQ-00076O-CM
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 09:33:06 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D9FBC309BDA3;
 Fri,  4 Oct 2019 09:33:03 +0000 (UTC)
Received: from [10.36.117.182] (ovpn-117-182.ams2.redhat.com [10.36.117.182])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DAF2F19C5B;
 Fri,  4 Oct 2019 09:33:00 +0000 (UTC)
Subject: Re: [PATCH v5 01/10] mm/memunmap: Use the correct start and end pfn
 when removing pages from zone
From: David Hildenbrand <david@redhat.com>
To: "Aneesh Kumar K.V" <aneesh.kumar@linux.ibm.com>,
 linux-kernel@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>
References: <20191001144011.3801-1-david@redhat.com>
 <20191001144011.3801-2-david@redhat.com>
 <933f9cd8-9a32-8566-bd97-7e475a009275@redhat.com>
 <09b61ab1-6099-d825-8e04-fbfb43abe4d2@redhat.com>
 <cb6807a4-93c8-3964-bd65-e7087a0c7bf1@linux.ibm.com>
 <6e71cd24-7696-e7ca-15a1-8f126b0860ee@redhat.com>
 <25a72fa3-9859-3fdb-ffd3-deb7bf154fe0@redhat.com>
Openpgp: preference=signencrypt
Autocrypt: addr=david@redhat.com; prefer-encrypt=mutual; keydata=
 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
 SE+xAvmumFBY
Organization: Red Hat GmbH
Message-ID: <fea623a4-4c6a-c5f2-753b-41188ecccc0a@redhat.com>
Date: Fri, 4 Oct 2019 11:33:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <25a72fa3-9859-3fdb-ffd3-deb7bf154fe0@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Fri, 04 Oct 2019 09:33:04 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_023304_455399_9E5DE52A 
X-CRM114-Status: GOOD (  25.87  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-s390@vger.kernel.org, linux-ia64@vger.kernel.org,
 Ira Weiny <ira.weiny@intel.com>, linux-sh@vger.kernel.org,
 Jason Gunthorpe <jgg@ziepe.ca>, Logan Gunthorpe <logang@deltatee.com>,
 Pankaj Gupta <pagupta@redhat.com>, linux-mm@kvack.org,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04.10.19 11:03, David Hildenbrand wrote:
> On 04.10.19 11:00, David Hildenbrand wrote:
>> On 03.10.19 18:48, Aneesh Kumar K.V wrote:
>>> On 10/1/19 8:33 PM, David Hildenbrand wrote:
>>>> On 01.10.19 16:57, David Hildenbrand wrote:
>>>>> On 01.10.19 16:40, David Hildenbrand wrote:
>>>>>> From: "Aneesh Kumar K.V" <aneesh.kumar@linux.ibm.com>
>>>>>>
>>>>>> With altmap, all the resource pfns are not initialized. While initializing
>>>>>> pfn, altmap reserve space is skipped. Hence when removing pfn from zone
>>>>>> skip pfns that were never initialized.
>>>>>>
>>>>>> Update memunmap_pages to calculate start and end pfn based on altmap
>>>>>> values. This fixes a kernel crash that is observed when destroying
>>>>>> a namespace.
>>>>>>
>>>>>> [   81.356173] kernel BUG at include/linux/mm.h:1107!
>>>>>> cpu 0x1: Vector: 700 (Program Check) at [c000000274087890]
>>>>>>      pc: c0000000004b9728: memunmap_pages+0x238/0x340
>>>>>>      lr: c0000000004b9724: memunmap_pages+0x234/0x340
>>>>>> ...
>>>>>>      pid   = 3669, comm = ndctl
>>>>>> kernel BUG at include/linux/mm.h:1107!
>>>>>> [c000000274087ba0] c0000000009e3500 devm_action_release+0x30/0x50
>>>>>> [c000000274087bc0] c0000000009e4758 release_nodes+0x268/0x2d0
>>>>>> [c000000274087c30] c0000000009dd144 device_release_driver_internal+0x174/0x240
>>>>>> [c000000274087c70] c0000000009d9dfc unbind_store+0x13c/0x190
>>>>>> [c000000274087cb0] c0000000009d8a24 drv_attr_store+0x44/0x60
>>>>>> [c000000274087cd0] c0000000005a7470 sysfs_kf_write+0x70/0xa0
>>>>>> [c000000274087d10] c0000000005a5cac kernfs_fop_write+0x1ac/0x290
>>>>>> [c000000274087d60] c0000000004be45c __vfs_write+0x3c/0x70
>>>>>> [c000000274087d80] c0000000004c26e4 vfs_write+0xe4/0x200
>>>>>> [c000000274087dd0] c0000000004c2a6c ksys_write+0x7c/0x140
>>>>>> [c000000274087e20] c00000000000bbd0 system_call+0x5c/0x68
>>>>>>
>>>>>> Cc: Dan Williams <dan.j.williams@intel.com>
>>>>>> Cc: Andrew Morton <akpm@linux-foundation.org>
>>>>>> Cc: Jason Gunthorpe <jgg@ziepe.ca>
>>>>>> Cc: Logan Gunthorpe <logang@deltatee.com>
>>>>>> Cc: Ira Weiny <ira.weiny@intel.com>
>>>>>> Reviewed-by: Pankaj Gupta <pagupta@redhat.com>
>>>>>> Signed-off-by: Aneesh Kumar K.V <aneesh.kumar@linux.ibm.com>
>>>>>> [ move all pfn-realted declarations into a single line ]
>>>>>> Signed-off-by: David Hildenbrand <david@redhat.com>
>>>>>> ---
>>>>>>   mm/memremap.c | 13 ++++++++-----
>>>>>>   1 file changed, 8 insertions(+), 5 deletions(-)
>>>>>>
>>>>>> diff --git a/mm/memremap.c b/mm/memremap.c
>>>>>> index 557e53c6fb46..026788b2ac69 100644
>>>>>> --- a/mm/memremap.c
>>>>>> +++ b/mm/memremap.c
>>>>>> @@ -123,7 +123,7 @@ static void dev_pagemap_cleanup(struct dev_pagemap *pgmap)
>>>>>>   void memunmap_pages(struct dev_pagemap *pgmap)
>>>>>>   {
>>>>>>   	struct resource *res = &pgmap->res;
>>>>>> -	unsigned long pfn;
>>>>>> +	unsigned long pfn, nr_pages, start_pfn, end_pfn;
>>>>>>   	int nid;
>>>>>>   
>>>>>>   	dev_pagemap_kill(pgmap);
>>>>>> @@ -131,14 +131,17 @@ void memunmap_pages(struct dev_pagemap *pgmap)
>>>>>>   		put_page(pfn_to_page(pfn));
>>>>>>   	dev_pagemap_cleanup(pgmap);
>>>>>>   
>>>>>> +	start_pfn = pfn_first(pgmap);
>>>>>> +	end_pfn = pfn_end(pgmap);
>>>>>> +	nr_pages = end_pfn - start_pfn;
>>>>>> +
>>>>>>   	/* pages are dead and unused, undo the arch mapping */
>>>>>> -	nid = page_to_nid(pfn_to_page(PHYS_PFN(res->start)));
>>>>>> +	nid = page_to_nid(pfn_to_page(start_pfn));
>>>>>>   
>>>>>>   	mem_hotplug_begin();
>>>>>>   	if (pgmap->type == MEMORY_DEVICE_PRIVATE) {
>>>>>> -		pfn = PHYS_PFN(res->start);
>>>>>> -		__remove_pages(page_zone(pfn_to_page(pfn)), pfn,
>>>>>> -				 PHYS_PFN(resource_size(res)), NULL);
>>>>>> +		__remove_pages(page_zone(pfn_to_page(start_pfn)), start_pfn,
>>>>>> +			       nr_pages, NULL);
>>>>>>   	} else {
>>>>>>   		arch_remove_memory(nid, res->start, resource_size(res),
>>>>>>   				pgmap_altmap(pgmap));
>>>>>>
>>>>>
>>>>> Aneesh, I was wondering why the use of "res->start" is correct (and we
>>>>> shouldn't also witch to start_pfn/nr_pages here. It would be good if Dan
>>>>> could review.
>>>>>
>>>>
>>>> To be more precise, I wonder if it should actually be
>>>>
>>>> __remove_pages(page_zone(pfn_to_page(start_pfn)), res->start,
>>>>                 resource_size(res))
>>>>
>>>
>>> yes, that would be make it much clear.
>>>
>>> But for MEMORY_DEVICE_PRIVATE start_pfn and pfn should be same?
>>
>> Okay, let's recap. We should call add_pages()/__remove_pages()
>> and arch_add_memory()/arch_remove_memory() with the exact same ranges.
>>
>> So with PHYS_PFN(res->start) and PHYS_PFN(resource_size(res)
>>
>> Now, only a subset of the pages gets actually initialized,
>> meaning the NID and the ZONE we read could be stale.
>> That, we have to fix.
>>
>> What about something like this (am I missing something?):
>>
>> From d77b5c50f86570819a437517a897cc40ed29eefb Mon Sep 17 00:00:00 2001
>> From: "Aneesh Kumar K.V" <aneesh.kumar@linux.ibm.com>
>> Date: Fri, 27 Sep 2019 16:02:24 +0530
>> Subject: [PATCH] mm/memunmap: Don't access uninitialized memmap in
>>  memunmap_pages()
>>
>> With an altmap, the memmap falling into the reserved altmap space are
>> not initialized and, therefore, contain a garbage NID and a garbage
>> zone. Make sure to read the NID/zone from a memmap that was initialzed.
>>
>> This fixes a kernel crash that is observed when destroying a namespace:
>>
>> [   81.356173] kernel BUG at include/linux/mm.h:1107!
>> cpu 0x1: Vector: 700 (Program Check) at [c000000274087890]
>>     pc: c0000000004b9728: memunmap_pages+0x238/0x340
>>     lr: c0000000004b9724: memunmap_pages+0x234/0x340
>> ...
>>     pid   = 3669, comm = ndctl
>> kernel BUG at include/linux/mm.h:1107!
>> [c000000274087ba0] c0000000009e3500 devm_action_release+0x30/0x50
>> [c000000274087bc0] c0000000009e4758 release_nodes+0x268/0x2d0
>> [c000000274087c30] c0000000009dd144 device_release_driver_internal+0x174/0x240
>> [c000000274087c70] c0000000009d9dfc unbind_store+0x13c/0x190
>> [c000000274087cb0] c0000000009d8a24 drv_attr_store+0x44/0x60
>> [c000000274087cd0] c0000000005a7470 sysfs_kf_write+0x70/0xa0
>> [c000000274087d10] c0000000005a5cac kernfs_fop_write+0x1ac/0x290
>> [c000000274087d60] c0000000004be45c __vfs_write+0x3c/0x70
>> [c000000274087d80] c0000000004c26e4 vfs_write+0xe4/0x200
>> [c000000274087dd0] c0000000004c2a6c ksys_write+0x7c/0x140
>> [c000000274087e20] c00000000000bbd0 system_call+0x5c/0x68
>>
>> Cc: Dan Williams <dan.j.williams@intel.com>
>> Cc: Andrew Morton <akpm@linux-foundation.org>
>> Cc: Jason Gunthorpe <jgg@ziepe.ca>
>> Cc: Logan Gunthorpe <logang@deltatee.com>
>> Cc: Ira Weiny <ira.weiny@intel.com>
>> Signed-off-by: Aneesh Kumar K.V <aneesh.kumar@linux.ibm.com>
>> [ minimze code changes, rephrase description ]
>> Signed-off-by: David Hildenbrand <david@redhat.com>
>> ---
>>  mm/memremap.c | 11 +++++++----
>>  1 file changed, 7 insertions(+), 4 deletions(-)
>>
>> diff --git a/mm/memremap.c b/mm/memremap.c
>> index 557e53c6fb46..8b11c0da345c 100644
>> --- a/mm/memremap.c
>> +++ b/mm/memremap.c
>> @@ -123,6 +123,7 @@ static void dev_pagemap_cleanup(struct dev_pagemap *pgmap)
>>  void memunmap_pages(struct dev_pagemap *pgmap)
>>  {
>>  	struct resource *res = &pgmap->res;
>> +	struct page *first_page;
>>  	unsigned long pfn;
>>  	int nid;
>>  
>> @@ -131,14 +132,16 @@ void memunmap_pages(struct dev_pagemap *pgmap)
>>  		put_page(pfn_to_page(pfn));
>>  	dev_pagemap_cleanup(pgmap);
>>  
>> +	/* make sure to access a memmap that was actually initialized */
>> +	first_page = pfn_to_page(pfn_first(pgmap));
>> +
>>  	/* pages are dead and unused, undo the arch mapping */
>> -	nid = page_to_nid(pfn_to_page(PHYS_PFN(res->start)));
>> +	nid = page_to_nid(first_page);
>>  
>>  	mem_hotplug_begin();
>>  	if (pgmap->type == MEMORY_DEVICE_PRIVATE) {
>> -		pfn = PHYS_PFN(res->start);
>> -		__remove_pages(page_zone(pfn_to_page(pfn)), pfn,
>> -				 PHYS_PFN(resource_size(res)), NULL);
>> +		__remove_pages(page_zone(first_page), res->start,
>> +			       resource_size(res), NULL);
> 
> Keeping the PHYS_PFN() calls of course ...
> 
>>  	} else {
>>  		arch_remove_memory(nid, res->start, resource_size(res),
>>  				pgmap_altmap(pgmap));
>>
> 
> 

The current state (with the modified patch) can be found at:
	https://github.com/davidhildenbrand/linux/tree/zone_offline

@Aneesh, It would be great if you could test the namespace removal
thingy and tell me if we are still missing something :)

-- 

Thanks,

David / dhildenb

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
