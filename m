Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19FB71243D8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 11:00:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ylpDsZTDa1Vw7HaxMYbnpnUXdadAghO79Pn1fryK9zw=; b=pkoF9OAvbS/66e
	meiuEOB2syCUBfGinpnwbcR9mH54tQSh2kl2ATZzSy1AS/skFWkwKt3KVdPDsXwNdvGixQtQZULN5
	AX5rGiBhojFSEBpBgtG5G+pjLQoRdaVo35uJYz3PDwCtvkyJi3PUG2gqDPUEa0DxFGxK+ifE8duEh
	xzq+kTpUu6eczmWLuTql2Z1OKStKy9B3Vwb+yQIeTQVTKTQX0tCM0C1wzueuOsCKXQIys8giDZyx2
	cS8MA78IFfxsP4fvWMthJrmqpb10kQw7c2V5Ovsrzs/wIFkU2dg+O9j3vTWja3XT1uK69fKfXzxZy
	AVBCRC8O0iMw6AGrWCvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihW7j-0004xK-I3; Wed, 18 Dec 2019 10:00:07 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihW7T-0004wv-Ku
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 09:59:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576663190;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZesRJMwRUaXJolh5+YUZ7E8d3EI/LVFGdC+apBPgCCM=;
 b=GuKG5egTKIVBWloBN6UslZaoV2wGdlSqV5nWyJyFuDRvOE5Htky3zRag1NTPS2iWh4jSmo
 sl3ufM8jGkiDh7RO7gVubARpgiLnmIeDf06zzEn/8dH2KuNQEfBD8+5Psy2C9WltKuh7ls
 EajdSXZXtm2wQJ99OEnHwC8ym7hi1ME=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-57-1eJWCi-XPYe5E3jzQ4hnIg-1; Wed, 18 Dec 2019 04:59:46 -0500
X-MC-Unique: 1eJWCi-XPYe5E3jzQ4hnIg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5B71B2275;
 Wed, 18 Dec 2019 09:59:43 +0000 (UTC)
Received: from [10.36.116.117] (ovpn-116-117.ams2.redhat.com [10.36.116.117])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A4E4C26DC5;
 Wed, 18 Dec 2019 09:59:38 +0000 (UTC)
Subject: Re: [PATCH v3 10/13] iommu/arm-smmu-v3: Add second level of context
 descriptor table
To: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-acpi@vger.kernel.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org
References: <20191209180514.272727-1-jean-philippe@linaro.org>
 <20191209180514.272727-11-jean-philippe@linaro.org>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <26230082-03d2-5c01-389a-9e32dd281b57@redhat.com>
