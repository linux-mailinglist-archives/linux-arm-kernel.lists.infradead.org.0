Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3696FC8EEB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 18:46:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wWyEEAGxvk7dqQOl/zW0EWXvepDB7IeJd6KLiwwpJm8=; b=L5PBzfQZRWCioxFKS2wkKycq6
	kGX/52Iu/K4erIxwF1xyaQnlzOTIoQXqhDuxd3maVNQyftXH3W+5bf7sqrAFnvXLmobVghznZBtte
	Z688l2HEDV0fm35y4NRfs5GwB4+262fcfvgx5+Kd1lUdyrjIQqsyfv+gU5v75lXQ1tOjbiFqGFqGR
	/QIZcqYNHGwDdKyxRdm2tQCAgsI8NAktMkEWF6mRFaHrVpmuH/4E8D9EyBNCyFbnohIwZozL1xb57
	Ia0IfChWATz2VSw1t5yasHJInze0xC/W5gdV+HM3UW1gTGjHfk7Jw8K8FJhK3RViosxDuj+B4ORgR
	OQJyayMfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFhlv-0006Ne-LE; Wed, 02 Oct 2019 16:46:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFhkx-0005X6-Gy
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 16:45:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 60ACE1000;
 Wed,  2 Oct 2019 09:45:38 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3F6193F706;
 Wed,  2 Oct 2019 09:45:37 -0700 (PDT)
Subject: Re: [PATCH 3/4] dma-mapping: introduce a dma_common_find_pages helper
To: Geert Uytterhoeven <geert@linux-m68k.org>, Christoph Hellwig <hch@lst.de>
References: <20190830062924.21714-1-hch@lst.de>
 <20190830062924.21714-4-hch@lst.de>
 <CAMuHMdXxWp2=9n2LQA9KVH_ArOUnY78ZoiQ7ZsDMbTOGsEz4hw@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <ce6671a1-ebfe-22a8-d8c6-91b6692186f2@arm.com>
