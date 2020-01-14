Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A609013AD04
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 16:05:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kRyxP715Xk46HKvF9gTZLdw3Er5unn0Wyu6OQRX+vPQ=; b=cx0NQpeS10tQZT
	zadlAjbmGIcp/NG9+bhxPM5jcVT0wrQy5AAb05aI55dYaxv5c5BCfX709IRcZtYIugnAUk9+kSutj
	5JzaYmJ1XGgVCVMNadYmgsQoTsPZl8l9Yst/zmAO/76WUMzBHBuoHe+1+IfvHkc8PYcdHCvw8HK5w
	OF6SJp3bFlyn1bErWq1OJLtcrS/AgeIwNhsGD3lU2HV6VYG0gwjVsKG673ADjP0zCWSy7XZcHs6PB
	eRWdbFSqBXGQhsCttE6+A0+72vsIfX3mmiohstpsqb5CtWwC0LyksU8vkLkg+a2IaaSQCrCjMSwT8
	XKEBi8iNasn3F96CATAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irNkT-0004W5-W6; Tue, 14 Jan 2020 15:04:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irNkJ-0004VF-3n
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 15:04:47 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A7433222C4;
 Tue, 14 Jan 2020 15:04:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579014282;
 bh=41bJSGrfq4ZIM0M/ydUTdPdKoDOXm3woHYUUSROZmos=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PWMQZFvdmogw0QY+S9fXChT2b/pn5YqBxZgzZLBEeu/5yDuLgd0uiB6/KdoJ1DsZD
 HaknwZUOoXN8vIaorFP8b/Dwc2HJzgQ2oBc9ig/GGYIxBhX/2XVr8FWi2u1B1bi1zt
 VQjR3YyEs4nPsQmYFWMkOQW9psUJebD+WbrPb9Ko=
Date: Tue, 14 Jan 2020 15:04:36 +0000
From: Will Deacon <will@kernel.org>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v4 10/13] iommu/arm-smmu-v3: Add second level of context
 descriptor table
Message-ID: <20200114150435.GA2579@willie-the-truck>
References: <20191219163033.2608177-1-jean-philippe@linaro.org>
 <20191219163033.2608177-11-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191219163033.2608177-11-jean-philippe@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_070443_199936_5D157FF6 
X-CRM114-Status: GOOD (  18.88  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
 eric.auger@redhat.com, linux-pci@vger.kernel.org, joro@8bytes.org,
 sudeep.holla@arm.com, rjw@rjwysocki.net, linux-acpi@vger.kernel.org,
 iommu@lists.linux-foundation.org, robh+dt@kernel.org,
 jonathan.cameron@huawei.com, guohanjun@huawei.com, bhelgaas@google.com,
 zhangfei.gao@linaro.org, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 05:30:30PM +0100, Jean-Philippe Brucker wrote:
> The SMMU can support up to 20 bits of SSID. Add a second level of page
> tables to accommodate this. Devices that support more than 1024 SSIDs now
> have a table of 1024 L1 entries (8kB), pointing to tables of 1024 context
> descriptors (64kB), allocated on demand.
> 
> Tested-by: Zhangfei Gao <zhangfei.gao@linaro.org>
> Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
>  drivers/iommu/arm-smmu-v3.c | 154 +++++++++++++++++++++++++++++++++---
>  1 file changed, 144 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> index b825a5639afc..bf106a7b53eb 100644
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

	#define CTXDESC_L1_DESC_V	(1UL << 0)

fits better with the rest of the driver and also ensures that the thing
is unsigned (we should probably switch over the BIT macros, but that's a
separate cleanup patch).

> +#define CTXDESC_L1_DESC_L2PTR_MASK	GENMASK_ULL(51, 12)
> +
>  #define CTXDESC_CD_DWORDS		8
>  #define CTXDESC_CD_0_TCR_T0SZ		GENMASK_ULL(5, 0)
>  #define ARM64_TCR_T0SZ			GENMASK_ULL(5, 0)
> @@ -575,7 +589,12 @@ struct arm_smmu_cd_table {
>  };
>  
>  struct arm_smmu_s1_cfg {
> -	struct arm_smmu_cd_table	table;
> +	/* Leaf tables or linear table */
> +	struct arm_smmu_cd_table	*tables;
> +	size_t				num_tables;
> +	/* First level tables, when two levels are used */
> +	__le64				*l1ptr;
> +	dma_addr_t			l1ptr_dma;

It probably feels like a nit, but I think this is all a little hard to read
because it differs unnecessarily from the way the stream table is handled.

Could we align the two as follows? (I've commented things with what they
refer to in your patch):


struct arm_smmu_l1_ctx_desc {				// arm_smmu_cd_table
	__le64				*l2ptr;		// ptr
	dma_addr_t			l2ptr_dma;	// ptr_dma
};

struct arm_smmu_ctx_desc_cfg {
	__le64				*cdtab;		// l1ptr
	dma_addr_t			cdtab_dma;	// l1ptr_dma
	struct arm_smmu_l1_ctx_desc	*l1_desc;	// tables
	unsigned int			num_l1_ents;	// num_tables
};

struct arm_smmu_s1_cfg {
	struct arm_smmu_ctx_desc_cfg	cdcfg;
	struct arm_smmu_ctx_desc	cd;
	u8				s1fmt;
	u8				s1cdmax;
};


I don't know whether you'd then want to move s1fmt and s1cdmax into the
cdcfg, I'll leave that up to you. Similarly if you want any functions
to operate on arm_smmu_ctx_desc_cfg in preference to arm_smmu_s1_cfg.

Thoughts?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
