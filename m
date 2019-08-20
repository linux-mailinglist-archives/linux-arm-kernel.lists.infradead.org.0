Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D5596583
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 17:51:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gJ8fosLWtuApPhvw69z7gs/HlF5J3OmEA/sMhRjHGZU=; b=FWqk2MuD02jPQ/
	DT1khaZuOBwDkD9tBisTA++dD34Fs+LD0Te2kaCoFD9oLv8sFAf0b7Fkz+iK/3Z6w3EvEKiXDIFLz
	yC9IAMo8GXPqiUQ8Fax/WLLhZOZkmQIoj+PBARLic5TwfLo3kkPtGMCHWde0FfOmMJ3fEzgXgXhDl
	q3fJd/LdzQxZ+iQ2jX7f29Bs3Bdfd1KRJyF6e/isJ61ERW67773iCUKWLj0SuMx2ECTC3/KYsiijB
	lmXZ/M0Ih0+Z8SlzqUv8IFsbv82b9Y38zpmSrlioCGzp543nhf2XytTWupyC53uHbSWSgkouruNCj
	2GHpZ5j/gafkPIDwCihA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i06Pd-0004Ci-Lt; Tue, 20 Aug 2019 15:51:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i06PI-0003xn-Bc
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 15:50:51 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A2DCB22CE3;
 Tue, 20 Aug 2019 15:50:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566316247;
 bh=ANVTtr5Xsou0jrnOGs4/B/GU+B2WDK+TAYrfLomhjio=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fTQS3qDiX8U9XJEr4PxCXNlFxiDFBAS0nBEFkMdUxA8fn8j7Cm837FD7d4JmjcD1I
 tUCaZ92tiWPS7nJQVToZx3mwggI6hk62RIMxNJ+yP0IgNi0kLC1CXYoWBkSfymA/Kd
 e7OM4Itc9lTjZdoZYaRahocomAdfDh4af8+nErWY=
Date: Tue, 20 Aug 2019 16:50:43 +0100
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 2/4] iommu/io-pgtable-arm: Rationalise TTBRn handling
Message-ID: <20190820155042.t4a67qhzlglevo5a@willie-the-truck>
References: <cover.1566238530.git.robin.murphy@arm.com>
 <dbb942070c2ef812e379414c236734931613d860.1566238530.git.robin.murphy@arm.com>
 <20190820101911.ndwtaf76kn3zplk2@willie-the-truck>
 <e644e0f6-4588-56eb-a6e9-7b482e3d228d@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e644e0f6-4588-56eb-a6e9-7b482e3d228d@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_085048_556889_CD415606 
X-CRM114-Status: GOOD (  22.41  )
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

On Tue, Aug 20, 2019 at 03:17:19PM +0100, Robin Murphy wrote:
> On 20/08/2019 11:19, Will Deacon wrote:
> > On Mon, Aug 19, 2019 at 07:19:29PM +0100, Robin Murphy wrote:
> > > TTBR1 values have so far been redundant since no users implement any
> > > support for split address spaces. Crucially, though, one of the main
> > > reasons for wanting to do so is to be able to manage each half entirely
> > > independently, e.g. context-switching one set of mappings without
> > > disturbing the other. Thus it seems unlikely that tying two tables
> > > together in a single io_pgtable_cfg would ever be particularly desirable
> > > or useful.
> > > 
> > > Streamline the configs to just a single conceptual TTBR value
> > > representing the allocated table. This paves the way for future users to
> > > support split address spaces by simply allocating a table and dealing
> > > with the detailed TTBRn logistics themselves.
> > > 
> > > Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> > > ---
> > >   drivers/iommu/arm-smmu-v3.c        |  2 +-
> > >   drivers/iommu/arm-smmu.c           |  9 ++++-----
> > >   drivers/iommu/io-pgtable-arm-v7s.c | 16 +++++++---------
> > >   drivers/iommu/io-pgtable-arm.c     |  7 +++----
> > >   drivers/iommu/ipmmu-vmsa.c         |  2 +-
> > >   drivers/iommu/msm_iommu.c          |  4 ++--
> > >   drivers/iommu/mtk_iommu.c          |  4 ++--
> > >   drivers/iommu/qcom_iommu.c         |  3 +--
> > >   include/linux/io-pgtable.h         |  4 ++--
> > >   9 files changed, 23 insertions(+), 28 deletions(-)
> > > 
> > > diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> > > index 2a8db896d698..2e50cf49c3c4 100644
> > > --- a/drivers/iommu/arm-smmu-v3.c
> > > +++ b/drivers/iommu/arm-smmu-v3.c
> > > @@ -1722,7 +1722,7 @@ static int arm_smmu_domain_finalise_s1(struct arm_smmu_domain *smmu_domain,
> > >   	}
> > >   	cfg->cd.asid	= (u16)asid;
> > > -	cfg->cd.ttbr	= pgtbl_cfg->arm_lpae_s1_cfg.ttbr[0];
> > > +	cfg->cd.ttbr	= pgtbl_cfg->arm_lpae_s1_cfg.ttbr;
> > >   	cfg->cd.tcr	= pgtbl_cfg->arm_lpae_s1_cfg.tcr;
> > >   	cfg->cd.mair	= pgtbl_cfg->arm_lpae_s1_cfg.mair;
> > >   	return 0;
> > > diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> > > index 184ca41e9de7..19030c4b5904 100644
> > > --- a/drivers/iommu/arm-smmu.c
> > > +++ b/drivers/iommu/arm-smmu.c
> > > @@ -473,13 +473,12 @@ static void arm_smmu_init_context_bank(struct arm_smmu_domain *smmu_domain,
> > >   	/* TTBRs */
> > >   	if (stage1) {
> > >   		if (cfg->fmt == ARM_SMMU_CTX_FMT_AARCH32_S) {
> > > -			cb->ttbr[0] = pgtbl_cfg->arm_v7s_cfg.ttbr[0];
> > > -			cb->ttbr[1] = pgtbl_cfg->arm_v7s_cfg.ttbr[1];
> > > +			cb->ttbr[0] = pgtbl_cfg->arm_v7s_cfg.ttbr;
> > > +			cb->ttbr[1] = 0;
> > >   		} else {
> > > -			cb->ttbr[0] = pgtbl_cfg->arm_lpae_s1_cfg.ttbr[0];
> > > +			cb->ttbr[0] = pgtbl_cfg->arm_lpae_s1_cfg.ttbr;
> > >   			cb->ttbr[0] |= FIELD_PREP(TTBRn_ASID, cfg->asid);
> > > -			cb->ttbr[1] = pgtbl_cfg->arm_lpae_s1_cfg.ttbr[1];
> > > -			cb->ttbr[1] |= FIELD_PREP(TTBRn_ASID, cfg->asid);
> > > +			cb->ttbr[1] = FIELD_PREP(TTBRn_ASID, cfg->asid);
> > 
> > Why do you continue to put the ASID in here?
> 
> For the same reason we put it there before ;)
> 
> Although I guess if TCR.A1 were ever to get flipped accidentally then we're
> still cool.

Hmm, but we don't do this for other drivers, so I'd be inclined to zap it
with 0 for consistency.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
