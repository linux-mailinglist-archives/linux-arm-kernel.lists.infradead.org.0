Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18936135B83
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 15:36:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XT9YrVLkCTSQVykCrRNOi2s09DlXI1ppCoav7jj7rPU=; b=smn/qeXrBzF/wr
	PAMv4C7O1xKRzUNzBwUA6bdpVzyNrk9JFpzqpq6IOgmIsldPTfHP9rE5IJJfOZSQ8cXeMvTUSzM3w
	hxnB5GHmJF9L4PznQbUC4m8eng1f2SeJhggbKXDm+PYce6VmKBZvP/dMV39oPhY3f2IuZi9IZ250u
	HZRekA5615qbIMF1T0sr/6Dz+iFq0we8BAGGrGhfXbBrKEEh+mmKzyM2rqf1b7SVs6xUYcoPj42EG
	HfsLSCqgpiicq3OtUSpEvlOG22UccJ+NDlN0e+p8CeTfCs+uLWNRMc460aw5+W6rujj+nZnk2Oua5
	UGPsNPVDN8LvvwP2Hm5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipYvR-0004Ym-Uq; Thu, 09 Jan 2020 14:36:41 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipYvD-0004S7-2F
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 14:36:29 +0000
Received: by mail-wr1-x443.google.com with SMTP id d16so7589632wre.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 06:36:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=g2drrPLS9W1lcBDXqoZZiE3Yz8L8Qun+2VJ+iOV7n9U=;
 b=z6zkCoDmXbyKIxNdRu3f+62NTSmeRR1H7SSY5NSACWxmE7l6Hx44I/sC8Tv73fqYSs
 AU2DcCxpx+ac0feHDzb2ec0bwRByF0IBMLG2BS6y2ijM1gFmamN8HBNpKJ4H9yF4OsyT
 WTrfzeJZwSrjLTnegGFZ4jXXqqQdOlhQIB1yciwcd26uyVKWGN0v0glC7GaUqJW34+lJ
 eUaWwYy/Z73VEnyNwguYUX+e0xO+PmHCBz82W/M3kM+LhnyCmd15D/FQ2VmjHb/iWLX3
 sdAb3U3VrUpZAQXEOIi6jyKKLjQhqZxU/qGePqGTgDCO2wSItFKHvAPuoqyt+/kUNP5F
 Fjjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=g2drrPLS9W1lcBDXqoZZiE3Yz8L8Qun+2VJ+iOV7n9U=;
 b=ncNa0Dsv/+tVia1Ou8vHmFRRFjcQGYxis9UcImycJrKA+SBpjV+rNzJ5gesRBxvh9f
 TyNGqh/Gu38mTgDGUDZxPnaAamxoljAf6eZH5X/CM6FJoJsIJ68B4KCERqCvseKrE6up
 cRcIApCdWskLBg0HkBhIgu/ZL8TkLELaf3jM3ucPtLfirZl2bxR/4w1gSDL2b6RmDI7i
 fdAjfPDpQ3jX5ihFPXw8x20QbpHoKSCpr25YWIPIQfDiHQFc7O7JHctcRQPX9Qxb9ZMa
 Kc0uWE5hQv6xcKYu/vd69ewNUCUXPMaEvKg3J2T4QQDu++zAseTtoLs6OynzyMNsZOFY
 /mxg==
X-Gm-Message-State: APjAAAWrZth8eNmI2GeEFLAbOGBfZIBFWm8MWA7bcd+/2G0ZVO7tXQ1T
 fN9YCX5mjCP2zX4xXkOYnCBN9A==
X-Google-Smtp-Source: APXvYqwF8e5jIK0p0rSZVDWRKyZV/LcuULWfpv1lLvBp4kTaTHfK4BZm6ZFa/I1SthEb6xyhNmBKxA==
X-Received: by 2002:adf:e3d0:: with SMTP id k16mr11584783wrm.241.1578580585031; 
 Thu, 09 Jan 2020 06:36:25 -0800 (PST)
Received: from myrica (adsl-84-227-176-239.adslplus.ch. [84.227.176.239])
 by smtp.gmail.com with ESMTPSA id l6sm3122575wmf.21.2020.01.09.06.36.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 06:36:24 -0800 (PST)
