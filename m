Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBBDC1DB336
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 14:30:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X7ygL/68/G6wxQlud3Xw+mekccXzeHr0fRcyhtY+kqs=; b=Bgk3yijVHxhzkX
	E+SXF16RqFIGPv/upWCIqw7YaQHkcRvuLVmeseI8dyeePOtbMRsLbkXWcwk1waq7HDvSGbyoPlQFc
	ERvEb04MjFHmdnOGlVgpre2lwsK0eYxY8huHwI2eJ1xecS0+lZWFBK01wlsx+55X4SVok/VI1vIqk
	qp2bAVxkXqKUel3NTjbFpzWSvCLwxvk8Ypn1OxoYkSn+nf7tSjFrpJRor8RpXGEqtxG2lzm6mq1jN
	cJjMzcTw7Y7qNk0a9zSX00euIxBxsqbQYW029CMkRJ7rMdcYl2nbF/ZU4Lh858w30kkqSyE4LX9Xs
	MMAKPx0sAZGTRhD4SftQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbNrd-0004Hc-Em; Wed, 20 May 2020 12:30:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbNr8-0004Gk-Ej
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 12:29:55 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0ED9220756;
 Wed, 20 May 2020 12:29:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589977794;
 bh=VGu6dnFTVCKwpzDnxKnQRdLF/W/wyJaAlcUliCdCrVI=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=CS7PL+Rv9R79fZvV9gVfqHsdFTW+yiv6vBsmUCaPQwLsKoCYHz1X0yfF/9Kr3meYs
 XZE7O/O1PL8P7RYyCqt3nWMznsAp679ACj9891L9JLhyVUBlLdmdQ5zeRG3Aw7QEDm
 UaZMBvb7sEpwGADI/np+Sj49wPgdwWhHqDDEcTNA=
Date: Wed, 20 May 2020 13:29:49 +0100
From: Will Deacon <will@kernel.org>
To: iommu@lists.linux-foundation.org, linux-arm-msm@vger.kernel.org,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org,
 Joerg Roedel <joro@8bytes.org>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 2/5] iommu/arm-smmu: Add support for TTBR1
Message-ID: <20200520122949.GC25815@willie-the-truck>
References: <20200409233350.6343-1-jcrouse@codeaurora.org>
 <20200409233350.6343-3-jcrouse@codeaurora.org>
 <20200518145959.GK32394@willie-the-truck>
 <20200520015326.GA31730@jcrouse1-lnx.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520015326.GA31730@jcrouse1-lnx.qualcomm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_052954_539734_E75B81F6 
