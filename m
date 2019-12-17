Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1956E1232CC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 17:44:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MoZlSZtYMZa1nwcSADsftXfGCxnZvJEbeWSrd3LJaO0=; b=JkWRbUiCh46hV/
	MECt5WeNBfIZDunldz0mBadTkLgcc5C9H37Xadr8Bd58n8q/n3/YKo5OWPSgowjEAMZTI0UIrtWch
	OwavZ0R+nlHZMr1S3g4WYf98XOJ6qtjvZqADej9R+QF5ijxZKHCzr/8KREhJDvAFmv03B+QnBI16V
	aHoDNr2i4y5+WpiN0qLD81MUS/zPVs0alxRl7I2qfpzSJEvB2NykPnPA8HMQRUODgOCZzonS4Tdg3
	ywyfWTLKfsUQ/5alGJ4w7QfZ536LKlPoYmsIPjt/O7se0Vf77LGCw1GxqV8/zFN5N/zYQqmG1B378
	4ntWhnF5cae3UkOcgucw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihFxU-0000RY-D0; Tue, 17 Dec 2019 16:44:28 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihFxI-0000Qh-5p
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 16:44:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576601053;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zQmAK68upNV08R7vUs9aomsFFC2V5/vsnV51MwwN124=;
 b=gOFDBx6HQdKR6jRGp8o+/ic/Kj3831V8o8fRn0dC/gFPCqB+VOBiS88csmWV46x0eGvXyL
 GGNP2xNkKg9DZ6LMUR/2B4C1eqD9LsQs5bfiTcSJrcidM5bxU4ti80ixOgGF9SqiSyyL1T
 me8eU2/4GgXX7Y6bV8yv5MzKUOLtu5Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-303-aKkiDRQcNyGo6kka5WSaFg-1; Tue, 17 Dec 2019 11:44:08 -0500
X-MC-Unique: aKkiDRQcNyGo6kka5WSaFg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 622538048FC;
 Tue, 17 Dec 2019 16:44:05 +0000 (UTC)
Received: from [10.36.116.117] (ovpn-116-117.ams2.redhat.com [10.36.116.117])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C318360BE0;
 Tue, 17 Dec 2019 16:44:00 +0000 (UTC)
Subject: Re: [PATCH v3 07/13] iommu/arm-smmu-v3: Add support for Substream IDs
To: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-acpi@vger.kernel.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org
References: <20191209180514.272727-1-jean-philippe@linaro.org>
 <20191209180514.272727-8-jean-philippe@linaro.org>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <aeed148a-3c55-6e97-8d97-efa4f8c6d9f4@redhat.com>
