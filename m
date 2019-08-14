Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B2F8DBFC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 19:35:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aREKWCrRU5tbeuLktOJBf8O7/KrmZFCTYDVdwse+d5Q=; b=GiUAQVjOuItXnWhckWtKsD3Mf
	MvQpJ4dR/BJTYIfsPkyV+VEYhc+iZlgCgsw0MuLQKfRTbPsCVhW5XPHuNkduvUCywYcr8aM9YqZNY
	ajjZb3Zys1Xl8oSXuBOynszWoxZ7EvRVTNldHLPPFRlIxYQTRFG9VxYxOiykWDdPPkH3NYNGAmayJ
	gXTjevjXJvYL55JQdKXPt0AW4fg7xI8rIHchbsge/rgqMMkaF/cgeZjZ3Bp9Sp0v50ZD/IDtZPG2N
	W/eZ7ehgpg+dF6A3jrnw37Q+Fp9evIwhYTWx9bX2eZLhl7+I2PEmxb0619hNiRCNv4vxRdvqU2ZqE
	xssI/F87w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxxBU-0004Mm-S4; Wed, 14 Aug 2019 17:35:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxxBF-0004E3-Ax
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 17:35:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 74608344;
 Wed, 14 Aug 2019 10:35:24 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6CBEB3F694;
 Wed, 14 Aug 2019 10:35:23 -0700 (PDT)
Subject: Re: [PATCH 01/15] iommu/arm-smmu: Convert GR0 registers to bitfields
To: Will Deacon <will@kernel.org>
References: <cover.1565369764.git.robin.murphy@arm.com>
 <910cad718be01904db20ce73d8d54e7481290136.1565369764.git.robin.murphy@arm.com>
 <20190814172030.accr7azgkkkwumt2@willie-the-truck>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <4d53b058-0024-02cd-27bb-7a44b766c847@arm.com>
Date: Wed, 14 Aug 2019 18:35:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190814172030.accr7azgkkkwumt2@willie-the-truck>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_103525_428458_BBC60B5B 
X-CRM114-Status: GOOD (  15.24  )
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
Cc: gregory.clement@bootlin.com, iommu@lists.linux-foundation.org,
 bjorn.andersson@linaro.org, robdclark@gmail.com, vivek.gautam@codeaurora.org,
 joro@8bytes.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 14/08/2019 18:20, Will Deacon wrote:
> On Fri, Aug 09, 2019 at 06:07:38PM +0100, Robin Murphy wrote:
>> FIELD_PREP remains a terrible name, but the overall simplification will
>> make further work on this stuff that much more manageable. This also
>> serves as an audit of the header, wherein we can impose a consistent
>> grouping and ordering of the offset and field definitions
>>
>> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
>> ---
>>   drivers/iommu/arm-smmu-regs.h | 126 ++++++++++++++++------------------
>>   drivers/iommu/arm-smmu.c      |  51 +++++++-------
>>   2 files changed, 84 insertions(+), 93 deletions(-)
>>
>> diff --git a/drivers/iommu/arm-smmu-regs.h b/drivers/iommu/arm-smmu-regs.h
>> index 1c278f7ae888..d189f025537a 100644
>> --- a/drivers/iommu/arm-smmu-regs.h
>> +++ b/drivers/iommu/arm-smmu-regs.h
>> @@ -10,111 +10,101 @@
>>   #ifndef _ARM_SMMU_REGS_H
>>   #define _ARM_SMMU_REGS_H
>>   
>> +#include <linux/bits.h>
>> +
>>   /* Configuration registers */
>>   #define ARM_SMMU_GR0_sCR0		0x0
>> -#define sCR0_CLIENTPD			(1 << 0)
>> -#define sCR0_GFRE			(1 << 1)
>> -#define sCR0_GFIE			(1 << 2)
>> -#define sCR0_EXIDENABLE			(1 << 3)
>> -#define sCR0_GCFGFRE			(1 << 4)
>> -#define sCR0_GCFGFIE			(1 << 5)
>> -#define sCR0_USFCFG			(1 << 10)
>> -#define sCR0_VMIDPNE			(1 << 11)
>> -#define sCR0_PTM			(1 << 12)
>> -#define sCR0_FB				(1 << 13)
>> -#define sCR0_VMID16EN			(1 << 31)
>> -#define sCR0_BSU_SHIFT			14
>> -#define sCR0_BSU_MASK			0x3
>> +#define sCR0_VMID16EN			BIT(31)
>> +#define sCR0_BSU			GENMASK(15, 14)
>> +#define sCR0_FB				BIT(13)
>> +#define sCR0_PTM			BIT(12)
>> +#define sCR0_VMIDPNE			BIT(11)
>> +#define sCR0_USFCFG			BIT(10)
>> +#define sCR0_GCFGFIE			BIT(5)
>> +#define sCR0_GCFGFRE			BIT(4)
>> +#define sCR0_EXIDENABLE			BIT(3)
>> +#define sCR0_GFIE			BIT(2)
>> +#define sCR0_GFRE			BIT(1)
>> +#define sCR0_CLIENTPD			BIT(0)
>>   
>>   /* Auxiliary Configuration register */
>>   #define ARM_SMMU_GR0_sACR		0x10
>>   
>>   /* Identification registers */
>>   #define ARM_SMMU_GR0_ID0		0x20
>> +#define ID0_S1TS			BIT(30)
>> +#define ID0_S2TS			BIT(29)
>> +#define ID0_NTS				BIT(28)
>> +#define ID0_SMS				BIT(27)
>> +#define ID0_ATOSNS			BIT(26)
>> +#define ID0_PTFS_NO_AARCH32		BIT(25)
>> +#define ID0_PTFS_NO_AARCH32S		BIT(24)
>> +#define ID0_CTTW			BIT(14)
>> +#define ID0_NUMIRPT			GENMASK(23, 16)
> 
> nit: assuming this should be above ID0_CTTW so things are in descending
> bit order?

Bah, indeed it should. Fixed now.
> Other than that, looks good to me.

Thanks!

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
