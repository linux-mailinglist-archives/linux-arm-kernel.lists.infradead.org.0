Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62ECBF780B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 16:50:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3yrBbXVHwvjBbPIlCcsexbS7cgDD6H9qzg0z0+MyIVI=; b=t5HlSCsL/3escn
	iW6diKDtW8bduMnWP7RbOb9fq34kkISgwcb3YnMgNV1lNlmdWG/k2tkLqkeXpXupdR8eBtBVUjqW5
	ndXONvPLKkl7usOHFK1FGhaoyoWF/sPqWnrXCqnnagNML8KUF64UtGO3+/1z4b9rUQJjuATw87D5L
	Gcr4FCd49yS+RtZNOaOj8UUmMoxYTDMP7G1Afu0bENFez12qu6eKqupZUHpVVZbGTxsFOh7u/XM4s
	/7D+p1byDsNWe7IBn/g8cehck+Q1cuXN7C9VvDGHyb1n3EG6+8KhT81ZBs4VAllGW2sb3gzmp/S+M
	xcdzw9Y1V2dJxg8+RNMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUBxk-0005e2-NN; Mon, 11 Nov 2019 15:50:44 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUBxZ-0005dB-WE
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 15:50:36 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 188F9D5E84235F34FF5F;
 Mon, 11 Nov 2019 23:50:26 +0800 (CST)
Received: from localhost (10.202.226.61) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.439.0; Mon, 11 Nov 2019
 23:50:17 +0800
Date: Mon, 11 Nov 2019 15:50:07 +0000
From: Jonathan Cameron <jonathan.cameron@huawei.com>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v2 6/8] iommu/arm-smmu-v3: Add second level of context
 descriptor table
Message-ID: <20191111155007.00002021@huawei.com>
In-Reply-To: <20191108152508.4039168-7-jean-philippe@linaro.org>
References: <20191108152508.4039168-1-jean-philippe@linaro.org>
 <20191108152508.4039168-7-jean-philippe@linaro.org>
