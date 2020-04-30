Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A05D1C0070
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 17:35:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QRjAvJmv8GaNikGhavVrawJeJH1K4jx2+fB69Kbndi0=; b=ksedqP1NjkD6oW7UVK3vCBQ3u
	JcO0zFOEa8hNEw+gYh+Zv+p3iJcQCUMQecBtGeku1+yqfu9cg2OTA+NtcPaZL/uNb7/9InHdr30Yv
	6CUZtIEfMwaYAxy5pJiYa0daPWEtSWgxxTDOjTGU7TQKWPzPhBXpDgzc5lckSVCPr/Rg4jz/0s18x
	ejg7hq1/7UEMJ2PF/p18fdmPNamzYIv95GYsqd8vCZstHNKtVAwqX3D/7UPgTS4YyC2qLcD4C7EV5
	p/UKHfoi6Pd8qfcV5k5MZlTyGAkg9w5od3hzQ298PK5NFWk34M5QLCXRQ4m8PejsGJG/Bpyc/ksUZ
	+t/pm9b3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUBDi-0004XH-Kv; Thu, 30 Apr 2020 15:35:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUBDP-0003sE-6a
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 15:35:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EB36731B;
 Thu, 30 Apr 2020 08:35:05 -0700 (PDT)
Received: from [10.37.12.139] (unknown [10.37.12.139])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 84D063F68F;
 Thu, 30 Apr 2020 08:34:57 -0700 (PDT)
Subject: Re: [PATCH v6 11/25] iommu/arm-smmu-v3: Share process page tables
To: jean-philippe@linaro.org, iommu@lists.linux-foundation.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-mm@kvack.org
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
 <20200430143424.2787566-12-jean-philippe@linaro.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <580a915f-f8bf-3b3e-c77d-6d0c2ea4bd02@arm.com>
Date: Thu, 30 Apr 2020 16:39:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <20200430143424.2787566-12-jean-philippe@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_083507_295339_732016A3 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 jgg@ziepe.ca, catalin.marinas@arm.com, joro@8bytes.org, robin.murphy@arm.com,
 hch@infradead.org, zhangfei.gao@linaro.org, Jonathan.Cameron@huawei.com,
 felix.kuehling@amd.com, xuzaibo@huawei.com, will@kernel.org,
 christian.koenig@amd.com, baolu.lu@linux.intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/30/2020 03:34 PM, Jean-Philippe Brucker wrote:
> With Shared Virtual Addressing (SVA), we need to mirror CPU TTBR, TCR,
> MAIR and ASIDs in SMMU contexts. Each SMMU has a single ASID space split
> into two sets, shared and private. Shared ASIDs correspond to those
> obtained from the arch ASID allocator, and private ASIDs are used for
> "classic" map/unmap DMA.
> 
> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---

> +
> +	tcr = FIELD_PREP(CTXDESC_CD_0_TCR_T0SZ, 64ULL - VA_BITS) |
> +	      FIELD_PREP(CTXDESC_CD_0_TCR_IRGN0, ARM_LPAE_TCR_RGN_WBWA) |
> +	      FIELD_PREP(CTXDESC_CD_0_TCR_ORGN0, ARM_LPAE_TCR_RGN_WBWA) |
> +	      FIELD_PREP(CTXDESC_CD_0_TCR_SH0, ARM_LPAE_TCR_SH_IS) |
> +	      CTXDESC_CD_0_TCR_EPD1 | CTXDESC_CD_0_AA64;
> +
> +	switch (PAGE_SIZE) {
> +	case SZ_4K:
> +		tcr |= FIELD_PREP(CTXDESC_CD_0_TCR_TG0, ARM_LPAE_TCR_TG0_4K);
> +		break;
> +	case SZ_16K:
> +		tcr |= FIELD_PREP(CTXDESC_CD_0_TCR_TG0, ARM_LPAE_TCR_TG0_16K);
> +		break;
> +	case SZ_64K:
> +		tcr |= FIELD_PREP(CTXDESC_CD_0_TCR_TG0, ARM_LPAE_TCR_TG0_64K);
> +		break;
> +	default:
> +		WARN_ON(1);
> +		ret = -EINVAL;
> +		goto err_free_asid;
> +	}
> +
> +	reg = read_sanitised_ftr_reg(SYS_ID_AA64MMFR0_EL1);
> +	par = cpuid_feature_extract_unsigned_field(reg, ID_AA64MMFR0_PARANGE_SHIFT);
> +	tcr |= FIELD_PREP(CTXDESC_CD_0_TCR_IPS, par);
> +
> +	cd->ttbr = virt_to_phys(mm->pgd);

Does the TTBR follow the same layout as TTBR_ELx for 52bit IPA ? i.e, 
TTBR[5:2] = BADDR[51:48] ? Are you covered for that ?

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
