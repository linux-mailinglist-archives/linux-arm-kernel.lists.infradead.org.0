Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2A58124E8C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 18:00:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gQCI9CA/sHyMOzpwzRFlZUZq6lgmN0Bc0siIh75GUYQ=; b=IqyltSyf8ZDFjE
	Y4bRVSoPtSdGFgJCTOjyrUHPKMl7kGCUZauRbo7h4B5h8oEb01cwQZhLUf/PDXcMk2LJIKjTDUO2V
	Nyb/vV+gtE6r+gzQU+D6PNolbcbZTty1qKW3vACnHCQ92cYP2faPhbl7LAL6B4AX0G/IvgyMjCTs/
	OvgkPjEVHY9pZi1sh7YdkXz4/hcicvDG2ZzlALvA9dGuylplEZDBbK3nK4rwHzCgLhmU868nWTq8K
	zUa3i/oFhz4fxSQJyKB6OgLjKgYeQ/b3mAhBy1AJfJWC5Hyx8akSBOXP+/CDTQy/kPE3thux9CoMP
	lRx9vGsnvkkCPJNvgNNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihcg7-00057T-6F; Wed, 18 Dec 2019 17:00:03 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihcfn-00056a-H2
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 16:59:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576688381;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4Za81kYce2Fs+Hb3XKFLJLsPu+11LvEPxuKMd/7XIn8=;
 b=AiYbgD+5NB4VmxHdqO1teLpK0+feyS2jKU8OgEqTmBBnmwXGL7i9DGNk/dXOFDjeAnvk00
 xEjrbSqns4sHqWtlpZVUnM355QO2M/Os7NK5ZMTo7t/MYB5lSnhr5HIC2VTzkk7QKFuo0l
 bGzNi5i+ZzEEbbmqRTymTmJ2FKApaR4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-371-BHfeu4x5N7OvigT_OZNnDg-1; Wed, 18 Dec 2019 11:59:36 -0500
X-MC-Unique: BHfeu4x5N7OvigT_OZNnDg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 409E219586C2;
 Wed, 18 Dec 2019 16:59:34 +0000 (UTC)
Received: from [10.36.116.117] (ovpn-116-117.ams2.redhat.com [10.36.116.117])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B6E3F26DEC;
 Wed, 18 Dec 2019 16:59:29 +0000 (UTC)
Subject: Re: [PATCH v3 07/13] iommu/arm-smmu-v3: Add support for Substream IDs
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
References: <20191209180514.272727-1-jean-philippe@linaro.org>
 <20191209180514.272727-8-jean-philippe@linaro.org>
 <aeed148a-3c55-6e97-8d97-efa4f8c6d9f4@redhat.com>
 <20191218160759.GF2371701@myrica>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <3f8e85f6-92ac-79a2-f048-780b8712ae99@redhat.com>
