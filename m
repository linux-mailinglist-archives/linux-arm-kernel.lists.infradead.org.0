Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E261E360A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 05:01:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kYkb9MtHs2A+qIbdUITw4M8CVCjY2KMWJSSPuzfiNnU=; b=LQrvvk4K7TWi7c
	3dgUjOwyes4Z8ADKze0XCIiNzMpsODbeR6jG/2kyXoUgMvtxtPWVlhEXdL4On5JUriTIszvGdSsyi
	/e/7utO/bDmXKwJJZWOivmCilEjMoKXVVDmaiu5h7txy5Nv4otPCz/5jMRWE3nanaeUesHl1ERd3J
	LmELf/TCEKPqc0Col9osBF+yfPuF+J2GbVSu1CC4CpUrW2Kg/C0TjmJscAeUmY0eqYgN+O9uuIm2R
	462HJ3DvWnJYEh+gLfUfjWi7EIgnnukntGc6taWrR//VogLN46O8iG9kZkbgMEkpoBQFuHcbYDqtu
	+Qr456QJRKoEZJsgo57Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdmJV-0008HJ-Uj; Wed, 27 May 2020 03:01:05 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdmJL-0007uP-NW
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 03:00:57 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 3C20BF272BC3D1B5F2DA;
 Wed, 27 May 2020 11:00:42 +0800 (CST)
Received: from [127.0.0.1] (10.173.221.213) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.487.0;
 Wed, 27 May 2020 11:00:31 +0800
Subject: Re: [PATCH v7 18/24] iommu/arm-smmu-v3: Add support for Hardware
 Translation Table Update
To: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 <iommu@lists.linux-foundation.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-pci@vger.kernel.org>,
 <linux-mm@kvack.org>
References: <20200519175502.2504091-1-jean-philippe@linaro.org>
 <20200519175502.2504091-19-jean-philippe@linaro.org>
