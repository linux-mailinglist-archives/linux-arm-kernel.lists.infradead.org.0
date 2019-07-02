Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1544C5D292
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 17:18:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=avkUlzyKkp/6URUc9ikQjKXGpuPkVnp3uUpPLhqyvLE=; b=TgfTTuUXw0f3J3
	0JqTtdTpVYL1P8tFuNj+P5fOVZF4W3Mj+66BKPpDUrQK6BWGw0KkTQznMJ7bfSG1qNAD/OFdf9WvQ
	P3qcQcphOCGiVM+bnFdhDoc4JMLcMlWHkKnhHblFW3nxozAbAM6EKRAh8uoZ7CCJ0YiPsMmt4YpY9
	s299+2WGwqbPAjo4qazH0YE/Owt1NQuDaQnRwWe/KNC6vUypWB454zctRubBZDaDSoitHcNR+N/TL
	BkiQFYi8DCrGxFzEDA7vOq8ZQ/7ZwLevYgWhZev6XIZhFGyInRqvwIvm1CtSJuxxf6IS6nj7zoRYu
	AsvfYO/UL+Ugj7K0ITyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiKYC-0004cI-2a; Tue, 02 Jul 2019 15:18:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hiKXz-0004bW-Ds
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 15:18:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9C99328;
 Tue,  2 Jul 2019 08:18:18 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E647C3F246;
 Tue,  2 Jul 2019 08:18:15 -0700 (PDT)
Subject: Re: [PATCH] remove the initrd resource in /proc/iomem as the initrd
 has freed the reserved memblock.
To: Yi Wang <wang.yi59@zte.com.cn>
References: <1562063693-1541-1-git-send-email-wang.yi59@zte.com.cn>
From: James Morse <james.morse@arm.com>
Message-ID: <0bb7eebf-0db9-50d1-b5fc-41e2f0083b15@arm.com>
Date: Tue, 2 Jul 2019 16:18:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1562063693-1541-1-git-send-email-wang.yi59@zte.com.cn>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_081819_554992_7CFFC31B 
X-CRM114-Status: GOOD (  23.43  )
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
Cc: f.fainelli@gmail.com, jiang.xuexin@zte.com.cn, david@redhat.com,
 catalin.marinas@arm.com, will.deacon@arm.com, robin.murphy@arm.com,
 linux-kernel@vger.kernel.org, rppt@linux.vnet.ibm.com, xue.zhihong@zte.com.cn,
 hannes@cmpxchg.org, Junhua Huang <huang.junhua@zte.com.cn>,
 akpm@linux-foundation.org, logang@deltatee.com,
 linux-arm-kernel@lists.infradead.org, ghackmann@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On 02/07/2019 11:34, Yi Wang wrote:
> From: Junhua Huang <huang.junhua@zte.com.cn>
> 
> The 'commit 50d7ba36b916 ("arm64: export memblock_reserve()d regions via /proc/iomem")'
> show the reserved memblock in /proc/iomem. But the initrd's reserved memblock
> will be freed in free_initrd_mem(), which executes after the reserve_memblock_reserved_regions().
> So there are some incorrect information shown in /proc/iomem. e.g.:
> 80000000-bbdfffff : System RAM
>   80080000-813effff : Kernel code
>   813f0000-8156ffff : reserved
>   81570000-817fcfff : Kernel data
>   83400000-83ffffff : reserved
>   90000000-90004fff : reserved
>   b0000000-b2618fff : reserved
>   b8c00000-bbbfffff : reserved
> In this case, the range from b0000000 to b2618fff is reserved for initrd, which should be
> clean from the resource tree after it was freed.

(There was some discussion about this over-estimate on the list, but it didn't make it
into the commit message.) I think a reserved->free change is fine. If user-space thinks
its still reserved nothing bad happens.


> As kexec-tool will collect the iomem reserved info 
> and use it in second kernel, which causes error message generated a second time.

What error message?

These second-level reserved regions are to avoid kexec overwriting ACPI tables, or bits of
the UEFI memory map with its data.

The second kernel should not expect to find the initramfs here...


> At the same time, we should free the reserved memblock in an aligned manner because 
> the initrd reserves the memblock in an aligned manner in arm64_memblock_init(). 
> Otherwise there are some fragments in memblock_reserved regions. e.g.:
> /sys/kernel/debug/memblock # cat reserved 
>    0: 0x0000000080080000..0x00000000817fafff
>    1: 0x0000000083400000..0x0000000083ffffff
>    2: 0x0000000090000000..0x000000009000407f
>    3: 0x00000000b0000000..0x00000000b000003f
>    4: 0x00000000b26184ea..0x00000000b2618fff
> The fragments like the ranges from b0000000 to b000003f and from b26184ea to b2618fff 
> should be freed.

I agree we should fix this. Could it be done as a separate patch, as this is a different
issue?


> diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
> index d2adffb81b5d..14ba8113eab5 100644
> --- a/arch/arm64/mm/init.c
> +++ b/arch/arm64/mm/init.c
> @@ -580,8 +580,16 @@ void free_initmem(void)
>  #ifdef CONFIG_BLK_DEV_INITRD
>  void __init free_initrd_mem(unsigned long start, unsigned long end)
>  {
> +	struct resource *res = NULL;

>  	free_reserved_area((void *)start, (void *)end, 0, "initrd");

Could we do this last? This calls __free_pages(), once we've done that it could be
allocated somewhere else, but memblock and iomem still say this is reserved memory.


> -	memblock_free(__virt_to_phys(start), end - start);
> +	start = __virt_to_phys(start) & PAGE_MASK;
> +	end = PAGE_ALIGN(__virt_to_phys(end));
> +	memblock_free(start, end - start);

> +	res = lookup_resource(&iomem_resource, memblock_start_of_DRAM());
> +	if (res != NULL)

("if (res)" is the preferred style)

> +		__release_region(res, start, end - start);

Hmm, I can't see where __release_region() splits start/end out of an existing resource...

I think this means if you have memblock_reserved() pages either size of the initramfs they
get merged by memblock and put into iomem_resource as one entry. We'd hit
__release_regions()s:
|		if (res->start != start || res->end != end)
|			break;
[...]
|	printk(KERN_WARNING "Trying to free nonexistent resource "
|		"<%016llx-%016llx>\n", (unsigned long long)start,
|		(unsigned long long)end);

It looks like __release_region() is only for exactly the region you reserved. We need it
to split one resource into two, the reverse of what reserve_region_with_split() does.

I can't see a helper that would do this.


An alternative is to explicitly create an iomem_resource for the initramfs, like we do for
the kernel text/data. reserve_region_with_split() will then fill in the gaps around it if
there are any, and you can pass it to release_resource() in here instead of searching for it.

It should be possible to test by rounding the initramfs base/size in arm64_memblock_init()
by a bit more.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
