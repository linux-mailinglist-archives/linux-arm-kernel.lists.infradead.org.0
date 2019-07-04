Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0DAD5F5B1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 11:34:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=72aDFVQwSF7t6ppxrvH5nm7weGCpBNPpteML9EDVlsM=; b=YVvi56hDBseSmQ
	dgwKkuKo8pr8IFXVh24bf+VrqG5nhiRr3uiU6/FUKZkFPbVIx8Tv3KnLqUVAfI2sWkehjZ8WcWjaA
	Po//x0fp4qOGW42fqv4ToAKuVszwui3QiYKirCiikkEOin+JyNQEzbGb4IkbHCn27NuEKYNzi5ogD
	42BrcwvMWj6F60WCdBwzLlZ94lohm9HN7K5MhIEoxe/jI8qsgFybQAUv1MrGL1PxzslXrQboeDpM7
	ppyThpuhP829CatkTyoQnmifQ6fg/QhPCBLNsgxIMk+Er5fARMldk+OCxkGovuDsAgvHAYQnIi+eA
	QMOZD6FMGgVIU+oF6ZgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiy8e-0004nc-9r; Thu, 04 Jul 2019 09:34:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hiy8N-0004mP-7t
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 09:34:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 87C59344;
 Thu,  4 Jul 2019 02:34:28 -0700 (PDT)
Received: from [10.1.196.129] (ostrya.cambridge.arm.com [10.1.196.129])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 158643F703;
 Thu,  4 Jul 2019 02:34:26 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
Subject: Re: [PATCH 4/8] iommu/arm-smmu-v3: Add support for Substream IDs
To: Will Deacon <will@kernel.org>
References: <20190610184714.6786-1-jean-philippe.brucker@arm.com>
 <20190610184714.6786-5-jean-philippe.brucker@arm.com>
 <20190626180025.g4clm6qnbbna65de@willie-the-truck>
Message-ID: <104a20b7-ebb1-1569-3f6b-94438b9dbf76@arm.com>
Date: Thu, 4 Jul 2019 10:33:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190626180025.g4clm6qnbbna65de@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_023431_368504_EC8E5D4B 
X-CRM114-Status: GOOD (  19.37  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 jacob.jun.pan@linux.intel.com, joro@8bytes.org, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, eric.auger@redhat.com,
 iommu@lists.linux-foundation.org, robh+dt@kernel.org, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 26/06/2019 19:00, Will Deacon wrote:
> On Mon, Jun 10, 2019 at 07:47:10PM +0100, Jean-Philippe Brucker wrote:
>> At the moment, the SMMUv3 driver implements only one stage-1 or stage-2
>> page directory per device. However SMMUv3 allows more than one address
>> space for some devices, by providing multiple stage-1 page directories. In
>> addition to the Stream ID (SID), that identifies a device, we can now have
>> Substream IDs (SSID) identifying an address space. In PCIe, SID is called
>> Requester ID (RID) and SSID is called Process Address-Space ID (PASID).
>>
>> Prepare the driver for SSID support, by adding context descriptor tables
>> in STEs (previously a single static context descriptor). A complete
>> stage-1 walk is now performed like this by the SMMU:
>>
>>       Stream tables          Ctx. tables          Page tables
>>         +--------+   ,------->+-------+   ,------->+-------+
>>         :        :   |        :       :   |        :       :
>>         +--------+   |        +-------+   |        +-------+
>>    SID->|  STE   |---'  SSID->|  CD   |---'  IOVA->|  PTE  |--> IPA
>>         +--------+            +-------+            +-------+
>>         :        :            :       :            :       :
>>         +--------+            +-------+            +-------+
>>
>> Implement a single level of context descriptor table for now, but as with
>> stream and page tables, an SSID can be split to index multiple levels of
>> tables.
>>
>> In all stream table entries, we set S1DSS=SSID0 mode, making translations
>> without an SSID use context descriptor 0. Although it would be possible by
>> setting S1DSS=BYPASS, we don't currently support SSID when user selects
>> iommu.passthrough.
> 
> I don't understand your comment here: iommu.passthrough works just as it did
> before, right, since we set bypass in the STE config field so S1DSS is not
> relevant?

Yes the comment is wrong, or at least unclear. It isn't well defined how
SSID is supposed to work with iommu.passthrough, but I guess keeping the
same behavior as non-PASID DMA is what we want (any PASID-tagged DMA
also bypasses the SMMU.)

In the comment I was referring to another possibility, supporting SVA
and auxiliary domains even when iommu.passthrough is set. That would
require allocating context tables and setting S1DSS=BYPASS. But I don't
think it's a feature anyone needs at the moment.

> I also notice that SSID0 causes transactions with SSID==0 to
> abort. Is a PASID of 0 reserved, so this doesn't matter?

Yes, PASID 0 is reserved, we start allocation at 1

> 
>> @@ -1062,33 +1143,90 @@ static u64 arm_smmu_cpu_tcr_to_cd(u64 tcr)
>>  	return val;
>>  }
>>  
>> -static void arm_smmu_write_ctx_desc(struct arm_smmu_device *smmu,
>> -				    struct arm_smmu_s1_cfg *cfg)
>> +static int arm_smmu_write_ctx_desc(struct arm_smmu_domain *smmu_domain,
>> +				   int ssid, struct arm_smmu_ctx_desc *cd)
>>  {
>>  	u64 val;
>> +	bool cd_live;
>> +	struct arm_smmu_device *smmu = smmu_domain->smmu;
>> +	__le64 *cdptr = arm_smmu_get_cd_ptr(&smmu_domain->s1_cfg, ssid);
>>  
>>  	/*
>> -	 * We don't need to issue any invalidation here, as we'll invalidate
>> -	 * the STE when installing the new entry anyway.
>> +	 * This function handles the following cases:
>> +	 *
>> +	 * (1) Install primary CD, for normal DMA traffic (SSID = 0).
>> +	 * (2) Install a secondary CD, for SID+SSID traffic.
>> +	 * (3) Update ASID of a CD. Atomically write the first 64 bits of the
>> +	 *     CD, then invalidate the old entry and mappings.
>> +	 * (4) Remove a secondary CD.
>>  	 */
>> -	val = arm_smmu_cpu_tcr_to_cd(cfg->cd.tcr) |
>> +
>> +	if (!cdptr)
>> +		return -ENOMEM;
>> +
>> +	val = le64_to_cpu(cdptr[0]);
>> +	cd_live = !!(val & CTXDESC_CD_0_V);
>> +
>> +	if (!cd) { /* (4) */
>> +		cdptr[0] = 0;
> 
> Should we be using WRITE_ONCE here? (although I notice we don't seem to
> bother for STEs either...)

Sure, that's safer

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