X-CRM114-Status: GOOD (  31.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 07:53:26PM -0600, Jordan Crouse wrote:
> On Mon, May 18, 2020 at 03:59:59PM +0100, Will Deacon wrote:
> > On Thu, Apr 09, 2020 at 05:33:47PM -0600, Jordan Crouse wrote:
> > > Add support to enable TTBR1 if the domain requests it via the
> > > DOMAIN_ATTR_SPLIT_TABLES attribute. If enabled by the hardware
> > > and pagetable configuration the driver will configure the TTBR1 region
> > > and program the domain pagetable on TTBR1. TTBR0 will be disabled.
> > > 
> > > After attaching the device the value of he domain attribute can
> > > be queried to see if the split pagetables were successfully programmed.
> > > The domain geometry will be updated as well so that the caller can
> > > determine the active region for the pagetable that was programmed.
> > > 
> > > Signed-off-by: Jordan Crouse <jcrouse@codeaurora.org>
> > > ---
> > > 
> > >  drivers/iommu/arm-smmu.c | 48 ++++++++++++++++++++++++++++++++++------
> > >  drivers/iommu/arm-smmu.h | 24 +++++++++++++++-----
> > >  2 files changed, 59 insertions(+), 13 deletions(-)
> > > 
> > > diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> > > index a6a5796e9c41..db6d503c1673 100644
> > > --- a/drivers/iommu/arm-smmu.c
> > > +++ b/drivers/iommu/arm-smmu.c
> > > @@ -555,11 +555,16 @@ static void arm_smmu_init_context_bank(struct arm_smmu_domain *smmu_domain,
> > >  			cb->ttbr[0] = pgtbl_cfg->arm_v7s_cfg.ttbr;
> > >  			cb->ttbr[1] = 0;
> > >  		} else {
> > > -			cb->ttbr[0] = pgtbl_cfg->arm_lpae_s1_cfg.ttbr;
> > > -			cb->ttbr[0] |= FIELD_PREP(ARM_SMMU_TTBRn_ASID,
> > > -						  cfg->asid);
> > > -			cb->ttbr[1] = FIELD_PREP(ARM_SMMU_TTBRn_ASID,
> > > -						 cfg->asid);
> > > +			cb->ttbr[0] = FIELD_PREP(ARM_SMMU_TTBRn_ASID,
> > > +				cfg->asid);
> > > +
> > > +			if (pgtbl_cfg->quirks & IO_PGTABLE_QUIRK_ARM_TTBR1) {
> > > +				cb->ttbr[1] = pgtbl_cfg->arm_lpae_s1_cfg.ttbr;
> > > +			} else {
> > > +				cb->ttbr[0] |= pgtbl_cfg->arm_lpae_s1_cfg.ttbr;
> > > +				cb->ttbr[1] = FIELD_PREP(ARM_SMMU_TTBRn_ASID,
> > > +							 cfg->asid);
> > > +			}
> > 
> > This looks odd to me. As I mentioned before, the SMMU driver absolutely has
> > to manage the ASID space, so we should be setting it in both TTBRs here.
> 
> Somebody had suggested a while back to only do TTBR0 but I agree that it makes
> more sense for it to be on both.

Sorry if it was me, I've been having a hard time piecing together how this
works with the GPU.

> > > diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
> > > index 8d1cd54d82a6..5f6d0af7c8c8 100644
> > > --- a/drivers/iommu/arm-smmu.h
> > > +++ b/drivers/iommu/arm-smmu.h
> > > @@ -172,6 +172,7 @@ enum arm_smmu_cbar_type {
> > >  #define ARM_SMMU_TCR_SH0		GENMASK(13, 12)
> > >  #define ARM_SMMU_TCR_ORGN0		GENMASK(11, 10)
> > >  #define ARM_SMMU_TCR_IRGN0		GENMASK(9, 8)
> > > +#define ARM_SMMU_TCR_EPD0		BIT(7)
> > >  #define ARM_SMMU_TCR_T0SZ		GENMASK(5, 0)
> > >  
> > >  #define ARM_SMMU_VTCR_RES1		BIT(31)
> > > @@ -343,16 +344,27 @@ struct arm_smmu_domain {
> > >  	struct mutex			init_mutex; /* Protects smmu pointer */
> > >  	spinlock_t			cb_lock; /* Serialises ATS1* ops and TLB syncs */
> > >  	struct iommu_domain		domain;
> > > +	bool				split_pagetables;
> > >  };
> > >  
> > >  static inline u32 arm_smmu_lpae_tcr(struct io_pgtable_cfg *cfg)
> > >  {
> > > -	return ARM_SMMU_TCR_EPD1 |
> > > -	       FIELD_PREP(ARM_SMMU_TCR_TG0, cfg->arm_lpae_s1_cfg.tcr.tg) |
> > > -	       FIELD_PREP(ARM_SMMU_TCR_SH0, cfg->arm_lpae_s1_cfg.tcr.sh) |
> > > -	       FIELD_PREP(ARM_SMMU_TCR_ORGN0, cfg->arm_lpae_s1_cfg.tcr.orgn) |
> > > -	       FIELD_PREP(ARM_SMMU_TCR_IRGN0, cfg->arm_lpae_s1_cfg.tcr.irgn) |
> > > -	       FIELD_PREP(ARM_SMMU_TCR_T0SZ, cfg->arm_lpae_s1_cfg.tcr.tsz);
> > > +	u32 tcr = FIELD_PREP(ARM_SMMU_TCR_TG0, cfg->arm_lpae_s1_cfg.tcr.tg) |
> > > +		FIELD_PREP(ARM_SMMU_TCR_SH0, cfg->arm_lpae_s1_cfg.tcr.sh) |
> > > +		FIELD_PREP(ARM_SMMU_TCR_ORGN0, cfg->arm_lpae_s1_cfg.tcr.orgn) |
> > > +		FIELD_PREP(ARM_SMMU_TCR_IRGN0, cfg->arm_lpae_s1_cfg.tcr.irgn) |
> > > +		FIELD_PREP(ARM_SMMU_TCR_T0SZ, cfg->arm_lpae_s1_cfg.tcr.tsz);
> > > +
> > > +       /*
> > > +	* When TTBR1 is selected shift the TCR fields by 16 bits and disable
> > > +	* translation in TTBR0
> > > +	*/
> > > +	if (cfg->quirks & IO_PGTABLE_QUIRK_ARM_TTBR1)
> > > +		tcr = (tcr << 16) | ARM_SMMU_TCR_EPD0;
> > 
> > This looks reasonably dodgy to me, as you copy a RESERVED bit into the A1
> > field. Furthermore, for 32-bit context banks you've got the EAE bit to
> > contend with as well.
> 
> I can swizzle it more if we need to. I think Robin's main objection was that we
> didn't want to construct the whole half of the TCR twice and have a bunch of
> field definitions for the T1 space that are only used in this special case. 
> 
> > Perhaps we shouldn't expose DOMAIN_ATTR_SPLIT_TABLES for anything other than
> > the 64-bit page table format.
> 
> We kind of enforce that in arm_smmu_init_domain_context [1] by only allowing the
> quirk to be set when cfg->fmt == ARM_SMMU_CTX_FMT_AARCH64 and stage 1. I'm not
> sure if that is formal enough or if we should bake something in to
> io-pgtable-arm to warn against it too.

Sorry again, I missed that this was predicated on

	'cfg->fmt == ARM_SMMU_CTX_FMT_AARCH64'

Please can you add that to the comment above the code shifting the TCR
around? I think you should also say that this clears A1.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