Organization: Huawei
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.226.61]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_075035_091991_3BFC93D4 
X-CRM114-Status: GOOD (  25.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 eric.auger@redhat.com, robin.murphy@arm.com, joro@8bytes.org,
 sudeep.holla@arm.com, rjw@rjwysocki.net, linux-acpi@vger.kernel.org,
 iommu@lists.linux-foundation.org, robh+dt@kernel.org, guohanjun@huawei.com,
 zhangfei.gao@linaro.org, will@kernel.org, linux-arm-kernel@lists.infradead.org,
 lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 8 Nov 2019 16:25:06 +0100
Jean-Philippe Brucker <jean-philippe@linaro.org> wrote:

> The SMMU can support up to 20 bits of SSID. Add a second level of page
> tables to accommodate this. Devices that support more than 1024 SSIDs now
> have a table of 1024 L1 entries (8kB), pointing to tables of 1024 context
> descriptors (64kB), allocated on demand.
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
Hi Jean-Philippe,

There seems to be a disconnect in here between clearing by hand
device managed entities, which normally implies we'll reallocate
them later, and clearing pointers that are used in the control
flow of allocation.  I'm looking at this a bit in isolation so
I'm not quite sure on how they are used.

> ---
>  drivers/iommu/arm-smmu-v3.c | 137 +++++++++++++++++++++++++++++++++---
>  1 file changed, 126 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> index df7d45503c65..82eac89ee187 100644
> --- a/drivers/iommu/arm-smmu-v3.c
> +++ b/drivers/iommu/arm-smmu-v3.c
> @@ -224,6 +224,7 @@
>  
>  #define STRTAB_STE_0_S1FMT		GENMASK_ULL(5, 4)
>  #define STRTAB_STE_0_S1FMT_LINEAR	0
> +#define STRTAB_STE_0_S1FMT_64K_L2	2
>  #define STRTAB_STE_0_S1CTXPTR_MASK	GENMASK_ULL(51, 6)
>  #define STRTAB_STE_0_S1CDMAX		GENMASK_ULL(63, 59)
>  
> @@ -263,7 +264,20 @@
>  
>  #define STRTAB_STE_3_S2TTB_MASK		GENMASK_ULL(51, 4)
>  
> -/* Context descriptor (stage-1 only) */
> +/*
> + * Context descriptors.
> + *
> + * Linear: when less than 1024 SSIDs are supported
> + * 2lvl: at most 1024 L1 entries,
> + *       1024 lazy entries per table.
> + */
> +#define CTXDESC_SPLIT			10
> +#define CTXDESC_L2_ENTRIES		(1 << CTXDESC_SPLIT)
> +
> +#define CTXDESC_L1_DESC_DWORDS		1
> +#define CTXDESC_L1_DESC_VALID		1
> +#define CTXDESC_L1_DESC_L2PTR_MASK	GENMASK_ULL(51, 12)
> +
>  #define CTXDESC_CD_DWORDS		8
>  #define CTXDESC_CD_0_TCR_T0SZ		GENMASK_ULL(5, 0)
>  #define ARM64_TCR_T0SZ			GENMASK_ULL(5, 0)
> @@ -577,7 +591,10 @@ struct arm_smmu_cd_table {
>  struct arm_smmu_s1_cfg {
>  	u8				s1fmt;
>  	u8				s1cdmax;
> -	struct arm_smmu_cd_table	table;
> +	struct arm_smmu_cd_table	*tables;
> +	size_t				num_tables;
> +	__le64				*l1ptr;
> +	dma_addr_t			l1ptr_dma;
>  	struct arm_smmu_ctx_desc	cd;
>  };
>  
> @@ -1521,12 +1538,51 @@ static void arm_smmu_free_cd_leaf_table(struct arm_smmu_device *smmu,
>  {
>  	size_t size = num_entries * (CTXDESC_CD_DWORDS << 3);
>  
> +	if (!table->ptr)
> +		return;
>  	dmam_free_coherent(smmu->dev, size, table->ptr, table->ptr_dma);
>  }
>  
> -static __le64 *arm_smmu_get_cd_ptr(struct arm_smmu_s1_cfg *cfg, u32 ssid)
> +static void arm_smmu_write_cd_l1_desc(__le64 *dst,
> +				      struct arm_smmu_cd_table *table)
>  {
> -	return cfg->table.ptr + ssid * CTXDESC_CD_DWORDS;
> +	u64 val = (table->ptr_dma & CTXDESC_L1_DESC_L2PTR_MASK) |
> +		  CTXDESC_L1_DESC_VALID;
> +
> +	WRITE_ONCE(*dst, cpu_to_le64(val));
> +}
> +
> +static __le64 *arm_smmu_get_cd_ptr(struct arm_smmu_domain *smmu_domain,
> +				   u32 ssid)
> +{
> +	__le64 *l1ptr;
> +	unsigned int idx;
> +	struct arm_smmu_cd_table *table;
> +	struct arm_smmu_device *smmu = smmu_domain->smmu;
> +	struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;
> +
> +	if (cfg->s1fmt == STRTAB_STE_0_S1FMT_LINEAR) {
> +		table = &cfg->tables[0];
> +		idx = ssid;
> +	} else {
> +		idx = ssid >> CTXDESC_SPLIT;
> +		if (idx >= cfg->num_tables)
> +			return NULL;
> +
> +		table = &cfg->tables[idx];
> +		if (!table->ptr) {
> +			if (arm_smmu_alloc_cd_leaf_table(smmu, table,
> +							 CTXDESC_L2_ENTRIES))
> +				return NULL;
> +
> +			l1ptr = cfg->l1ptr + idx * CTXDESC_L1_DESC_DWORDS;
> +			arm_smmu_write_cd_l1_desc(l1ptr, table);
> +			/* An invalid L1CD can be cached */
> +			arm_smmu_sync_cd(smmu_domain, ssid, false);
> +		}
> +		idx = ssid & (CTXDESC_L2_ENTRIES - 1);
> +	}
> +	return table->ptr + idx * CTXDESC_CD_DWORDS;
>  }
>  
>  static u64 arm_smmu_cpu_tcr_to_cd(u64 tcr)
> @@ -1552,7 +1608,7 @@ static int arm_smmu_write_ctx_desc(struct arm_smmu_domain *smmu_domain,
>  	u64 val;
>  	bool cd_live;
>  	struct arm_smmu_device *smmu = smmu_domain->smmu;
> -	__le64 *cdptr = arm_smmu_get_cd_ptr(&smmu_domain->s1_cfg, ssid);
> +	__le64 *cdptr = arm_smmu_get_cd_ptr(smmu_domain, ssid);
>  
>  	/*
>  	 * This function handles the following cases:
> @@ -1612,20 +1668,76 @@ static int arm_smmu_write_ctx_desc(struct arm_smmu_domain *smmu_domain,
>  
>  static int arm_smmu_alloc_cd_tables(struct arm_smmu_domain *smmu_domain)
>  {
> +	int ret;
> +	size_t size = 0;
> +	size_t max_contexts;
>  	struct arm_smmu_device *smmu = smmu_domain->smmu;
>  	struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;
>  
> -	cfg->s1fmt = STRTAB_STE_0_S1FMT_LINEAR;
> -	return arm_smmu_alloc_cd_leaf_table(smmu, &cfg->table,
> -					    1 << cfg->s1cdmax);
> +	max_contexts = 1 << cfg->s1cdmax;
> +
> +	if (!(smmu->features & ARM_SMMU_FEAT_2_LVL_CDTAB) ||
> +	    max_contexts <= CTXDESC_L2_ENTRIES) {
> +		cfg->s1fmt = STRTAB_STE_0_S1FMT_LINEAR;
> +		cfg->num_tables = 1;
> +	} else {
> +		cfg->s1fmt = STRTAB_STE_0_S1FMT_64K_L2;
> +		cfg->num_tables = DIV_ROUND_UP(max_contexts,
> +					       CTXDESC_L2_ENTRIES);
> +
> +		size = cfg->num_tables * (CTXDESC_L1_DESC_DWORDS << 3);
> +		cfg->l1ptr = dmam_alloc_coherent(smmu->dev, size,
> +						 &cfg->l1ptr_dma,
> +						 GFP_KERNEL | __GFP_ZERO);

As before.  Fairly sure __GFP_ZERO doesn't give you anything extra.

> +		if (!cfg->l1ptr) {
> +			dev_warn(smmu->dev, "failed to allocate L1 context table\n");
> +			return -ENOMEM;
> +		}
> +	}
> +
> +	cfg->tables = devm_kzalloc(smmu->dev, sizeof(struct arm_smmu_cd_table) *
> +				   cfg->num_tables, GFP_KERNEL);
> +	if (!cfg->tables) {
> +		ret = -ENOMEM;
> +		goto err_free_l1;
> +	}
> +
> +	/* With two levels, leaf tables are allocated lazily */
This comment is a kind of odd one.  It is actually talking about what
'doesn't' happen here I think..

Perhaps /*
         * Only allocate a leaf table for linear case.
         * With two levels, the leaf tables are allocated lazily.
	 */
> +	if (!cfg->l1ptr) {
> +		ret = arm_smmu_alloc_cd_leaf_table(smmu, &cfg->tables[0],
> +						   max_contexts);
> +		if (ret)
> +			goto err_free_tables;
> +	}
> +
> +	return 0;
> +
> +err_free_tables:
> +	devm_kfree(smmu->dev, cfg->tables);
> +err_free_l1:
> +	if (cfg->l1ptr)
> +		dmam_free_coherent(smmu->dev, size, cfg->l1ptr, cfg->l1ptr_dma);

This cleanup only occurs if we have had an error.
Is there potential for this to rerun at some point later?  If so we should
be careful to also reset relevant pointers - e.g. cfg->l1ptr = NULL as
they are used to control the flow above.

If there is no chance of a rerun why bother cleaning them up at all?  Something
has gone horribly wrong so let the eventual smmu cleanup deal with them.

> +	return ret;
>  }
>  
>  static void arm_smmu_free_cd_tables(struct arm_smmu_domain *smmu_domain)
>  {
> +	int i;
>  	struct arm_smmu_device *smmu = smmu_domain->smmu;
>  	struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;
> +	size_t num_leaf_entries = 1 << cfg->s1cdmax;
> +	struct arm_smmu_cd_table *table = cfg->tables;
>  
> -	arm_smmu_free_cd_leaf_table(smmu, &cfg->table, 1 << cfg->s1cdmax);
> +	if (cfg->l1ptr) {
> +		size_t size = cfg->num_tables * (CTXDESC_L1_DESC_DWORDS << 3);
> +
> +		dmam_free_coherent(smmu->dev, size, cfg->l1ptr, cfg->l1ptr_dma);

		As above, if we can call this in a fashion that makes sense
		other than in eventual smmu tear down, then we need to be
		careful to reset the pointers.   If not, then why are we clearing
		managed resourced by hand anyway?

> +		num_leaf_entries = CTXDESC_L2_ENTRIES;
> +	}
> +
> +	for (i = 0; i < cfg->num_tables; i++, table++)
> +		arm_smmu_free_cd_leaf_table(smmu, table, num_leaf_entries);
> +	devm_kfree(smmu->dev, cfg->tables);
>  }
>  
>  /* Stream table manipulation functions */
> @@ -1745,6 +1857,9 @@ static void arm_smmu_write_strtab_ent(struct arm_smmu_master *master, u32 sid,
>  	}
>  
>  	if (s1_cfg) {
> +		dma_addr_t ptr_dma = s1_cfg->l1ptr ? s1_cfg->l1ptr_dma :
> +				     s1_cfg->tables[0].ptr_dma;
> +
>  		BUG_ON(ste_live);
>  		dst[1] = cpu_to_le64(
>  			 FIELD_PREP(STRTAB_STE_1_S1DSS, STRTAB_STE_1_S1DSS_SSID0) |
> @@ -1757,7 +1872,7 @@ static void arm_smmu_write_strtab_ent(struct arm_smmu_master *master, u32 sid,
>  		   !(smmu->features & ARM_SMMU_FEAT_STALL_FORCE))
>  			dst[1] |= cpu_to_le64(STRTAB_STE_1_S1STALLD);
>  
> -		val |= (s1_cfg->table.ptr_dma & STRTAB_STE_0_S1CTXPTR_MASK) |
> +		val |= (ptr_dma & STRTAB_STE_0_S1CTXPTR_MASK) |
>  			FIELD_PREP(STRTAB_STE_0_CFG, STRTAB_STE_0_CFG_S1_TRANS) |
>  			FIELD_PREP(STRTAB_STE_0_S1CDMAX, s1_cfg->s1cdmax) |
>  			FIELD_PREP(STRTAB_STE_0_S1FMT, s1_cfg->s1fmt);
> @@ -2273,7 +2388,7 @@ static void arm_smmu_domain_free(struct iommu_domain *domain)
>  	if (smmu_domain->stage == ARM_SMMU_DOMAIN_S1) {
>  		struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;
>  
> -		if (cfg->table.ptr) {
> +		if (cfg->tables) {
>  			arm_smmu_free_cd_tables(smmu_domain);
>  			arm_smmu_bitmap_free(smmu->asid_map, cfg->cd.asid);
>  		}



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
