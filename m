Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A35B1F7698
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 15:39:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JikfUuyb/Yae2llrH7bomhU2M40za1S2L0QoxwKzHLE=; b=Xu1FHN/5ZctGn7
	Fexoij7fs6mp1NtpVc5ylPyJAUDrGUcVY9fuidKVDStK7pNaD3JdDtp29X8Z2AdNNa3sRO8qb9jHg
	ZEJLRQ5VvfML4KuPL/HdHrdWOAa1De/FsezydBJjSeN31+ZdubYdH0+fN1N7lNiRjLwL7gMZ2nYEh
	9pRrt3LPG+BsvvqS35c1iQ+kjhV9EVjFBcJQ+QDu8ZAOPo4zG4QTOkVwB+gQgxujuj3cFVjDxdY+h
	gf9jTuueBpKD38goFtc9zyFtHU8o5ZskH0+Gy3UQ5w/hLTqpdRv4wQYv3SsBHYoxhXUq4rS4LlLWc
	XHD4jlaxDCIQIjwe5o3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUAqP-0008Pi-SB; Mon, 11 Nov 2019 14:39:05 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUAq0-0008Ci-4x
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 14:38:42 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 3B3698D7F6835BD3B569;
 Mon, 11 Nov 2019 22:38:31 +0800 (CST)
Received: from localhost (10.202.226.61) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.439.0; Mon, 11 Nov 2019
 22:38:23 +0800
Date: Mon, 11 Nov 2019 14:38:11 +0000
From: Jonathan Cameron <jonathan.cameron@huawei.com>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v2 4/8] iommu/arm-smmu-v3: Prepare for SSID support
Message-ID: <20191111143811.000006cc@huawei.com>
In-Reply-To: <20191108152508.4039168-5-jean-philippe@linaro.org>
References: <20191108152508.4039168-1-jean-philippe@linaro.org>
 <20191108152508.4039168-5-jean-philippe@linaro.org>
