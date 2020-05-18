Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9707F1D7867
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 14:21:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v+5jcMrRTDluBKW8XZxegCgXQPBoDeIfMdQm4lnVOA8=; b=nr4jWM3WGdUQ3B
	oY9YLlqpvwjv6AnfNA0bPF51OhSoZU7HF8KEo0/pqRSAp1RzPfUOxymUj4ao2LtY/MXkQFj3sbew/
	skr+o+Er9YRYEachAy899GXM1GQnkc/UPv+/OTd40lDskEzYDP6BO2bnnJAiiPUsWlEDyrbeR+Ut8
	DRHXYWLgEvlfy4fxg4ECCVIiwSMAirQJBFdCoxHTLvgESm3fPwmyQuDLfZ32P9jv2+Ti1/wIqALAl
	ugqz+h3n/5zEumzABoOhiVGzhBt3lZ+qdLd1R8alEWsFlJrIvAkzbngi6Lt/jv+ScitdzemhOVrN5
	1oVVZ5R+h1JaQtfjf2ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaelr-0001Pa-Ek; Mon, 18 May 2020 12:21:27 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaelg-0001OT-E7
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 12:21:18 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 34D43CE30EA30A57DDB;
 Mon, 18 May 2020 20:21:10 +0800 (CST)
Received: from [127.0.0.1] (10.173.220.25) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.487.0; Mon, 18 May 2020
 20:21:04 +0800
Subject: Re: [RFC PATCH v3 2/2] arm64: tlb: Use the TLBI RANGE feature in arm64
To: Catalin Marinas <catalin.marinas@arm.com>
References: <20200414112835.1121-1-yezhenyu2@huawei.com>
 <20200414112835.1121-3-yezhenyu2@huawei.com> <20200514152840.GC1907@gaia>
From: Zhenyu Ye <yezhenyu2@huawei.com>
Message-ID: <54468aae-dbb1-66bd-c633-82fc75936206@huawei.com>
Date: Mon, 18 May 2020 20:21:02 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200514152840.GC1907@gaia>
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_052116_799043_E190CC3C 
X-CRM114-Status: GOOD (  30.51  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.32 listed in wl.mailspike.net]
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
Cc: linux-arch@vger.kernel.org, suzuki.poulose@arm.com, maz@kernel.org,
 linux-kernel@vger.kernel.org, xiexiangyou@huawei.com, steven.price@arm.com,
 zhangshaokun@hisilicon.com, linux-mm@kvack.org, arm@kernel.org,
 prime.zeng@hisilicon.com, guohanjun@huawei.com, olof@lixom.net,
 kuhn.chenqun@huawei.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Catalin,

Thanks for your review.

On 2020/5/14 23:28, Catalin Marinas wrote:
> Hi Zhenyu,
> 
> On Tue, Apr 14, 2020 at 07:28:35PM +0800, Zhenyu Ye wrote:
>> diff --git a/arch/arm64/include/asm/tlb.h b/arch/arm64/include/asm/tlb.h
>> index b76df828e6b7..3a1816770bd1 100644
>> --- a/arch/arm64/include/asm/tlb.h
>> +++ b/arch/arm64/include/asm/tlb.h
>> @@ -38,7 +38,12 @@ static inline void tlb_flush(struct mmu_gather *tlb)
>>  		return;
>>  	}
>>  
>> -	__flush_tlb_range(&vma, tlb->start, tlb->end, stride, last_level);
>> +	if (cpus_have_const_cap(ARM64_HAS_TLBI_RANGE))
>> +		__flush_tlb_range_directly(&vma, tlb->start, tlb->end,
>> +					   stride, last_level);
>> +	else
>> +		__flush_tlb_range(&vma, tlb->start, tlb->end,
>> +				  stride, last_level);
> 
> I think you could move such check in __flush_tlb_range() and avoid
> cpus_have_const_cap() in two places. More on this below.
> 

Then we must mix the __flush_tlb_range() and the _directly one together.
I'm worried this will make the code very complicated.  See the end for
details.

>> diff --git a/arch/arm64/include/asm/tlbflush.h b/arch/arm64/include/asm/tlbflush.h
>> index bc3949064725..a482188ea563 100644
>> --- a/arch/arm64/include/asm/tlbflush.h
>> +++ b/arch/arm64/include/asm/tlbflush.h
>> @@ -59,6 +59,44 @@
>>  		__ta;						\
>>  	})
>>  
>> +/*
>> + * This macro creates a properly formatted VA operand for the TLBI RANGE.
>> + * The value bit assignments are:
>> + *
>> + * +----------+------+-------+-------+-------+----------------------+
>> + * |   ASID   |  TG  | SCALE |  NUM  |  TTL  |        BADDR         |
>> + * +-----------------+-------+-------+-------+----------------------+
>> + * |63      48|47  46|45   44|43   39|38   37|36                   0|
>> + *
>> + * The address range is determined by below formula:
>> + * [BADDR, BADDR + (NUM + 1) * 2^(5*SCALE + 1) * PAGESIZE)
>> + *
>> + */
>> +#define __TLBI_VADDR_RANGE(addr, asid, tg, scale, num, ttl)	\
>> +	({							\
>> +		unsigned long __ta = (addr) >> PAGE_SHIFT;	\
>> +		__ta &= GENMASK_ULL(36, 0);			\
>> +		__ta |= (unsigned long)(ttl) << 37;		\
>> +		__ta |= (unsigned long)(num) << 39;		\
>> +		__ta |= (unsigned long)(scale) << 44;		\
>> +		__ta |= (unsigned long)(tg) << 46;		\
>> +		__ta |= (unsigned long)(asid) << 48;		\
>> +		__ta;						\
>> +	})
>> +
>> +#define TLB_RANGE_MASK_SHIFT 5
>> +#define TLB_RANGE_MASK GENMASK_ULL(TLB_RANGE_MASK_SHIFT - 1, 0)
>> +
>> +/*
>> + * __TG defines translation granule of the system, which is defined by
>> + * PAGE_SHIFT.  Used by TTL.
>> + *  - 4KB	: 1
>> + *  - 16KB	: 2
>> + *  - 64KB	: 3
>> + */
>> +#define __TG	((PAGE_SHIFT - 12) / 2 + 1)
> 
> I don't think we need __TLBI_VADDR_RANGE to take a tg argument since
> it's always the same.
> 

