Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 475E81DCF61
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 16:17:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dRWTZKrY4B85+cpgk9ILbiQHlYYTQxgQYW4ec21Bu0U=; b=WGEPT2WrE4qaKd
	Diei6eL2veEWiHnJa18AKfoQ8oVRuKhnSmUZgNVmd07bdVCAzxaC0/VEIMLlv4f+HuHxgBUTf7nZt
	JDXAdyGVDdrV3iiYrddJQrQpiJLp9D+VgyQSXyfJ35Wg9pREphmLPMTuIO4LN9bGGv+SD1P9DWtFL
	CBOxZTaUWifon+eyQBLs7XbJg68qXizH5bgw7MuVbSbQ0KiR7fe8QaUN9BJCpv8KUG/LyMvrTtAMS
	b1UaR0i8zTq6ID1BO5BMkLKfw7F/+frYseNTS4dU+teJSCEJ59l82CWiZAQ+ZjiEPd4J48kmXp4Yb
	hnljmSXVXdjh73UugZPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbm0s-0001ke-KF; Thu, 21 May 2020 14:17:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbm0V-0001ds-R1
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 14:17:13 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 34BA420748;
 Thu, 21 May 2020 14:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590070631;
 bh=GjzwaRRDCT9qDw4gwlt5yphxvwdwXZXZJrf50Lvn5nM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Zhp5hS0c2hiMcsTRAY10N5jHSgZcntp4kpwpJONYplXF38WzHAEZoGyGf7WtcOmeZ
 SKj5nEInq3SKL2VlD8LFdVsuhHY/aZUa7Jj8fkbSrkOJJPXvL3N6U8V1CkL+2owG/s
 gfSxtKHi1uniXMpcr8PtGe4iCXKURd11/Z63TNoU=
Date: Thu, 21 May 2020 15:17:05 +0100
From: Will Deacon <will@kernel.org>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v7 14/24] iommu/arm-smmu-v3: Add SVA feature checking
Message-ID: <20200521141704.GH6608@willie-the-truck>
References: <20200519175502.2504091-1-jean-philippe@linaro.org>
 <20200519175502.2504091-15-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519175502.2504091-15-jean-philippe@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_071711_926164_74B67447 
X-CRM114-Status: GOOD (  17.61  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, kevin.tian@intel.com,
 jacob.jun.pan@linux.intel.com, jgg@ziepe.ca, linux-pci@vger.kernel.org,
 joro@8bytes.org, Jonathan.Cameron@huawei.com,
 Suzuki K Poulose <suzuki.poulose@arm.com>, fenghua.yu@intel.com,
 hch@infradead.org, linux-mm@kvack.org, iommu@lists.linux-foundation.org,
 zhangfei.gao@linaro.org, catalin.marinas@arm.com, felix.kuehling@amd.com,
 xuzaibo@huawei.com, robin.murphy@arm.com, christian.koenig@amd.com,
 linux-arm-kernel@lists.infradead.org, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 07:54:52PM +0200, Jean-Philippe Brucker wrote:
> Aggregate all sanity-checks for sharing CPU page tables with the SMMU
> under a single ARM_SMMU_FEAT_SVA bit. For PCIe SVA, users also need to
> check FEAT_ATS and FEAT_PRI. For platform SVA, they will most likely have
> to check FEAT_STALLS.
> 
> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
>  drivers/iommu/arm-smmu-v3.c | 72 +++++++++++++++++++++++++++++++++++++
>  1 file changed, 72 insertions(+)
> 
> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> index 9332253e3608..a9f6f1d7014e 100644
> --- a/drivers/iommu/arm-smmu-v3.c
> +++ b/drivers/iommu/arm-smmu-v3.c
> @@ -660,6 +660,7 @@ struct arm_smmu_device {
>  #define ARM_SMMU_FEAT_RANGE_INV		(1 << 15)
>  #define ARM_SMMU_FEAT_E2H		(1 << 16)
>  #define ARM_SMMU_FEAT_BTM		(1 << 17)
> +#define ARM_SMMU_FEAT_SVA		(1 << 18)
>  	u32				features;
>  
>  #define ARM_SMMU_OPT_SKIP_PREFETCH	(1 << 0)
> @@ -3935,6 +3936,74 @@ static int arm_smmu_device_reset(struct arm_smmu_device *smmu, bool bypass)
>  	return 0;
>  }
>  
> +static bool arm_smmu_supports_sva(struct arm_smmu_device *smmu)
> +{
> +	unsigned long reg, fld;
> +	unsigned long oas;
> +	unsigned long asid_bits;
> +
> +	u32 feat_mask = ARM_SMMU_FEAT_BTM | ARM_SMMU_FEAT_COHERENCY;

Aha -- here's the coherency check I missed!

> +
> +	if ((smmu->features & feat_mask) != feat_mask)
> +		return false;
> +
> +	if (!(smmu->pgsize_bitmap & PAGE_SIZE))
> +		return false;
> +
> +	/*
> +	 * Get the smallest PA size of all CPUs (sanitized by cpufeature). We're
> +	 * not even pretending to support AArch32 here.
> +	 */
> +	reg = read_sanitised_ftr_reg(SYS_ID_AA64MMFR0_EL1);
> +	fld = cpuid_feature_extract_unsigned_field(reg, ID_AA64MMFR0_PARANGE_SHIFT);
> +	switch (fld) {
> +	case 0x0:
> +		oas = 32;
> +		break;
> +	case 0x1:
> +		oas = 36;
> +		break;
> +	case 0x2:
> +		oas = 40;
> +		break;
> +	case 0x3:
> +		oas = 42;
> +		break;
> +	case 0x4:
> +		oas = 44;
> +		break;
> +	case 0x5:
> +		oas = 48;
> +		break;
> +	case 0x6:

We can use ID_AA64MMFR0_PARANGE_xx constants instead of the hardcoded hex
numbers here.

With that:

Acked-by: Will Deacon <will@kernel.org>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
