Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D025395C1A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 12:19:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sYYLb0BIHMCmbS+dJJhKqRK9Qn9jR6h5CGYcM75F3Ys=; b=SgvJMfTfc3thpt
	RJo5RYXYSgbsB6zu4e8x5ZuB1eeP9SoY2GweH/HEg5fpkjHIy5oXgroqiaED2tDlEAd70yWTnPjaG
	3Whui9sOCDd40tqqvKvCvkohfUTPMi6AOOs6+xQw3u4BqJjx5xQddYjNfTBmbzAMe+EShNP249paH
	+3n7TnHACTzXXSD6/+XUKshKadUd6NNKqnb4QLMWYo2Dr1IruqlUtGhaabxiANm47CVQhFfmiXvdd
	9Ze1VhozeJrss6h7/PNOt3TypMNom+THcDdAW3ME8htVkmiFzcc5yg4plxmwcR2rCwXudXruW3rwZ
	lXgnPPEjtppeLM2UZiJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i01Eg-0006z9-ON; Tue, 20 Aug 2019 10:19:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i01ET-0006yZ-CH
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 10:19:18 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7647A20C01;
 Tue, 20 Aug 2019 10:19:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566296356;
 bh=P/AkiFjoa+ZXD65ahVrE1D56kGITx+qPBb6Af5bjtQk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=df9fx7q7d85HjJ0eJrMEUzl7Xo/pDZGT6gPXVq+3UgRaFIzHWMRZGsKtPuNW6YOkw
 8dNVvpZtxwkb7MMDzHfUYuxt2J8LVNnyiXqcygZbjEX69VwpaiOd/FrJ2nBfiPSJEO
 /8gd7hS4wd4ox5h0uL19vKbUjj10lmYVX2XxLdsU=
Date: Tue, 20 Aug 2019 11:19:12 +0100
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 2/4] iommu/io-pgtable-arm: Rationalise TTBRn handling
Message-ID: <20190820101911.ndwtaf76kn3zplk2@willie-the-truck>
References: <cover.1566238530.git.robin.murphy@arm.com>
 <dbb942070c2ef812e379414c236734931613d860.1566238530.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dbb942070c2ef812e379414c236734931613d860.1566238530.git.robin.murphy@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_031917_461060_818E2396 
