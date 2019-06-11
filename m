Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39EC83D09E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 17:21:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5MGM1lWXNYWBErMO8tLK3jjShmjcwrKXvDGP4c0/mSY=; b=HZylOzp1uA/BHK
	EJ0WftFQKqUnCI/KabDjSKjJBp96bI6ZtJqPJywLQBEWhx4+IFo3+K9I+xKUcNyFc9+xLLrLggjg9
	04JH0GH+Igl1BEOr/ZY9egLe1GJSQEG2Jpvy02/R7+qsrpUvVDJudhc9uzpdR6+Wq4Z6Pf2kD+A48
	c4E/+w+MUvXd2X44NjasoO0T/5+ReIDIZGXiq79WlQ0b+K9jciQqMLtCtUt+vHS54xvbBYFhabAxC
	KvfFhyMx52k3fjew4t++oFXImLJK68NDlqrhhJR3yqQU+UybB6PQM4ByTD9Ip5USeX9dT2lN43IUx
	2M78SwBmba5/MeeDnH7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haia4-0005SB-Vy; Tue, 11 Jun 2019 15:21:01 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiZG-0003DF-Be
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 15:20:13 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 7293773B8CAD52EBAEAF;
 Tue, 11 Jun 2019 23:19:00 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.439.0; Tue, 11 Jun 2019
 23:18:57 +0800
Subject: Re: [PATCH v11 0/3] remain and optimize memblock_next_valid_pfn on
 arm and arm64
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
References: <1534907237-2982-1-git-send-email-jia.he@hxt-semitech.com>
 <CAKv+Gu9u8RcrzSHdgXiqHS9HK1aSrjbPxVUSCP0DT4erAhx0pw@mail.gmail.com>
 <20180907144447.GD12788@arm.com>
 <84b8e874-2a52-274c-4806-968470e66a08@huawei.com>
 <CAKv+Gu9fd2Y7USDYnQdUuYd9L2OD99kU4A1x1JSF442KN96TTA@mail.gmail.com>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <2de74de9-35b0-5e62-d822-1be59f0ef605@huawei.com>
