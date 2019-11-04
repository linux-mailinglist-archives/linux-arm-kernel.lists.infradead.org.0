Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29177EE777
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 19:37:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JReZgmISaIXxgXXvYv/+ULKxnOn7Igl1ROdX272En6w=; b=XyrmMyDVSKDy6ynjdSJow/VGG
	4NMOEU20FobdHhDIlxLbLPPVctCLut69S9cZipVmHAJF61wmYvfuWPsE8RGnZ/XmhwfzN+RRJzkbU
	v1SvjzFJkkG0pf8A1L4trVByU+m8g9Kt7upH53OGOSX3Sqibf6WUUBCiqrpLJ8lIFs3JDOXKurn3C
	JJIQqvXlGNK0xJQW31WanR2rOdCAz5tyN1qVMxbgfdVKgRYf0yZlIVEr7xYrTorxSUEdN1NW1vDDI
	CrI6Feuok9gYig4uhdZIaJ8tJGp56uGX5dYO1+TzCckk7etHmmilrddLi5iDXXQo83v3hplrI/vQ3
	ztr0pIPuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRhEH-000410-0V; Mon, 04 Nov 2019 18:37:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRhDr-0003sH-0B
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 18:37:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5B3091F1;
 Mon,  4 Nov 2019 10:36:57 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BB33F3F71A;
 Mon,  4 Nov 2019 10:36:56 -0800 (PST)
Subject: Re: [PATCH v2 06/10] iommu/io-pgtable-arm: Simplify level indexing
To: Will Deacon <will@kernel.org>
References: <cover.1572024119.git.robin.murphy@arm.com>
 <698173b487383735e470a28e5cca4f9db22703de.1572024120.git.robin.murphy@arm.com>
 <20191104181722.GF24909@willie-the-truck>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <f39248b0-b70e-4138-3eb9-81ce2cfbee4b@arm.com>
Date: Mon, 4 Nov 2019 18:36:51 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191104181722.GF24909@willie-the-truck>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_103703_127697_08544732 
X-CRM114-Status: GOOD (  19.37  )
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
Cc: iommu@lists.linux-foundation.org, jcrouse@codeaurora.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/11/2019 18:17, Will Deacon wrote:
> On Fri, Oct 25, 2019 at 07:08:35PM +0100, Robin Murphy wrote:
>> The nature of the LPAE format means that data->pg_shift is always
>> redundant with data->bits_per_level, since they represent the size of a
>> page and the number of PTEs per page respectively, and the size of a PTE
>> is constant. Thus it works out more efficient to only store the latter,
>> and derive the former via a trivial addition where necessary.
>>
>> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
>> ---
>>   drivers/iommu/io-pgtable-arm.c | 29 +++++++++++++----------------
>>   1 file changed, 13 insertions(+), 16 deletions(-)
>>
>> diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
>> index 4b1483eb0ccf..15b4927ce36b 100644
>> --- a/drivers/iommu/io-pgtable-arm.c
>> +++ b/drivers/iommu/io-pgtable-arm.c
>> @@ -36,10 +36,11 @@
>>    * in a virtual address mapped by the pagetable in d.
>>    */
>>   #define ARM_LPAE_LVL_SHIFT(l,d)						\
>> -	(((ARM_LPAE_MAX_LEVELS - 1 - (l)) * (d)->bits_per_level) +	\
>> -	(d)->pg_shift)
>> +	(((ARM_LPAE_MAX_LEVELS - (l)) * (d)->bits_per_level) +		\
>> +	ilog2(sizeof(arm_lpae_iopte)))
>>   
>> -#define ARM_LPAE_GRANULE(d)		(1UL << (d)->pg_shift)
>> +#define ARM_LPAE_GRANULE(d)						\
>> +	(sizeof(arm_lpae_iopte) << (d)->bits_per_level)
>>   #define ARM_LPAE_PGD_SIZE(d)						\
>>   	(sizeof(arm_lpae_iopte) << (d)->pgd_bits)
>>   
>> @@ -55,9 +56,7 @@
>>   	 ((1 << ((d)->bits_per_level + ARM_LPAE_PGD_IDX(l,d))) - 1))
>>   
>>   /* Calculate the block/page mapping size at level l for pagetable in d. */
>> -#define ARM_LPAE_BLOCK_SIZE(l,d)					\
>> -	(1ULL << (ilog2(sizeof(arm_lpae_iopte)) +			\
>> -		((ARM_LPAE_MAX_LEVELS - (l)) * (d)->bits_per_level)))
>> +#define ARM_LPAE_BLOCK_SIZE(l,d)	(1ULL << ARM_LPAE_LVL_SHIFT(l,d))
>>   
>>   /* Page table bits */
>>   #define ARM_LPAE_PTE_TYPE_SHIFT		0
>> @@ -175,8 +174,7 @@ struct arm_lpae_io_pgtable {
>>   
>>   	int			pgd_bits;
>>   	int			start_level;
>> -	unsigned long		pg_shift;
>> -	unsigned long		bits_per_level;
>> +	int			bits_per_level;
>>   
>>   	void			*pgd;
>>   };
>> @@ -206,7 +204,7 @@ static phys_addr_t iopte_to_paddr(arm_lpae_iopte pte,
>>   {
>>   	u64 paddr = pte & ARM_LPAE_PTE_ADDR_MASK;
>>   
>> -	if (data->pg_shift < 16)
>> +	if (data->bits_per_level < 13) /* i.e. 64K granule */
> 
> nit, but:
> 
> 	if (ARM_LPAE_GRANULE(data) < SZ_64K)
> 
> might be clearer and avoid the need for a comment?

Unfortunately GCC doesn't treat the two as directly equivalent 
(presumably due to boundary conditions) so will emit the additional faff 
to actually compute and compare the intermediate value every time, 
rather than just trivially testing the shift. I figured the minor 
I$/register pressure win was worth the small price of a comment.

Robin.

> (I can make the change locally if you agree)
> 
> Will
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
