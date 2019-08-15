Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 070A58E963
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 12:57:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OmKpJClVPAoTYpXvBVnwOshfEymv7XvxDZXrfmvU37M=; b=RTIy5QdP++p0mc
	nMEM5YD9FH52A/Fqnk8OtPbR91Iy/bwGkRqEdJAOUNnara4VezhBv4NjLhgyFOiRtlImVSkWBBBCG
	L0NkcXTwbPN1Y0Ccm5t6YEEmZ3MPRcezrQzuGLFicfGWSHP92SrbzvB7EEDqtD6tWWvT5YKnH3pZV
	+xeVTKuNeytGD+eD9q8YQZSfS3UcL/snxG6K+vZCOyXv0Je5PIRBmUKoOlApxRDEk4lLY8yZnJ7XQ
	1KYNHBOJm0cwIlUZ2locLn7wvHCxTRW7rGwhWr/cRUjT7DBHYK2Tpms3SpcuBm2k9FvrgKXESc6WL
	ZLN2SNBwqjD8qDrOPYHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyDRJ-0006t7-MK; Thu, 15 Aug 2019 10:57:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyDQX-0006R3-3p
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 10:56:18 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3C0F221744;
 Thu, 15 Aug 2019 10:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565866576;
 bh=YGphF6s1f7WGZAHyAoOJ8BaEHYQUybLPmN2u5ZcFyG0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qlJkbahbOxQVjzQkiPuzqRtrSuWYLG0wo5xsf0E2js6ROgaRd1sRZX//bjFCdKnqX
 MKgh1aGejgFvxBJTcP4/uIGqbhcLrR8ZcVvaKB46tsKMLmCufDF7Kb9D1VcQRA1RR6
 cUYzIETeAEIBaPI2WoQonGMbyBB1ED9OD/eN/Mbo=
Date: Thu, 15 Aug 2019 11:56:12 +0100
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 08/15] iommu/arm-smmu: Abstract context bank accesses
Message-ID: <20190815105611.fk7ouis2cs3uzvew@willie-the-truck>
References: <cover.1565369764.git.robin.murphy@arm.com>
 <1051d7568c96142ff90b004a2ec61e3b5dbe770e.1565369764.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1051d7568c96142ff90b004a2ec61e3b5dbe770e.1565369764.git.robin.murphy@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_035617_240605_EBFD2F4C 
X-CRM114-Status: GOOD (  18.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: robdclark@gmail.com, joro@8bytes.org, bjorn.andersson@linaro.org,
 iommu@lists.linux-foundation.org, vivek.gautam@codeaurora.org,
 gregory.clement@bootlin.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 09, 2019 at 06:07:45PM +0100, Robin Murphy wrote:
> Context bank accesses are fiddly enough to deserve a number of extra
> helpers to keep the callsites looking sane, even though there are only
> one or two of each.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  drivers/iommu/arm-smmu.c | 137 ++++++++++++++++++++-------------------
>  1 file changed, 72 insertions(+), 65 deletions(-)
> 
> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> index 72505647b77d..abdcc3f52e2e 100644
> --- a/drivers/iommu/arm-smmu.c
> +++ b/drivers/iommu/arm-smmu.c
> @@ -82,9 +82,6 @@
>  		((smmu->options & ARM_SMMU_OPT_SECURE_CFG_ACCESS)	\
>  			? 0x400 : 0))
>  
> -/* Translation context bank */
> -#define ARM_SMMU_CB(smmu, n)	((smmu)->base + (((smmu)->cb_base + (n)) << (smmu)->pgshift))
> -
>  #define MSI_IOVA_BASE			0x8000000
>  #define MSI_IOVA_LENGTH			0x100000
>  
> @@ -265,9 +262,29 @@ static void arm_smmu_writel(struct arm_smmu_device *smmu, int page, int offset,
>  	writel_relaxed(val, arm_smmu_page(smmu, page) + offset);
>  }
>  
> +static u64 arm_smmu_readq(struct arm_smmu_device *smmu, int page, int offset)
> +{
> +	return readq_relaxed(arm_smmu_page(smmu, page) + offset);
> +}
> +
> +static void arm_smmu_writeq(struct arm_smmu_device *smmu, int page, int offset,
> +			    u64 val)
> +{
> +	writeq_relaxed(val, arm_smmu_page(smmu, page) + offset);
> +}
> +
>  #define arm_smmu_read_gr1(s, r)		arm_smmu_readl((s), 1, (r))
>  #define arm_smmu_write_gr1(s, r, v)	arm_smmu_writel((s), 1, (r), (v))
>  
> +#define arm_smmu_read_cb(s, n, r)				\
> +	arm_smmu_readl((s), (s)->cb_base + (n), (r))
> +#define arm_smmu_write_cb(s, n, r, v)				\
> +	arm_smmu_writel((s), (s)->cb_base + (n), (r), (v))
> +#define arm_smmu_read_cb_q(s, n, r)				\
> +	arm_smmu_readq((s), (s)->cb_base + (n), (r))
> +#define arm_smmu_write_cb_q(s, n, r, v)				\
> +	arm_smmu_writeq((s), (s)->cb_base + (n), (r), (v))

'r' for 'offset'? (maybe just rename offset => register in the helpers).

>  struct arm_smmu_option_prop {
>  	u32 opt;
>  	const char *prop;
> @@ -423,15 +440,17 @@ static void __arm_smmu_free_bitmap(unsigned long *map, int idx)
>  }
>  
>  /* Wait for any pending TLB invalidations to complete */
> -static void __arm_smmu_tlb_sync(struct arm_smmu_device *smmu,
> -				void __iomem *sync, void __iomem *status)
> +static void __arm_smmu_tlb_sync(struct arm_smmu_device *smmu, int page,
> +				int sync, int status)
>  {
>  	unsigned int spin_cnt, delay;
> +	u32 reg;
>  
> -	writel_relaxed(QCOM_DUMMY_VAL, sync);
> +	arm_smmu_writel(smmu, page, sync, QCOM_DUMMY_VAL);
>  	for (delay = 1; delay < TLB_LOOP_TIMEOUT; delay *= 2) {
>  		for (spin_cnt = TLB_SPIN_COUNT; spin_cnt > 0; spin_cnt--) {
> -			if (!(readl_relaxed(status) & sTLBGSTATUS_GSACTIVE))
> +			reg = arm_smmu_readl(smmu, page, status);
> +			if (!(reg & sTLBGSTATUS_GSACTIVE))
>  				return;
>  			cpu_relax();
>  		}
> @@ -443,12 +462,11 @@ static void __arm_smmu_tlb_sync(struct arm_smmu_device *smmu,
>  
>  static void arm_smmu_tlb_sync_global(struct arm_smmu_device *smmu)
>  {
> -	void __iomem *base = ARM_SMMU_GR0(smmu);
>  	unsigned long flags;
>  
>  	spin_lock_irqsave(&smmu->global_sync_lock, flags);
> -	__arm_smmu_tlb_sync(smmu, base + ARM_SMMU_GR0_sTLBGSYNC,
> -			    base + ARM_SMMU_GR0_sTLBGSTATUS);
> +	__arm_smmu_tlb_sync(smmu, 0, ARM_SMMU_GR0_sTLBGSYNC,

Can we have a #define for page zero, please?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