Date: Wed, 18 Dec 2019 10:59:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20191209180514.272727-11-jean-philippe@linaro.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_015951_771117_D4D99930 
X-CRM114-Status: GOOD (  27.68  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.81 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, robin.murphy@arm.com,
 joro@8bytes.org, guohanjun@huawei.com, rjw@rjwysocki.net, robh+dt@kernel.org,
 jonathan.cameron@huawei.com, sudeep.holla@arm.com, bhelgaas@google.com,
 zhangfei.gao@linaro.org, will@kernel.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jean,

On 12/9/19 7:05 PM, Jean-Philippe Brucker wrote:
> The SMMU can support up to 20 bits of SSID. Add a second level of page
> tables to accommodate this. Devices that support more than 1024 SSIDs now
> have a table of 1024 L1 entries (8kB), pointing to tables of 1024 context
> descriptors (64kB), allocated on demand.
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
>  drivers/iommu/arm-smmu-v3.c | 153 +++++++++++++++++++++++++++++++++---
>  1 file changed, 143 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> index fc5119f34187..52adcdfda58b 100644
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
> @@ -575,7 +589,10 @@ struct arm_smmu_cd_table {
>  };
>  
>  struct arm_smmu_s1_cfg {
> -	struct arm_smmu_cd_table	table;
> +	struct arm_smmu_cd_table	*tables;
> +	size_t				num_tables;
> +	__le64				*l1ptr;
you may add a comment saying that l1ptr and l1ptr_dma are only set/used
in non linear case and one comment saying that "tables" represent leaf
tables.
> +	dma_addr_t			l1ptr_dma;
>  	struct arm_smmu_ctx_desc	cd;
>  	u8				s1fmt;
>  	u8				s1cdmax;
> @@ -1521,9 +1538,53 @@ static void arm_smmu_free_cd_leaf_table(struct arm_smmu_device *smmu,
>  {
>  	size_t size = num_entries * (CTXDESC_CD_DWORDS << 3);
>  
> +	if (!table->ptr)
> +		return;
>  	dmam_free_coherent(smmu->dev, size, table->ptr, table->ptr_dma);
>  }
>  
> +static void arm_smmu_write_cd_l1_desc(__le64 *dst,
> +				      struct arm_smmu_cd_table *table)
> +{
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
nit: you may avoid this extra indent by either returning above or go to
a label.
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
> +	return table->ptr + idx * CTXDESC_CD_DWORDS;> +}
> +
>  static u64 arm_smmu_cpu_tcr_to_cd(u64 tcr)
>  {
>  	u64 val = 0;
> @@ -1556,8 +1617,10 @@ static int arm_smmu_write_ctx_desc(struct arm_smmu_domain *smmu_domain,
>  	u64 val;
>  	bool cd_live;
>  	struct arm_smmu_device *smmu = smmu_domain->smmu;
> -	__le64 *cdptr = smmu_domain->s1_cfg.table.ptr + ssid *
> -			CTXDESC_CD_DWORDS;
> +	__le64 *cdptr = arm_smmu_get_cd_ptr(smmu_domain, ssid);
> +
> +	if (!cdptr)
> +		return -ENOMEM;
-ENOMEM does not fit well with (idx >= cfg->num_tables) case
Besides the idx is checked against the max table capacity only in non
linear mode. Can't you check the ssid against cfg->s1cdmax earlier?
>  
>  	val = le64_to_cpu(cdptr[0]);
>  	cd_live = !!(val & CTXDESC_CD_0_V);
> @@ -1604,20 +1667,87 @@ static int arm_smmu_write_ctx_desc(struct arm_smmu_domain *smmu_domain,
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
> +						 GFP_KERNEL);
> +		if (!cfg->l1ptr) {
> +			dev_warn(smmu->dev,
> +				 "failed to allocate L1 context table\n");
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
> +	/*
> +	 * Only allocate a leaf table for linear case. With two levels, leaf
> +	 * tables are allocated lazily.
> +	 */
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
> +	cfg->tables = NULL;
> +err_free_l1:
> +	if (cfg->l1ptr) {
> +		dmam_free_coherent(smmu->dev, size, cfg->l1ptr, cfg->l1ptr_dma);
> +		cfg->l1ptr = NULL;
> +		cfg->l1ptr_dma = 0;
> +	}
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
> +
> +	if (cfg->l1ptr) {
> +		size_t size = cfg->num_tables * (CTXDESC_L1_DESC_DWORDS << 3);
>  
> -	arm_smmu_free_cd_leaf_table(smmu, &cfg->table, 1 << cfg->s1cdmax);
> +		dmam_free_coherent(smmu->dev, size, cfg->l1ptr, cfg->l1ptr_dma);
> +		cfg->l1ptr = NULL;
> +		cfg->l1ptr_dma = 0;
> +		num_leaf_entries = CTXDESC_L2_ENTRIES;
> +	}
> +
> +	for (i = 0; i < cfg->num_tables; i++, table++)
> +		arm_smmu_free_cd_leaf_table(smmu, table, num_leaf_entries);
> +	devm_kfree(smmu->dev, cfg->tables);
> +	cfg->tables = NULL;
>  }
>  
>  /* Stream table manipulation functions */
> @@ -1737,6 +1867,9 @@ static void arm_smmu_write_strtab_ent(struct arm_smmu_master *master, u32 sid,
>  	}
>  
>  	if (s1_cfg) {
> +		dma_addr_t ptr_dma = s1_cfg->l1ptr ? s1_cfg->l1ptr_dma :
> +				     s1_cfg->tables[0].ptr_dma;
> +
>  		BUG_ON(ste_live);
>  		dst[1] = cpu_to_le64(
>  			 FIELD_PREP(STRTAB_STE_1_S1DSS, STRTAB_STE_1_S1DSS_SSID0) |
> @@ -1749,7 +1882,7 @@ static void arm_smmu_write_strtab_ent(struct arm_smmu_master *master, u32 sid,
>  		   !(smmu->features & ARM_SMMU_FEAT_STALL_FORCE))
>  			dst[1] |= cpu_to_le64(STRTAB_STE_1_S1STALLD);
>  
> -		val |= (s1_cfg->table.ptr_dma & STRTAB_STE_0_S1CTXPTR_MASK) |
> +		val |= (ptr_dma & STRTAB_STE_0_S1CTXPTR_MASK) |
>  			FIELD_PREP(STRTAB_STE_0_CFG, STRTAB_STE_0_CFG_S1_TRANS) |
>  			FIELD_PREP(STRTAB_STE_0_S1CDMAX, s1_cfg->s1cdmax) |
>  			FIELD_PREP(STRTAB_STE_0_S1FMT, s1_cfg->s1fmt);
> @@ -2265,7 +2398,7 @@ static void arm_smmu_domain_free(struct iommu_domain *domain)
>  	if (smmu_domain->stage == ARM_SMMU_DOMAIN_S1) {
>  		struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;
>  
> -		if (cfg->table.ptr) {
> +		if (cfg->tables) {
>  			arm_smmu_free_cd_tables(smmu_domain);
>  			arm_smmu_bitmap_free(smmu->asid_map, cfg->cd.asid);
>  		}
> 
Otherwise looks good to me.

Thanks

Eric


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
