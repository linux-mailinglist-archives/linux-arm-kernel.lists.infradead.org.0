Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E86E4962FF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 16:52:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ID4NBYyE7HLkFm9D9Eq4Nj4bpMUeBAD0KGe+SG6SRhs=; b=OjkgJn3567+NRfWiLiFmDBGfa
	p7cO6OvNPhgowoCt0xV7Apo9EkPDTWYAcbfDaiUo3MYQ2O8lKrq5o8lpOGNrmSgbrF5w3rhep+zMG
	+fokB6nEBWkch6SGWirzGOCIV/4yOF2004GLlWKbdBg9unKh2b1zZvfCMpxGnEcmi81GcYuvPU4r+
	y/RNxo2zewDBn0WddVUZjevIKats5WeAGwdF5/b6cyC1r0ckj1AJEQxww+pVUO4W2HAllVISfrLyl
	aAQRYoJ9T8fAc2roujVpu/NBAHHh8Zf7a6hbMm7ky8D+wI/req9+wohTusEbXUM1ICMawCE34wBfV
	zoAOIgEYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i05US-0000mK-Ss; Tue, 20 Aug 2019 14:52:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i05UF-0000lv-Fm
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 14:51:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E3D9A28;
 Tue, 20 Aug 2019 07:51:46 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1977D3F246;
 Tue, 20 Aug 2019 07:51:45 -0700 (PDT)
Subject: Re: [PATCH 4/4] iommu/io-pgtable-arm: Prepare for TTBR1 usage
To: Will Deacon <will@kernel.org>
References: <cover.1566238530.git.robin.murphy@arm.com>
 <6596469d5fa1e918145fdd4e6b1a3ad67f7cde2e.1566238530.git.robin.murphy@arm.com>
 <20190820103048.xacfbtn5o4wermhi@willie-the-truck>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <469dc66a-2532-5f7f-cd8d-3fe13f6c279a@arm.com>
Date: Tue, 20 Aug 2019 15:51:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190820103048.xacfbtn5o4wermhi@willie-the-truck>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_075151_572795_037FB2F8 
X-CRM114-Status: GOOD (  21.85  )
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
Cc: robdclark@gmail.com, joro@8bytes.org, jcrouse@codeaurora.org,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20/08/2019 11:30, Will Deacon wrote:
> On Mon, Aug 19, 2019 at 07:19:31PM +0100, Robin Murphy wrote:
>> Now that callers are free to use a given table for TTBR1 if they wish
>> (all they need do is shift the provided attributes when constructing
>> their final TCR value), the only remaining impediment is the address
>> validation on map/unmap. The fact that the LPAE address space split is
>> symmetric makes this easy to accommodate - by simplifying the current
>> range checks into explicit tests that address bits above IAS are all
>> zero, it then follows straightforwardly to add the inverse test to
>> allow the all-ones case as well.
>>
>> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
>> ---
>>   drivers/iommu/io-pgtable-arm.c | 7 ++++---
>>   1 file changed, 4 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
>> index 09cb20671fbb..f39c50356351 100644
>> --- a/drivers/iommu/io-pgtable-arm.c
>> +++ b/drivers/iommu/io-pgtable-arm.c
>> @@ -475,13 +475,13 @@ static int arm_lpae_map(struct io_pgtable_ops *ops, unsigned long iova,
>>   	arm_lpae_iopte *ptep = data->pgd;
>>   	int ret, lvl = ARM_LPAE_START_LVL(data);
>>   	arm_lpae_iopte prot;
>> +	long iaext = (long)iova >> data->iop.cfg.ias;
>>   
>>   	/* If no access, then nothing to do */
>>   	if (!(iommu_prot & (IOMMU_READ | IOMMU_WRITE)))
>>   		return 0;
>>   
>> -	if (WARN_ON(iova >= (1ULL << data->iop.cfg.ias) ||
>> -		    paddr >= (1ULL << data->iop.cfg.oas)))
>> +	if (WARN_ON((iaext && ~iaext) || paddr >> data->iop.cfg.oas))
> 
> I had to read that '&&' twice, but I see what you're doing now :)
> 
>>   		return -ERANGE;
> 
> This doesn't seem sufficient to prevent a mixture of TTBR1 and TTBR0
> addresses from being mapped in the same TTBR. Perhaps we need a quirk for
> TTBR1, which could then take care of setting EPDx appropriately?

Right, that's the one downside of going for the minimalist "io-pgtable 
doesn't even have to know" approach. On reflection, though, in that 
paradigm it should probably be the caller's responsibility to convert 
TTBR1 addresses to preserve the "as if TTBR0" illusion anyway :/

The advantage of not having a quirk is that it allows split address 
spaces to fit more closely with the aux_domain idea, i.e. we could 
allocate and initialise a domain without having to assume, or even care, 
whether it will end up attached as a primary or aux domain. It *might* 
even be potentially useful to have a domain attached to TTBR0 of one 
device's context and TTBR1 of another's at the same time, although 
that's pretty niche.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
