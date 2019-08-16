Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B7B9064E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 18:58:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aodMDE5fKxKpgsfQt6ZJqDruuMmi76yLHrv1osmjnyc=; b=uKufeQG2RYLmBAs80Hxx+9b+p
	VUXdlFLYlLVWKXOa9XXnQBns/FJt06395emx5hUfcvZkU8P6JtqzIdtH2YtKFEGvSRQUdNFpW+fVa
	M9UGA/iEt6+2ZtgsKWfMUqX+gzvtt/OEqGYK22vvICWDMo4IqAZA7VT6h3cy26htIQyhSDbd8htBl
	x5GV16XTMOFTOaouK7rCvo06s9HSia+2eg/McQEGwAXXX/Wa1fs5zu46DwmmMvcEi7Kdu818LJgSL
	iZqGCz7i2NohpeepcfBPNB2sligv67xpC096Zsv3VyfQA8a0oXX1cAWVfRkBFIGVeHKVMes1iAC0W
	VG425ZBnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyfYp-0006E3-9i; Fri, 16 Aug 2019 16:58:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyfYZ-0006DP-NT
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 16:58:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EBC6628;
 Fri, 16 Aug 2019 09:58:26 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 793BF3F694;
 Fri, 16 Aug 2019 09:58:25 -0700 (PDT)
Subject: Re: [Freedreno] [PATCH v3 0/2] iommu/arm-smmu: Split pagetable support
To: freedreno@lists.freedesktop.org, Rob Herring <robh@kernel.org>,
 Will Deacon <will@kernel.org>, jean-philippe.brucker@arm.com,
 linux-arm-msm@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 Zhen Lei <thunder.leizhen@huawei.com>, linux-arm-kernel@lists.infradead.org
References: <1565216500-28506-1-git-send-email-jcrouse@codeaurora.org>
 <20190815153304.GD28465@jcrouse1-lnx.qualcomm.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <ac248f33-2528-c1d4-17ed-17e92e6ed5ad@arm.com>
Date: Fri, 16 Aug 2019 17:58:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190815153304.GD28465@jcrouse1-lnx.qualcomm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_095827_851259_C18989FA 
X-CRM114-Status: GOOD (  27.91  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jordan,

On 15/08/2019 16:33, Jordan Crouse wrote:
> On Wed, Aug 07, 2019 at 04:21:38PM -0600, Jordan Crouse wrote:
>> (Sigh, resend. I freaked out my SMTP server)
>>
>> This is part of an ongoing evolution for enabling split pagetable support for
>> arm-smmu. Previous versions can be found [1].
>>
>> In the discussion for v2 Robin pointed out that this is a very Adreno specific
>> use case and that is exactly true. Not only do we want to configure and use a
>> pagetable in the TTBR1 space, we also want to configure the TTBR0 region but
>> not allocate a pagetable for it or touch it until the GPU hardware does so. As
>> much as I want it to be a generic concept it really isn't.
>>
>> This revision leans into that idea. Most of the same io-pgtable code is there
>> but now it is wrapped as an Adreno GPU specific format that is selected by the
>> compatible string in the arm-smmu device.
>>
>> Additionally, per Robin's suggestion we are skipping creating a TTBR0 pagetable
>> to save on wasted memory.
>>
>> This isn't as clean as I would like it to be but I think that this is a better
>> direction than trying to pretend that the generic format would work.
>>
>> I'm tempting fate by posting this and then taking some time off, but I wanted
>> to try to kick off a conversation or at least get some flames so I can try to
>> refine this again next week. Please take a look and give some advice on the
>> direction.
> 
> Will, Robin -
> 
> Modulo the impl changes from Robin, do you think that using a dedicated
> pagetable format is the right approach for supporting split pagetables for the
> Adreno GPU?

How many different Adreno drivers would benefit from sharing it?

The more I come back to this, the more I'm convinced that io-pgtable 
should focus on the heavy lifting of pagetable management - the code 
that nobody wants to have to write at all, let alone more than once - 
and any subtleties which aren't essential to that should be pushed back 
into whichever callers actually care. Consider that already, literally 
no caller actually uses an unmodified stage 1 TCR value as provided in 
the io_pgtable_cfg.

I feel it would be most productive to elaborate further in the form of 
patches, so let me get right on that and try to bash something out 
before I go home tonight...

Robin.

> If so, then is adding the changes to io-pgtable-arm.c possible for 5.4 and then
> add the implementation specific code on top of Robin's stack later or do you
> feel they should come as part of a package deal?
> 
> Jordan
> 
>> Jordan Crouse (2):
>>    iommu/io-pgtable-arm: Add support for ARM_ADRENO_GPU_LPAE io-pgtable
>>      format
>>    iommu/arm-smmu: Add support for Adreno GPU pagetable formats
>>
>>   drivers/iommu/arm-smmu.c       |   8 +-
>>   drivers/iommu/io-pgtable-arm.c | 214 ++++++++++++++++++++++++++++++++++++++---
>>   drivers/iommu/io-pgtable.c     |   1 +
>>   include/linux/io-pgtable.h     |   2 +
>>   4 files changed, 209 insertions(+), 16 deletions(-)
>>
>> -- 
>> 2.7.4
>>
>> _______________________________________________
>> Freedreno mailing list
>> Freedreno@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/freedreno
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
