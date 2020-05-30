Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE4F01E9083
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 May 2020 12:25:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6oTbuI4QkeWPDZbdY5/87xXRVVMqzFa60JXG0LFZBgs=; b=F2XWry1dLx5O4T
	t6625rkR/tpZWuCT37yJWporxjB1fndBQIfy3r5uvuZp/7lYWIfHbDr+SggHYWCJOhDShSpxaqSp7
	nw5iiH0vs7x82HVye9XYYwPKYls0edp4T3XHkhy3DH6rZftXLbyaF2B4SS0zcV/HY0iH4KTY5FKcn
	PCtjGbtZuctqGSUbj+4PyZ1DERfXrGBa6ZRaE8bGMe0+oIm3Dp54Je4C+wSGWvrbPvhyOe37jIBjs
	NxcePqLIwKcONwn1039N2LTD41NQALAkTWHyK1rCt3GB7u3R5X6xJuHijJtTGY+aG2C3BjcZiajRs
	yGoQgVHs9kd6Ct0uNcPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeyfy-0003q9-LG; Sat, 30 May 2020 10:25:14 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeyfd-0003mz-RM
 for linux-arm-kernel@lists.infradead.org; Sat, 30 May 2020 10:24:56 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id D9A0AB18BFA3BD7B1064;
 Sat, 30 May 2020 18:24:31 +0800 (CST)
Received: from [127.0.0.1] (10.173.220.25) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.487.0; Sat, 30 May 2020
 18:24:23 +0800
Subject: Re: [PATCH v2 5/6] mm: tlb: Provide flush_*_tlb_range wrappers
To: Catalin Marinas <catalin.marinas@arm.com>
References: <20200423135656.2712-1-yezhenyu2@huawei.com>
 <20200423135656.2712-6-yezhenyu2@huawei.com> <20200522154254.GD26492@gaia>
 <ddba6d98-29b5-0748-ba74-ec022f509270@huawei.com>
 <20200526145244.GG17051@gaia>
From: Zhenyu Ye <yezhenyu2@huawei.com>
Message-ID: <0c6f79e4-f29a-d373-2e43-c4f87cf78b49@huawei.com>
Date: Sat, 30 May 2020 18:24:21 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200526145244.GG17051@gaia>
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_032454_060384_7801FF1C 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.35 listed in wl.mailspike.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, peterz@infradead.org, linux-mm@kvack.org,
 guohanjun@huawei.com, will@kernel.org, linux-arch@vger.kernel.org,
 yuzhao@google.com, aneesh.kumar@linux.ibm.com, steven.price@arm.com,
 arm@kernel.org, Dave.Martin@arm.com, arnd@arndb.de, suzuki.poulose@arm.com,
 npiggin@gmail.com, zhangshaokun@hisilicon.com, broonie@kernel.org,
 rostedt@goodmis.org, prime.zeng@hisilicon.com, kuhn.chenqun@huawei.com,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 xiexiangyou@huawei.com, linux-kernel@vger.kernel.org, maz@kernel.org,
 akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Catalin,

Sorry for taking so long to reply to you.

On 2020/5/26 22:52, Catalin Marinas wrote:
> On Mon, May 25, 2020 at 03:19:42PM +0800, Zhenyu Ye wrote:
>>
>> tlb_flush_##_pxx##_range() is used to set tlb->cleared_*,
>> flush_##_pxx##_tlb_range() will actually flush the TLB entry.
>>
>> In arch64, tlb_flush_p?d_range() is defined as:
>>
>> 	#define flush_pmd_tlb_range(vma, addr, end)	flush_tlb_range(vma, addr, end)
>> 	#define flush_pud_tlb_range(vma, addr, end)	flush_tlb_range(vma, addr, end)
> 
> Currently, flush_p??_tlb_range() are generic and defined as above. I
> think in the generic code they can remain an alias for
> flush_tlb_range().
> 
> On arm64, we can redefine them as:
> 
> #define flush_pte_tlb_range(vma, addr, end)	__flush_tlb_range(vma, addr, end, 3)
> #define flush_pmd_tlb_range(vma, addr, end)	__flush_tlb_range(vma, addr, end, 2)
> #define flush_pud_tlb_range(vma, addr, end)	__flush_tlb_range(vma, addr, end, 1)
> #define flush_p4d_tlb_range(vma, addr, end)	__flush_tlb_range(vma, addr, end, 0)
> 
> (unless the compiler optimises away all the mmu_gather stuff in your
> macro above but they don't look trivial to me)
> 

I changed generic code before considering that other structures may also
use this feature, such as Power9. And Peter may want to replace all
flush_tlb_range() by tlb_flush() in the future, see [1] for details.

If only enable this feature on aarch64, your codes are better.

[1] https://lore.kernel.org/linux-arm-kernel/20200402163849.GM20713@hirez.programming.kicks-ass.net/

> Also, I don't see the new flush_pte_* and flush_p4d_* macros used
> anywhere and I don't think they are needed. The pte equivalent is
> flush_tlb_page() (we need to make sure it's not used on a pmd in the
> hugetlb context).
> 

flush_tlb_page() is used to flush only one page.  If we add the flush_pte_tlb_range(),
then we can use it to flush a range of pages in the future.

But flush_pte_* and flush_p4d_* macros are really not used anywhere.
I will remove them in next version of series, and add them if someone needs.

>> So even if we know the level here, we can not pass the value to tlbi
>> instructions (flush_tlb_range() is a common kernel interface and retro-fit it
>> needs lots of changes), according to Peter's suggestion, I finally decide to
>> pass the value of TTL by the tlb_gather_* frame.[1]
> 
> My comment was about the generic implementation using mmu_gather as you
> are proposing. We don't need to change the flush_tlb_range() interface,
> nor do we need to rewrite flush_p??_tlb_range().
> 

Thanks,
Zhenyu



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