OK.

>> +
>> +
>>  /*
>>   *	TLB Invalidation
>>   *	================
>> @@ -171,12 +209,83 @@ static inline void flush_tlb_page(struct vm_area_struct *vma,
>>  	dsb(ish);
>>  }
>>  
>> +/* The maximum range size of one TLBI-RANGE instruction */
>> +#define MAX_TLBI_RANGE_SIZE	(1UL << 21)
> 
> Nitpick: call this MAX_TLBI_RANGE_PAGES as that's not an address range.
> 
> It may be useful to have a macro for the range here, something like:
> 
> #define __TLBI_PAGES(num, scale)	((num + 1) << (5 * scale + 1))
> 
> and define MAX_TLBI_RANGE_PAGES in terms of this macro as
> __TLBI_PAGES(31, 3).
> 

OK, thanks for your great suggestion.

>> +
>> +/*
>> + * This interface uses the *rvale1is* instruction to flush TLBs
>> + * in [start, end) directly.
>> + * This instruction is supported from ARM v8.4.
>> + */
>> +static inline void __flush_tlb_range_directly(struct vm_area_struct *vma,
>> +				unsigned long start, unsigned long end,
>> +				unsigned long stride, bool last_level)
>> +{
>> +	int num = 0;
>> +	int scale = 0;
>> +	unsigned long asid = ASID(vma->vm_mm);
>> +	unsigned long addr = 0;
>> +	unsigned long range_size;
>> +
>> +	start = round_down(start, stride);
>> +	end = round_up(end, stride);
>> +	range_size = (end - start) >> PAGE_SHIFT;
>> +
>> +	if (range_size > MAX_TLBI_RANGE_SIZE) {
>> +		flush_tlb_mm(vma->vm_mm);
>> +		return;
>> +	}
>> +
>> +	dsb(ishst);
>> +
>> +	/*
>> +	 * The minimum size of TLB RANGE is 2 PAGE;
>> +	 * Use normal TLB instruction to handle odd PAGEs
> 
> Nitpick: no need to capitalise PAGE.
> 

OK.

>> +	 */
>> +	if (range_size % 2 == 1) {
>> +		addr = __TLBI_VADDR(start, asid);
>> +		if (last_level) {
>> +			__tlbi(vale1is, addr);
>> +			__tlbi_user(vale1is, addr);
>> +		} else {
>> +			__tlbi(vae1is, addr);
>> +			__tlbi_user(vae1is, addr);
>> +		}
>> +		start += 1 << PAGE_SHIFT;
>> +		range_size -= 1;
>> +	}
>> +
>> +	range_size >>= 1;
>> +	while (range_size > 0) {
>> +		num = (range_size & TLB_RANGE_MASK) - 1;
>> +		if (num >= 0) {
>> +			addr = __TLBI_VADDR_RANGE(start, asid, __TG,
>> +						  scale, num, 0);
>> +			if (last_level) {
>> +				__tlbi(rvale1is, addr);
>> +				__tlbi_user(rvale1is, addr);
>> +			} else {
>> +				__tlbi(rvae1is, addr);
>> +				__tlbi_user(rvae1is, addr);
>> +			}
>> +			start += (num + 1) << (5 * scale + 1) << PAGE_SHIFT;
> 
> You could use the __TLBI_PAGES macro I proposed above.
> 

OK.

>> +		}
>> +		scale++;
>> +		range_size >>= TLB_RANGE_MASK_SHIFT;
>> +	}
> 
> So, you start from scale 0 and increment it until you reach the maximum.
> I think (haven't done the maths on paper) you could also start from the
> top with something like scale = ilog2(range_size) / 5. Not sure it's
> significantly better though, maybe avoiding the loop 3 times if your
> range is 2MB (which happens with huge pages).
> 

This optimization is only effective when the range is a multiple of 256KB
(when the page size is 4KB), and I'm worried about the performance
of ilog2().  I traced the __flush_tlb_range() last year and found that in
most cases the range is less than 256K (see details in [1]).

I will test the performance of your suggestion and then reply you again
here.

> Anyway, I think it would be more efficient if we combine the
> __flush_tlb_range() and the _directly one into the same function with a
> single loop for both. For example, if the stride is 2MB already, we can
> handle this with a single classic TLBI without all the calculations for
> the range operation. The hardware may also handle this better since the
> software already told it there can be only one entry in that 2MB range.
> So each loop iteration could figure which operation to use based on
> cpucaps, TLBI range ops, stride and reduce range_size accordingly.
> 

Summarize your suggestion in one sentence: use 'stride' to optimize the
preformance of TLBI.  This can also be done by dividing into two functions,
and this should indeed be taken into account in the TLBI RANGE feature.

But if we figure which operation to use based on cpucaps in each loop
iteration, then cpus_have_const_cap() will be called frequently, which
may affect performance of TLBI.  In my opinion, we should do as few
judgments as possible in the loop, so judge the cpucaps outside the
loop maybe a good choice.


[1] https://lkml.org/lkml/2019/11/11/593

Thanks,
Zhenyu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
