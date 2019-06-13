Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1351944878
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 19:10:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mZCSfQ5d4BMMJ4cmOGQ+4nvx12wNgSzi0SGHjOS3u+k=; b=iSE8Z0dE19VlmSV7CiW91tYYm
	+vOdzmGBN+n7OjpHy/UpZSatsf/yZ75xSNgUDlRyu/tHNJTnwuNYaj64BCjAEIv8+QW+ouED3/Tt8
	WvvH9JUmX4HFOMAh88Kb2y7/4O06PNPk0vciiRI7kKNOPYCuPuFvui8t4TkZLXXTNuiOMHmNu8hDu
	UHMflPdmm1whr6AAcxVfa7FF0F5q8+DEmthG/JuKkKKx+/rYB+Uw3RGri6kuYzMf/toSE0bXLVY1y
	y/60EOyg6Zi90FDMDr+rKWHP+m8LLatkiN1RIfZ8tctnViXQPD4hw7YCh+l//GGMb+/774u/7D6b2
	qC8/QJxSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbTFA-0006aw-R3; Thu, 13 Jun 2019 17:10:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbTEz-0006a5-H8
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 17:10:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DAB03367;
 Thu, 13 Jun 2019 10:10:19 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D59783F694;
 Thu, 13 Jun 2019 10:10:18 -0700 (PDT)
Subject: Re: [PATCH 1/2] arm64/mm: check cpu cache line size with non-coherent
 device
To: Catalin Marinas <catalin.marinas@arm.com>,
 Masayoshi Mizuma <msys.mizuma@gmail.com>
References: <20190611151731.6135-1-msys.mizuma@gmail.com>
 <20190611151731.6135-2-msys.mizuma@gmail.com>
 <20190611180007.him7md7gdcjs5cg6@mbp>
 <20190611220246.lyhcqahsxyxuhqjk@gabell>
 <20190613155434.GW28951@C02TF0J2HF1T.local>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <d832009b-93b5-8ac3-03eb-8e6e92a5b206@arm.com>
Date: Thu, 13 Jun 2019 18:10:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190613155434.GW28951@C02TF0J2HF1T.local>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_101021_662229_B8DBCB0E 
X-CRM114-Status: GOOD (  21.55  )
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
Cc: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>,
 Hidetoshi Seto <seto.hidetoshi@jp.fujitsu.com>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Zhang Lei <zhang.lei@jp.fujitsu.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/06/2019 16:54, Catalin Marinas wrote:
> On Tue, Jun 11, 2019 at 06:02:47PM -0400, Masayoshi Mizuma wrote:
>> On Tue, Jun 11, 2019 at 07:00:07PM +0100, Catalin Marinas wrote:
>>> On Tue, Jun 11, 2019 at 11:17:30AM -0400, Masayoshi Mizuma wrote:
>>>> --- a/arch/arm64/mm/dma-mapping.c
>>>> +++ b/arch/arm64/mm/dma-mapping.c
>>>> @@ -91,10 +91,6 @@ static int __swiotlb_mmap_pfn(struct vm_area_struct *vma,
>>>>   
>>>>   static int __init arm64_dma_init(void)
>>>>   {
>>>> -	WARN_TAINT(ARCH_DMA_MINALIGN < cache_line_size(),
>>>> -		   TAINT_CPU_OUT_OF_SPEC,
>>>> -		   "ARCH_DMA_MINALIGN smaller than CTR_EL0.CWG (%d < %d)",
>>>> -		   ARCH_DMA_MINALIGN, cache_line_size());
>>>>   	return dma_atomic_pool_init(GFP_DMA32, __pgprot(PROT_NORMAL_NC));
>>>>   }
>>>>   arch_initcall(arm64_dma_init);
>>>> @@ -473,6 +469,11 @@ void arch_setup_dma_ops(struct device *dev, u64 dma_base, u64 size,
>>>>   			const struct iommu_ops *iommu, bool coherent)
>>>>   {
>>>>   	dev->dma_coherent = coherent;
>>>> +
>>>> +	if (!coherent && (cache_line_size() > ARCH_DMA_MINALIGN))
>>>> +		dev_WARN(dev, "ARCH_DMA_MINALIGN smaller than CTR_EL0.CWG (%d < %d)",
>>>> +				ARCH_DMA_MINALIGN, cache_line_size());
>>>
>>> I'm ok in principle with this patch, with the minor issue that since
>>> commit 7b8c87b297a7 ("arm64: cacheinfo: Update cache_line_size detected
>>> from DT or PPTT") queued for 5.3 cache_line_size() gets the information
>>> from DT or ACPI. The reason for this change is that the information is
>>> used for performance tuning rather than DMA coherency.
>>>
>>> You can go for a direct cache_type_cwg() check in here, unless Robin
>>> (cc'ed) has a better idea.
>>
>> Got it, thanks.
>> I believe coherency_max_size is zero in case of coherent is false,
>> so I'll modify the patch as following. Does it make sense?
> 
> The coherency_max_size gives you the largest cache line in the system,
> independent of whether a device is coherent or not. You may have a
> device that does not snoop L1/L2 but there is a transparent L3 (system
> cache) with a larger cache line that the device may be able to snoop.
> The coherency_max_size and therefore cache_line_size() would give you
> this L3 value but the device would work fine since CWG <=
> ARCH_DMA_MINALIGN.
> 
>>
>> @@ -57,6 +53,11 @@ void arch_setup_dma_ops(struct device *dev, u64 dma_base, u64 size,
>>                          const struct iommu_ops *iommu, bool coherent)
>>   {
>>          dev->dma_coherent = coherent;
>> +
>> +       if (!coherent && (cache_line_size() > ARCH_DMA_MINALIGN))
>> +               dev_WARN(dev, "ARCH_DMA_MINALIGN smaller than CTR_EL0.CWG (%d < %d)",
>> +                               ARCH_DMA_MINALIGN, (4 << cache_type_cwg()));
>> +
>>          if (iommu)
>>                  iommu_setup_dma_ops(dev, dma_base, size);
> 
> I think the easiest here is to add a local variable:
> 
> 	int cls = 4 << cache_type_cwg();
> 
> and check it against ARCH_DMA_MINALIGN.
> 

Agreed, and I'd say we should keep the taint too, since if this 
situation ever was hit the potential crashes would be weird and random 
and not obviously DMA-related.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
