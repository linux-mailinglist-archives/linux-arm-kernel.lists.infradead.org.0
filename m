Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1EAE13BC5E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 10:21:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JXSvHMrI7hQGXU8OjFLGOgjXx1hlkewrWhG4xn0OCKM=; b=ATfJskdz3Ihtlo
	N13clAnRavf84Omw0FlDBQ1iYVpDKlxnmpLhpoZ9mH40IwNM47MPv6sagee3DjIPrpanQ65SlVW+q
	KUK2pkLSJm7gX4cIy1wNAW2duzWUAMGBcbf2+jQ4dlouI3eZGifdP3UHSqURq5Athf/8S5VYAkS7K
	yo5W8koWVoOOcG0N6o1778qYXNX5HhPJN4os0RkWKqwcmyN0f2cp7DKJZjvZ0yTSUDM5QojoLOEyJ
	vU/ayt4Vun88aleJCEYG0x5Vby6sTF6TJSonCVZe7glyQQJpf/+7BG/urLLvurgXYmp6aDaAFdUJd
	caEhHtgNnIlR1Yzs5fNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ires2-0004Pi-It; Wed, 15 Jan 2020 09:21:50 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irerr-0004P7-R4
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 09:21:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579080097;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Eiw17BZqQMy1phRlzdakGYNq15F5XtxHay/deSq4pFE=;
 b=ZzVaV5WZjizyt8bib0u/A3gu5kwk38UCCZwCfzVjMAg6oHauvi5jvIQsSSC4PqYNWRwwCB
 clRvC+zzWmU6TNkeVLKSQVMY5h9awTc6HqZ2OkLDVxTUvBmAQi8idBRRXprbAMIDjy1JZm
 patpRH2uJ1/o8IZLl5WM3BriecA+WoU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-423-oyoxPCwDMLK4UwYtYhkY9g-1; Wed, 15 Jan 2020 04:21:31 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 60BF78024D7;
 Wed, 15 Jan 2020 09:21:29 +0000 (UTC)
Received: from [10.36.117.108] (ovpn-117-108.ams2.redhat.com [10.36.117.108])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6B5221084381;
 Wed, 15 Jan 2020 09:21:27 +0000 (UTC)
