Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F7581DA78E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 03:53:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jqq02jfR8ZGyW1wfupg7cVmxlStkrpUyoMb/gTDlYfs=; b=k7wviRc+cjjBXo
	J3qzVG6gyXdsFbL581EUq+spKgYXbBKM8Ds242czTimwVJV/rBOus5Ff4gGt6VhlNkcwG3S2FHTF5
	Ssx+FLgHk2FRQdZk/QvCZqiLXeBvYzduxK+zDCCNa2El10IN4bO/NppcH5hdR3AKQnu2kRqvtpTpN
	iRhhBX4/TAlkA1aoywYQwn7ks9Owm5RHfWIxE0nbbRRC0l/qKO/78P24IS7J1GkxxUho/dDm3BMQo
	4ha/IpPK2OFN2jsfx4ydPekcPS0XKRWpB+CfZevUAod4uWZhF3+4jB3Wiu/WrRycFgkN86NjDHz61
	9BuHNJ/vNXD1SWGpfosQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbDvZ-0004Gw-Cq; Wed, 20 May 2020 01:53:49 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbDvN-0004GM-V6
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 01:53:42 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1589939620; h=In-Reply-To: Content-Type: MIME-Version:
 References: Message-ID: Subject: Cc: To: From: Date: Sender;
 bh=bipPZZl6i0uiVygGHlA0ONnrop/ReE+5AmOxNg/wCQ4=;
 b=c8r8iiQknM3boT2CDTE/QGy3J1yol/zi3PZlHycp3ZYLdWU9j7DiWG/uHzgLr4heks9W3Y9I
 G+OP95sheX5dwnqiK956UczzWn3RtipAUo0EWd3NcVf6RNgxF2cq+0PhX6/xTVkSt6xabGx+
 Ln7HxO2IrNQk3bqIer+rNFegex0=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ec48d9a.7fc19641a0d8-smtp-out-n02;
 Wed, 20 May 2020 01:53:30 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 0711AC43391; Wed, 20 May 2020 01:53:30 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from jcrouse1-lnx.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: jcrouse)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 681B1C433C6;
 Wed, 20 May 2020 01:53:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 681B1C433C6
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=jcrouse@codeaurora.org
Date: Tue, 19 May 2020 19:53:26 -0600
From: Jordan Crouse <jcrouse@codeaurora.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v6 2/5] iommu/arm-smmu: Add support for TTBR1
Message-ID: <20200520015326.GA31730@jcrouse1-lnx.qualcomm.com>
Mail-Followup-To: Will Deacon <will@kernel.org>,
 iommu@lists.linux-foundation.org, linux-arm-msm@vger.kernel.org,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org,
 Joerg Roedel <joro@8bytes.org>, linux-kernel@vger.kernel.org
References: <20200409233350.6343-1-jcrouse@codeaurora.org>
 <20200409233350.6343-3-jcrouse@codeaurora.org>
 <20200518145959.GK32394@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200518145959.GK32394@willie-the-truck>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_185340_331086_E5B97F46 