Date: Wed, 18 Dec 2019 17:59:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20191218160759.GF2371701@myrica>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_085943_650705_15947233 
X-CRM114-Status: GOOD (  28.78  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 linux-pci@vger.kernel.org, joro@8bytes.org, sudeep.holla@arm.com,
 rjw@rjwysocki.net, robin.murphy@arm.com, linux-acpi@vger.kernel.org,
 iommu@lists.linux-foundation.org, robh+dt@kernel.org,
 jonathan.cameron@huawei.com, guohanjun@huawei.com, bhelgaas@google.com,
 zhangfei.gao@linaro.org, will@kernel.org, linux-arm-kernel@lists.infradead.org,
 lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jean,

On 12/18/19 5:07 PM, Jean-Philippe Brucker wrote:
> On Tue, Dec 17, 2019 at 05:43:59PM +0100, Auger Eric wrote:
>>> -static void arm_smmu_write_ctx_desc(struct arm_smmu_device *smmu,
>>> -				    struct arm_smmu_s1_cfg *cfg)
>>> +static int arm_smmu_write_ctx_desc(struct arm_smmu_domain *smmu_domain,
>>> +				   int ssid, struct arm_smmu_ctx_desc *cd)
>>>  {
>>> -	u64 val;
>>> -	__le64 *cdptr = cfg->table.ptr;
>>> -
>>>  	/*
>>> -	 * We don't need to issue any invalidation here, as we'll invalidate
>>> -	 * the STE when installing the new entry anyway.
>>> +	 * This function handles the following cases:
>>> +	 *
>>> +	 * (1) Install primary CD, for normal DMA traffic (SSID = 0).
>>> +	 * (2) Install a secondary CD, for SID+SSID traffic.
>>> +	 * (3) Update ASID of a CD. Atomically write the first 64 bits of the
>>> +	 *     CD, then invalidate the old entry and mappings.
>>> +	 * (4) Remove a secondary CD.
>> I see arm_smmu_write_ctx_desc getting called with non null cd in
>> arm_smmu_attach_dev but I do not see it removed in the detach path?
> 
> No we don't have to remove the primary CD, since detach clears the STE and
> frees the CD tables.
OK
> 
>>>  	 */
>>> -	val = arm_smmu_cpu_tcr_to_cd(cfg->cd.tcr) |
>>> -#ifdef __BIG_ENDIAN
>>> -	      CTXDESC_CD_0_ENDI |
>>> -#endif
>>> -	      CTXDESC_CD_0_R | CTXDESC_CD_0_A | CTXDESC_CD_0_ASET |
>>> -	      CTXDESC_CD_0_AA64 | FIELD_PREP(CTXDESC_CD_0_ASID, cfg->cd.asid) |
>>> -	      CTXDESC_CD_0_V;
>>> +	u64 val;
>>> +	bool cd_live;
>>> +	struct arm_smmu_device *smmu = smmu_domain->smmu;
>>> +	__le64 *cdptr = smmu_domain->s1_cfg.table.ptr + ssid *
>>> +			CTXDESC_CD_DWORDS;>
>>> -	/* STALL_MODEL==0b10 && CD.S==0 is ILLEGAL */
>>> -	if (smmu->features & ARM_SMMU_FEAT_STALL_FORCE)
>>> -		val |= CTXDESC_CD_0_S;
>>> +	val = le64_to_cpu(cdptr[0]);
>>> +	cd_live = !!(val & CTXDESC_CD_0_V);
>>>  
>>> -	cdptr[0] = cpu_to_le64(val);
>>> +	if (!cd) { /* (4) */
>>> +		val = 0;
>>> +	} else if (cd_live) { /* (3) */
>>> +		val &= ~CTXDESC_CD_0_ASID;
>>> +		val |= FIELD_PREP(CTXDESC_CD_0_ASID, cd->asid);
>>> +		/*
>>> +		 * Until CD+TLB invalidation, both ASIDs may be used for tagging
>>> +		 * this substream's traffic
>>> +		 */
>>> +	} else { /* (1) and (2) */
>>> +		cdptr[1] = cpu_to_le64(cd->ttbr & CTXDESC_CD_1_TTB0_MASK);
>>> +		cdptr[2] = 0;
>>> +		cdptr[3] = cpu_to_le64(cd->mair);
>>> +
>>> +		/*
>>> +		 * STE is live, and the SMMU might fetch this CD at any
>>> +		 * time. Ensure that it observes the rest of the CD before we
>>> +		 * enable it.
>> Mostly, on't you want the invalid state to be seen?
Sorry I wanted to say you mostly want to enforce the INVALID bit (what I
understand from your below explanations). I was confused by the wording
"Ensure that it observes the rest of the CD before we enable it".
> 
> Sorry I didn't get your question. Without the sync, the SMMU could read an
> invalid address in CD[1], read V=1 in CD[0] and proceed with dereferencing
> the bogus pointer before seeing our update to CD[1].
> 
> To prevent this we follow the update procedure described in IHI0070Ca
> 3.21.3.1 (Configuration structure update procedure):
> 
>     Because the SMMU can read any reachable structure at any time, and is not
>     required to read the double-words of the structure in order, Arm
>     recommends that the following procedure is used to initialize structures:
>     1. Structure starts invalid, having V == 0.
>     2. Fill in all fields, leaving V == 0, then perform a DSB operation to
>        ensure written data is observable from the SMMU.
>     3. Issue a CMD_CFGI_<STRUCT>, as appropriate.
>     4. Issue a CMD_SYNC, and wait for completion.
>     5. Set V to 1, then perform a DSB operation to ensure write is
>        observable by the SMMU.
>     6. Issue CMD_CFGI_<STRUCT>, as appropriate.
>     7. Optionally issue a CMD_SYNC, and wait for completion. This must be
>        done if a subsequent software operation, such as enabling device
>        DMA, depends on the SMMU using the new structure.
> 
>>> @@ -1664,6 +1739,7 @@ static void arm_smmu_write_strtab_ent(struct arm_smmu_master *master, u32 sid,
>>>  	if (s1_cfg) {
>>>  		BUG_ON(ste_live);
>>>  		dst[1] = cpu_to_le64(
>>> +			 FIELD_PREP(STRTAB_STE_1_S1DSS, STRTAB_STE_1_S1DSS_SSID0) |
>>>  			 FIELD_PREP(STRTAB_STE_1_S1CIR, STRTAB_STE_1_S1C_CACHE_WBRA) |
>>>  			 FIELD_PREP(STRTAB_STE_1_S1COR, STRTAB_STE_1_S1C_CACHE_WBRA) |
>>>  			 FIELD_PREP(STRTAB_STE_1_S1CSH, ARM_SMMU_SH_ISH) |
>>> @@ -1674,7 +1750,9 @@ static void arm_smmu_write_strtab_ent(struct arm_smmu_master *master, u32 sid,
>>>  			dst[1] |= cpu_to_le64(STRTAB_STE_1_S1STALLD);
>>>  
>>>  		val |= (s1_cfg->table.ptr_dma & STRTAB_STE_0_S1CTXPTR_MASK) |
>>> -			FIELD_PREP(STRTAB_STE_0_CFG, STRTAB_STE_0_CFG_S1_TRANS);
>>> +			FIELD_PREP(STRTAB_STE_0_CFG, STRTAB_STE_0_CFG_S1_TRANS) |
>>> +			FIELD_PREP(STRTAB_STE_0_S1CDMAX, s1_cfg->s1cdmax) |
>>> +			FIELD_PREP(STRTAB_STE_0_S1FMT, s1_cfg->s1fmt);
>> Do I understand correctly that each time we update the CD, we also
>> update the STE. This is not wrong but theoretically this is not needed,
>> right?
> 
> Only the primary CD. Once we add SVA (or auxiliary domains) we need to
> update secondary CDs while the STE is live. This series is just
> preparation for SVA support. I didn't include the full support because it
> requires another 25+ patches.
OK
> 
>> This also explains why you do not need the CMD_PREFETCH_CONFIG with ssid
>> because you invalidate the config per sid?
> 
> Hm, I didn't add a CMD_PREFETCH_CONFIG to CDs because I don't know if it's
> useful. Maybe as future optimization.
OK

Thanks

Eric
> 
> Thanks,
> Jean
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
