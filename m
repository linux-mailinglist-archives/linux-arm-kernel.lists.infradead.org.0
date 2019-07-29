Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B9F78C6E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 15:13:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nkwsw8UMUHAqDFeNrXo2GxTFrqOfGuzKziy4r0sQluc=; b=VcyxpMu+5I8Z8zYnUrn6r4ZSq
	cRGnbZVFKnPacAx8P0427272vsg1Blk4fH2OcyiLOv1vbhSXU7zGAYsc5S53N5j+DzvO88TC+So3b
	hM1zCButOVcyRsWUvNeKNaZQbuRoZFe09keE63IqiIPp1a3XJoE/Zguxwjos7uTHwO7JCX2m4g73R
	k1K8LPok1fw7TPAim//AMYATKpJTuPWk3T1WxjCDT8JWidglspR1IasTvBZ36UJvSjPMfT00r6zNC
	LXWsvyAkoEFrLxG39LKW7iHc6LqDoEjQY/PcIPpOhiOKG/V2mqamktKNpswJydSuYogytVbsM9ppS
	VRtWHzSaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs5TO-0004id-Md; Mon, 29 Jul 2019 13:13:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hs5TI-0004iD-1e
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 13:13:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4CA5328;
 Mon, 29 Jul 2019 06:13:47 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0363D3F71F;
 Mon, 29 Jul 2019 06:13:45 -0700 (PDT)
Subject: Re: [PATCH 07/24] iommu/dma: Move domain lookup into
 __iommu_dma_{map, unmap}
To: Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Christoph Hellwig <hch@lst.de>
References: <20190520072948.11412-1-hch@lst.de>
 <20190520072948.11412-8-hch@lst.de>
 <5FC3163CFD30C246ABAA99954A238FA83F328FAB@lhreml524-mbb.china.huawei.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <9027b5f1-545b-e11b-ca8f-f1e0bd701634@arm.com>
Date: Mon, 29 Jul 2019 14:13:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <5FC3163CFD30C246ABAA99954A238FA83F328FAB@lhreml524-mbb.china.huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_061348_135442_A8827F75 
X-CRM114-Status: GOOD (  21.51  )
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
Cc: Tom Murphy <tmurphy@arista.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linuxarm <linuxarm@huawei.com>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 "Wangzhou \(B\)" <wangzhou1@hisilicon.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shameer,

On 29/07/2019 13:12, Shameerali Kolothum Thodi wrote:
> Hi Robin,
> 
>> -----Original Message-----
>> From: iommu-bounces@lists.linux-foundation.org
>> [mailto:iommu-bounces@lists.linux-foundation.org] On Behalf Of Christoph
>> Hellwig
>> Sent: 20 May 2019 08:30
>> To: Robin Murphy <robin.murphy@arm.com>
>> Cc: Tom Murphy <tmurphy@arista.com>; Catalin Marinas
>> <catalin.marinas@arm.com>; Will Deacon <will.deacon@arm.com>;
>> linux-kernel@vger.kernel.org; iommu@lists.linux-foundation.org;
>> linux-arm-kernel@lists.infradead.org
>> Subject: [PATCH 07/24] iommu/dma: Move domain lookup into
>> __iommu_dma_{map, unmap}
>>
>> From: Robin Murphy <robin.murphy@arm.com>
>>
>> Most of the callers don't care, and the couple that do already have the
>> domain to hand for other reasons are in slow paths where the (trivial)
>> overhead of a repeated lookup will be utterly immaterial.
> 
> On a Hisilicon ARM64 platform with 5.3-rc1, a F_TRANSALTION error from
> smmuv3 is reported when an attempt is made to assign a ixgbe vf dev to a
> Guest.
> 
> [  196.747107] arm-smmu-v3 arm-smmu-v3.0.auto: event 0x10 received:
> [  196.747109] arm-smmu-v3 arm-smmu-v3.0.auto: 0x00000180 00000010
> [  196.747110] arm-smmu-v3 arm-smmu-v3.0.auto: 0x0000020100000000
> [  196.747111] arm-smmu-v3 arm-smmu-v3.0.auto: 0x00000000ffffe040
> [  196.747113] arm-smmu-v3 arm-smmu-v3.0.auto: 0x00000000ffffe000
> 
> Git bisect points to this patch.
> 
> Please see below.
[...]
>> *iommu_dma_get_msi_page(struct device *dev,
>>   	if (!msi_page)
>>   		return NULL;
>>
>> -	iova = __iommu_dma_map(dev, msi_addr, size, prot, domain);
>> +	iova = __iommu_dma_map(dev, msi_addr, size, prot);
> 
> I think the domain here is retrieved using iommu_get_domain_for_dev()
> which may not be the default domain returned by iommu_get_dma_domain().

Urgh, yes, how did I manage to miss that? :(

I doubt this patch reverts cleanly, but I don't think it needs to be 
completely undone anyway; give me a moment...

Robin.

> 
> Please check and let me know.
> 
> Thanks,
> Shameer
> 
>>   	if (iova == DMA_MAPPING_ERROR)
>>   		goto out_free_page;
>> --
>> 2.20.1
>>
>> _______________________________________________
>> iommu mailing list
>> iommu@lists.linux-foundation.org
>> https://lists.linuxfoundation.org/mailman/listinfo/iommu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