Date: Tue, 17 Dec 2019 17:43:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20191209180514.272727-8-jean-philippe@linaro.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_084416_298171_CAA2DB46 
X-CRM114-Status: GOOD (  31.68  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
> At the moment, the SMMUv3 driver implements only one stage-1 or stage-2
> page directory per device. However SMMUv3 allows more than one address
> space for some devices, by providing multiple stage-1 page directories. In
> addition to the Stream ID (SID), that identifies a device, we can now have
> Substream IDs (SSID) identifying an address space. In PCIe, SID is called
> Requester ID (RID) and SSID is called Process Address-Space ID (PASID).
> A complete stage-1 walk goes through the context descriptor table:
> 
>       Stream tables       Ctx. Desc. tables       Page tables
>         +--------+   ,------->+-------+   ,------->+-------+
>         :        :   |        :       :   |        :       :
>         +--------+   |        +-------+   |        +-------+
>    SID->|  STE   |---'  SSID->|  CD   |---'  IOVA->|  PTE  |--> IPA
>         +--------+            +-------+            +-------+
>         :        :            :       :            :       :
>         +--------+            +-------+            +-------+
> 
> Rewrite arm_smmu_write_ctx_desc() to modify context descriptor table
> entries. To keep things simple we only implement one level of context
> descriptor tables here, but as with stream and page tables, an SSID can
> be split to index multiple levels of tables.
> 
> Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
>  drivers/iommu/arm-smmu-v3.c | 125 +++++++++++++++++++++++++++++-------
>  1 file changed, 102 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> index 43d6a7ded6e4..a01071123c34 100644
> --- a/drivers/iommu/arm-smmu-v3.c
> +++ b/drivers/iommu/arm-smmu-v3.c
> @@ -227,6 +227,11 @@
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
> @@ -329,6 +334,7 @@
>  #define CMDQ_PREFETCH_1_SIZE		GENMASK_ULL(4, 0)
>  #define CMDQ_PREFETCH_1_ADDR_MASK	GENMASK_ULL(63, 12)
>  
> +#define CMDQ_CFGI_0_SSID		GENMASK_ULL(31, 12)
>  #define CMDQ_CFGI_0_SID			GENMASK_ULL(63, 32)
>  #define CMDQ_CFGI_1_LEAF		(1UL << 0)
>  #define CMDQ_CFGI_1_RANGE		GENMASK_ULL(4, 0)
> @@ -446,8 +452,11 @@ struct arm_smmu_cmdq_ent {
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
> @@ -568,6 +577,7 @@ struct arm_smmu_cd_table {
>  struct arm_smmu_s1_cfg {
>  	struct arm_smmu_cd_table	table;
>  	struct arm_smmu_ctx_desc	cd;
> +	u8				s1fmt;
>  	u8				s1cdmax;
>  };
>  
> @@ -860,10 +870,16 @@ static int arm_smmu_cmdq_build_cmd(u64 *cmd, struct arm_smmu_cmdq_ent *ent)
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
> @@ -1456,6 +1472,33 @@ static int arm_smmu_cmdq_issue_sync(struct arm_smmu_device *smmu)
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
>  static int arm_smmu_alloc_cd_leaf_table(struct arm_smmu_device *smmu,
>  					struct arm_smmu_cd_table *table,
>  					size_t num_entries)
> @@ -1498,34 +1541,65 @@ static u64 arm_smmu_cpu_tcr_to_cd(u64 tcr)
>  	return val;
>  }
>  
> -static void arm_smmu_write_ctx_desc(struct arm_smmu_device *smmu,
> -				    struct arm_smmu_s1_cfg *cfg)
> +static int arm_smmu_write_ctx_desc(struct arm_smmu_domain *smmu_domain,
> +				   int ssid, struct arm_smmu_ctx_desc *cd)
>  {
> -	u64 val;
> -	__le64 *cdptr = cfg->table.ptr;
> -
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
I see arm_smmu_write_ctx_desc getting called with non null cd in
arm_smmu_attach_dev but I do not see it removed in the detach path?
>  	 */
> -	val = arm_smmu_cpu_tcr_to_cd(cfg->cd.tcr) |
> -#ifdef __BIG_ENDIAN
> -	      CTXDESC_CD_0_ENDI |
> -#endif
> -	      CTXDESC_CD_0_R | CTXDESC_CD_0_A | CTXDESC_CD_0_ASET |
> -	      CTXDESC_CD_0_AA64 | FIELD_PREP(CTXDESC_CD_0_ASID, cfg->cd.asid) |
> -	      CTXDESC_CD_0_V;
> +	u64 val;
> +	bool cd_live;
> +	struct arm_smmu_device *smmu = smmu_domain->smmu;
> +	__le64 *cdptr = smmu_domain->s1_cfg.table.ptr + ssid *
> +			CTXDESC_CD_DWORDS;>
> -	/* STALL_MODEL==0b10 && CD.S==0 is ILLEGAL */
> -	if (smmu->features & ARM_SMMU_FEAT_STALL_FORCE)
> -		val |= CTXDESC_CD_0_S;
> +	val = le64_to_cpu(cdptr[0]);
> +	cd_live = !!(val & CTXDESC_CD_0_V);
>  
> -	cdptr[0] = cpu_to_le64(val);
> +	if (!cd) { /* (4) */
> +		val = 0;
> +	} else if (cd_live) { /* (3) */
> +		val &= ~CTXDESC_CD_0_ASID;
> +		val |= FIELD_PREP(CTXDESC_CD_0_ASID, cd->asid);
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
Mostly, on't you want the invalid state to be seen?
> +		 */
> +		arm_smmu_sync_cd(smmu_domain, ssid, true);
>  
> -	val = cfg->cd.ttbr & CTXDESC_CD_1_TTB0_MASK;
> -	cdptr[1] = cpu_to_le64(val);
> +		val = arm_smmu_cpu_tcr_to_cd(cd->tcr) |
> +#ifdef __BIG_ENDIAN
> +			CTXDESC_CD_0_ENDI |
> +#endif
> +			CTXDESC_CD_0_R | CTXDESC_CD_0_A | CTXDESC_CD_0_ASET |
> +			CTXDESC_CD_0_AA64 |
> +			FIELD_PREP(CTXDESC_CD_0_ASID, cd->asid) |
> +			CTXDESC_CD_0_V;
>  
> -	cdptr[3] = cpu_to_le64(cfg->cd.mair);
> +		/* STALL_MODEL==0b10 && CD.S==0 is ILLEGAL */
> +		if (smmu->features & ARM_SMMU_FEAT_STALL_FORCE)
> +			val |= CTXDESC_CD_0_S;
> +	}
> +
> +	WRITE_ONCE(cdptr[0], cpu_to_le64(val));
> +	arm_smmu_sync_cd(smmu_domain, ssid, true);
> +	return 0;
>  }
>  
>  static int arm_smmu_alloc_cd_tables(struct arm_smmu_domain *smmu_domain)
> @@ -1533,6 +1607,7 @@ static int arm_smmu_alloc_cd_tables(struct arm_smmu_domain *smmu_domain)
>  	struct arm_smmu_device *smmu = smmu_domain->smmu;
>  	struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;
>  
> +	cfg->s1fmt = STRTAB_STE_0_S1FMT_LINEAR;
>  	return arm_smmu_alloc_cd_leaf_table(smmu, &cfg->table,
>  					    1 << cfg->s1cdmax);
>  }
> @@ -1664,6 +1739,7 @@ static void arm_smmu_write_strtab_ent(struct arm_smmu_master *master, u32 sid,
>  	if (s1_cfg) {
>  		BUG_ON(ste_live);
>  		dst[1] = cpu_to_le64(
> +			 FIELD_PREP(STRTAB_STE_1_S1DSS, STRTAB_STE_1_S1DSS_SSID0) |
>  			 FIELD_PREP(STRTAB_STE_1_S1CIR, STRTAB_STE_1_S1C_CACHE_WBRA) |
>  			 FIELD_PREP(STRTAB_STE_1_S1COR, STRTAB_STE_1_S1C_CACHE_WBRA) |
>  			 FIELD_PREP(STRTAB_STE_1_S1CSH, ARM_SMMU_SH_ISH) |
> @@ -1674,7 +1750,9 @@ static void arm_smmu_write_strtab_ent(struct arm_smmu_master *master, u32 sid,
>  			dst[1] |= cpu_to_le64(STRTAB_STE_1_S1STALLD);
>  
>  		val |= (s1_cfg->table.ptr_dma & STRTAB_STE_0_S1CTXPTR_MASK) |
> -			FIELD_PREP(STRTAB_STE_0_CFG, STRTAB_STE_0_CFG_S1_TRANS);
> +			FIELD_PREP(STRTAB_STE_0_CFG, STRTAB_STE_0_CFG_S1_TRANS) |
> +			FIELD_PREP(STRTAB_STE_0_S1CDMAX, s1_cfg->s1cdmax) |
> +			FIELD_PREP(STRTAB_STE_0_S1FMT, s1_cfg->s1fmt);
Do I understand correctly that each time we update the CD, we also
update the STE. This is not wrong but theoretically this is not needed,
right?

This also explains why you do not need the CMD_PREFETCH_CONFIG with ssid
because you invalidate the config per sid?
>  	}
>  
>  	if (s2_cfg) {
> @@ -2479,7 +2557,8 @@ static int arm_smmu_attach_dev(struct iommu_domain *domain, struct device *dev)
>  		master->ats_enabled = arm_smmu_ats_supported(master);
>  
>  	if (smmu_domain->stage == ARM_SMMU_DOMAIN_S1)
> -		arm_smmu_write_ctx_desc(smmu, &smmu_domain->s1_cfg);
> +		arm_smmu_write_ctx_desc(smmu_domain, 0,
> +					&smmu_domain->s1_cfg.cd);
>  
>  	arm_smmu_install_ste_for_dev(master);
>  
> 

Thanks

Eric


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