Date: Thu, 9 Jan 2020 15:36:18 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-acpi@vger.kernel.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org
Subject: Re: [PATCH v4 00/13] iommu: Add PASID support to Arm SMMUv3
Message-ID: <20200109143618.GA942461@myrica>
References: <20191219163033.2608177-1-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191219163033.2608177-1-jean-philippe@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_063627_128590_2F0CA0E1 
X-CRM114-Status: GOOD (  25.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, will@kernel.org, guohanjun@huawei.com,
 rjw@rjwysocki.net, robh+dt@kernel.org, sudeep.holla@arm.com,
 bhelgaas@google.com, zhangfei.gao@linaro.org, robin.murphy@arm.com,
 lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On Thu, Dec 19, 2019 at 05:30:20PM +0100, Jean-Philippe Brucker wrote:
> Add support for Substream ID and PASIDs to the SMMUv3 driver. Since v3
> [1], I added review and tested tags where appropriate and applied the
> suggested changes, shown in the diff below. Thanks all!
> 
> I'm testing using the zip accelerator on the Hisilicon KunPeng920 and
> Zhangfei's uacce module [2]. The full SVA support, which I'll send out
> early next year, is available on my branch sva/zip-devel at
> https://jpbrucker.net/git/linux/

Is there anything more I should do for the PASID support? Ideally I'd like
to get this in v5.6 so I can focus on the rest of the SVA work and on
performance improvements.

Thanks,
Jean

> 
> [1] https://lore.kernel.org/linux-iommu/20191209180514.272727-1-jean-philippe@linaro.org/
> [2] https://lore.kernel.org/linux-iommu/1576465697-27946-1-git-send-email-zhangfei.gao@linaro.org/
> 
> Jean-Philippe Brucker (13):
>   iommu/arm-smmu-v3: Drop __GFP_ZERO flag from DMA allocation
>   dt-bindings: document PASID property for IOMMU masters
>   iommu/arm-smmu-v3: Parse PASID devicetree property of platform devices
>   ACPI/IORT: Parse SSID property of named component node
>   iommu/arm-smmu-v3: Prepare arm_smmu_s1_cfg for SSID support
>   iommu/arm-smmu-v3: Add context descriptor tables allocators
>   iommu/arm-smmu-v3: Add support for Substream IDs
>   iommu/arm-smmu-v3: Propagate ssid_bits
>   iommu/arm-smmu-v3: Prepare for handling arm_smmu_write_ctx_desc()
>     failure
>   iommu/arm-smmu-v3: Add second level of context descriptor table
>   iommu/arm-smmu-v3: Improve add_device() error handling
>   PCI/ATS: Add PASID stubs
>   iommu/arm-smmu-v3: Add support for PCI PASID
> 
>  .../devicetree/bindings/iommu/iommu.txt       |   6 +
>  drivers/acpi/arm64/iort.c                     |  18 +
>  drivers/iommu/arm-smmu-v3.c                   | 467 +++++++++++++++---
>  drivers/iommu/of_iommu.c                      |   6 +-
>  include/linux/iommu.h                         |   2 +
>  include/linux/pci-ats.h                       |   3 +
>  6 files changed, 442 insertions(+), 60 deletions(-)
> 
> -- 
> Diff since v3:
> #diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> index cde7af39681c..8e95ecad4c9a 100644
> --- a/drivers/iommu/arm-smmu-v3.c
> +++ b/drivers/iommu/arm-smmu-v3.c
> @@ -589,8 +589,10 @@ struct arm_smmu_cd_table {
>  };
> 
>  struct arm_smmu_s1_cfg {
> +	/* Leaf tables or linear table */
>  	struct arm_smmu_cd_table	*tables;
>  	size_t				num_tables;
> +	/* First level tables, when two levels are used */
>  	__le64				*l1ptr;
>  	dma_addr_t			l1ptr_dma;
>  	struct arm_smmu_ctx_desc	cd;
> @@ -1561,27 +1563,22 @@ static __le64 *arm_smmu_get_cd_ptr(struct arm_smmu_domain *smmu_domain,
>  	struct arm_smmu_device *smmu = smmu_domain->smmu;
>  	struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;
> 
> -	if (cfg->s1fmt == STRTAB_STE_0_S1FMT_LINEAR) {
> -		table = &cfg->tables[0];
> -		idx = ssid;
> -	} else {
> -		idx = ssid >> CTXDESC_SPLIT;
> -		if (idx >= cfg->num_tables)
> -			return NULL;
> +	if (cfg->s1fmt == STRTAB_STE_0_S1FMT_LINEAR)
> +		return cfg->tables[0].ptr + ssid * CTXDESC_CD_DWORDS;
> 
> -		table = &cfg->tables[idx];
> -		if (!table->ptr) {
> -			if (arm_smmu_alloc_cd_leaf_table(smmu, table,
> -							 CTXDESC_L2_ENTRIES))
> -				return NULL;
> +	idx = ssid >> CTXDESC_SPLIT;
> +	table = &cfg->tables[idx];
> +	if (!table->ptr) {
> +		if (arm_smmu_alloc_cd_leaf_table(smmu, table,
> +						 CTXDESC_L2_ENTRIES))
> +			return NULL;
> 
> -			l1ptr = cfg->l1ptr + idx * CTXDESC_L1_DESC_DWORDS;
> -			arm_smmu_write_cd_l1_desc(l1ptr, table);
> -			/* An invalid L1CD can be cached */
> -			arm_smmu_sync_cd(smmu_domain, ssid, false);
> -		}
> -		idx = ssid & (CTXDESC_L2_ENTRIES - 1);
> +		l1ptr = cfg->l1ptr + idx * CTXDESC_L1_DESC_DWORDS;
> +		arm_smmu_write_cd_l1_desc(l1ptr, table);
> +		/* An invalid L1CD can be cached */
> +		arm_smmu_sync_cd(smmu_domain, ssid, false);
>  	}
> +	idx = ssid & (CTXDESC_L2_ENTRIES - 1);
>  	return table->ptr + idx * CTXDESC_CD_DWORDS;
>  }
> 
> @@ -1617,8 +1614,12 @@ static int arm_smmu_write_ctx_desc(struct arm_smmu_domain *smmu_domain,
>  	u64 val;
>  	bool cd_live;
>  	struct arm_smmu_device *smmu = smmu_domain->smmu;
> -	__le64 *cdptr = arm_smmu_get_cd_ptr(smmu_domain, ssid);
> +	__le64 *cdptr;
> 
> +	if (WARN_ON(ssid >= (1 << smmu_domain->s1_cfg.s1cdmax)))
> +		return -E2BIG;
> +
> +	cdptr = arm_smmu_get_cd_ptr(smmu_domain, ssid);
>  	if (!cdptr)
>  		return -ENOMEM;
> 
> @@ -1640,9 +1641,9 @@ static int arm_smmu_write_ctx_desc(struct arm_smmu_domain *smmu_domain,
>  		cdptr[3] = cpu_to_le64(cd->mair);
> 
>  		/*
> -		 * STE is live, and the SMMU might fetch this CD at any
> -		 * time. Ensure that it observes the rest of the CD before we
> -		 * enable it.
> +		 * STE is live, and the SMMU might read dwords of this CD in any
> +		 * order. Ensure that it observes valid values before reading
> +		 * V=1.
>  		 */
>  		arm_smmu_sync_cd(smmu_domain, ssid, true);
> 
> @@ -1706,7 +1707,7 @@ static int arm_smmu_alloc_cd_tables(struct arm_smmu_domain *smmu_domain)
>  	 * Only allocate a leaf table for linear case. With two levels, leaf
>  	 * tables are allocated lazily.
>  	 */
> -	if (!cfg->l1ptr) {
> +	if (cfg->s1fmt == STRTAB_STE_0_S1FMT_LINEAR) {
>  		ret = arm_smmu_alloc_cd_leaf_table(smmu, &cfg->tables[0],
>  						   max_contexts);
>  		if (ret)
> @@ -2657,17 +2658,21 @@ static int arm_smmu_enable_pasid(struct arm_smmu_master *master)
> 
>  	features = pci_pasid_features(pdev);
>  	if (features < 0)
> -		return -ENODEV;
> +		return features;
> 
>  	num_pasids = pci_max_pasids(pdev);
>  	if (num_pasids <= 0)
> -		return -ENODEV;
> +		return num_pasids;
> 
>  	ret = pci_enable_pasid(pdev, features);
> -	if (!ret)
> -		master->ssid_bits = min_t(u8, ilog2(num_pasids),
> -					  master->smmu->ssid_bits);
> -	return ret;
> +	if (ret) {
> +		dev_err(&pdev->dev, "Failed to enable PASID\n");
> +		return ret;
> +	}
> +
> +	master->ssid_bits = min_t(u8, ilog2(num_pasids),
> +				  master->smmu->ssid_bits);
> +	return 0;
>  }
> 
>  static void arm_smmu_disable_pasid(struct arm_smmu_master *master)
> 
> 
> _______________________________________________
> iommu mailing list
> iommu@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/iommu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
