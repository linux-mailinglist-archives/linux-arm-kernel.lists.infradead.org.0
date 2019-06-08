Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39FEE39ADB
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 06:22:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KfXCdXK0ujSeq3xDfwH8Z8Dx/s0MWbyLbvuePmNpbis=; b=MmeNeNOXjmDg3J
	6p263PLinn6z/WzP1oHQkM8+0SRyma5IlOjMzP9aD7V4rSGKec8uXv27eeQy26xAFSk1KQWm6afwP
	YrHFup8MVNE/LNWx0uQ4zxwy9PKDO5ft0oOKQ5BRxROMDjiQsV3iwljGlCznovQ1CDtN0x2RXqbyT
	Xli6g8BhZVbb2HJIl6szx75Dj/hEc7kmvl1aZ95jo9k9yNkYZG5mLwB9PEyaJz0t/vYQDLGY/lQEu
	+wEWyMXTAURtsJN0PpfwCCfklzH4JlaIwoeCmJ9MKl/jM+2O/2ZItVGK1SehLtypo0P8R3J8cMPcD
	JpxAi9v+0PqQXwrIWdWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZSsU-0004qj-C8; Sat, 08 Jun 2019 04:22:50 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZSsF-0004pL-Gw
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Jun 2019 04:22:37 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id A743C53F4D0FF13F8075;
 Sat,  8 Jun 2019 12:22:23 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0; Sat, 8 Jun 2019
 12:22:22 +0800
Subject: Re: [PATCH v11 0/3] remain and optimize memblock_next_valid_pfn on
 arm and arm64
To: Will Deacon <will.deacon@arm.com>, Ard Biesheuvel <ard.biesheuvel@arm.com>
References: <1534907237-2982-1-git-send-email-jia.he@hxt-semitech.com>
 <CAKv+Gu9u8RcrzSHdgXiqHS9HK1aSrjbPxVUSCP0DT4erAhx0pw@mail.gmail.com>
 <20180907144447.GD12788@arm.com>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <84b8e874-2a52-274c-4806-968470e66a08@huawei.com>