X-CRM114-Status: GOOD (  20.70  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: robdclark@gmail.com, joro@8bytes.org, jcrouse@codeaurora.org,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 07:19:29PM +0100, Robin Murphy wrote:
> TTBR1 values have so far been redundant since no users implement any
> support for split address spaces. Crucially, though, one of the main
> reasons for wanting to do so is to be able to manage each half entirely
> independently, e.g. context-switching one set of mappings without
> disturbing the other. Thus it seems unlikely that tying two tables
> together in a single io_pgtable_cfg would ever be particularly desirable
> or useful.
> 
> Streamline the configs to just a single conceptual TTBR value
> representing the allocated table. This paves the way for future users to
> support split address spaces by simply allocating a table and dealing
> with the detailed TTBRn logistics themselves.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  drivers/iommu/arm-smmu-v3.c        |  2 +-
>  drivers/iommu/arm-smmu.c           |  9 ++++-----
>  drivers/iommu/io-pgtable-arm-v7s.c | 16 +++++++---------
>  drivers/iommu/io-pgtable-arm.c     |  7 +++----
>  drivers/iommu/ipmmu-vmsa.c         |  2 +-
>  drivers/iommu/msm_iommu.c          |  4 ++--
>  drivers/iommu/mtk_iommu.c          |  4 ++--
>  drivers/iommu/qcom_iommu.c         |  3 +--
>  include/linux/io-pgtable.h         |  4 ++--
>  9 files changed, 23 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> index 2a8db896d698..2e50cf49c3c4 100644
> --- a/drivers/iommu/arm-smmu-v3.c
> +++ b/drivers/iommu/arm-smmu-v3.c
> @@ -1722,7 +1722,7 @@ static int arm_smmu_domain_finalise_s1(struct arm_smmu_domain *smmu_domain,
>  	}
>  
>  	cfg->cd.asid	= (u16)asid;
> -	cfg->cd.ttbr	= pgtbl_cfg->arm_lpae_s1_cfg.ttbr[0];
> +	cfg->cd.ttbr	= pgtbl_cfg->arm_lpae_s1_cfg.ttbr;
>  	cfg->cd.tcr	= pgtbl_cfg->arm_lpae_s1_cfg.tcr;
>  	cfg->cd.mair	= pgtbl_cfg->arm_lpae_s1_cfg.mair;
>  	return 0;
> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> index 184ca41e9de7..19030c4b5904 100644
> --- a/drivers/iommu/arm-smmu.c
> +++ b/drivers/iommu/arm-smmu.c
> @@ -473,13 +473,12 @@ static void arm_smmu_init_context_bank(struct arm_smmu_domain *smmu_domain,
>  	/* TTBRs */
>  	if (stage1) {
>  		if (cfg->fmt == ARM_SMMU_CTX_FMT_AARCH32_S) {
> -			cb->ttbr[0] = pgtbl_cfg->arm_v7s_cfg.ttbr[0];
> -			cb->ttbr[1] = pgtbl_cfg->arm_v7s_cfg.ttbr[1];
> +			cb->ttbr[0] = pgtbl_cfg->arm_v7s_cfg.ttbr;
> +			cb->ttbr[1] = 0;
>  		} else {
> -			cb->ttbr[0] = pgtbl_cfg->arm_lpae_s1_cfg.ttbr[0];
> +			cb->ttbr[0] = pgtbl_cfg->arm_lpae_s1_cfg.ttbr;
>  			cb->ttbr[0] |= FIELD_PREP(TTBRn_ASID, cfg->asid);
> -			cb->ttbr[1] = pgtbl_cfg->arm_lpae_s1_cfg.ttbr[1];
> -			cb->ttbr[1] |= FIELD_PREP(TTBRn_ASID, cfg->asid);
> +			cb->ttbr[1] = FIELD_PREP(TTBRn_ASID, cfg->asid);

Why do you continue to put the ASID in here?

> diff --git a/drivers/iommu/qcom_iommu.c b/drivers/iommu/qcom_iommu.c
> index 34bb357b3cfa..de55b6d82ef1 100644
> --- a/drivers/iommu/qcom_iommu.c
> +++ b/drivers/iommu/qcom_iommu.c
> @@ -247,10 +247,9 @@ static int qcom_iommu_init_domain(struct iommu_domain *domain,
>  
>  		/* TTBRs */
>  		iommu_writeq(ctx, ARM_SMMU_CB_TTBR0,
> -				pgtbl_cfg.arm_lpae_s1_cfg.ttbr[0] |
> +				pgtbl_cfg.arm_lpae_s1_cfg.ttbr |
>  				FIELD_PREP(TTBRn_ASID, ctx->asid));
>  		iommu_writeq(ctx, ARM_SMMU_CB_TTBR1,
> -				pgtbl_cfg.arm_lpae_s1_cfg.ttbr[1] |
>  				FIELD_PREP(TTBRn_ASID, ctx->asid));

Same here.

> diff --git a/include/linux/io-pgtable.h b/include/linux/io-pgtable.h
> index a6c8aa204733..7a0905d7a006 100644
> --- a/include/linux/io-pgtable.h
> +++ b/include/linux/io-pgtable.h
> @@ -90,7 +90,7 @@ struct io_pgtable_cfg {
>  	/* Low-level data specific to the table format */
>  	union {
>  		struct {
> -			u64	ttbr[2];
> +			u64	ttbr;
>  			u64	tcr;
>  			u64	mair;
>  		} arm_lpae_s1_cfg;
> @@ -101,7 +101,7 @@ struct io_pgtable_cfg {
>  		} arm_lpae_s2_cfg;
>  
>  		struct {
> -			u32	ttbr[2];
> +			u32	ttbr;

We could probably do with a comment for these 'ttbr' field now saying that
they refer to ttbr0 (since the tcr will have EPD1 set).

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