From: Xiang Zheng <zhengxiang9@huawei.com>
Message-ID: <4eea10e0-1343-8d7d-ba8d-214d05558c76@huawei.com>
Date: Wed, 27 May 2020 11:00:29 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20200519175502.2504091-19-jean-philippe@linaro.org>
Content-Language: en-US
X-Originating-IP: [10.173.221.213]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_200055_939519_8FA4DD8E 
X-CRM114-Status: GOOD (  21.10  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.35 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: fenghua.yu@intel.com, kevin.tian@intel.com, jacob.jun.pan@linux.intel.com,
 will@kernel.org, catalin.marinas@arm.com, joro@8bytes.org,
 christian.koenig@amd.com, hch@infradead.org, jgg@ziepe.ca,
 Wang Haibin <wanghaibin.wang@huawei.com>, Jonathan.Cameron@huawei.com,
 zhangfei.gao@linaro.org, xuzaibo@huawei.com, robin.murphy@arm.com,
 felix.kuehling@amd.com, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jean,

This patch only enables HTTU bits in CDs. Is it also neccessary to enable
HTTU bits in STEs in this patch?

On 2020/5/20 1:54, Jean-Philippe Brucker wrote:
> If the SMMU supports it and the kernel was built with HTTU support,
> enable hardware update of access and dirty flags. This is essential for
> shared page tables, to reduce the number of access faults on the fault
> queue. Normal DMA with io-pgtables doesn't currently use the access or
> dirty flags.
> 
> We can enable HTTU even if CPUs don't support it, because the kernel
> always checks for HW dirty bit and updates the PTE flags atomically.
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
>  drivers/iommu/arm-smmu-v3.c | 24 +++++++++++++++++++++++-
>  1 file changed, 23 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> index 1386d4d2bc60..6a368218f54c 100644
> --- a/drivers/iommu/arm-smmu-v3.c
> +++ b/drivers/iommu/arm-smmu-v3.c
> @@ -58,6 +58,8 @@
>  #define IDR0_ASID16			(1 << 12)
>  #define IDR0_ATS			(1 << 10)
>  #define IDR0_HYP			(1 << 9)
> +#define IDR0_HD				(1 << 7)
> +#define IDR0_HA				(1 << 6)
>  #define IDR0_BTM			(1 << 5)
>  #define IDR0_COHACC			(1 << 4)
>  #define IDR0_TTF			GENMASK(3, 2)
> @@ -311,6 +313,9 @@
>  #define CTXDESC_CD_0_TCR_IPS		GENMASK_ULL(34, 32)
>  #define CTXDESC_CD_0_TCR_TBI0		(1ULL << 38)
>  
> +#define CTXDESC_CD_0_TCR_HA		(1UL << 43)
> +#define CTXDESC_CD_0_TCR_HD		(1UL << 42)
> +

>  #define CTXDESC_CD_0_AA64		(1UL << 41)
>  #define CTXDESC_CD_0_S			(1UL << 44)
>  #define CTXDESC_CD_0_R			(1UL << 45)
> @@ -663,6 +668,8 @@ struct arm_smmu_device {
>  #define ARM_SMMU_FEAT_E2H		(1 << 16)
>  #define ARM_SMMU_FEAT_BTM		(1 << 17)
>  #define ARM_SMMU_FEAT_SVA		(1 << 18)
> +#define ARM_SMMU_FEAT_HA		(1 << 19)
> +#define ARM_SMMU_FEAT_HD		(1 << 20)
>  	u32				features;
>  
>  #define ARM_SMMU_OPT_SKIP_PREFETCH	(1 << 0)
> @@ -1718,10 +1725,17 @@ static int arm_smmu_write_ctx_desc(struct arm_smmu_domain *smmu_domain,
>  		 * this substream's traffic
>  		 */
>  	} else { /* (1) and (2) */
> +		u64 tcr = cd->tcr;
> +
>  		cdptr[1] = cpu_to_le64(cd->ttbr & CTXDESC_CD_1_TTB0_MASK);
>  		cdptr[2] = 0;
>  		cdptr[3] = cpu_to_le64(cd->mair);
>  
> +		if (!(smmu->features & ARM_SMMU_FEAT_HD))
> +			tcr &= ~CTXDESC_CD_0_TCR_HD;
> +		if (!(smmu->features & ARM_SMMU_FEAT_HA))
> +			tcr &= ~CTXDESC_CD_0_TCR_HA;
> +
>  		/*
>  		 * STE is live, and the SMMU might read dwords of this CD in any
>  		 * order. Ensure that it observes valid values before reading
> @@ -1729,7 +1743,7 @@ static int arm_smmu_write_ctx_desc(struct arm_smmu_domain *smmu_domain,
>  		 */
>  		arm_smmu_sync_cd(smmu_domain, ssid, true);
>  
> -		val = cd->tcr |
> +		val = tcr |
>  #ifdef __BIG_ENDIAN
>  			CTXDESC_CD_0_ENDI |
>  #endif
> @@ -1958,10 +1972,12 @@ static struct arm_smmu_ctx_desc *arm_smmu_alloc_shared_cd(struct mm_struct *mm)
>  		return old_cd;
>  	}
>  
> +	/* HA and HD will be filtered out later if not supported by the SMMU */
>  	tcr = FIELD_PREP(CTXDESC_CD_0_TCR_T0SZ, 64ULL - VA_BITS) |
>  	      FIELD_PREP(CTXDESC_CD_0_TCR_IRGN0, ARM_LPAE_TCR_RGN_WBWA) |
>  	      FIELD_PREP(CTXDESC_CD_0_TCR_ORGN0, ARM_LPAE_TCR_RGN_WBWA) |
>  	      FIELD_PREP(CTXDESC_CD_0_TCR_SH0, ARM_LPAE_TCR_SH_IS) |
> +	      CTXDESC_CD_0_TCR_HA | CTXDESC_CD_0_TCR_HD |
>  	      CTXDESC_CD_0_TCR_EPD1 | CTXDESC_CD_0_AA64;
>  
>  	switch (PAGE_SIZE) {
> @@ -4454,6 +4470,12 @@ static int arm_smmu_device_hw_probe(struct arm_smmu_device *smmu)
>  			smmu->features |= ARM_SMMU_FEAT_E2H;
>  	}
>  
> +	if (reg & (IDR0_HA | IDR0_HD)) {

> +		smmu->features |= ARM_SMMU_FEAT_HA;
> +		if (reg & IDR0_HD)
> +			smmu->features |= ARM_SMMU_FEAT_HD;
> +	}
> +

>  	/*
>  	 * If the CPU is using VHE, but the SMMU doesn't support it, the SMMU
>  	 * will create TLB entries for NH-EL1 world and will miss the
> 

-- 
Thanks,
Xiang


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
