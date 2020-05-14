Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 750AF1D3514
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 17:29:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z+JvcxcVEgv3P1L6t3vnWoXLJICEiTeDbFk+55/A17Y=; b=ELs8qbXRSamL8M
	ULN/5bb8fEF0WDt+oUvxefNLMQdWFQJnBpCRo3bo6/9zijjj7cBYmU0nCwC5XWYGf2mRe5oPVrV0L
	eNta3eQ5kAqltLKpt0hxVcFLBCD7+tcTdvqv5+n8JyE1KVEBJR6Eu3qqACT9ycDbW4HFXOICIc928
	C8yXhXxlFmi+siDCQ+KFc7K972QBq++fO2O+VQgO2A6LYiSayRMu6QYjlvaN7V5iUBsrcXhNnGjY0
	0ZNX7RuXtAoQuBZVEGYcqp5yUg+3D9RlVnocJujFI1/hfjM5FzGVlSWO1LXUHV9jU4sKNAeEegVDR
	9BfpyM9mzbkTi5EBUGPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZFn9-0002gG-57; Thu, 14 May 2020 15:28:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZFn0-0002ez-Gq
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 15:28:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 67FDB1FB;
 Thu, 14 May 2020 08:28:49 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 495F93F71E;
 Thu, 14 May 2020 08:28:47 -0700 (PDT)
Date: Thu, 14 May 2020 16:28:40 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Zhenyu Ye <yezhenyu2@huawei.com>
Subject: Re: [RFC PATCH v3 2/2] arm64: tlb: Use the TLBI RANGE feature in arm64
Message-ID: <20200514152840.GC1907@gaia>
References: <20200414112835.1121-1-yezhenyu2@huawei.com>
 <20200414112835.1121-3-yezhenyu2@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414112835.1121-3-yezhenyu2@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_082850_651887_D918800C 
X-CRM114-Status: GOOD (  23.84  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, suzuki.poulose@arm.com, maz@kernel.org,
 linux-kernel@vger.kernel.org, xiexiangyou@huawei.com, steven.price@arm.com,
 zhangshaokun@hisilicon.com, linux-mm@kvack.org, arm@kernel.org,
 prime.zeng@hisilicon.com, guohanjun@huawei.com, olof@lixom.net,
 kuhn.chenqun@huawei.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Zhenyu,

On Tue, Apr 14, 2020 at 07:28:35PM +0800, Zhenyu Ye wrote:
> diff --git a/arch/arm64/include/asm/tlb.h b/arch/arm64/include/asm/tlb.h
> index b76df828e6b7..3a1816770bd1 100644
> --- a/arch/arm64/include/asm/tlb.h
> +++ b/arch/arm64/include/asm/tlb.h
> @@ -38,7 +38,12 @@ static inline void tlb_flush(struct mmu_gather *tlb)
>  		return;
>  	}
>  
> -	__flush_tlb_range(&vma, tlb->start, tlb->end, stride, last_level);
> +	if (cpus_have_const_cap(ARM64_HAS_TLBI_RANGE))
> +		__flush_tlb_range_directly(&vma, tlb->start, tlb->end,
> +					   stride, last_level);
> +	else
> +		__flush_tlb_range(&vma, tlb->start, tlb->end,
> +				  stride, last_level);

I think you could move such check in __flush_tlb_range() and avoid
cpus_have_const_cap() in two places. More on this below.

> diff --git a/arch/arm64/include/asm/tlbflush.h b/arch/arm64/include/asm/tlbflush.h
> index bc3949064725..a482188ea563 100644
> --- a/arch/arm64/include/asm/tlbflush.h
> +++ b/arch/arm64/include/asm/tlbflush.h
> @@ -59,6 +59,44 @@
>  		__ta;						\
>  	})
>  
> +/*
> + * This macro creates a properly formatted VA operand for the TLBI RANGE.
> + * The value bit assignments are:
> + *
> + * +----------+------+-------+-------+-------+----------------------+
> + * |   ASID   |  TG  | SCALE |  NUM  |  TTL  |        BADDR         |
> + * +-----------------+-------+-------+-------+----------------------+
> + * |63      48|47  46|45   44|43   39|38   37|36                   0|
> + *
> + * The address range is determined by below formula:
> + * [BADDR, BADDR + (NUM + 1) * 2^(5*SCALE + 1) * PAGESIZE)
> + *
> + */
> +#define __TLBI_VADDR_RANGE(addr, asid, tg, scale, num, ttl)	\
> +	({							\
> +		unsigned long __ta = (addr) >> PAGE_SHIFT;	\
> +		__ta &= GENMASK_ULL(36, 0);			\
> +		__ta |= (unsigned long)(ttl) << 37;		\
> +		__ta |= (unsigned long)(num) << 39;		\
> +		__ta |= (unsigned long)(scale) << 44;		\
> +		__ta |= (unsigned long)(tg) << 46;		\
> +		__ta |= (unsigned long)(asid) << 48;		\
> +		__ta;						\
> +	})
> +
> +#define TLB_RANGE_MASK_SHIFT 5
> +#define TLB_RANGE_MASK GENMASK_ULL(TLB_RANGE_MASK_SHIFT - 1, 0)
> +
> +/*
> + * __TG defines translation granule of the system, which is defined by
> + * PAGE_SHIFT.  Used by TTL.
> + *  - 4KB	: 1
> + *  - 16KB	: 2
> + *  - 64KB	: 3
> + */
> +#define __TG	((PAGE_SHIFT - 12) / 2 + 1)

