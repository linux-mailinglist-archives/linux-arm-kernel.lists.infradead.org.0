Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C47B03C8DF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 12:26:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1saT252WuU2nQ00/+2U1NoBVsbb78gf6tQyGQWrjZW4=; b=mFv5Kow3qdgrUt
	e4prg+hzOyTf5jCPlf1lfCMyaLe2grdcm3barx5SZwdiCfLXHHqSLZJWoh1GG++46U0F4YUBM/PhU
	4Eu7BSwJ7SQEv4mOcs6pOUzoQ40DdzpwLL2+z9M9MPYyCwGbhAJHDK9C261pw94NiIqqYXDc2kDRq
	Bk2DdjWIyK0OlrwC6RwI+pE0gGi52qPD5h7YFKBLTyeuUXR6IefEu9hAeHs/nD1Xf7SwJsgfJ2U5k
	bwHG2ylmz00k5byfpJZDAosI7oMX3SLif2RSzb2bnGi2qvlkwLHpjU4O3YJ4hiEJvxnLUOEHDjDQI
	SYj1G3uVbE9fHm8wglhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hadyo-0004sr-Ko; Tue, 11 Jun 2019 10:26:14 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hadsk-0003n0-Mq
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 10:20:02 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 3DDE018445574F88B1D9;
 Tue, 11 Jun 2019 18:19:53 +0800 (CST)
Received: from localhost (10.202.226.61) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Tue, 11 Jun 2019
 18:19:50 +0800
Date: Tue, 11 Jun 2019 11:19:39 +0100
From: Jonathan Cameron <jonathan.cameron@huawei.com>
To: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
Subject: Re: [PATCH 4/8] iommu/arm-smmu-v3: Add support for Substream IDs
Message-ID: <20190611111939.000030e9@huawei.com>
In-Reply-To: <20190610184714.6786-5-jean-philippe.brucker@arm.com>
References: <20190610184714.6786-1-jean-philippe.brucker@arm.com>
 <20190610184714.6786-5-jean-philippe.brucker@arm.com>
