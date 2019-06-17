Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A464801C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 13:01:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ISUwP05eGmgLUfeVIBjDymRVqyRV5jYuNTHiR4N8eNs=; b=jRR6L8bXqHAPqH
	QzesuspZ1DIM0UxzTc79zSF2RLbFmZpXTC/kX5nFtd83bL+0HLY8+chE3CK4ZLAzWbQbUYPjqu8PC
	JHtfdoq0Z0qM2ZH3YixWFM1U9y7sXDXV8YnVCU4lnj/Z29Gbn1NWYLsKVCsP8svs9NGxkNpHrN52x
	N+FB1v2UIsFuJWr9ED0yX/E5uBOyhBuGnEwtUqitI9xsdcXfHSqz4hSG6df19izX8NGeu8A3Vzgm8
	gTvwjb7CWJpdskgWTt6Mv89EQpqf6NhsJWUOqOebUcxIQFBEo0PMKNGcUL9Y7UmE4eMm6FNmLnjcf
	omqaEeA4BadY+SNunPNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcpNi-00072H-CV; Mon, 17 Jun 2019 11:00:58 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcpNa-00070j-7e
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 11:00:52 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 48F0D8A34246BE36988C;
 Mon, 17 Jun 2019 19:00:39 +0800 (CST)
Received: from [127.0.0.1] (10.74.221.148) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.439.0; Mon, 17 Jun 2019
 19:00:35 +0800
Subject: Re: [PATCH v2] arm64/mm: Correct the cache line size warning with non
 coherent device
To: Catalin Marinas <catalin.marinas@arm.com>
References: <20190614131141.4428-1-msys.mizuma@gmail.com>
 <aa445f8f-2576-4f78-a64e-1cde6a2f9593@hisilicon.com>
 <20190617104555.GA1367@arrakis.emea.arm.com>
From: Zhangshaokun <zhangshaokun@hisilicon.com>
Message-ID: <7e567399-6f3d-b416-6636-c9f2f37ea407@hisilicon.com>
Date: Mon, 17 Jun 2019 19:00:34 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.1
MIME-Version: 1.0
In-Reply-To: <20190617104555.GA1367@arrakis.emea.arm.com>
X-Originating-IP: [10.74.221.148]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_040050_498815_69CC4968 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>,
 Hidetoshi Seto <seto.hidetoshi@jp.fujitsu.com>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Zhang Lei <zhang.lei@jp.fujitsu.com>, Masayoshi Mizuma <msys.mizuma@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Catalin,

On 2019/6/17 18:45, Catalin Marinas wrote:
> On Sat, Jun 15, 2019 at 10:44:33AM +0800, Zhangshaokun wrote:
>> On 2019/6/14 21:11, Masayoshi Mizuma wrote:
>>> diff --git a/arch/arm64/kernel/cacheinfo.c b/arch/arm64/kernel/cacheinfo.c
>>> index 6eaf1c07aa4e..7fa6828bb488 100644
>>> --- a/arch/arm64/kernel/cacheinfo.c
>>> +++ b/arch/arm64/kernel/cacheinfo.c
>>> @@ -19,12 +19,10 @@
>>>  
>>>  int cache_line_size(void)
>>>  {
>>> -	u32 cwg = cache_type_cwg();
>>> -
>>>  	if (coherency_max_size != 0)
>>>  		return coherency_max_size;
>>>  
>>> -	return cwg ? 4 << cwg : ARCH_DMA_MINALIGN;
>>> +	return cache_line_size_of_cpu();
>>>  }
>>
>> How about simplify it as this?
>>
>> int cache_line_size(void)
>> {
>>         return coherency_max_size ? coherency_max_size :
>>                 cache_line_size_of_cpu();
>> }
> 
> I don't see this as a simplification, easier to read with explicit 'if'.
> 

Okay, I thought it can save some unnecessary lines :-).

>>>  EXPORT_SYMBOL_GPL(cache_line_size);
>>>  
>>> diff --git a/arch/arm64/mm/dma-mapping.c b/arch/arm64/mm/dma-mapping.c
>>> index 1669618db08a..379589dc7113 100644
>>> --- a/arch/arm64/mm/dma-mapping.c
>>> +++ b/arch/arm64/mm/dma-mapping.c
>>> @@ -38,10 +38,6 @@ void arch_dma_prep_coherent(struct page *page, size_t size)
>>>  
>>>  static int __init arm64_dma_init(void)
>>>  {
>>> -	WARN_TAINT(ARCH_DMA_MINALIGN < cache_line_size(),
>>> -		   TAINT_CPU_OUT_OF_SPEC,
>>> -		   "ARCH_DMA_MINALIGN smaller than CTR_EL0.CWG (%d < %d)",
>>> -		   ARCH_DMA_MINALIGN, cache_line_size());
>>>  	return dma_atomic_pool_init(GFP_DMA32, __pgprot(PROT_NORMAL_NC));
>>>  }
>>>  arch_initcall(arm64_dma_init);
>>> @@ -56,7 +52,17 @@ void arch_teardown_dma_ops(struct device *dev)
>>>  void arch_setup_dma_ops(struct device *dev, u64 dma_base, u64 size,
>>>  			const struct iommu_ops *iommu, bool coherent)
>>>  {
>>> +	int cls = cache_line_size_of_cpu();
>>
>> whether we need this local variable, how about use cache_line_size_of_cpu
>> directly in WARN_TAINT just like before.
> 
> The reason being?
> 

Since it is inline function,  maybe it is unnecessary, it is trivial.

> Anyway, I'll queue v2 of this patch as is for 5.3. Thanks.
> 

It's fine.

Thanks,
Shaokun


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