I don't think we need __TLBI_VADDR_RANGE to take a tg argument since
it's always the same.

> +
> +
>  /*
>   *	TLB Invalidation
>   *	================
> @@ -171,12 +209,83 @@ static inline void flush_tlb_page(struct vm_area_struct *vma,
>  	dsb(ish);
>  }
>  
> +/* The maximum range size of one TLBI-RANGE instruction */
> +#define MAX_TLBI_RANGE_SIZE	(1UL << 21)

Nitpick: call this MAX_TLBI_RANGE_PAGES as that's not an address range.

It may be useful to have a macro for the range here, something like:

#define __TLBI_PAGES(num, scale)	((num + 1) << (5 * scale + 1))

and define MAX_TLBI_RANGE_PAGES in terms of this macro as
__TLBI_PAGES(31, 3).

> +
> +/*
> + * This interface uses the *rvale1is* instruction to flush TLBs
> + * in [start, end) directly.
> + * This instruction is supported from ARM v8.4.
> + */
> +static inline void __flush_tlb_range_directly(struct vm_area_struct *vma,
> +				unsigned long start, unsigned long end,
> +				unsigned long stride, bool last_level)
> +{
> +	int num = 0;
> +	int scale = 0;
> +	unsigned long asid = ASID(vma->vm_mm);
> +	unsigned long addr = 0;
> +	unsigned long range_size;
> +
> +	start = round_down(start, stride);
> +	end = round_up(end, stride);
> +	range_size = (end - start) >> PAGE_SHIFT;
> +
> +	if (range_size > MAX_TLBI_RANGE_SIZE) {
> +		flush_tlb_mm(vma->vm_mm);
> +		return;
> +	}
> +
> +	dsb(ishst);
> +
> +	/*
> +	 * The minimum size of TLB RANGE is 2 PAGE;
> +	 * Use normal TLB instruction to handle odd PAGEs

Nitpick: no need to capitalise PAGE.

> +	 */
> +	if (range_size % 2 == 1) {
> +		addr = __TLBI_VADDR(start, asid);
> +		if (last_level) {
> +			__tlbi(vale1is, addr);
> +			__tlbi_user(vale1is, addr);
> +		} else {
> +			__tlbi(vae1is, addr);
> +			__tlbi_user(vae1is, addr);
> +		}
> +		start += 1 << PAGE_SHIFT;
> +		range_size -= 1;
> +	}
> +
> +	range_size >>= 1;
> +	while (range_size > 0) {
> +		num = (range_size & TLB_RANGE_MASK) - 1;
> +		if (num >= 0) {
> +			addr = __TLBI_VADDR_RANGE(start, asid, __TG,
> +						  scale, num, 0);
> +			if (last_level) {
> +				__tlbi(rvale1is, addr);
> +				__tlbi_user(rvale1is, addr);
> +			} else {
> +				__tlbi(rvae1is, addr);
> +				__tlbi_user(rvae1is, addr);
> +			}
> +			start += (num + 1) << (5 * scale + 1) << PAGE_SHIFT;

You could use the __TLBI_PAGES macro I proposed above.

> +		}
> +		scale++;
> +		range_size >>= TLB_RANGE_MASK_SHIFT;
> +	}

So, you start from scale 0 and increment it until you reach the maximum.
I think (haven't done the maths on paper) you could also start from the
top with something like scale = ilog2(range_size) / 5. Not sure it's
significantly better though, maybe avoiding the loop 3 times if your
range is 2MB (which happens with huge pages).

Anyway, I think it would be more efficient if we combine the
__flush_tlb_range() and the _directly one into the same function with a
single loop for both. For example, if the stride is 2MB already, we can
handle this with a single classic TLBI without all the calculations for
the range operation. The hardware may also handle this better since the
software already told it there can be only one entry in that 2MB range.
So each loop iteration could figure which operation to use based on
cpucaps, TLBI range ops, stride and reduce range_size accordingly.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
