Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F95EF130
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 00:28:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RbawVN9K7KGtZwFjP+h11LzVOdCUg9yIiVlExKGyntw=; b=IBeWGOR/FFSnwQ
	60RM1cVplSGEKqCtei4NmpxpGMKd9smUv1T7LtGciuHeOK06XB0r78LLGx3aa8sOBdQZbeRdQEsdj
	uhrftWglkkLRhZnXPGR3faOTSJt7ePsT2zGaHlDVyRG37IYMQ2AA5R2caSIVkadIukLA+hpOgPHYy
	Wvp5x9xyFbG2gn3QUK7g723IFt+1/6RthfTlP1jAIlj1JlCeDfBR9I7TwlpglkzWalGaylVpQLN2F
	EFw6DqlFpDHX+wG1w/0trbb+VnbgPYEgV3u0zmHRkJ7rCcNdcRjVObhr+Oregn0Cvz36+WmqUlggq
	nEuLbcn72WDx8Fi1HV2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRllY-0001rg-06; Mon, 04 Nov 2019 23:28:08 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRllQ-0001rF-S0
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 23:28:02 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id B8C9B60BE6; Mon,  4 Nov 2019 23:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1572910079;
 bh=53fTi3bBCNlELvd+jr0VBvsHx+G+R/KntCqwHc8JZ/A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VmzWsHnW2FEk4swHYB/HjlylC8YsgNbc1X/26aq0X5vrFF3iUJJJDUhRZlFeK8HNP
 xTcVyigLJ1Syqp8pQ4VXgjkoJ8LnwQrNMDC5O8q4Z2ATKfX2dB35QRAovkbFDHLziH
 eRLjluKOfody4/nxlELpzoulDmSCEi9I2MaRJAok=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from jcrouse1-lnx.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: jcrouse@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 0F5A060B7E;
 Mon,  4 Nov 2019 23:27:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1572910078;
 bh=53fTi3bBCNlELvd+jr0VBvsHx+G+R/KntCqwHc8JZ/A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TMgAlF4/DecgVanUJGNk5RJbbt6ywH40/A+b3iUjkazogxi/H6VxSspHR5fh5kiqo
 jPPYw7HwMYCLYPIhJ4ILQgJk8hgK8IJE+VloaZSCmYTPKH7rKtIWd4lvG+GzQXKEs0
 AdJCewzzZXB1IM8bf5B35VR2SYPlwH8royVi8xJQ=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 0F5A060B7E
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=jcrouse@codeaurora.org
Date: Mon, 4 Nov 2019 16:27:56 -0700
From: Jordan Crouse <jcrouse@codeaurora.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2 09/10] iommu/io-pgtable-arm: Rationalise TCR handling
Message-ID: <20191104232756.GB16446@jcrouse1-lnx.qualcomm.com>
Mail-Followup-To: Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
References: <cover.1572024119.git.robin.murphy@arm.com>
 <84e56eb993fff3660376ffad3e915b972d29b008.1572024120.git.robin.murphy@arm.com>
 <20191104191444.GI24909@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191104191444.GI24909@willie-the-truck>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_152800_950779_AC7CC6A7 