Date: Sat, 8 Jun 2019 12:22:13 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <20180907144447.GD12788@arm.com>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_212236_026780_D6A5CD5E 
X-CRM114-Status: GOOD (  26.89  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Michal Hocko <mhocko@suse.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Kemi Wang <kemi.wang@intel.com>,
 Wei Yang <richard.weiyang@gmail.com>, Linux-MM <linux-mm@kvack.org>,
 Eugeniu Rosca <erosca@de.adit-jv.com>, Petr Tesarik <ptesarik@suse.com>,
 Nikolay Borisov <nborisov@suse.com>, Russell King <linux@armlinux.org.uk>,
 Daniel Jordan <daniel.m.jordan@oracle.com>, AKASHI
 Takahiro <takahiro.akashi@linaro.org>, Mel Gorman <mgorman@suse.de>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, Laura Abbott <labbott@redhat.com>,
 Daniel Vacek <neelx@redhat.com>, Vladimir Murzin <vladimir.murzin@arm.com>,
 Kees Cook <keescook@chromium.org>, Vlastimil Babka <vbabka@suse.cz>,
 Johannes Weiner <hannes@cmpxchg.org>,
 YASUAKI ISHIMATSU <yasu.isimatu@gmail.com>, Jia He <jia.he@hxt-semitech.com>,
 Jia He <hejianet@gmail.com>, Gioh Kim <gi-oh.kim@profitbricks.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Steve Capper <steve.capper@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 James Morse <james.morse@arm.com>, Philip Derrin <philip@cog.systems>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ard, Will,

This week we were trying to debug an issue of time consuming in mem_init(),
and leading to this similar solution form Jia He, so I would like to bring this
thread back, please see my detail test result below.

On 2018/9/7 22:44, Will Deacon wrote:
> On Thu, Sep 06, 2018 at 01:24:22PM +0200, Ard Biesheuvel wrote:
>> On 22 August 2018 at 05:07, Jia He <hejianet@gmail.com> wrote:
>>> Commit b92df1de5d28 ("mm: page_alloc: skip over regions of invalid pfns
>>> where possible") optimized the loop in memmap_init_zone(). But it causes
>>> possible panic bug. So Daniel Vacek reverted it later.
>>>
>>> But as suggested by Daniel Vacek, it is fine to using memblock to skip
>>> gaps and finding next valid frame with CONFIG_HAVE_ARCH_PFN_VALID.
>>>
>>> More from what Daniel said:
>>> "On arm and arm64, memblock is used by default. But generic version of
>>> pfn_valid() is based on mem sections and memblock_next_valid_pfn() does
>>> not always return the next valid one but skips more resulting in some
>>> valid frames to be skipped (as if they were invalid). And that's why
>>> kernel was eventually crashing on some !arm machines."
>>>
>>> About the performance consideration:
>>> As said by James in b92df1de5,
>>> "I have tested this patch on a virtual model of a Samurai CPU with a
>>> sparse memory map.  The kernel boot time drops from 109 to 62 seconds."
>>> Thus it would be better if we remain memblock_next_valid_pfn on arm/arm64.
>>>
>>> Besides we can remain memblock_next_valid_pfn, there is still some room
>>> for improvement. After this set, I can see the time overhead of memmap_init
>>> is reduced from 27956us to 13537us in my armv8a server(QDF2400 with 96G
>>> memory, pagesize 64k). I believe arm server will benefit more if memory is
>>> larger than TBs
>>>
>>
>> OK so we can summarize the benefits of this series as follows:
>> - boot time on a virtual model of a Samurai CPU drops from 109 to 62 seconds
>> - boot time on a QDF2400 arm64 server with 96 GB of RAM drops by ~15
>> *milliseconds*
>>
>> Google was not very helpful in figuring out what a Samurai CPU is and
>> why we should care about the boot time of Linux running on a virtual
>> model of it, and the 15 ms speedup is not that compelling either.

Testing this patch set on top of Kunpeng 920 based ARM64 server, with
384G memory in total, we got the time consuming below

             without this patch set      with this patch set
mem_init()        13310ms                      1415ms

So we got about 8x speedup on this machine, which is very impressive.

The time consuming is related the memory DIMM size and where to locate those
memory DIMMs in the slots. In above case, we are using 16G memory DIMM.
We also tested 1T memory with 64G size for each memory DIMM on another ARM64
machine, the time consuming reduced from 20s to 2s (I think it's related to
firmware implementations).

>>
>> Apologies to Jia that it took 11 revisions to reach this conclusion,
>> but in /my/ opinion, tweaking the fragile memblock/pfn handling code
>> for this reason is totally unjustified, and we're better off
>> disregarding these patches.

Indeed this patch set has a bug, For exampe, if we have 3 regions which
is [a, b] [c, d] [e, f] if address of pfn is bigger than the end address of
last region, we will increase early_region_idx to count of region, which is
out of bound of the regions. Fixed by patch below,

 mm/memblock.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/mm/memblock.c b/mm/memblock.c
index 8279295..8283bf0 100644
--- a/mm/memblock.c
+++ b/mm/memblock.c
@@ -1252,13 +1252,17 @@ unsigned long __init_memblock memblock_next_valid_pfn(unsigned long pfn)
 		if (pfn >= start_pfn && pfn < end_pfn)
 			return pfn;

-		early_region_idx++;
+		/* try slow path */
+		if (++early_region_idx == type->cnt)
+			goto slow_path;
+
 		next_start_pfn = PFN_DOWN(regions[early_region_idx].base);

 		if (pfn >= end_pfn && pfn <= next_start_pfn)
 			return next_start_pfn;
 	}

+slow_path:
 	/* slow path, do the binary searching */
 	do {
 		mid = (right + left) / 2;

As the really impressive speedup on our ARM64 server system, could you reconsider
this patch set for merge? if you want more data I'm willing to clarify and give
more test.

Thanks
Hanjun


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
