Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13FE11C3D3F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 16:37:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Uzvgmy6QJ24xbSUjaB35G6oa5U1BME3NOy7HopT10tE=; b=sVlaJb+u4c698U5+RhraSZj3A
	Lld6AtpyrgVWfnjCdXTEJqnvwrl1ztcPFbd30Q8eRUYU6fKcrbSbq2WdVRgapHzalg31Dm2iG09Tl
	wAN8gBObMLpwWTYeMzjhnfOveot9lUw3DRnBLMeXeKjFbu651AcIpqyxBMg3SvFB3mvYHqRf4W1lF
	EHmr94blxoAz76Hlcau1Hju7s/7DNhXO8yrbA4d7mVJ8o3JUbo3bDlfS4HQrN3Yx7i30/mlM9Reu+
	jQHSSHXelJslUhdu+AK59Fl29IvmJAyubqS9TgRa93at+47vTZnspNY+by3n6XUm2uao2Ji1Kgb3h
	6He/CWLMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVcDm-0003TO-D6; Mon, 04 May 2020 14:37:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVcDe-0003SE-BQ
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 14:37:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9D6461FB;
 Mon,  4 May 2020 07:37:17 -0700 (PDT)
Received: from [10.37.12.17] (unknown [10.37.12.17])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 543783F305;
 Mon,  4 May 2020 07:37:04 -0700 (PDT)
Subject: Re: [PATCH v6 11/25] iommu/arm-smmu-v3: Share process page tables
To: jean-philippe@linaro.org
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
 <20200430143424.2787566-12-jean-philippe@linaro.org>
 <580a915f-f8bf-3b3e-c77d-6d0c2ea4bd02@arm.com>
 <20200504141137.GA170104@myrica>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <82f54362-34f1-2378-49c2-2d87e065e385@arm.com>
Date: Mon, 4 May 2020 15:42:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <20200504141137.GA170104@myrica>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_073718_438763_DCD1B046 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, kevin.tian@intel.com,
 jacob.jun.pan@linux.intel.com, jgg@ziepe.ca, linux-pci@vger.kernel.org,
 joro@8bytes.org, Jonathan.Cameron@huawei.com, robin.murphy@arm.com,
 fenghua.yu@intel.com, hch@infradead.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org, zhangfei.gao@linaro.org,
 catalin.marinas@arm.com, felix.kuehling@amd.com, xuzaibo@huawei.com,
 will@kernel.org, christian.koenig@amd.com,
 linux-arm-kernel@lists.infradead.org, baolu.lu@linux.intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/04/2020 03:11 PM, Jean-Philippe Brucker wrote:
> On Thu, Apr 30, 2020 at 04:39:53PM +0100, Suzuki K Poulose wrote:
>> On 04/30/2020 03:34 PM, Jean-Philippe Brucker wrote:
>>> With Shared Virtual Addressing (SVA), we need to mirror CPU TTBR, TCR,
>>> MAIR and ASIDs in SMMU contexts. Each SMMU has a single ASID space split
>>> into two sets, shared and private. Shared ASIDs correspond to those
>>> obtained from the arch ASID allocator, and private ASIDs are used for
>>> "classic" map/unmap DMA.
>>>
>>> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
>>> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
>>> ---
>>
>>> +
>>> +	tcr = FIELD_PREP(CTXDESC_CD_0_TCR_T0SZ, 64ULL - VA_BITS) |
>>> +	      FIELD_PREP(CTXDESC_CD_0_TCR_IRGN0, ARM_LPAE_TCR_RGN_WBWA) |
>>> +	      FIELD_PREP(CTXDESC_CD_0_TCR_ORGN0, ARM_LPAE_TCR_RGN_WBWA) |
>>> +	      FIELD_PREP(CTXDESC_CD_0_TCR_SH0, ARM_LPAE_TCR_SH_IS) |
>>> +	      CTXDESC_CD_0_TCR_EPD1 | CTXDESC_CD_0_AA64;
>>> +
>>> +	switch (PAGE_SIZE) {
>>> +	case SZ_4K:
>>> +		tcr |= FIELD_PREP(CTXDESC_CD_0_TCR_TG0, ARM_LPAE_TCR_TG0_4K);
>>> +		break;
>>> +	case SZ_16K:
>>> +		tcr |= FIELD_PREP(CTXDESC_CD_0_TCR_TG0, ARM_LPAE_TCR_TG0_16K);
>>> +		break;
>>> +	case SZ_64K:
>>> +		tcr |= FIELD_PREP(CTXDESC_CD_0_TCR_TG0, ARM_LPAE_TCR_TG0_64K);
>>> +		break;
>>> +	default:
>>> +		WARN_ON(1);
>>> +		ret = -EINVAL;
>>> +		goto err_free_asid;
>>> +	}
>>> +
>>> +	reg = read_sanitised_ftr_reg(SYS_ID_AA64MMFR0_EL1);
>>> +	par = cpuid_feature_extract_unsigned_field(reg, ID_AA64MMFR0_PARANGE_SHIFT);
>>> +	tcr |= FIELD_PREP(CTXDESC_CD_0_TCR_IPS, par);
>>> +
>>> +	cd->ttbr = virt_to_phys(mm->pgd);
>>
>> Does the TTBR follow the same layout as TTBR_ELx for 52bit IPA ? i.e,
>> TTBR[5:2] = BADDR[51:48] ? Are you covered for that ?
> 
> Good point, I don't remember checking this. The SMMU TTBR doesn't have the
> same layout as the CPU's, and we don't need to swizzle the bits. For the
> lower bits, the alignment requirements on the pgd are identical to the
> MMU.

Ok, if that is the case:

Acked-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