Organization: Huawei
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.226.61]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_031959_250122_9EB76F28 
X-CRM114-Status: GOOD (  31.21  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 robh+dt@kernel.org, robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 10 Jun 2019 19:47:10 +0100
Jean-Philippe Brucker <jean-philippe.brucker@arm.com> wrote:

> At the moment, the SMMUv3 driver implements only one stage-1 or stage-2
> page directory per device. However SMMUv3 allows more than one address
> space for some devices, by providing multiple stage-1 page directories. In
> addition to the Stream ID (SID), that identifies a device, we can now have
> Substream IDs (SSID) identifying an address space. In PCIe, SID is called
> Requester ID (RID) and SSID is called Process Address-Space ID (PASID).
> 
> Prepare the driver for SSID support, by adding context descriptor tables
> in STEs (previously a single static context descriptor). A complete
> stage-1 walk is now performed like this by the SMMU:
> 
>       Stream tables          Ctx. tables          Page tables
>         +--------+   ,------->+-------+   ,------->+-------+
>         :        :   |        :       :   |        :       :
>         +--------+   |        +-------+   |        +-------+
>    SID->|  STE   |---'  SSID->|  CD   |---'  IOVA->|  PTE  |--> IPA
>         +--------+            +-------+            +-------+
>         :        :            :       :            :       :
>         +--------+            +-------+            +-------+
> 
> Implement a single level of context descriptor table for now, but as with
> stream and page tables, an SSID can be split to index multiple levels of
> tables.
> 
> In all stream table entries, we set S1DSS=SSID0 mode, making translations
> without an SSID use context descriptor 0. Although it would be possible by
> setting S1DSS=BYPASS, we don't currently support SSID when user selects
> iommu.passthrough.
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>

Hi Jean-Phillipe,

A few trivial comments inline, mostly around wondering if a few bits
of refactoring can get pulled out before this and hopefully stop diff
making such a mess of this patch from a readability point of view!

Thanks,

Jonathan

> ---
>  drivers/iommu/arm-smmu-v3.c | 238 +++++++++++++++++++++++++++++-------
>  1 file changed, 192 insertions(+), 46 deletions(-)
> 
> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> index 3254f473e681..d90eb604b65d 100644
> --- a/drivers/iommu/arm-smmu-v3.c
> +++ b/drivers/iommu/arm-smmu-v3.c
> @@ -219,6 +219,11 @@
>  #define STRTAB_STE_0_S1CTXPTR_MASK	GENMASK_ULL(51, 6)
>  #define STRTAB_STE_0_S1CDMAX		GENMASK_ULL(63, 59)
>  
> +#define STRTAB_STE_1_S1DSS		GENMASK_ULL(1, 0)
> +#define STRTAB_STE_1_S1DSS_TERMINATE	0x0
> +#define STRTAB_STE_1_S1DSS_BYPASS	0x1
> +#define STRTAB_STE_1_S1DSS_SSID0	0x2
> +
>  #define STRTAB_STE_1_S1C_CACHE_NC	0UL
>  #define STRTAB_STE_1_S1C_CACHE_WBRA	1UL
>  #define STRTAB_STE_1_S1C_CACHE_WT	2UL
> @@ -305,6 +310,7 @@
>  #define CMDQ_PREFETCH_1_SIZE		GENMASK_ULL(4, 0)
>  #define CMDQ_PREFETCH_1_ADDR_MASK	GENMASK_ULL(63, 12)
>  
> +#define CMDQ_CFGI_0_SSID		GENMASK_ULL(31, 12)
>  #define CMDQ_CFGI_0_SID			GENMASK_ULL(63, 32)
>  #define CMDQ_CFGI_1_LEAF		(1UL << 0)
>  #define CMDQ_CFGI_1_RANGE		GENMASK_ULL(4, 0)
> @@ -421,8 +427,11 @@ struct arm_smmu_cmdq_ent {
>  
>  		#define CMDQ_OP_CFGI_STE	0x3
>  		#define CMDQ_OP_CFGI_ALL	0x4
> +		#define CMDQ_OP_CFGI_CD		0x5
> +		#define CMDQ_OP_CFGI_CD_ALL	0x6
>  		struct {
>  			u32			sid;
> +			u32			ssid;
>  			union {
>  				bool		leaf;
>  				u8		span;
> @@ -506,16 +515,25 @@ struct arm_smmu_strtab_l1_desc {
>  	dma_addr_t			l2ptr_dma;
>  };
>  
> +struct arm_smmu_cd_table {
> +	__le64				*ptr;
> +	dma_addr_t			ptr_dma;
> +};
> +
> +struct arm_smmu_ctx_desc {
> +	u16				asid;
> +	u64				ttbr;
> +	u64				tcr;
> +	u64				mair;
> +};
> +
>  struct arm_smmu_s1_cfg {
> -	__le64				*cdptr;
> -	dma_addr_t			cdptr_dma;
> -
> -	struct arm_smmu_ctx_desc {
> -		u16	asid;
> -		u64	ttbr;
> -		u64	tcr;
> -		u64	mair;
> -	}				cd;
> +	u8				s1fmt;
> +	u8				s1cdmax;
> +	struct arm_smmu_cd_table	table;

This new structure is a sensible addition and makes the code more readable,
but it's not directly tied to the main flow of this patch, perhaps pull it out?

> +
> +	/* Context descriptor 0, when substreams are disabled or s1dss = 0b10 */
> +	struct arm_smmu_ctx_desc	cd;
I've not checked in detail but feels like you could pull this refactor out as well
as a trivial precursor and make this patch easier to read as a result?

>  };
>  
>  struct arm_smmu_s2_cfg {
> @@ -811,10 +829,16 @@ static int arm_smmu_cmdq_build_cmd(u64 *cmd, struct arm_smmu_cmdq_ent *ent)
>  		cmd[1] |= FIELD_PREP(CMDQ_PREFETCH_1_SIZE, ent->prefetch.size);
>  		cmd[1] |= ent->prefetch.addr & CMDQ_PREFETCH_1_ADDR_MASK;
>  		break;
> +	case CMDQ_OP_CFGI_CD:
> +		cmd[0] |= FIELD_PREP(CMDQ_CFGI_0_SSID, ent->cfgi.ssid);
> +		/* Fallthrough */
>  	case CMDQ_OP_CFGI_STE:
>  		cmd[0] |= FIELD_PREP(CMDQ_CFGI_0_SID, ent->cfgi.sid);
>  		cmd[1] |= FIELD_PREP(CMDQ_CFGI_1_LEAF, ent->cfgi.leaf);
>  		break;
> +	case CMDQ_OP_CFGI_CD_ALL:
> +		cmd[0] |= FIELD_PREP(CMDQ_CFGI_0_SID, ent->cfgi.sid);
> +		break;
>  	case CMDQ_OP_CFGI_ALL:
>  		/* Cover the entire SID range */
>  		cmd[1] |= FIELD_PREP(CMDQ_CFGI_1_RANGE, 31);
> @@ -1045,6 +1069,63 @@ static int arm_smmu_cmdq_issue_sync(struct arm_smmu_device *smmu)
>  }
>  
>  /* Context descriptor manipulation functions */
> +static void arm_smmu_sync_cd(struct arm_smmu_domain *smmu_domain,
> +			     int ssid, bool leaf)
> +{
> +	size_t i;
> +	unsigned long flags;
> +	struct arm_smmu_master *master;
> +	struct arm_smmu_device *smmu = smmu_domain->smmu;
> +	struct arm_smmu_cmdq_ent cmd = {
> +		.opcode	= CMDQ_OP_CFGI_CD,
> +		.cfgi	= {
> +			.ssid	= ssid,
> +			.leaf	= leaf,
> +		},
> +	};
> +
> +	spin_lock_irqsave(&smmu_domain->devices_lock, flags);
> +	list_for_each_entry(master, &smmu_domain->devices, domain_head) {
> +		for (i = 0; i < master->num_sids; i++) {
> +			cmd.cfgi.sid = master->sids[i];
> +			arm_smmu_cmdq_issue_cmd(smmu, &cmd);
> +		}
> +	}
> +	spin_unlock_irqrestore(&smmu_domain->devices_lock, flags);
> +
> +	arm_smmu_cmdq_issue_sync(smmu);
> +}
> +
> +static int arm_smmu_alloc_cd_leaf_table(struct arm_smmu_device *smmu,
> +					struct arm_smmu_cd_table *table,
> +					size_t num_entries)
> +{
> +	size_t size = num_entries * (CTXDESC_CD_DWORDS << 3);
> +
> +	table->ptr = dmam_alloc_coherent(smmu->dev, size, &table->ptr_dma,
> +					 GFP_KERNEL | __GFP_ZERO);
> +	if (!table->ptr) {
> +		dev_warn(smmu->dev,
> +			 "failed to allocate context descriptor table\n");
> +		return -ENOMEM;
> +	}
> +	return 0;
> +}
> +
> +static void arm_smmu_free_cd_leaf_table(struct arm_smmu_device *smmu,
> +					struct arm_smmu_cd_table *table,
> +					size_t num_entries)
> +{
> +	size_t size = num_entries * (CTXDESC_CD_DWORDS << 3);
> +
> +	dmam_free_coherent(smmu->dev, size, table->ptr, table->ptr_dma);
> +}
> +
> +static __le64 *arm_smmu_get_cd_ptr(struct arm_smmu_s1_cfg *cfg, u32 ssid)
> +{
> +	return cfg->table.ptr + ssid * CTXDESC_CD_DWORDS;
> +}
> +
>  static u64 arm_smmu_cpu_tcr_to_cd(u64 tcr)
>  {
>  	u64 val = 0;
> @@ -1062,33 +1143,90 @@ static u64 arm_smmu_cpu_tcr_to_cd(u64 tcr)
>  	return val;
>  }
>  
> -static void arm_smmu_write_ctx_desc(struct arm_smmu_device *smmu,
> -				    struct arm_smmu_s1_cfg *cfg)
> +static int arm_smmu_write_ctx_desc(struct arm_smmu_domain *smmu_domain,
> +				   int ssid, struct arm_smmu_ctx_desc *cd)
>  {
>  	u64 val;
> +	bool cd_live;
> +	struct arm_smmu_device *smmu = smmu_domain->smmu;
> +	__le64 *cdptr = arm_smmu_get_cd_ptr(&smmu_domain->s1_cfg, ssid);
>  
>  	/*
> -	 * We don't need to issue any invalidation here, as we'll invalidate
> -	 * the STE when installing the new entry anyway.
> +	 * This function handles the following cases:
> +	 *
> +	 * (1) Install primary CD, for normal DMA traffic (SSID = 0).
> +	 * (2) Install a secondary CD, for SID+SSID traffic.
> +	 * (3) Update ASID of a CD. Atomically write the first 64 bits of the
> +	 *     CD, then invalidate the old entry and mappings.
> +	 * (4) Remove a secondary CD.
>  	 */
> -	val = arm_smmu_cpu_tcr_to_cd(cfg->cd.tcr) |
> +
> +	if (!cdptr)
> +		return -ENOMEM;
> +
> +	val = le64_to_cpu(cdptr[0]);
> +	cd_live = !!(val & CTXDESC_CD_0_V);
> +
> +	if (!cd) { /* (4) */
> +		cdptr[0] = 0;
> +	} else if (cd_live) { /* (3) */
> +		val &= ~CTXDESC_CD_0_ASID;
> +		val |= FIELD_PREP(CTXDESC_CD_0_ASID, cd->asid);
> +
> +		cdptr[0] = cpu_to_le64(val);
> +		/*
> +		 * Until CD+TLB invalidation, both ASIDs may be used for tagging
> +		 * this substream's traffic
> +		 */
> +	} else { /* (1) and (2) */
> +		cdptr[1] = cpu_to_le64(cd->ttbr & CTXDESC_CD_1_TTB0_MASK);
> +		cdptr[2] = 0;
> +		cdptr[3] = cpu_to_le64(cd->mair);
> +
> +		/*
> +		 * STE is live, and the SMMU might fetch this CD at any
> +		 * time. Ensure that it observes the rest of the CD before we
> +		 * enable it.
> +		 */
> +		arm_smmu_sync_cd(smmu_domain, ssid, true);
> +
> +		val = arm_smmu_cpu_tcr_to_cd(cd->tcr) |
>  #ifdef __BIG_ENDIAN
> -	      CTXDESC_CD_0_ENDI |
> +			CTXDESC_CD_0_ENDI |
>  #endif
> -	      CTXDESC_CD_0_R | CTXDESC_CD_0_A | CTXDESC_CD_0_ASET |
> -	      CTXDESC_CD_0_AA64 | FIELD_PREP(CTXDESC_CD_0_ASID, cfg->cd.asid) |
> -	      CTXDESC_CD_0_V;
> +			CTXDESC_CD_0_R | CTXDESC_CD_0_A | CTXDESC_CD_0_ASET |
> +			CTXDESC_CD_0_AA64 |
> +			FIELD_PREP(CTXDESC_CD_0_ASID, cd->asid) |
> +			CTXDESC_CD_0_V;
> +
> +		/* STALL_MODEL==0b10 && CD.S==0 is ILLEGAL */
> +		if (smmu->features & ARM_SMMU_FEAT_STALL_FORCE)
> +			val |= CTXDESC_CD_0_S;
> +
> +		cdptr[0] = cpu_to_le64(val);
> +	}
>  
> -	/* STALL_MODEL==0b10 && CD.S==0 is ILLEGAL */
> -	if (smmu->features & ARM_SMMU_FEAT_STALL_FORCE)
> -		val |= CTXDESC_CD_0_S;
> +	arm_smmu_sync_cd(smmu_domain, ssid, true);
> +	return 0;
> +}
> +
> +static int arm_smmu_alloc_cd_tables(struct arm_smmu_domain *smmu_domain,
> +				    struct arm_smmu_master *master)
> +{
> +	struct arm_smmu_device *smmu = smmu_domain->smmu;
> +	struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;
>  
> -	cfg->cdptr[0] = cpu_to_le64(val);
> +	cfg->s1fmt = STRTAB_STE_0_S1FMT_LINEAR;
> +	cfg->s1cdmax = master->ssid_bits;
> +	return arm_smmu_alloc_cd_leaf_table(smmu, &cfg->table, 1 << cfg->s1cdmax);
> +}
>  
> -	val = cfg->cd.ttbr & CTXDESC_CD_1_TTB0_MASK;
> -	cfg->cdptr[1] = cpu_to_le64(val);

Hmm. Diff was having a field day in trying to make the patch as unreadable as possible..

> +static void arm_smmu_free_cd_tables(struct arm_smmu_domain *smmu_domain)
> +{
> +	struct arm_smmu_device *smmu = smmu_domain->smmu;
> +	struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;
>  
> -	cfg->cdptr[3] = cpu_to_le64(cfg->cd.mair);
> +	arm_smmu_free_cd_leaf_table(smmu, &cfg->table, 1 << cfg->s1cdmax);
>  }
>  
>  /* Stream table manipulation functions */
> @@ -1210,6 +1348,7 @@ static void arm_smmu_write_strtab_ent(struct arm_smmu_master *master, u32 sid,
>  	if (s1_cfg) {
>  		BUG_ON(ste_live);
>  		dst[1] = cpu_to_le64(
> +			 FIELD_PREP(STRTAB_STE_1_S1DSS, STRTAB_STE_1_S1DSS_SSID0) |
>  			 FIELD_PREP(STRTAB_STE_1_S1CIR, STRTAB_STE_1_S1C_CACHE_WBRA) |
>  			 FIELD_PREP(STRTAB_STE_1_S1COR, STRTAB_STE_1_S1C_CACHE_WBRA) |
>  			 FIELD_PREP(STRTAB_STE_1_S1CSH, ARM_SMMU_SH_ISH) |
> @@ -1219,8 +1358,10 @@ static void arm_smmu_write_strtab_ent(struct arm_smmu_master *master, u32 sid,
>  		   !(smmu->features & ARM_SMMU_FEAT_STALL_FORCE))
>  			dst[1] |= cpu_to_le64(STRTAB_STE_1_S1STALLD);
>  
> -		val |= (s1_cfg->cdptr_dma & STRTAB_STE_0_S1CTXPTR_MASK) |
> -			FIELD_PREP(STRTAB_STE_0_CFG, STRTAB_STE_0_CFG_S1_TRANS);
> +		val |= (s1_cfg->table.ptr_dma & STRTAB_STE_0_S1CTXPTR_MASK) |
> +			FIELD_PREP(STRTAB_STE_0_CFG, STRTAB_STE_0_CFG_S1_TRANS) |
> +			FIELD_PREP(STRTAB_STE_0_S1CDMAX, s1_cfg->s1cdmax) |
> +			FIELD_PREP(STRTAB_STE_0_S1FMT, s1_cfg->s1fmt);
>  	}
>  
>  	if (s2_cfg) {
> @@ -1674,12 +1815,8 @@ static void arm_smmu_domain_free(struct iommu_domain *domain)
>  	if (smmu_domain->stage == ARM_SMMU_DOMAIN_S1) {
>  		struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;
>  
> -		if (cfg->cdptr) {
> -			dmam_free_coherent(smmu_domain->smmu->dev,
> -					   CTXDESC_CD_DWORDS << 3,
> -					   cfg->cdptr,
> -					   cfg->cdptr_dma);
> -
> +		if (cfg->table.ptr) {
> +			arm_smmu_free_cd_tables(smmu_domain);
>  			arm_smmu_bitmap_free(smmu->asid_map, cfg->cd.asid);
>  		}
>  	} else {
> @@ -1692,6 +1829,7 @@ static void arm_smmu_domain_free(struct iommu_domain *domain)
>  }
>  
>  static int arm_smmu_domain_finalise_s1(struct arm_smmu_domain *smmu_domain,
> +				       struct arm_smmu_master *master,
>  				       struct io_pgtable_cfg *pgtbl_cfg)
>  {
>  	int ret;
> @@ -1703,27 +1841,29 @@ static int arm_smmu_domain_finalise_s1(struct arm_smmu_domain *smmu_domain,
>  	if (asid < 0)
>  		return asid;
>  
> -	cfg->cdptr = dmam_alloc_coherent(smmu->dev, CTXDESC_CD_DWORDS << 3,
> -					 &cfg->cdptr_dma,
> -					 GFP_KERNEL | __GFP_ZERO);
> -	if (!cfg->cdptr) {
> -		dev_warn(smmu->dev, "failed to allocate context descriptor\n");
> -		ret = -ENOMEM;
> +	ret = arm_smmu_alloc_cd_tables(smmu_domain, master);
> +	if (ret)
>  		goto out_free_asid;
> -	}

I wonder if it is worth pulling this refactor out as a precursor patch?
That is provide the allocation functions without the new support first, then
simply add the new stuff in this patch?

>  
>  	cfg->cd.asid	= (u16)asid;
>  	cfg->cd.ttbr	= pgtbl_cfg->arm_lpae_s1_cfg.ttbr[0];
>  	cfg->cd.tcr	= pgtbl_cfg->arm_lpae_s1_cfg.tcr;
>  	cfg->cd.mair	= pgtbl_cfg->arm_lpae_s1_cfg.mair[0];
> +
> +	ret = arm_smmu_write_ctx_desc(smmu_domain, 0, &smmu_domain->s1_cfg.cd);
> +	if (ret)
> +		goto out_free_table;
>  	return 0;
>  
> +out_free_table:
> +	arm_smmu_free_cd_tables(smmu_domain);
>  out_free_asid:
>  	arm_smmu_bitmap_free(smmu->asid_map, asid);
>  	return ret;
>  }
>  
>  static int arm_smmu_domain_finalise_s2(struct arm_smmu_domain *smmu_domain,
> +				       struct arm_smmu_master *master,
>  				       struct io_pgtable_cfg *pgtbl_cfg)
>  {
>  	int vmid;
> @@ -1740,7 +1880,8 @@ static int arm_smmu_domain_finalise_s2(struct arm_smmu_domain *smmu_domain,
>  	return 0;
>  }
>  
> -static int arm_smmu_domain_finalise(struct iommu_domain *domain)
> +static int arm_smmu_domain_finalise(struct iommu_domain *domain,
> +				    struct arm_smmu_master *master)
>  {
>  	int ret;
>  	unsigned long ias, oas;
> @@ -1748,6 +1889,7 @@ static int arm_smmu_domain_finalise(struct iommu_domain *domain)
>  	struct io_pgtable_cfg pgtbl_cfg;
>  	struct io_pgtable_ops *pgtbl_ops;
>  	int (*finalise_stage_fn)(struct arm_smmu_domain *,
> +				 struct arm_smmu_master *,
>  				 struct io_pgtable_cfg *);
>  	struct arm_smmu_domain *smmu_domain = to_smmu_domain(domain);
>  	struct arm_smmu_device *smmu = smmu_domain->smmu;
> @@ -1804,7 +1946,7 @@ static int arm_smmu_domain_finalise(struct iommu_domain *domain)
>  	domain->geometry.aperture_end = (1UL << pgtbl_cfg.ias) - 1;
>  	domain->geometry.force_aperture = true;
>  
> -	ret = finalise_stage_fn(smmu_domain, &pgtbl_cfg);
> +	ret = finalise_stage_fn(smmu_domain, master, &pgtbl_cfg);
>  	if (ret < 0) {
>  		free_io_pgtable_ops(pgtbl_ops);
>  		return ret;
> @@ -1932,7 +2074,7 @@ static int arm_smmu_attach_dev(struct iommu_domain *domain, struct device *dev)
>  
>  	if (!smmu_domain->smmu) {
>  		smmu_domain->smmu = smmu;
> -		ret = arm_smmu_domain_finalise(domain);
> +		ret = arm_smmu_domain_finalise(domain, master);
>  		if (ret) {
>  			smmu_domain->smmu = NULL;
>  			goto out_unlock;
> @@ -1944,6 +2086,13 @@ static int arm_smmu_attach_dev(struct iommu_domain *domain, struct device *dev)
>  			dev_name(smmu->dev));
>  		ret = -ENXIO;
>  		goto out_unlock;
> +	} else if (smmu_domain->stage == ARM_SMMU_DOMAIN_S1 &&
> +		   master->ssid_bits != smmu_domain->s1_cfg.s1cdmax) {
> +		dev_err(dev,
> +			"cannot attach to incompatible domain (%u SSID bits != %u)\n",
> +			smmu_domain->s1_cfg.s1cdmax, master->ssid_bits);
> +		ret = -EINVAL;
> +		goto out_unlock;
>  	}
>  
>  	master->domain = smmu_domain;
> @@ -1955,9 +2104,6 @@ static int arm_smmu_attach_dev(struct iommu_domain *domain, struct device *dev)
>  	if (smmu_domain->stage != ARM_SMMU_DOMAIN_BYPASS)
>  		arm_smmu_enable_ats(master);
>  
> -	if (smmu_domain->stage == ARM_SMMU_DOMAIN_S1)
> -		arm_smmu_write_ctx_desc(smmu, &smmu_domain->s1_cfg);
> -
>  	arm_smmu_install_ste_for_dev(master);
>  out_unlock:
>  	mutex_unlock(&smmu_domain->init_mutex);



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