Subject: Re: [PATCH] iommu/arm-smmu-v3: Add SMMUv3.2 range invalidation support
To: Rob Herring <robh@kernel.org>, iommu@lists.linux-foundation.org
References: <20200113143924.11576-1-robh@kernel.org>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <2ee87a12-1a0e-bd48-0209-b5e205342d44@redhat.com>
Date: Wed, 15 Jan 2020 10:21:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20200113143924.11576-1-robh@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MC-Unique: oyoxPCwDMLK4UwYtYhkY9g-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_012139_956317_1F892312 
X-CRM114-Status: GOOD (  24.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On 1/13/20 3:39 PM, Rob Herring wrote:
> Arm SMMUv3.2 adds support for TLB range invalidate operations.
> Support for range invalidate is determined by the RIL bit in the IDR3
> register.
> 
> The range invalidate is in units of the leaf page size and operates on
> 1-32 chunks of a power of 2 multiple pages. First we determine from the
> size what power of 2 multiple we can use and then adjust the granule to
> 32x that size.
> 
> Cc: Eric Auger <eric.auger@redhat.com>
> Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>
> Cc: Will Deacon <will@kernel.org>
> Cc: Robin Murphy <robin.murphy@arm.com>
> Cc: Joerg Roedel <joro@8bytes.org>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  drivers/iommu/arm-smmu-v3.c | 53 +++++++++++++++++++++++++++++++++++++
>  1 file changed, 53 insertions(+)
> 
> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> index e91b4a098215..8b6b3e2aa383 100644
> --- a/drivers/iommu/arm-smmu-v3.c
> +++ b/drivers/iommu/arm-smmu-v3.c
> @@ -70,6 +70,9 @@
>  #define IDR1_SSIDSIZE			GENMASK(10, 6)
>  #define IDR1_SIDSIZE			GENMASK(5, 0)
>  
> +#define ARM_SMMU_IDR3			0xc
> +#define IDR3_RIL			(1 << 10)
> +
>  #define ARM_SMMU_IDR5			0x14
>  #define IDR5_STALL_MAX			GENMASK(31, 16)
>  #define IDR5_GRAN64K			(1 << 6)
> @@ -327,9 +330,14 @@
>  #define CMDQ_CFGI_1_LEAF		(1UL << 0)
>  #define CMDQ_CFGI_1_RANGE		GENMASK_ULL(4, 0)
>  
> +#define CMDQ_TLBI_0_NUM			GENMASK_ULL(16, 12)
> +#define CMDQ_TLBI_RANGE_NUM_MAX		32
> +#define CMDQ_TLBI_0_SCALE		GENMASK_ULL(24, 20)
>  #define CMDQ_TLBI_0_VMID		GENMASK_ULL(47, 32)
>  #define CMDQ_TLBI_0_ASID		GENMASK_ULL(63, 48)
>  #define CMDQ_TLBI_1_LEAF		(1UL << 0)
> +#define CMDQ_TLBI_1_TTL			GENMASK_ULL(9, 8)
> +#define CMDQ_TLBI_1_TG			GENMASK_ULL(11, 10)
>  #define CMDQ_TLBI_1_VA_MASK		GENMASK_ULL(63, 12)
>  #define CMDQ_TLBI_1_IPA_MASK		GENMASK_ULL(51, 12)
>  
> @@ -455,9 +463,13 @@ struct arm_smmu_cmdq_ent {
>  		#define CMDQ_OP_TLBI_S2_IPA	0x2a
>  		#define CMDQ_OP_TLBI_NSNH_ALL	0x30
>  		struct {
> +			u8			num;
> +			u8			scale;
>  			u16			asid;
>  			u16			vmid;
>  			bool			leaf;
> +			u8			ttl;
> +			u8			tg;
>  			u64			addr;
>  		} tlbi;
>  
> @@ -595,6 +607,7 @@ struct arm_smmu_device {
>  #define ARM_SMMU_FEAT_HYP		(1 << 12)
>  #define ARM_SMMU_FEAT_STALL_FORCE	(1 << 13)
>  #define ARM_SMMU_FEAT_VAX		(1 << 14)
> +#define ARM_SMMU_FEAT_RANGE_INV		(1 << 15)
>  	u32				features;
>  
>  #define ARM_SMMU_OPT_SKIP_PREFETCH	(1 << 0)
> @@ -856,13 +869,21 @@ static int arm_smmu_cmdq_build_cmd(u64 *cmd, struct arm_smmu_cmdq_ent *ent)
>  		cmd[1] |= FIELD_PREP(CMDQ_CFGI_1_RANGE, 31);
>  		break;
>  	case CMDQ_OP_TLBI_NH_VA:
> +		cmd[0] |= FIELD_PREP(CMDQ_TLBI_0_NUM, ent->tlbi.num);
> +		cmd[0] |= FIELD_PREP(CMDQ_TLBI_0_SCALE, ent->tlbi.scale);
>  		cmd[0] |= FIELD_PREP(CMDQ_TLBI_0_ASID, ent->tlbi.asid);
>  		cmd[1] |= FIELD_PREP(CMDQ_TLBI_1_LEAF, ent->tlbi.leaf);
> +		cmd[1] |= FIELD_PREP(CMDQ_TLBI_1_TTL, ent->tlbi.ttl);
> +		cmd[1] |= FIELD_PREP(CMDQ_TLBI_1_TG, ent->tlbi.tg);
>  		cmd[1] |= ent->tlbi.addr & CMDQ_TLBI_1_VA_MASK;
>  		break;
>  	case CMDQ_OP_TLBI_S2_IPA:
> +		cmd[0] |= FIELD_PREP(CMDQ_TLBI_0_NUM, ent->tlbi.num);
> +		cmd[0] |= FIELD_PREP(CMDQ_TLBI_0_SCALE, ent->tlbi.scale);
>  		cmd[0] |= FIELD_PREP(CMDQ_TLBI_0_VMID, ent->tlbi.vmid);
>  		cmd[1] |= FIELD_PREP(CMDQ_TLBI_1_LEAF, ent->tlbi.leaf);
> +		cmd[1] |= FIELD_PREP(CMDQ_TLBI_1_TTL, ent->tlbi.ttl);
> +		cmd[1] |= FIELD_PREP(CMDQ_TLBI_1_TG, ent->tlbi.tg);
>  		cmd[1] |= ent->tlbi.addr & CMDQ_TLBI_1_IPA_MASK;
>  		break;
>  	case CMDQ_OP_TLBI_NH_ASID:
> @@ -2022,12 +2043,39 @@ static void arm_smmu_tlb_inv_range(unsigned long iova, size_t size,
>  		cmd.tlbi.vmid	= smmu_domain->s2_cfg.vmid;
>  	}
>  
> +	if (smmu->features & ARM_SMMU_FEAT_RANGE_INV) {
> +		unsigned long tg, scale;
> +
> +		/* Get the leaf page size */
> +		tg = __ffs(smmu_domain->domain.pgsize_bitmap);
it is unclear to me why you can't set tg with the granule parameter.
> +
> +		/* Determine the power of 2 multiple number of pages */
> +		scale = __ffs(size / (1UL << tg));
> +		cmd.tlbi.scale = scale;
> +
> +		cmd.tlbi.num = CMDQ_TLBI_RANGE_NUM_MAX - 1;
Also could you explain why you use CMDQ_TLBI_RANGE_NUM_MAX.


> +
> +		/* Convert page size of 12,14,16 (log2) to 1,2,3 */
> +		cmd.tlbi.tg = ((tg - ilog2(SZ_4K)) / 2) + 1;
> +
> +		/* Determine what level the granule is at */
> +		cmd.tlbi.ttl = 4 - ((ilog2(granule) - 3) / (tg - 3));
> +
> +		/* Adjust granule to the maximum range */
> +		granule = CMDQ_TLBI_RANGE_NUM_MAX * (1 << scale) * (1UL << tg);
spec says
Range = ((NUM+1)*2 ^ SCALE )*Translation_Granule_Size

Thanks

Eric

> +	}
> +
>  	while (iova < end) {
>  		if (i == CMDQ_BATCH_ENTRIES) {
>  			arm_smmu_cmdq_issue_cmdlist(smmu, cmds, i, false);
>  			i = 0;
>  		}
>  
> +		/* Only possible for range invalidate */
> +		if (granule > (end - iova))
> +			cmd.tlbi.num = ((end - iova) /
> +					(granule / CMDQ_TLBI_RANGE_NUM_MAX)) - 1;
> +
>  		cmd.tlbi.addr = iova;
>  		arm_smmu_cmdq_build_cmd(&cmds[i * CMDQ_ENT_DWORDS], &cmd);
>  		iova += granule;
> @@ -3449,6 +3497,11 @@ static int arm_smmu_device_hw_probe(struct arm_smmu_device *smmu)
>  	if (smmu->sid_bits <= STRTAB_SPLIT)
>  		smmu->features &= ~ARM_SMMU_FEAT_2_LVL_STRTAB;
>  
> +	/* IDR3 */
> +	reg = readl_relaxed(smmu->base + ARM_SMMU_IDR3);
> +	if (FIELD_GET(IDR3_RIL, reg))
> +		smmu->features |= ARM_SMMU_FEAT_RANGE_INV;
> +
>  	/* IDR5 */
>  	reg = readl_relaxed(smmu->base + ARM_SMMU_IDR5);
>  
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
