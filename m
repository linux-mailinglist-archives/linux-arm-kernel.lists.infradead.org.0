Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB56BEE741
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 19:20:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5vJSarQdMioL+DI3/+YTzIJGRJemHHmzoRL7KB+HgKg=; b=pdE1A6B4S5GXgX
	lA9iGqwhytXQSobZWLVRXZhnkjFs8/ztO7Kyh0fEFsRVCyIbpOmIw7VPc/PlSlSEyy08Q490pnIdo
	olqu/Q8tg5qqedg17Pp7Ua8mVz1bQ77IESMztUSHWyF1kOLICnznu/SpUxsovPkb3xSCnrCb0i3UV
	mRsi2BxQtCVm8c0/b+tNnZDB77fvPzsV2taSAwxNJ7LvN5aoKA2bNgJEc50lqMXH0Nqk0J7YmYAem
	r1iMtO4WtLjswT+rTvnH8EQJdOeaxrbtfxCT8qlBGRu6nSr2E4MQAGEACuADGk2wBRU7iiYcAyzkb
	rfUbwVKWpyezlpRa/tJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRgy1-0006T2-Hx; Mon, 04 Nov 2019 18:20:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRgxu-0006Sd-9y
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 18:20:35 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 23D7020578;
 Mon,  4 Nov 2019 18:20:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572891634;
 bh=1wytFv5Iw8uWVzJ3s5vXpqXK/zV2wyAIZTSZnZaZKpo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=io6APnwaPmm8zsNTcIXkmu0b62EI7JARNIW9QcJsF7VvFlAaMsn1nGvHxVNDXk4sA
 C9vytYZUPGlril/b8Th+ErOwOc9OC36jK4hOlRZnZGkL/ZXnCeAMIE4FBrVHevLL9g
 UXe6eAPQF7a7e57S6TnLgrty+B/Twl82z6DQJ8F0=
Date: Mon, 4 Nov 2019 18:20:30 +0000
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v2 07/10] iommu/io-pgtable-arm: Rationalise MAIR handling
Message-ID: <20191104182029.GG24909@willie-the-truck>
References: <cover.1572024119.git.robin.murphy@arm.com>
 <c6bee9e6de5e7f4aa2293ee5385ffa2dd95600d3.1572024120.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c6bee9e6de5e7f4aa2293ee5385ffa2dd95600d3.1572024120.git.robin.murphy@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_102034_369327_2E2F8CE4 
X-CRM114-Status: GOOD (  16.69  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: iommu@lists.linux-foundation.org, jcrouse@codeaurora.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 25, 2019 at 07:08:36PM +0100, Robin Murphy wrote:
> Between VMSAv8-64 and the various 32-bit formats, there is either one
> 64-bit MAIR or a pair of 32-bit MAIR0/MAIR1 or NMRR/PMRR registers.
> As such, keeping two 64-bit values in io_pgtable_cfg has always been
> overkill.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  drivers/iommu/arm-smmu-v3.c    | 2 +-
>  drivers/iommu/arm-smmu.c       | 4 ++--
>  drivers/iommu/io-pgtable-arm.c | 3 +--
>  drivers/iommu/ipmmu-vmsa.c     | 2 +-
>  drivers/iommu/qcom_iommu.c     | 4 ++--
>  include/linux/io-pgtable.h     | 2 +-
>  6 files changed, 8 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> index 8da93e730d6f..3f20e548f1ec 100644
> --- a/drivers/iommu/arm-smmu-v3.c
> +++ b/drivers/iommu/arm-smmu-v3.c
> @@ -2172,7 +2172,7 @@ static int arm_smmu_domain_finalise_s1(struct arm_smmu_domain *smmu_domain,
>  	cfg->cd.asid	= (u16)asid;
>  	cfg->cd.ttbr	= pgtbl_cfg->arm_lpae_s1_cfg.ttbr[0];
>  	cfg->cd.tcr	= pgtbl_cfg->arm_lpae_s1_cfg.tcr;
> -	cfg->cd.mair	= pgtbl_cfg->arm_lpae_s1_cfg.mair[0];
> +	cfg->cd.mair	= pgtbl_cfg->arm_lpae_s1_cfg.mair;
>  	return 0;
>  
>  out_free_asid:
> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> index 080af0326816..2bc3e93b11e6 100644
> --- a/drivers/iommu/arm-smmu.c
> +++ b/drivers/iommu/arm-smmu.c
> @@ -552,8 +552,8 @@ static void arm_smmu_init_context_bank(struct arm_smmu_domain *smmu_domain,
>  			cb->mair[0] = pgtbl_cfg->arm_v7s_cfg.prrr;
>  			cb->mair[1] = pgtbl_cfg->arm_v7s_cfg.nmrr;
>  		} else {
> -			cb->mair[0] = pgtbl_cfg->arm_lpae_s1_cfg.mair[0];
> -			cb->mair[1] = pgtbl_cfg->arm_lpae_s1_cfg.mair[1];
> +			cb->mair[0] = pgtbl_cfg->arm_lpae_s1_cfg.mair;
> +			cb->mair[1] = pgtbl_cfg->arm_lpae_s1_cfg.mair >> 32;

Does this work correctly for big-endian?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