Date: Wed, 2 Oct 2019 17:45:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAMuHMdXxWp2=9n2LQA9KVH_ArOUnY78ZoiQ7ZsDMbTOGsEz4hw@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_094539_687033_9293DEF6 
X-CRM114-Status: GOOD (  29.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-xtensa@linux-xtensa.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Linux MM <linux-mm@kvack.org>, Linux IOMMU <iommu@lists.linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02/10/2019 13:05, Geert Uytterhoeven wrote:
> Hi Christoph,
> 
> On Fri, Aug 30, 2019 at 8:30 AM Christoph Hellwig <hch@lst.de> wrote:
>> A helper to find the backing page array based on a virtual address.
>> This also ensures we do the same vm_flags check everywhere instead
>> of slightly different or missing ones in a few places.
>>
>> Signed-off-by: Christoph Hellwig <hch@lst.de>
> 
> This is now commit 5cf4537975bbd569 ("dma-mapping: introduce a
> dma_common_find_pages helper") in v5.4-rc1, and causes the following
> warning during s2ram on r8a7740/armadillo, r7s72100/rskrza1, and
> r7s9210/rza2mevb:
> 
>       sh-eth e9a00000.ethernet eth0: Link is Down
>      +------------[ cut here ]------------
>      +WARNING: CPU: 0 PID: 556 at kernel/dma/remap.c:93
> remap_allocator_free+0x20/0x30
>      +trying to free invalid coherent area: 6909579a
>      +Modules linked in:
>      +CPU: 0 PID: 556 Comm: s2ram Not tainted
> 5.3.0-rc6-armadillo-00027-g5cf4537975bbd569-dirty #113
>      +Hardware name: Generic R8A7740 (Flattened Device Tree)
>      +[<c010d4b8>] (unwind_backtrace) from [<c010b4d0>] (show_stack+0x10/0x14)
>      +[<c010b4d0>] (show_stack) from [<c011d978>] (__warn+0xec/0x104)
>      +[<c011d978>] (__warn) from [<c011d9d4>] (warn_slowpath_fmt+0x44/0x6c)
>      +[<c011d9d4>] (warn_slowpath_fmt) from [<c011123c>]
> (remap_allocator_free+0x20/0x30)
>      +[<c011123c>] (remap_allocator_free) from [<c0111cc4>]
> (__arm_dma_free.constprop.2+0x114/0x144)
>      +[<c0111cc4>] (__arm_dma_free.constprop.2) from [<c03f193c>]
> (sh_eth_ring_free+0xb8/0x114)
>      +[<c03f193c>] (sh_eth_ring_free) from [<c03f1a00>] (sh_eth_close+0x68/0x8c)
>      +[<c03f1a00>] (sh_eth_close) from [<c03f1f6c>] (sh_eth_resume+0x44/0x90)
>      +[<c03f1f6c>] (sh_eth_resume) from [<c03b7d3c>] (dpm_run_callback+0x64/0xdc)
>      +[<c03b7d3c>] (dpm_run_callback) from [<c03b80c0>]
> (device_resume+0xbc/0x180)
>      +[<c03b80c0>] (device_resume) from [<c03b89b0>] (dpm_resume+0x124/0x1b0)
>      +[<c03b89b0>] (dpm_resume) from [<c03b8c5c>] (dpm_resume_end+0xc/0x18)
>      +[<c03b8c5c>] (dpm_resume_end) from [<c0158d2c>]
> (suspend_devices_and_enter+0x15c/0x5ac)
>      +[<c0158d2c>] (suspend_devices_and_enter) from [<c01593bc>]
> (pm_suspend+0x240/0x2f4)
>      +[<c01593bc>] (pm_suspend) from [<c0157b48>] (state_store+0x54/0x8c)
>      +[<c0157b48>] (state_store) from [<c0276ecc>] (kernfs_fop_write+0x154/0x1c8)
>      +[<c0276ecc>] (kernfs_fop_write) from [<c0209f74>] (__vfs_write+0x28/0xe0)
>      +[<c0209f74>] (__vfs_write) from [<c020acc0>] (vfs_write+0x98/0xbc)
>      +[<c020acc0>] (vfs_write) from [<c020ae48>] (ksys_write+0x68/0xb4)
>      +[<c020ae48>] (ksys_write) from [<c0101000>] (ret_fast_syscall+0x0/0x28)
>      +Exception stack(0xdd74dfa8 to 0xdd74dff0)
>      +dfa0:                   00000004 000e2408 00000001 000e2408
> 00000004 00000000
>      +dfc0: 00000004 000e2408 b6f36d60 00000004 000e2408 00000004
> 00000000 00000000
>      +dfe0: 00000000 be9fc74c b6e991bb b6ed5af6
>      +irq event stamp: 0
>      +hardirqs last  enabled at (0): [<00000000>] 0x0
>      +hardirqs last disabled at (0): [<c011b73c>] copy_process+0x520/0x14b8
>      +softirqs last  enabled at (0): [<c011b73c>] copy_process+0x520/0x14b8
>      +softirqs last disabled at (0): [<00000000>] 0x0
>      +---[ end trace 22461a068edbf2c1 ]---
>      +------------[ cut here ]------------
>      +WARNING: CPU: 0 PID: 556 at kernel/dma/remap.c:93
> remap_allocator_free+0x20/0x30
>      +trying to free invalid coherent area: f39c52ba
> 
>       [...]
> 
>      +---[ end trace 22461a068edbf2c2 ]---
>       SMSC LAN8710/LAN8720 e9a00000.ethernet-ffffffff:00: attached PHY
> driver [SMSC LAN8710/LAN8720]
> (mii_bus:phy_addr=e9a00000.ethernet-ffffffff:00, irq=POLL)
> 
> (the dirty is due to the need for "ARM: fix __get_user_check() in case
>   uaccess_* calls are not inlined").
> 
> BTW, I cannot trigger the issue on r8a7791/koelsch, which also uses
> sh-eth, not even when disabling CONFIG_IOMMU_SUPPORT and CONFIG_ARM_LPAE
> (both are not set for the affected platforms).
> 
>> --- a/drivers/iommu/dma-iommu.c
>> +++ b/drivers/iommu/dma-iommu.c
>> @@ -541,15 +541,6 @@ static struct page **__iommu_dma_alloc_pages(struct device *dev,
>>          return pages;
>>   }
>>
>> -static struct page **__iommu_dma_get_pages(void *cpu_addr)
>> -{
>> -       struct vm_struct *area = find_vm_area(cpu_addr);
>> -
>> -       if (!area || !area->pages)
> 
> This checks area->pages...

32-bit Arm doesn't use iommu-dma, so I don't see how this could be 
relevant to the reported problem, but either way this "check" of 
area->pages...

>> -               return NULL;
>> -       return area->pages;
>> -}
>> -
>>   /**
>>    * iommu_dma_alloc_remap - Allocate and map a buffer contiguous in IOVA space
>>    * @dev: Device to allocate memory for. Must be a real device
>> @@ -938,7 +929,7 @@ static void __iommu_dma_free(struct device *dev, size_t size, void *cpu_addr)
>>                   * If it the address is remapped, then it's either non-coherent
>>                   * or highmem CMA, or an iommu_dma_alloc_remap() construction.
>>                   */
>> -               pages = __iommu_dma_get_pages(cpu_addr);
>> +               pages = dma_common_find_pages(cpu_addr);
>>                  if (!pages)
>>                          page = vmalloc_to_page(cpu_addr);
>>                  dma_common_free_remap(cpu_addr, alloc_size);
>> @@ -1045,7 +1036,7 @@ static int iommu_dma_mmap(struct device *dev, struct vm_area_struct *vma,
>>                  return -ENXIO;
>>
>>          if (IS_ENABLED(CONFIG_DMA_REMAP) && is_vmalloc_addr(cpu_addr)) {
>> -               struct page **pages = __iommu_dma_get_pages(cpu_addr);
>> +               struct page **pages = dma_common_find_pages(cpu_addr);
>>
>>                  if (pages)
>>                          return __iommu_dma_mmap(pages, size, vma);
>> @@ -1067,7 +1058,7 @@ static int iommu_dma_get_sgtable(struct device *dev, struct sg_table *sgt,
>>          int ret;
>>
>>          if (IS_ENABLED(CONFIG_DMA_REMAP) && is_vmalloc_addr(cpu_addr)) {
>> -               struct page **pages = __iommu_dma_get_pages(cpu_addr);
>> +               struct page **pages = dma_common_find_pages(cpu_addr);
>>
>>                  if (pages) {
>>                          return sg_alloc_table_from_pages(sgt, pages,
> 
>> --- a/kernel/dma/remap.c
>> +++ b/kernel/dma/remap.c
>> @@ -11,6 +11,15 @@
>>   #include <linux/slab.h>
>>   #include <linux/vmalloc.h>
>>
>> +struct page **dma_common_find_pages(void *cpu_addr)
>> +{
>> +       struct vm_struct *area = find_vm_area(cpu_addr);
>> +
>> +       if (!area || area->flags != VM_DMA_COHERENT)
> 
> ... while this one checks area->flags?
> 
>> +               return NULL;
>> +       return area->pages;

...remains inherent in this statement ;)

Introducing the additional area->flags check is rather the point of the 
patch. As to how it could affect the behaviour of 
remap_allocator_{alloc,free}(), that probably warrants some more digging 
in the arch/arm code. Having looked briefly to see if anything jumped 
out, I do notice that for the dma_common_contiguous_remap() case we're 
now relying on a dangling pointer to a long-gone kernel stack in 
area->pages to pass the check in dma_common_free_remap() - I can't see 
that that has any bearing on the reported issue, but it is a bit icky.

Robin.

>> +}
>> +
>>   static struct vm_struct *__dma_common_pages_remap(struct page **pages,
>>                          size_t size, pgprot_t prot, const void *caller)
>>   {
> 
> Gr{oetje,eeting}s,
> 
>                          Geert
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