Date: Tue, 11 Jun 2019 23:18:48 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <CAKv+Gu9fd2Y7USDYnQdUuYd9L2OD99kU4A1x1JSF442KN96TTA@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_082011_089987_C7381D42 
X-CRM114-Status: GOOD (  30.84  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Michal Hocko <mhocko@suse.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Wei Yang <richard.weiyang@gmail.com>, Linux-MM <linux-mm@kvack.org>,
 James Morse <james.morse@arm.com>, Eugeniu Rosca <erosca@de.adit-jv.com>,
 Petr Tesarik <ptesarik@suse.com>, Nikolay Borisov <nborisov@suse.com>,
 Jia He <hejianet@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Daniel Jordan <daniel.m.jordan@oracle.com>, AKASHI
 Takahiro <takahiro.akashi@linaro.org>, Mel Gorman <mgorman@suse.de>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, Laura Abbott <labbott@redhat.com>,
 Daniel Vacek <neelx@redhat.com>, Vladimir Murzin <vladimir.murzin@arm.com>,
 Kees Cook <keescook@chromium.org>, Philip Derrin <philip@cog.systems>,
 YASUAKI ISHIMATSU <yasu.isimatu@gmail.com>, Jia He <jia.he@hxt-semitech.com>,
 Ard Biesheuvel <ard.biesheuvel@arm.com>, Kemi Wang <kemi.wang@intel.com>,
 Vlastimil Babka <vbabka@suse.cz>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Steve Capper <steve.capper@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Gioh Kim <gi-oh.kim@profitbricks.com>, Johannes Weiner <hannes@cmpxchg.org>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Ard,

Thanks for the reply, please see my comments inline.

On 2019/6/10 21:16, Ard Biesheuvel wrote:
> On Sat, 8 Jun 2019 at 06:22, Hanjun Guo <guohanjun@huawei.com> wrote:
>>
>> Hi Ard, Will,
>>
>> This week we were trying to debug an issue of time consuming in mem_init(),
>> and leading to this similar solution form Jia He, so I would like to bring this
>> thread back, please see my detail test result below.
>>
>> On 2018/9/7 22:44, Will Deacon wrote:
>>> On Thu, Sep 06, 2018 at 01:24:22PM +0200, Ard Biesheuvel wrote:
>>>> On 22 August 2018 at 05:07, Jia He <hejianet@gmail.com> wrote:
>>>>> Commit b92df1de5d28 ("mm: page_alloc: skip over regions of invalid pfns
>>>>> where possible") optimized the loop in memmap_init_zone(). But it causes
>>>>> possible panic bug. So Daniel Vacek reverted it later.
>>>>>
>>>>> But as suggested by Daniel Vacek, it is fine to using memblock to skip
>>>>> gaps and finding next valid frame with CONFIG_HAVE_ARCH_PFN_VALID.
>>>>>
>>>>> More from what Daniel said:
>>>>> "On arm and arm64, memblock is used by default. But generic version of
>>>>> pfn_valid() is based on mem sections and memblock_next_valid_pfn() does
>>>>> not always return the next valid one but skips more resulting in some
>>>>> valid frames to be skipped (as if they were invalid). And that's why
>>>>> kernel was eventually crashing on some !arm machines."
>>>>>
>>>>> About the performance consideration:
>>>>> As said by James in b92df1de5,
>>>>> "I have tested this patch on a virtual model of a Samurai CPU with a
>>>>> sparse memory map.  The kernel boot time drops from 109 to 62 seconds."
>>>>> Thus it would be better if we remain memblock_next_valid_pfn on arm/arm64.
>>>>>
>>>>> Besides we can remain memblock_next_valid_pfn, there is still some room
>>>>> for improvement. After this set, I can see the time overhead of memmap_init
>>>>> is reduced from 27956us to 13537us in my armv8a server(QDF2400 with 96G
>>>>> memory, pagesize 64k). I believe arm server will benefit more if memory is
>>>>> larger than TBs
>>>>>
>>>>
>>>> OK so we can summarize the benefits of this series as follows:
>>>> - boot time on a virtual model of a Samurai CPU drops from 109 to 62 seconds
>>>> - boot time on a QDF2400 arm64 server with 96 GB of RAM drops by ~15
>>>> *milliseconds*
>>>>
>>>> Google was not very helpful in figuring out what a Samurai CPU is and
>>>> why we should care about the boot time of Linux running on a virtual
>>>> model of it, and the 15 ms speedup is not that compelling either.
>>
>> Testing this patch set on top of Kunpeng 920 based ARM64 server, with
>> 384G memory in total, we got the time consuming below
>>
>>              without this patch set      with this patch set
>> mem_init()        13310ms                      1415ms
>>
>> So we got about 8x speedup on this machine, which is very impressive.
>>
> 
> Yes, this is impressive. But does it matter in the grand scheme of
> things? 

It matters for this machine, because it's for storage and there is
a watchdog and the time consuming triggers the watchdog.

> How much time does this system take to arrive at this point
> from power on?

Sorry, I don't have such data, as the arch timer is not initialized
and I didn't see the time stamp at this point, but I read the cycles
from arch timer before and after the time consuming function to get
how much time consumed.

> 
>> The time consuming is related the memory DIMM size and where to locate those
>> memory DIMMs in the slots. In above case, we are using 16G memory DIMM.
>> We also tested 1T memory with 64G size for each memory DIMM on another ARM64
>> machine, the time consuming reduced from 20s to 2s (I think it's related to
>> firmware implementations).
>>
> 
> I agree that this optimization looks good in isolation, but the fact
> that you spotted a bug justifies my skepticism at the time. On the
> other hand, now that we have several independent reports (from you,
> but also from the Renesas folks) that the speedup is worthwhile for
> real world use cases, I think it does make sense to revisit it.

Thank you very much for taking care of this :)

> 
> So what I would like to see is the patch set being proposed again,
> with the new data points added for documentation. Also, the commit
> logs need to crystal clear about how the meaning of PFN validity
> differs between ARM and other architectures, and why the assumptions
> that the optimization is based on are guaranteed to hold.

I think Jia He no longer works for HXT, if don't mind, I can repost
this patch set with Jia He's authority unchanged.

Thanks
Hanjun


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
