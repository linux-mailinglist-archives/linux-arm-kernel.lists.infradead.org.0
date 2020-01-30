Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A681D14DD8A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 16:07:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uRxofKmH9onLsypA7yC2T47sNU0fRe0wX4IUV1lTSTM=; b=Pmcn/HwQnjpkG8
	GQIvDrLu29+9qR2IfnyEmdHQkozOChI1sXns8ICWsD3oR9LKkjIT/w9DK7VVRAsIfHTJLBM3XwWzU
	SECxajQO/iLjm685ns8LaxyPR695dXNnpLPYgGlCXfrgk96YFuD7B/8ouWYk+m6bRpKMpW1m9kRi3
	VDwJslrjzGW7ZrfY9QkzZwxGQwKq4fF7zNyUF3j0oGBZOm+vZlPR6KeEWr0tK3uHPVG56o/KwWJQk
	zUCILSKXmM7CYLmgk8WF7o1hq703XTGvKUijcEIIrNixK1jwU26jVA71ruAKfrHqqnQ97+sGDgJtM
	rWlp85MOZ2iw/VbATxaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixBPG-0000Bh-P0; Thu, 30 Jan 2020 15:06:58 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixBP7-0000AZ-G9
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 15:06:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580396806;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4FWt/5GC6Sg8TpjVgI9koAHVrBQ+bTytZU+x52NDZ9g=;
 b=QNABN8pTmRVnigeVXFxlAPadPObIwVNxqoBeAHieBcsKHlaNFMPMb1l1sxLPwmGEIVZSPl
 NNAjiPdfwzO0ALqf8p0PF2JcmuMVMUo67taXHnaiGKB06z5gLp2KDpR8Wt9F0KK+0aDb0Q
 +yMzvXKXxEAtRLk8wCOhDXixcqpyfZc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-270-7KRMHG3wOl26wLrZUBAIPQ-1; Thu, 30 Jan 2020 10:06:26 -0500
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 401E38017CC;
 Thu, 30 Jan 2020 15:06:25 +0000 (UTC)
Received: from [10.36.116.37] (ovpn-116-37.ams2.redhat.com [10.36.116.37])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id D5A78CFC2;
 Thu, 30 Jan 2020 15:06:21 +0000 (UTC)
Subject: Re: [PATCH v2] iommu/arm-smmu-v3: Add SMMUv3.2 range invalidation
 support
To: Rob Herring <robh@kernel.org>, iommu@lists.linux-foundation.org
References: <20200117211628.27888-1-robh@kernel.org>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <2d04f201-3457-08ad-db8e-735f8315d74e@redhat.com>
Date: Thu, 30 Jan 2020 16:06:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20200117211628.27888-1-robh@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: 7KRMHG3wOl26wLrZUBAIPQ-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_070649_617828_A6A267C5 
X-CRM114-Status: GOOD (  28.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
On 1/17/20 10:16 PM, Rob Herring wrote:
> Arm SMMUv3.2 adds support for TLB range invalidate operations.
> Support for range invalidate is determined by the RIL bit in the IDR3
> register.
> 
> The range invalidate is in units of the leaf page size and operates on
> 1-32 chunks of a power of 2 multiple pages. First, we determine from the
> size what power of 2 multiple we can use. Then we calculate how many
> chunks (1-31) of the power of 2 size for the range on the iteration. On
> each iteration, we move up in size by at least 5 bits.
> 
> Cc: Eric Auger <eric.auger@redhat.com>
> Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>
> Cc: Will Deacon <will@kernel.org>
> Cc: Robin Murphy <robin.murphy@arm.com>
> Cc: Joerg Roedel <joro@8bytes.org>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  drivers/iommu/arm-smmu-v3.c | 66 ++++++++++++++++++++++++++++++++++++-
>  1 file changed, 65 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> index e91b4a098215..0ee561db7149 100644
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
> +#define CMDQ_TLBI_RANGE_NUM_MAX		31
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
> @@ -2003,7 +2024,7 @@ static void arm_smmu_tlb_inv_range(unsigned long iova, size_t size,
>  {
>  	u64 cmds[CMDQ_BATCH_ENTRIES * CMDQ_ENT_DWORDS];
>  	struct arm_smmu_device *smmu = smmu_domain->smmu;
> -	unsigned long start = iova, end = iova + size;
> +	unsigned long start = iova, end = iova + size, num_pages = 0, tg = 0;
>  	int i = 0;
>  	struct arm_smmu_cmdq_ent cmd = {
>  		.tlbi = {
> @@ -2022,12 +2043,50 @@ static void arm_smmu_tlb_inv_range(unsigned long iova, size_t size,
>  		cmd.tlbi.vmid	= smmu_domain->s2_cfg.vmid;
>  	}
>  
> +	if (smmu->features & ARM_SMMU_FEAT_RANGE_INV) {
> +		/* Get the leaf page size */
> +		tg = __ffs(smmu_domain->domain.pgsize_bitmap);
> +
> +		/* Convert page size of 12,14,16 (log2) to 1,2,3 */
> +		cmd.tlbi.tg = ((tg - ilog2(SZ_4K)) / 2) + 1;
> +
> +		/* Determine what level the granule is at */
> +		cmd.tlbi.ttl = 4 - ((ilog2(granule) - 3) / (tg - 3));
> +
> +		num_pages = size / (1UL << tg);
> +	}
> +
>  	while (iova < end) {
>  		if (i == CMDQ_BATCH_ENTRIES) {
>  			arm_smmu_cmdq_issue_cmdlist(smmu, cmds, i, false);
>  			i = 0;
>  		}
>  
> +		if (smmu->features & ARM_SMMU_FEAT_RANGE_INV) {
> +			/*
> +			 * On each iteration of the loop, the range is 5 bits
> +			 * worth of the aligned size remaining.
> +			 * The range in pages is:
> +			 *
> +			 * range = (num_pages & (0x1f << __ffs(num_pages)))
> +			 */
> +			unsigned long scale, num;
> +
> +			/* Determine the power of 2 multiple number of pages */
> +			scale = __ffs(num_pages);
> +			cmd.tlbi.scale = scale;
> +
> +			/* Determine how many chunks of 2^scale size we have */
> +			num = (num_pages >> scale) & CMDQ_TLBI_RANGE_NUM_MAX;
> +			cmd.tlbi.num = num - 1;
> +
> +			/* range is num * 2^scale * pgsize */
> +			granule = num << (scale + tg);
> +
> +			/* Clear out the lower order bits for the next iteration */
> +			num_pages -= num << scale;
Regarding the 2 options given in
https://lore.kernel.org/linux-arm-kernel/CAL_JsqKABoE+0crGwyZdNogNgEoG=MOOpf6deQgH6s73c0UNdA@mail.gmail.com/raw,

I understand you implemented 2) but I still do not understand why you
preferred that one against 1).

In your case of 1023*4k pages this will invalidate by 31 32*2^0*4K +
31*2^0*4K pages
whereas you could achieve that with 10 invalidations with the 1st algo.
I did not get the case where it is more efficient. Please can you detail.

Also a question about TG. Reading the spec again & again, it is said
entries to be invalidated were inserted using this
Granule size. Here you pick the lowest granule supported by the domain.
Does it mean this was the one being used?

Thanks

Eric
> +		}
> +
>  		cmd.tlbi.addr = iova;
>  		arm_smmu_cmdq_build_cmd(&cmds[i * CMDQ_ENT_DWORDS], &cmd);
>  		iova += granule;
> @@ -3449,6 +3508,11 @@ static int arm_smmu_device_hw_probe(struct arm_smmu_device *smmu)
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
