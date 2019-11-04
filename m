Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0553EE837
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 20:21:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lxt0HOaLti/qoVN7Y5YcVkBNC2RqQp7t8PVgxsQOXAw=; b=j8a1Wzfg2s34sP
	8uWj9Y2MWOuX4rTFsjx5xo0vXwwG62/dcqaRVN/Bs+eGMDHAvJwr6kYYOLF4sxSltKXPAYWIftzu/
	AWOa1k4z2tOhJX2iOrDMT9lh06onKNPYOSiUuRL6TiFbPE8amAwgI4X69xyr2OLcAQqkLANVp7iaI
	TduCcBFSerWyupFg6FFafjyYII84aI5rElkXcjiRKbaDrp7u5pHAzEE2BZo/FzM/7kxVxlp/wEG9r
	AJbMDguJTlH3s60CUSXaTel4Xhlo+Rww65d60WrztyGl9iAtsG7BBOr4spkJX0GK7FUHIRIdsQbRD
	Zxay90UttoJfepW9UDSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRhuX-0006Rl-IS; Mon, 04 Nov 2019 19:21:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRhuQ-0006RM-P2
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 19:21:04 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 95E1120869;
 Mon,  4 Nov 2019 19:21:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572895262;
 bh=0pyQ8Sc7FGWhaT61rQFe+TgPhbVjyMRw3yVAjAFRHLg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=azk+ixxdkGfyQsjm7JGI0AccOCitFiYsmJKUFe10dmGKJRKXJFZ4V7WhM8E1AY0S+
 SaZJJ4TFvolsYecyc/V67Wh/W3EFgX725W3Hs84b73KN7QjEsJYtwxkv3IzgV4IipR
 H10c4ggXFXuyD/KZtp1hNphP0Wqa6eKHgPf9wKXQ=
Date: Mon, 4 Nov 2019 19:20:58 +0000
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v2 07/10] iommu/io-pgtable-arm: Rationalise MAIR handling
Message-ID: <20191104192058.GK24909@willie-the-truck>
References: <cover.1572024119.git.robin.murphy@arm.com>
 <c6bee9e6de5e7f4aa2293ee5385ffa2dd95600d3.1572024120.git.robin.murphy@arm.com>
 <20191104182029.GG24909@willie-the-truck>
 <d7d7513d-9e54-6ae8-168a-2460a306a027@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d7d7513d-9e54-6ae8-168a-2460a306a027@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_112102_834233_D024B7E4 
X-CRM114-Status: GOOD (  20.92  )
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

On Mon, Nov 04, 2019 at 06:43:06PM +0000, Robin Murphy wrote:
> On 04/11/2019 18:20, Will Deacon wrote:
> > On Fri, Oct 25, 2019 at 07:08:36PM +0100, Robin Murphy wrote:
> > > Between VMSAv8-64 and the various 32-bit formats, there is either one
> > > 64-bit MAIR or a pair of 32-bit MAIR0/MAIR1 or NMRR/PMRR registers.
> > > As such, keeping two 64-bit values in io_pgtable_cfg has always been
> > > overkill.
> > > 
> > > Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> > > ---
> > >   drivers/iommu/arm-smmu-v3.c    | 2 +-
> > >   drivers/iommu/arm-smmu.c       | 4 ++--
> > >   drivers/iommu/io-pgtable-arm.c | 3 +--
> > >   drivers/iommu/ipmmu-vmsa.c     | 2 +-
> > >   drivers/iommu/qcom_iommu.c     | 4 ++--
> > >   include/linux/io-pgtable.h     | 2 +-
> > >   6 files changed, 8 insertions(+), 9 deletions(-)
> > > 
> > > diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> > > index 8da93e730d6f..3f20e548f1ec 100644
> > > --- a/drivers/iommu/arm-smmu-v3.c
> > > +++ b/drivers/iommu/arm-smmu-v3.c
> > > @@ -2172,7 +2172,7 @@ static int arm_smmu_domain_finalise_s1(struct arm_smmu_domain *smmu_domain,
> > >   	cfg->cd.asid	= (u16)asid;
> > >   	cfg->cd.ttbr	= pgtbl_cfg->arm_lpae_s1_cfg.ttbr[0];
> > >   	cfg->cd.tcr	= pgtbl_cfg->arm_lpae_s1_cfg.tcr;
> > > -	cfg->cd.mair	= pgtbl_cfg->arm_lpae_s1_cfg.mair[0];
> > > +	cfg->cd.mair	= pgtbl_cfg->arm_lpae_s1_cfg.mair;
> > >   	return 0;
> > >   out_free_asid:
> > > diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> > > index 080af0326816..2bc3e93b11e6 100644
> > > --- a/drivers/iommu/arm-smmu.c
> > > +++ b/drivers/iommu/arm-smmu.c
> > > @@ -552,8 +552,8 @@ static void arm_smmu_init_context_bank(struct arm_smmu_domain *smmu_domain,
> > >   			cb->mair[0] = pgtbl_cfg->arm_v7s_cfg.prrr;
> > >   			cb->mair[1] = pgtbl_cfg->arm_v7s_cfg.nmrr;
> > >   		} else {
> > > -			cb->mair[0] = pgtbl_cfg->arm_lpae_s1_cfg.mair[0];
> > > -			cb->mair[1] = pgtbl_cfg->arm_lpae_s1_cfg.mair[1];
> > > +			cb->mair[0] = pgtbl_cfg->arm_lpae_s1_cfg.mair;
> > > +			cb->mair[1] = pgtbl_cfg->arm_lpae_s1_cfg.mair >> 32;
> > 
> > Does this work correctly for big-endian?
> 
> I don't see why it wouldn't - cfg.mair is read and written as a u64, so this
> should always return its most significant word regardless of the storage
> format. We're not doing anything dodgy like trying to type-pun the u64
> directly into the u32[2].

Urgh, I need to convince myself about this then. Off to draw those silly
ABCD DCBA diagrams on some paper.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