Organization: Huawei
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.226.61]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_063840_529200_04B388D5 
X-CRM114-Status: GOOD (  25.50  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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

On Fri, 8 Nov 2019 16:25:04 +0100
Jean-Philippe Brucker <jean-philippe@linaro.org> wrote:

> When a master supports substream ID, allocate a table with multiple
> context descriptors for its stage-1 domain. For the moment S1CDMax is
> still 0 in the STE, so the additional context descriptors are ignored.
> 
> Context descriptor tables are allocated once for the first master attached
> to a domain. Therefore attaching multiple devices with different SSID
> sizes is tricky, and we currently don't support it.
> 
> As a future improvement it would be nice to at least support attaching a
> SSID-capable device to a domain that isn't using SSID, by reallocating the
> SSID table. This would allow supporting a SSID-capable device that is in
> the same IOMMU group as a bridge, for example. Varying SSID size is less
> of a concern, since the PCIe specification "highly recommends" that
> devices supporting PASID implement all 20 bits of it.
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>

Hmm. There are several different refactors in here alongside a few new
bits.  Would be nice to break it up more to make life even easier for
reviewers.   It's not 'so' complex that it's really a problem though
so could leave it as is if you really want to.

One carry over inline on zeroing a coherent allocation...



> ---
>  drivers/iommu/arm-smmu-v3.c | 117 ++++++++++++++++++++++++++----------
>  1 file changed, 85 insertions(+), 32 deletions(-)
> 
> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> index 33488da8f742..122bed0168a3 100644
> --- a/drivers/iommu/arm-smmu-v3.c
> +++ b/drivers/iommu/arm-smmu-v3.c
> @@ -553,16 +553,22 @@ struct arm_smmu_strtab_l1_desc {
>  	dma_addr_t			l2ptr_dma;
>  };
>  
> +struct arm_smmu_ctx_desc {
> +	u16				asid;
> +	u64				ttbr;
> +	u64				tcr;
> +	u64				mair;
> +};
> +
> +struct arm_smmu_cd_table {
> +	__le64				*ptr;
> +	dma_addr_t			ptr_dma;
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
> +	u8				s1cdmax;
> +	struct arm_smmu_cd_table	table;
> +	struct arm_smmu_ctx_desc	cd;

It might have been a tiny bit nicer to have a precursor patch
that did the change to a pair of structs. Then only functional
changes would be in here.

>  };
>  
>  struct arm_smmu_s2_cfg {
> @@ -1450,6 +1456,31 @@ static int arm_smmu_cmdq_issue_sync(struct arm_smmu_device *smmu)
>  }
>  
>  /* Context descriptor manipulation functions */
> +static int arm_smmu_alloc_cd_leaf_table(struct arm_smmu_device *smmu,
> +					struct arm_smmu_cd_table *table,
> +					size_t num_entries)
> +{
> +	size_t size = num_entries * (CTXDESC_CD_DWORDS << 3);
> +
> +	table->ptr = dmam_alloc_coherent(smmu->dev, size, &table->ptr_dma,
> +					 GFP_KERNEL | __GFP_ZERO);

We dropped dma_zalloc_coherent because we now zero in dma_alloc_coherent
anyway.  Hence I'm fairly sure that __GFP_ZERO should have no effect.

https://lore.kernel.org/patchwork/patch/1031536/

Am I missing some special corner case here?

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
>  static u64 arm_smmu_cpu_tcr_to_cd(u64 tcr)
>  {
>  	u64 val = 0;
> @@ -1471,6 +1502,7 @@ static void arm_smmu_write_ctx_desc(struct arm_smmu_device *smmu,
>  				    struct arm_smmu_s1_cfg *cfg)
>  {
>  	u64 val;
> +	__le64 *cdptr = cfg->table.ptr;
The changes in here would all be in purely mechanical refactor of the structure
patch.
>  
>  	/*
>  	 * We don't need to issue any invalidation here, as we'll invalidate
> @@ -1488,12 +1520,29 @@ static void arm_smmu_write_ctx_desc(struct arm_smmu_device *smmu,
>  	if (smmu->features & ARM_SMMU_FEAT_STALL_FORCE)
>  		val |= CTXDESC_CD_0_S;
>  
> -	cfg->cdptr[0] = cpu_to_le64(val);
> +	cdptr[0] = cpu_to_le64(val);
>  
>  	val = cfg->cd.ttbr & CTXDESC_CD_1_TTB0_MASK;
> -	cfg->cdptr[1] = cpu_to_le64(val);
> +	cdptr[1] = cpu_to_le64(val);
>  
> -	cfg->cdptr[3] = cpu_to_le64(cfg->cd.mair);
> +	cdptr[3] = cpu_to_le64(cfg->cd.mair);
> +}
> +
> +static int arm_smmu_alloc_cd_tables(struct arm_smmu_domain *smmu_domain)
> +{
> +	struct arm_smmu_device *smmu = smmu_domain->smmu;
> +	struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;
> +
> +	return arm_smmu_alloc_cd_leaf_table(smmu, &cfg->table,
> +					    1 << cfg->s1cdmax);
> +}
> +
> +static void arm_smmu_free_cd_tables(struct arm_smmu_domain *smmu_domain)
> +{
> +	struct arm_smmu_device *smmu = smmu_domain->smmu;
> +	struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;
> +
> +	arm_smmu_free_cd_leaf_table(smmu, &cfg->table, 1 << cfg->s1cdmax);
>  }
>  
>  /* Stream table manipulation functions */
> @@ -1624,7 +1673,7 @@ static void arm_smmu_write_strtab_ent(struct arm_smmu_master *master, u32 sid,
>  		   !(smmu->features & ARM_SMMU_FEAT_STALL_FORCE))
>  			dst[1] |= cpu_to_le64(STRTAB_STE_1_S1STALLD);
>  
> -		val |= (s1_cfg->cdptr_dma & STRTAB_STE_0_S1CTXPTR_MASK) |
> +		val |= (s1_cfg->table.ptr_dma & STRTAB_STE_0_S1CTXPTR_MASK) |
>  			FIELD_PREP(STRTAB_STE_0_CFG, STRTAB_STE_0_CFG_S1_TRANS);
>  	}
>  
> @@ -2138,12 +2187,8 @@ static void arm_smmu_domain_free(struct iommu_domain *domain)
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
> @@ -2156,6 +2201,7 @@ static void arm_smmu_domain_free(struct iommu_domain *domain)
>  }
>  
>  static int arm_smmu_domain_finalise_s1(struct arm_smmu_domain *smmu_domain,
> +				       struct arm_smmu_master *master,
>  				       struct io_pgtable_cfg *pgtbl_cfg)
>  {
>  	int ret;
> @@ -2167,19 +2213,19 @@ static int arm_smmu_domain_finalise_s1(struct arm_smmu_domain *smmu_domain,
>  	if (asid < 0)
>  		return asid;
>  
> -	cfg->cdptr = dmam_alloc_coherent(smmu->dev, CTXDESC_CD_DWORDS << 3,
> -					 &cfg->cdptr_dma,
> -					 GFP_KERNEL | __GFP_ZERO);
> -	if (!cfg->cdptr) {
> -		dev_warn(smmu->dev, "failed to allocate context descriptor\n");
> -		ret = -ENOMEM;
> +	cfg->s1cdmax = master->ssid_bits;
> +
> +	ret = arm_smmu_alloc_cd_tables(smmu_domain);
> +	if (ret)
>  		goto out_free_asid;
> -	}
>  
>  	cfg->cd.asid	= (u16)asid;
>  	cfg->cd.ttbr	= pgtbl_cfg->arm_lpae_s1_cfg.ttbr[0];
>  	cfg->cd.tcr	= pgtbl_cfg->arm_lpae_s1_cfg.tcr;
>  	cfg->cd.mair	= pgtbl_cfg->arm_lpae_s1_cfg.mair[0];
> +
> +	arm_smmu_write_ctx_desc(smmu, cfg);
> +
>  	return 0;
>  
>  out_free_asid:
> @@ -2188,6 +2234,7 @@ static int arm_smmu_domain_finalise_s1(struct arm_smmu_domain *smmu_domain,
>  }
>  
>  static int arm_smmu_domain_finalise_s2(struct arm_smmu_domain *smmu_domain,
> +				       struct arm_smmu_master *master,
>  				       struct io_pgtable_cfg *pgtbl_cfg)
>  {
>  	int vmid;
> @@ -2204,7 +2251,8 @@ static int arm_smmu_domain_finalise_s2(struct arm_smmu_domain *smmu_domain,
>  	return 0;
>  }
>  
> -static int arm_smmu_domain_finalise(struct iommu_domain *domain)
> +static int arm_smmu_domain_finalise(struct iommu_domain *domain,
> +				    struct arm_smmu_master *master)
>  {
>  	int ret;
>  	unsigned long ias, oas;
> @@ -2212,6 +2260,7 @@ static int arm_smmu_domain_finalise(struct iommu_domain *domain)
>  	struct io_pgtable_cfg pgtbl_cfg;
>  	struct io_pgtable_ops *pgtbl_ops;
>  	int (*finalise_stage_fn)(struct arm_smmu_domain *,
> +				 struct arm_smmu_master *,
>  				 struct io_pgtable_cfg *);
>  	struct arm_smmu_domain *smmu_domain = to_smmu_domain(domain);
>  	struct arm_smmu_device *smmu = smmu_domain->smmu;
> @@ -2266,7 +2315,7 @@ static int arm_smmu_domain_finalise(struct iommu_domain *domain)
>  	domain->geometry.aperture_end = (1UL << pgtbl_cfg.ias) - 1;
>  	domain->geometry.force_aperture = true;
>  
> -	ret = finalise_stage_fn(smmu_domain, &pgtbl_cfg);
> +	ret = finalise_stage_fn(smmu_domain, master, &pgtbl_cfg);
>  	if (ret < 0) {
>  		free_io_pgtable_ops(pgtbl_ops);
>  		return ret;
> @@ -2419,7 +2468,7 @@ static int arm_smmu_attach_dev(struct iommu_domain *domain, struct device *dev)
>  
>  	if (!smmu_domain->smmu) {
>  		smmu_domain->smmu = smmu;
> -		ret = arm_smmu_domain_finalise(domain);
> +		ret = arm_smmu_domain_finalise(domain, master);
>  		if (ret) {
>  			smmu_domain->smmu = NULL;
>  			goto out_unlock;
> @@ -2431,6 +2480,13 @@ static int arm_smmu_attach_dev(struct iommu_domain *domain, struct device *dev)
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
> @@ -2438,9 +2494,6 @@ static int arm_smmu_attach_dev(struct iommu_domain *domain, struct device *dev)
>  	if (smmu_domain->stage != ARM_SMMU_DOMAIN_BYPASS)
>  		master->ats_enabled = arm_smmu_ats_supported(master);
>  
> -	if (smmu_domain->stage == ARM_SMMU_DOMAIN_S1)
> -		arm_smmu_write_ctx_desc(smmu, &smmu_domain->s1_cfg);
> -

Whilst it seems fine, perhaps a note on the 'why' of moving this into
finalise_s1 would be good in the patch description.

>  	arm_smmu_install_ste_for_dev(master);
>  
>  	spin_lock_irqsave(&smmu_domain->devices_lock, flags);



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