X-CRM114-Status: GOOD (  30.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [104.130.122.26 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arm-msm@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 03:59:59PM +0100, Will Deacon wrote:
> On Thu, Apr 09, 2020 at 05:33:47PM -0600, Jordan Crouse wrote:
> > Add support to enable TTBR1 if the domain requests it via the
> > DOMAIN_ATTR_SPLIT_TABLES attribute. If enabled by the hardware
> > and pagetable configuration the driver will configure the TTBR1 region
> > and program the domain pagetable on TTBR1. TTBR0 will be disabled.
> > 
> > After attaching the device the value of he domain attribute can
> > be queried to see if the split pagetables were successfully programmed.
> > The domain geometry will be updated as well so that the caller can
> > determine the active region for the pagetable that was programmed.
> > 
> > Signed-off-by: Jordan Crouse <jcrouse@codeaurora.org>
> > ---
> > 
> >  drivers/iommu/arm-smmu.c | 48 ++++++++++++++++++++++++++++++++++------
> >  drivers/iommu/arm-smmu.h | 24 +++++++++++++++-----
> >  2 files changed, 59 insertions(+), 13 deletions(-)
> > 
> > diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> > index a6a5796e9c41..db6d503c1673 100644
> > --- a/drivers/iommu/arm-smmu.c
> > +++ b/drivers/iommu/arm-smmu.c
> > @@ -555,11 +555,16 @@ static void arm_smmu_init_context_bank(struct arm_smmu_domain *smmu_domain,
> >  			cb->ttbr[0] = pgtbl_cfg->arm_v7s_cfg.ttbr;
> >  			cb->ttbr[1] = 0;
> >  		} else {
> > -			cb->ttbr[0] = pgtbl_cfg->arm_lpae_s1_cfg.ttbr;
> > -			cb->ttbr[0] |= FIELD_PREP(ARM_SMMU_TTBRn_ASID,
> > -						  cfg->asid);
> > -			cb->ttbr[1] = FIELD_PREP(ARM_SMMU_TTBRn_ASID,
> > -						 cfg->asid);
> > +			cb->ttbr[0] = FIELD_PREP(ARM_SMMU_TTBRn_ASID,
> > +				cfg->asid);
> > +
> > +			if (pgtbl_cfg->quirks & IO_PGTABLE_QUIRK_ARM_TTBR1) {
> > +				cb->ttbr[1] = pgtbl_cfg->arm_lpae_s1_cfg.ttbr;
> > +			} else {
> > +				cb->ttbr[0] |= pgtbl_cfg->arm_lpae_s1_cfg.ttbr;
> > +				cb->ttbr[1] = FIELD_PREP(ARM_SMMU_TTBRn_ASID,
> > +							 cfg->asid);
> > +			}
> 
> This looks odd to me. As I mentioned before, the SMMU driver absolutely has
> to manage the ASID space, so we should be setting it in both TTBRs here.

Somebody had suggested a while back to only do TTBR0 but I agree that it makes
more sense for it to be on both.

> > diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
> > index 8d1cd54d82a6..5f6d0af7c8c8 100644
> > --- a/drivers/iommu/arm-smmu.h
> > +++ b/drivers/iommu/arm-smmu.h
> > @@ -172,6 +172,7 @@ enum arm_smmu_cbar_type {
> >  #define ARM_SMMU_TCR_SH0		GENMASK(13, 12)
> >  #define ARM_SMMU_TCR_ORGN0		GENMASK(11, 10)
> >  #define ARM_SMMU_TCR_IRGN0		GENMASK(9, 8)
> > +#define ARM_SMMU_TCR_EPD0		BIT(7)
> >  #define ARM_SMMU_TCR_T0SZ		GENMASK(5, 0)
> >  
> >  #define ARM_SMMU_VTCR_RES1		BIT(31)
> > @@ -343,16 +344,27 @@ struct arm_smmu_domain {
> >  	struct mutex			init_mutex; /* Protects smmu pointer */
> >  	spinlock_t			cb_lock; /* Serialises ATS1* ops and TLB syncs */
> >  	struct iommu_domain		domain;
> > +	bool				split_pagetables;
> >  };
> >  
> >  static inline u32 arm_smmu_lpae_tcr(struct io_pgtable_cfg *cfg)
> >  {
> > -	return ARM_SMMU_TCR_EPD1 |
> > -	       FIELD_PREP(ARM_SMMU_TCR_TG0, cfg->arm_lpae_s1_cfg.tcr.tg) |
> > -	       FIELD_PREP(ARM_SMMU_TCR_SH0, cfg->arm_lpae_s1_cfg.tcr.sh) |
> > -	       FIELD_PREP(ARM_SMMU_TCR_ORGN0, cfg->arm_lpae_s1_cfg.tcr.orgn) |
> > -	       FIELD_PREP(ARM_SMMU_TCR_IRGN0, cfg->arm_lpae_s1_cfg.tcr.irgn) |
> > -	       FIELD_PREP(ARM_SMMU_TCR_T0SZ, cfg->arm_lpae_s1_cfg.tcr.tsz);
> > +	u32 tcr = FIELD_PREP(ARM_SMMU_TCR_TG0, cfg->arm_lpae_s1_cfg.tcr.tg) |
> > +		FIELD_PREP(ARM_SMMU_TCR_SH0, cfg->arm_lpae_s1_cfg.tcr.sh) |
> > +		FIELD_PREP(ARM_SMMU_TCR_ORGN0, cfg->arm_lpae_s1_cfg.tcr.orgn) |
> > +		FIELD_PREP(ARM_SMMU_TCR_IRGN0, cfg->arm_lpae_s1_cfg.tcr.irgn) |
> > +		FIELD_PREP(ARM_SMMU_TCR_T0SZ, cfg->arm_lpae_s1_cfg.tcr.tsz);
> > +
> > +       /*
> > +	* When TTBR1 is selected shift the TCR fields by 16 bits and disable
> > +	* translation in TTBR0
> > +	*/
> > +	if (cfg->quirks & IO_PGTABLE_QUIRK_ARM_TTBR1)
> > +		tcr = (tcr << 16) | ARM_SMMU_TCR_EPD0;
> 
> This looks reasonably dodgy to me, as you copy a RESERVED bit into the A1
> field. Furthermore, for 32-bit context banks you've got the EAE bit to
> contend with as well.

I can swizzle it more if we need to. I think Robin's main objection was that we
didn't want to construct the whole half of the TCR twice and have a bunch of
field definitions for the T1 space that are only used in this special case. 

> Perhaps we shouldn't expose DOMAIN_ATTR_SPLIT_TABLES for anything other than
> the 64-bit page table format.

We kind of enforce that in arm_smmu_init_domain_context [1] by only allowing the
quirk to be set when cfg->fmt == ARM_SMMU_CTX_FMT_AARCH64 and stage 1. I'm not
sure if that is formal enough or if we should bake something in to
io-pgtable-arm to warn against it too.

Jordan

-- 
The Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