X-CRM114-Status: GOOD (  28.28  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: iommu@lists.linux-foundation.org, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 04, 2019 at 07:14:45PM +0000, Will Deacon wrote:
> On Fri, Oct 25, 2019 at 07:08:38PM +0100, Robin Murphy wrote:
> > Although it's conceptually nice for the io_pgtable_cfg to provide a
> > standard VMSA TCR value, the reality is that no VMSA-compliant IOMMU
> > looks exactly like an Arm CPU, and they all have various other TCR
> > controls which io-pgtable can't be expected to understand. Thus since
> > there is an expectation that drivers will have to add to the given TCR
> > value anyway, let's strip it down to just the essentials that are
> > directly relevant to io-pgatble's inner workings - namely the various
> 
> typo: "io-pgatble"
> 
> > sizes and the walk attributes.
> > 
> > Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> > ---
> >  drivers/iommu/arm-smmu-v3.c        | 41 +++----------
> >  drivers/iommu/arm-smmu.c           |  7 ++-
> >  drivers/iommu/arm-smmu.h           | 27 ++++++++
> >  drivers/iommu/io-pgtable-arm-v7s.c |  6 +-
> >  drivers/iommu/io-pgtable-arm.c     | 98 ++++++++++++------------------
> >  drivers/iommu/io-pgtable.c         |  2 +-
> >  drivers/iommu/qcom_iommu.c         |  8 +--
> >  include/linux/io-pgtable.h         |  9 ++-
> >  8 files changed, 94 insertions(+), 104 deletions(-)
> 
> Generally, I *really* like this patch, but I do have a bunch of comments:
> 
> > @@ -2155,6 +2125,7 @@ static int arm_smmu_domain_finalise_s1(struct arm_smmu_domain *smmu_domain,
> >  	int asid;
> >  	struct arm_smmu_device *smmu = smmu_domain->smmu;
> >  	struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;
> > +	typeof(&pgtbl_cfg->arm_lpae_s1_cfg.tcr) tcr = &pgtbl_cfg->arm_lpae_s1_cfg.tcr;
> 
> I find this pretty grotty, but I couldn't think of something better and
> exporting format-specific types out of the iopgtable layer also feels
> nasty.
> 
> > diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
> > index 409716410b0d..98db074281ac 100644
> > --- a/drivers/iommu/arm-smmu.h
> > +++ b/drivers/iommu/arm-smmu.h
> > @@ -158,12 +158,24 @@ enum arm_smmu_cbar_type {
> >  #define TCR2_SEP			GENMASK(17, 15)
> >  #define TCR2_SEP_UPSTREAM		0x7
> >  #define TCR2_AS				BIT(4)
> > +#define TCR2_PASIZE			GENMASK(3, 0)
> >  
> >  #define ARM_SMMU_CB_TTBR0		0x20
> >  #define ARM_SMMU_CB_TTBR1		0x28
> >  #define TTBRn_ASID			GENMASK_ULL(63, 48)
> >  
> > +/* arm64 headers leak this somehow :( */
> > +#undef TCR_T0SZ
> 
> Urgh. I suppose we should prefix these things with ARM_SMMU too :(
> Obviously, that's a separate patch.
> 
> >  #define ARM_SMMU_CB_TCR			0x30
> > +#define TCR_EAE				BIT(31)
> > +#define TCR_EPD1			BIT(23)
> > +#define TCR_TG0				GENMASK(15, 14)
> > +#define TCR_SH0				GENMASK(13, 12)
> > +#define TCR_ORGN0			GENMASK(11, 10)
> > +#define TCR_IRGN0			GENMASK(9, 8)
> > +#define TCR_T0SZ			GENMASK(5, 0)
> > +
> >  #define ARM_SMMU_CB_CONTEXTIDR		0x34
> >  #define ARM_SMMU_CB_S1_MAIR0		0x38
> >  #define ARM_SMMU_CB_S1_MAIR1		0x3c
> > @@ -318,6 +330,21 @@ struct arm_smmu_domain {
> >  	struct iommu_domain		domain;
> >  };
> >  
> > +static inline u32 arm_smmu_lpae_tcr(struct io_pgtable_cfg *cfg)
> > +{
> > +	return TCR_EPD1 |
> > +	       FIELD_PREP(TCR_TG0, cfg->arm_lpae_s1_cfg.tcr.tg) |
> > +	       FIELD_PREP(TCR_SH0, cfg->arm_lpae_s1_cfg.tcr.sh) |
> > +	       FIELD_PREP(TCR_ORGN0, cfg->arm_lpae_s1_cfg.tcr.orgn) |
> > +	       FIELD_PREP(TCR_IRGN0, cfg->arm_lpae_s1_cfg.tcr.irgn) |
> > +	       FIELD_PREP(TCR_T0SZ, cfg->arm_lpae_s1_cfg.tcr.tsz);
> > +}
> > +
> > +static inline u32 arm_smmu_lpae_tcr2(struct io_pgtable_cfg *cfg)
> > +{
> > +	return FIELD_PREP(TCR2_PASIZE, cfg->arm_lpae_s1_cfg.tcr.ips) |
> > +	       FIELD_PREP(TCR2_SEP, TCR2_SEP_UPSTREAM);
> > +}
> >  
> >  /* Implementation details, yay! */
> >  struct arm_smmu_impl {
> > diff --git a/drivers/iommu/io-pgtable-arm-v7s.c b/drivers/iommu/io-pgtable-arm-v7s.c
> > index 4d2c1e7f67c4..d8e4562ce478 100644
> > --- a/drivers/iommu/io-pgtable-arm-v7s.c
> > +++ b/drivers/iommu/io-pgtable-arm-v7s.c
> > @@ -149,8 +149,6 @@
> >  #define ARM_V7S_TTBR_IRGN_ATTR(attr)					\
> >  	((((attr) & 0x1) << 6) | (((attr) & 0x2) >> 1))
> >  
> > -#define ARM_V7S_TCR_PD1			BIT(5)
> > -
> >  #ifdef CONFIG_ZONE_DMA32
> >  #define ARM_V7S_TABLE_GFP_DMA GFP_DMA32
> >  #define ARM_V7S_TABLE_SLAB_FLAGS SLAB_CACHE_DMA32
> > @@ -798,8 +796,8 @@ static struct io_pgtable *arm_v7s_alloc_pgtable(struct io_pgtable_cfg *cfg,
> >  	 */
> >  	cfg->pgsize_bitmap &= SZ_4K | SZ_64K | SZ_1M | SZ_16M;
> >  
> > -	/* TCR: T0SZ=0, disable TTBR1 */
> > -	cfg->arm_v7s_cfg.tcr = ARM_V7S_TCR_PD1;
> > +	/* TCR: T0SZ=0, EAE=0 (if applicable) */
> > +	cfg->arm_v7s_cfg.tcr = 0;
> >  
> >  	/*
> >  	 * TEX remap: the indices used map to the closest equivalent types
> > diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
> > index bc0841040ebe..9b1912ede000 100644
> > --- a/drivers/iommu/io-pgtable-arm.c
> > +++ b/drivers/iommu/io-pgtable-arm.c
> > @@ -100,40 +100,32 @@
> >  #define ARM_LPAE_PTE_MEMATTR_DEV	(((arm_lpae_iopte)0x1) << 2)
> >  
> >  /* Register bits */
> > -#define ARM_32_LPAE_TCR_EAE		(1 << 31)
> > -#define ARM_64_LPAE_S2_TCR_RES1		(1 << 31)
> > +#define ARM_64_LPAE_VTCR_RES1		(1 << 31)
> 
> I know you're just renaming things here, but this looks really dodgy to
> me. Won't it be treated as signed...
> 
> > @@ -910,7 +899,7 @@ arm_64_lpae_alloc_pgtable_s2(struct io_pgtable_cfg *cfg, void *cookie)
> >  	}
> >  
> >  	/* VTCR */
> > -	reg = ARM_64_LPAE_S2_TCR_RES1 |
> > +	reg = ARM_64_LPAE_VTCR_RES1 |
> >  	     (ARM_LPAE_TCR_SH_IS << ARM_LPAE_TCR_SH0_SHIFT) |
> >  	     (ARM_LPAE_TCR_RGN_WBWA << ARM_LPAE_TCR_IRGN0_SHIFT) |
> >  	     (ARM_LPAE_TCR_RGN_WBWA << ARM_LPAE_TCR_ORGN0_SHIFT);
> 
> ... and then sign-extended here?
> 
> > @@ -919,45 +908,45 @@ arm_64_lpae_alloc_pgtable_s2(struct io_pgtable_cfg *cfg, void *cookie)
> >  
> >  	switch (ARM_LPAE_GRANULE(data)) {
> >  	case SZ_4K:
> > -		reg |= ARM_LPAE_TCR_TG0_4K;
> > +		reg |= (ARM_LPAE_TCR_TG0_4K << ARM_LPAE_VTCR_TG0_SHIFT);
> 
> Why don't we do the bitfield thing for vtcr as well? Yeah, there's only one,
> but the nice thing about naming all of the fields in the structure is that
> it makes it obvious what you get back from the io-pgtable code.
> 
> > diff --git a/drivers/iommu/qcom_iommu.c b/drivers/iommu/qcom_iommu.c
> > index 9a57eb6c253c..059be7e21030 100644
> > --- a/drivers/iommu/qcom_iommu.c
> > +++ b/drivers/iommu/qcom_iommu.c
> > @@ -271,15 +271,13 @@ static int qcom_iommu_init_domain(struct iommu_domain *domain,
> >  		iommu_writeq(ctx, ARM_SMMU_CB_TTBR0,
> >  				pgtbl_cfg.arm_lpae_s1_cfg.ttbr |
> >  				FIELD_PREP(TTBRn_ASID, ctx->asid));
> > -		iommu_writeq(ctx, ARM_SMMU_CB_TTBR1,
> > -				FIELD_PREP(TTBRn_ASID, ctx->asid));
> > +		iommu_writeq(ctx, ARM_SMMU_CB_TTBR1, 0);
> 
> Are you sure it's safe to drop the ASID here? Just want to make sure there
> wasn't some "quirk" this was helping with.

I was reminded of this recently. Some of our SMMU guys told me that a 0x0 in
TTBR1 could cause a S2 fault if a faulty transaction caused a ttbr1 lookup so
the "quirk" was writing the ASID so the register wasn't zero. I'm not sure if
this is a vendor specific blip or not.

Jordan

-- 
The Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
