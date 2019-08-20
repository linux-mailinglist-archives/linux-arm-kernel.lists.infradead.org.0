Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0854595C11
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 12:16:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+NU5oyKeA/4ohL0TUJY7dEqGLLtVGvpESRXwkYP7Pak=; b=AvOT1AmzUYzVzthWxKDQdWcZ7
	YSBIZNRNHAK/wBafFCxNxIaly+hDrNjAJhHzsBD+CT1+mv9Q938Uxvuol7NaZfQ7/9VuRxjgopDhX
	rTKCF/nzynub9EBbKn4WWTJ6R0kTHQVqJNtbxPGFSowoXPzEU0U1rU4A2DlUUa+tg+DMEIWn7dA4X
	13YEKDfGpQpa6NmcWLxvHV3E25TMeNyPYOoAJJsIM5usR5h+QtdftJnTS40dWiEDZJJ41eo7seBQZ
	VVmHIZ+bxIBOjzvjnuIxHqi7xu/uQlJLmdaHtqaEiWX+6w+wq3cs/Xi/8OsB4QSTKR/EFXX7Pa1J1
	x0UK8y57Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i01B6-000632-ER; Tue, 20 Aug 2019 10:15:48 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i01Ao-00062f-FR
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 10:15:32 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 1E1E5609EF; Tue, 20 Aug 2019 10:15:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1566296130;
 bh=fDwddnWyNSFkaX3+osUat+KO9Gw5i7EqXC6ur0X+nDI=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=f7p+2kCMHFO2mMI2k0baHuN8IkP9dLr8kFUZ2TKzEdrLBtTTh0jU/nRML+pSYe84r
 Iqr6nqETqn+HgRC06CQoQhGjDSiLpgtK6nxZZ5jFsEddLgKpC/ww4vgP1RDAff61R8
 qR9EG9TxvwE5H04sueUUWMGWuyXIyw/I7ISMbuwY=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from [10.79.137.238]
 (blr-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: vivek.gautam@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 8BEE060741;
 Tue, 20 Aug 2019 10:15:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1566296127;
 bh=fDwddnWyNSFkaX3+osUat+KO9Gw5i7EqXC6ur0X+nDI=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=QSOpcWpBm3tW24aVwBbkX5UllPXOHwlrhXiJ80Pw+6GvFrOC0XtlnsrR8K32Zo8Lo
 6IIcXBzvlSjiIXWoBFNW7tNMEaqqrwocRTzQOI65AmcFUYiLIF+In0mDfrHafOOZk3
 ZXua5YOu2LTyfWKY2GRG7kSAIifn/O858RaSa6r0=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 8BEE060741
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=vivek.gautam@codeaurora.org
Subject: Re: [PATCH v2 17/17] iommu/arm-smmu: Add context init implementation
 hook
To: Robin Murphy <robin.murphy@arm.com>, will@kernel.org
References: <cover.1565892337.git.robin.murphy@arm.com>
 <f50c14834bb7a4f0f7c765d433c2defdb03661c9.1565892337.git.robin.murphy@arm.com>
From: Vivek Gautam <vivek.gautam@codeaurora.org>
Message-ID: <8306f3f1-925c-0b02-8103-9d4a510005b2@codeaurora.org>
Date: Tue, 20 Aug 2019 15:45:20 +0530
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <f50c14834bb7a4f0f7c765d433c2defdb03661c9.1565892337.git.robin.murphy@arm.com>
Content-Type: multipart/mixed; boundary="------------80B028CDD5943A54CA33F4D2"
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_031530_567593_1D2FFA58 
X-CRM114-Status: GOOD (  28.65  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: robdclark@gmail.com, gregory.clement@bootlin.com,
 bjorn.andersson@linaro.org, iommu@lists.linux-foundation.org,
 jcrouse@codeaurora.org, joro@8bytes.org, linux-arm-kernel@lists.infradead.org
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a multi-part message in MIME format.
--------------80B028CDD5943A54CA33F4D2
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit



On 8/16/2019 12:07 AM, Robin Murphy wrote:
> Allocating and initialising a context for a domain is another point
> where certain implementations are known to want special behaviour.
> Currently the other half of the Cavium workaround comes into play here,
> so let's finish the job to get the whole thing right out of the way.
>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>   drivers/iommu/arm-smmu-impl.c | 42 ++++++++++++++++++++++++++---
>   drivers/iommu/arm-smmu.c      | 51 +++++++----------------------------
>   drivers/iommu/arm-smmu.h      | 42 +++++++++++++++++++++++++++--
>   3 files changed, 87 insertions(+), 48 deletions(-)
>
> diff --git a/drivers/iommu/arm-smmu-impl.c b/drivers/iommu/arm-smmu-impl.c
> index 4dc8b1c4befb..e22e9004f449 100644
> --- a/drivers/iommu/arm-smmu-impl.c
> +++ b/drivers/iommu/arm-smmu-impl.c
> @@ -48,25 +48,60 @@ const struct arm_smmu_impl calxeda_impl = {
>   };
>   
>   
> +struct cavium_smmu {
> +	struct arm_smmu_device smmu;
> +	u32 id_base;
> +};
> +
>   static int cavium_cfg_probe(struct arm_smmu_device *smmu)
>   {
>   	static atomic_t context_count = ATOMIC_INIT(0);
> +	struct cavium_smmu *cs = container_of(smmu, struct cavium_smmu, smmu);
>   	/*
>   	 * Cavium CN88xx erratum #27704.
>   	 * Ensure ASID and VMID allocation is unique across all SMMUs in
>   	 * the system.
>   	 */
> -	smmu->cavium_id_base = atomic_fetch_add(smmu->num_context_banks,
> -						   &context_count);
> +	cs->id_base = atomic_fetch_add(smmu->num_context_banks, &context_count);
>   	dev_notice(smmu->dev, "\tenabling workaround for Cavium erratum 27704\n");
>   
>   	return 0;
>   }
>   
> +int cavium_init_context(struct arm_smmu_domain *smmu_domain)
> +{
> +	struct cavium_smmu *cs = container_of(smmu_domain->smmu,
> +					      struct cavium_smmu, smmu);
> +
> +	if (smmu_domain->stage == ARM_SMMU_DOMAIN_S2)
> +		smmu_domain->cfg.vmid += cs->id_base;
> +	else
> +		smmu_domain->cfg.asid += cs->id_base;
> +
> +	return 0;
> +}
> +
>   const struct arm_smmu_impl cavium_impl = {
>   	.cfg_probe = cavium_cfg_probe,
> +	.init_context = cavium_init_context,
>   };
>   
> +struct arm_smmu_device *cavium_smmu_impl_init(struct arm_smmu_device *smmu)
> +{
> +	struct cavium_smmu *cs;
> +
> +	cs = devm_kzalloc(smmu->dev, sizeof(*cs), GFP_KERNEL);
> +	if (!cs)
> +		return ERR_PTR(-ENOMEM);
> +
> +	cs->smmu = *smmu;
> +	cs->smmu.impl = &cavium_impl;
> +
> +	devm_kfree(smmu->dev, smmu);
> +
> +	return &cs->smmu;
> +}
> +
>   
>   #define ARM_MMU500_ACTLR_CPRE		(1 << 1)
>   
> @@ -126,8 +161,7 @@ struct arm_smmu_device *arm_smmu_impl_init(struct arm_smmu_device *smmu)
>   		smmu->impl = &arm_mmu500_impl;
>   		break;
>   	case CAVIUM_SMMUV2:
> -		smmu->impl = &cavium_impl;
> -		break;
> +		return cavium_smmu_impl_init(smmu);
>   	default:
>   		break;
>   	}
> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> index fc98992d120d..b8628e2ab579 100644
> --- a/drivers/iommu/arm-smmu.c
> +++ b/drivers/iommu/arm-smmu.c
> @@ -27,7 +27,6 @@
>   #include <linux/interrupt.h>
>   #include <linux/io.h>
>   #include <linux/io-64-nonatomic-hi-lo.h>
> -#include <linux/io-pgtable.h>
>   #include <linux/iopoll.h>
>   #include <linux/init.h>
>   #include <linux/moduleparam.h>
> @@ -111,44 +110,6 @@ struct arm_smmu_master_cfg {
>   #define for_each_cfg_sme(fw, i, idx) \
>   	for (i = 0; idx = fwspec_smendx(fw, i), i < fw->num_ids; ++i)
>   
> -enum arm_smmu_context_fmt {
> -	ARM_SMMU_CTX_FMT_NONE,
> -	ARM_SMMU_CTX_FMT_AARCH64,
> -	ARM_SMMU_CTX_FMT_AARCH32_L,
> -	ARM_SMMU_CTX_FMT_AARCH32_S,
> -};
> -
> -struct arm_smmu_cfg {
> -	u8				cbndx;
> -	u8				irptndx;
> -	union {
> -		u16			asid;
> -		u16			vmid;
> -	};
> -	enum arm_smmu_cbar_type		cbar;
> -	enum arm_smmu_context_fmt	fmt;
> -};
> -#define INVALID_IRPTNDX			0xff
> -
> -enum arm_smmu_domain_stage {
> -	ARM_SMMU_DOMAIN_S1 = 0,
> -	ARM_SMMU_DOMAIN_S2,
> -	ARM_SMMU_DOMAIN_NESTED,
> -	ARM_SMMU_DOMAIN_BYPASS,
> -};
> -
> -struct arm_smmu_domain {
> -	struct arm_smmu_device		*smmu;
> -	struct io_pgtable_ops		*pgtbl_ops;
> -	const struct iommu_gather_ops	*tlb_ops;
> -	struct arm_smmu_cfg		cfg;
> -	enum arm_smmu_domain_stage	stage;
> -	bool				non_strict;
> -	struct mutex			init_mutex; /* Protects smmu pointer */
> -	spinlock_t			cb_lock; /* Serialises ATS1* ops and TLB syncs */
> -	struct iommu_domain		domain;
> -};
> -
>   static bool using_legacy_binding, using_generic_binding;
>   
>   static inline int arm_smmu_rpm_get(struct arm_smmu_device *smmu)
> @@ -749,9 +710,16 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
>   	}
>   
>   	if (smmu_domain->stage == ARM_SMMU_DOMAIN_S2)
> -		cfg->vmid = cfg->cbndx + 1 + smmu->cavium_id_base;
> +		cfg->vmid = cfg->cbndx + 1;
>   	else
> -		cfg->asid = cfg->cbndx + smmu->cavium_id_base;
> +		cfg->asid = cfg->cbndx;
> +
> +	smmu_domain->smmu = smmu;
> +	if (smmu->impl && smmu->impl->init_context) {
> +		ret = smmu->impl->init_context(smmu_domain);
> +		if (ret)
> +			goto out_unlock;
> +	}
>   
>   	pgtbl_cfg = (struct io_pgtable_cfg) {
>   		.pgsize_bitmap	= smmu->pgsize_bitmap,
> @@ -765,7 +733,6 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
>   	if (smmu_domain->non_strict)
>   		pgtbl_cfg.quirks |= IO_PGTABLE_QUIRK_NON_STRICT;
>   
> -	smmu_domain->smmu = smmu;
>   	pgtbl_ops = alloc_io_pgtable_ops(fmt, &pgtbl_cfg, smmu_domain);
>   	if (!pgtbl_ops) {
>   		ret = -ENOMEM;
> diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
> index ddafe872a396..611ed742e56f 100644
> --- a/drivers/iommu/arm-smmu.h
> +++ b/drivers/iommu/arm-smmu.h
> @@ -14,6 +14,7 @@
>   #include <linux/bits.h>
>   #include <linux/clk.h>
>   #include <linux/device.h>
> +#include <linux/io-pgtable.h>
>   #include <linux/iommu.h>
>   #include <linux/mutex.h>
>   #include <linux/spinlock.h>
> @@ -270,14 +271,50 @@ struct arm_smmu_device {
>   	struct clk_bulk_data		*clks;
>   	int				num_clks;
>   
> -	u32				cavium_id_base; /* Specific to Cavium */
> -
>   	spinlock_t			global_sync_lock;
>   
>   	/* IOMMU core code handle */
>   	struct iommu_device		iommu;
>   };
>   
> +enum arm_smmu_context_fmt {
> +	ARM_SMMU_CTX_FMT_NONE,
> +	ARM_SMMU_CTX_FMT_AARCH64,
> +	ARM_SMMU_CTX_FMT_AARCH32_L,
> +	ARM_SMMU_CTX_FMT_AARCH32_S,
> +};
> +
> +struct arm_smmu_cfg {
> +	u8				cbndx;
> +	u8				irptndx;
> +	union {
> +		u16			asid;
> +		u16			vmid;
> +	};
> +	enum arm_smmu_cbar_type		cbar;
> +	enum arm_smmu_context_fmt	fmt;
> +};
> +#define INVALID_IRPTNDX			0xff
> +
> +enum arm_smmu_domain_stage {
> +	ARM_SMMU_DOMAIN_S1 = 0,
> +	ARM_SMMU_DOMAIN_S2,
> +	ARM_SMMU_DOMAIN_NESTED,
> +	ARM_SMMU_DOMAIN_BYPASS,
> +};
> +
> +struct arm_smmu_domain {
> +	struct arm_smmu_device		*smmu;
> +	struct io_pgtable_ops		*pgtbl_ops;
> +	const struct iommu_gather_ops	*tlb_ops;
> +	struct arm_smmu_cfg		cfg;
> +	enum arm_smmu_domain_stage	stage;
> +	bool				non_strict;
> +	struct mutex			init_mutex; /* Protects smmu pointer */
> +	spinlock_t			cb_lock; /* Serialises ATS1* ops and TLB syncs */
> +	struct iommu_domain		domain;
> +};
> +
>   
>   /* Implementation details, yay! */
>   struct arm_smmu_impl {
> @@ -289,6 +326,7 @@ struct arm_smmu_impl {
>   			    u64 val);
>   	int (*cfg_probe)(struct arm_smmu_device *smmu);
>   	int (*reset)(struct arm_smmu_device *smmu);
> +	int (*init_context)(struct arm_smmu_domain *smmu_domain);

Hi Robin,

Sorry for responding late to this series. I have couple of doubts here 
that I wanted to discuss.

Are we standardizing these implementation specific ops? Each vendor 
implementations will have something peculiar to take care. Things are 
good right now with 'reset', 'cfg_probe', and 'init_context' hooks.
But, on top of vendor implementation details, there can be SoC specific 
errata changes that need to be added.
Moreover, adding implementation data based on __model__ may not suffice 
for long. Do you suggest adding any other data variable in the 
ARM_SMMU_MATCH_DATA?
To show SoC specific needs, I have the change attached in this email to 
take care of the SDM845 'wait-for-safe' sequence.
Please take a look.

Thanks & Regards
Vivek

>   };
>   
>   static inline void __iomem *arm_smmu_page(struct arm_smmu_device *smmu, int n)


--------------80B028CDD5943A54CA33F4D2
Content-Type: text/plain; charset=UTF-8;
 name="0003-iommu-arm-smmu-impl-Add-SDM845-specific-implementati.patch"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename*0="0003-iommu-arm-smmu-impl-Add-SDM845-specific-implementati.pa";
 filename*1="tch"

RnJvbSAzODMwZWM3ZTIyZGViNDlkZTcyYjZiYzI5YmQ5NjVmN2IwN2I5NjY5IE1vbiBTZXAg
MTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBWaXZlayBHYXV0YW0gPHZpdmVrLmdhdXRhbUBjb2Rl
YXVyb3JhLm9yZz4KRGF0ZTogVHVlLCAyMCBBdWcgMjAxOSAxNToyODoxNiArMDUzMApTdWJq
ZWN0OiBbUEFUQ0ggMy80XSBpb21tdTogYXJtLXNtbXUtaW1wbDogQWRkIFNETTg0NSBzcGVj
aWZpYyBpbXBsZW1lbnRhdGlvbgogaG9vawoKU2lnbmVkLW9mZi1ieTogVml2ZWsgR2F1dGFt
IDx2aXZlay5nYXV0YW1AY29kZWF1cm9yYS5vcmc+Ci0tLQogZHJpdmVycy9pb21tdS9hcm0t
c21tdS1pbXBsLmMgfCAzMSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiBkcml2
ZXJzL2lvbW11L2FybS1zbW11LmMgICAgICB8ICAyICsrCiBkcml2ZXJzL2lvbW11L2FybS1z
bW11LmggICAgICB8ICAxICsKIDMgZmlsZXMgY2hhbmdlZCwgMzQgaW5zZXJ0aW9ucygrKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvaW9tbXUvYXJtLXNtbXUtaW1wbC5jIGIvZHJpdmVycy9p
b21tdS9hcm0tc21tdS1pbXBsLmMKaW5kZXggM2Y4OGNkMDc4ZGQ1Li4wZTZmNWFiMGUwY2Ug
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvaW9tbXUvYXJtLXNtbXUtaW1wbC5jCisrKyBiL2RyaXZl
cnMvaW9tbXUvYXJtLXNtbXUtaW1wbC5jCkBAIC02LDYgKzYsNyBAQAogCiAjaW5jbHVkZSA8
bGludXgvYml0ZmllbGQuaD4KICNpbmNsdWRlIDxsaW51eC9vZi5oPgorI2luY2x1ZGUgPGxp
bnV4L3Fjb21fc2NtLmg+CiAKICNpbmNsdWRlICJhcm0tc21tdS5oIgogCkBAIC0xNDgsNiAr
MTQ5LDMyIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgYXJtX3NtbXVfaW1wbCBhcm1fbW11NTAw
X2ltcGwgPSB7CiB9OwogCiAKK3N0YXRpYyBpbnQgcWNvbV9zZG04NDVfc21tdTUwMF9jZmdf
cHJvYmUoc3RydWN0IGFybV9zbW11X2RldmljZSAqc21tdSkKK3sKKwlpbnQgcmV0OworCisJ
LyoKKwkgKiBUbyBhZGRyZXNzIHBlcmZvcm1hbmNlIGRlZ3JhZGF0aW9uIGluIG5vbi1yZWFs
IHRpbWUgY2xpZW50cywKKwkgKiBzdWNoIGFzIFVTQiBhbmQgVUZTLCB0dXJuIG9mZiB3YWl0
LWZvci1zYWZlIG9uIHNkbTg0NSBwbGF0Zm9ybXMsCisJICogc3VjaCBhcyBNVFAsIHdob3Nl
IGZpcm13YXJlcyBpbXBsZW1lbnQgY29ycmVzcG9uZGluZyBzZWN1cmUgbW9uaXRvcgorCSAq
IGNhbGwgaGFuZGxlcnMuCisJICovCisJaWYgKG9mX3Byb3BlcnR5X3JlYWRfYm9vbChzbW11
LT5kZXYtPm9mX25vZGUsCisJCQkJICAicWNvbSxzbW11LTUwMC1mdy1pbXBsLXNhZmUtZXJy
YXRhIikpIHsKKwkJcmV0ID0gcWNvbV9zY21fcXNtbXU1MDBfd2FpdF9zYWZlX3RvZ2dsZSgw
KTsKKwkJaWYgKHJldCkKKwkJCWRldl93YXJuKHNtbXUtPmRldiwgIkZhaWxlZCB0byB0dXJu
IG9mZiBTQUZFIGxvZ2ljXG4iKTsKKwl9CisKKwlyZXR1cm4gMDsKK30KKworY29uc3Qgc3Ry
dWN0IGFybV9zbW11X2ltcGwgcWNvbV9zZG04NDVfc21tdTUwMF9pbXBsID0geworCS5yZXNl
dCA9IGFybV9tbXU1MDBfcmVzZXQsCisJLmNmZ19wcm9iZSA9IHFjb21fc2RtODQ1X3NtbXU1
MDBfY2ZnX3Byb2JlLAorfTsKKworCiBzdHJ1Y3QgYXJtX3NtbXVfZGV2aWNlICphcm1fc21t
dV9pbXBsX2luaXQoc3RydWN0IGFybV9zbW11X2RldmljZSAqc21tdSkKIHsKIAkvKgpAQCAt
MTcwLDUgKzE5Nyw5IEBAIHN0cnVjdCBhcm1fc21tdV9kZXZpY2UgKmFybV9zbW11X2ltcGxf
aW5pdChzdHJ1Y3QgYXJtX3NtbXVfZGV2aWNlICpzbW11KQogCQkJCSAgImNhbHhlZGEsc21t
dS1zZWN1cmUtY29uZmlnLWFjY2VzcyIpKQogCQlzbW11LT5pbXBsID0gJmNhbHhlZGFfaW1w
bDsKIAorCWlmIChzbW11LT5tb2RlbCA9PSBRQ09NX1NNTVU1MDAgJiYKKwkgICAgb2ZfZGV2
aWNlX2lzX2NvbXBhdGlibGUoc21tdS0+ZGV2LT5vZl9ub2RlLCAicWNvbSxzZG04NDUtc21t
dS01MDAiKSkKKwkJc21tdS0+aW1wbCA9ICZxY29tX3NkbTg0NV9zbW11NTAwX2ltcGw7CisK
IAlyZXR1cm4gc21tdTsKIH0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvaW9tbXUvYXJtLXNtbXUu
YyBiL2RyaXZlcnMvaW9tbXUvYXJtLXNtbXUuYwppbmRleCBkZDdmNzhhOGUxNDYuLmYzZTVl
MjBlYmU5YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9pb21tdS9hcm0tc21tdS5jCisrKyBiL2Ry
aXZlcnMvaW9tbXUvYXJtLXNtbXUuYwpAQCAtMTgyNSw2ICsxODI1LDcgQEAgQVJNX1NNTVVf
TUFUQ0hfREFUQShhcm1fbW11NDAxLCBBUk1fU01NVV9WMV82NEssIEdFTkVSSUNfU01NVSk7
CiBBUk1fU01NVV9NQVRDSF9EQVRBKGFybV9tbXU1MDAsIEFSTV9TTU1VX1YyLCBBUk1fTU1V
NTAwKTsKIEFSTV9TTU1VX01BVENIX0RBVEEoY2F2aXVtX3NtbXV2MiwgQVJNX1NNTVVfVjIs
IENBVklVTV9TTU1VVjIpOwogQVJNX1NNTVVfTUFUQ0hfREFUQShxY29tX3NtbXV2MiwgQVJN
X1NNTVVfVjIsIFFDT01fU01NVVYyKTsKK0FSTV9TTU1VX01BVENIX0RBVEEocWNvbV9zbW11
NTAwLCBBUk1fU01NVV9WMiwgUUNPTV9TTU1VNTAwKTsKIAogc3RhdGljIGNvbnN0IHN0cnVj
dCBvZl9kZXZpY2VfaWQgYXJtX3NtbXVfb2ZfbWF0Y2hbXSA9IHsKIAl7IC5jb21wYXRpYmxl
ID0gImFybSxzbW11LXYxIiwgLmRhdGEgPSAmc21tdV9nZW5lcmljX3YxIH0sCkBAIC0xODM0
LDYgKzE4MzUsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBhcm1fc21t
dV9vZl9tYXRjaFtdID0gewogCXsgLmNvbXBhdGlibGUgPSAiYXJtLG1tdS01MDAiLCAuZGF0
YSA9ICZhcm1fbW11NTAwIH0sCiAJeyAuY29tcGF0aWJsZSA9ICJjYXZpdW0sc21tdS12MiIs
IC5kYXRhID0gJmNhdml1bV9zbW11djIgfSwKIAl7IC5jb21wYXRpYmxlID0gInFjb20sc21t
dS12MiIsIC5kYXRhID0gJnFjb21fc21tdXYyIH0sCisJeyAuY29tcGF0aWJsZSA9ICJxY29t
LHNkbTg0NS1zbW11LTUwMCIsIC5kYXRhID0gJnFjb21fc21tdTUwMCB9LAogCXsgfSwKIH07
CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvaW9tbXUvYXJtLXNtbXUuaCBiL2RyaXZlcnMvaW9t
bXUvYXJtLXNtbXUuaAppbmRleCBhYzllYWM5NjZjZjUuLjQ4MjExYWFkMzJlYSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9pb21tdS9hcm0tc21tdS5oCisrKyBiL2RyaXZlcnMvaW9tbXUvYXJt
LXNtbXUuaApAQCAtMjIwLDYgKzIyMCw3IEBAIGVudW0gYXJtX3NtbXVfaW1wbGVtZW50YXRp
b24gewogCUFSTV9NTVU1MDAsCiAJQ0FWSVVNX1NNTVVWMiwKIAlRQ09NX1NNTVVWMiwKKwlR
Q09NX1NNTVU1MDAsCiB9OwogCiBzdHJ1Y3QgYXJtX3NtbXVfZGV2aWNlIHsKLS0gClFVQUxD
T01NIElORElBLCBvbiBiZWhhbGYgb2YgUXVhbGNvbW0gSW5ub3ZhdGlvbiBDZW50ZXIsIElu
Yy4gaXMgYSBtZW1iZXIKb2YgQ29kZSBBdXJvcmEgRm9ydW0sIGhvc3RlZCBieSBUaGUgTGlu
dXggRm91bmRhdGlvbgoK
--------------80B028CDD5943A54CA33F4D2
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--------------80B028CDD5943A54CA33F4D2--

