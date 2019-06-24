Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8151450A2F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 13:54:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wHkPneTrAXPNSgP5UAOA7lQt/Y4ZblI9paOPezheLjk=; b=bGxAeR8XTpWoiK
	4ZrRIV6a/DYUl/cuLEQ8CfD25dc708i+aV6/3Pv6EV4YO16iowT4ineghwUnPi9+c+KecsQAusif7
	bwv/pEYtxXp+n+0NWlUq7InhkuRItzFbiOWU5YbedVqRLwx0vJMt/yCf6CyCwCjgeetEmsM2xCw5N
	5FB5FEUYSUuGr6HZrsqkB1zu3GD5eGyktJyrMo0sN0aRXt6ziDgU5xQjpKp1P4WNDgevju36dEIsG
	gFPobpxMa4DivJA51oWJI8TRzHQkuzJZPA/PxskcwBVbOwSe2KB/XSHzUPw+/ykqKBSeov23DFLP/
	hDqxPnJkGal+EDcbFEqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfNXs-0006Zg-NK; Mon, 24 Jun 2019 11:54:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfNXm-0006ZK-NJ
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 11:53:55 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BD100212F5;
 Mon, 24 Jun 2019 11:53:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561377234;
 bh=DPkbnAX2UC8HCyA8iQCpieXXckaaIIzpSDhByDPzn7Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=G8wC7xM9KFMtvOYu/kOVa2McfZiycme1sJMB4laZoRfGXGAGxgIe7MIfXLQhc8m2m
 /hdHyPsY8pRnYQbF5ft5LW2dkkPKET0OwfkBg31pxiBy90cEVRNKtqVeRUmkH9RQLL
 uV2aZb1cM9c8ClPfyvJg5QO6FlwjOKMf0hSks0D4=
Date: Mon, 24 Jun 2019 12:53:49 +0100
From: Will Deacon <will@kernel.org>
To: Will Deacon <will.deacon@arm.com>, bjorn.andersson@linaro.org
Subject: Re: [PATCH] iommu: io-pgtable: Support non-coherent page tables
Message-ID: <20190624115349.f62uqypyt7l73skf@willie-the-truck>
References: <20190515233234.22990-1-bjorn.andersson@linaro.org>
 <20190618173929.GG4270@fuggles.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190618173929.GG4270@fuggles.cambridge.arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_045354_769571_B8C3595B 
X-CRM114-Status: GOOD (  18.61  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-msm@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Vivek Gautam <vgautam@qti.qualcomm.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi again, Bjorn,

On Tue, Jun 18, 2019 at 06:39:33PM +0100, Will Deacon wrote:
> On Wed, May 15, 2019 at 04:32:34PM -0700, Bjorn Andersson wrote:
> > Describe the memory related to page table walks as non-cachable for iommu
> > instances that are not DMA coherent.
> > 
> > Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> > ---
> >  drivers/iommu/io-pgtable-arm.c | 12 +++++++++---
> >  1 file changed, 9 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
> > index 4e21efbc4459..68ff22ffd2cb 100644
> > --- a/drivers/iommu/io-pgtable-arm.c
> > +++ b/drivers/iommu/io-pgtable-arm.c
> > @@ -803,9 +803,15 @@ arm_64_lpae_alloc_pgtable_s1(struct io_pgtable_cfg *cfg, void *cookie)
> >  		return NULL;
> >  
> >  	/* TCR */
> > -	reg = (ARM_LPAE_TCR_SH_IS << ARM_LPAE_TCR_SH0_SHIFT) |
> > -	      (ARM_LPAE_TCR_RGN_WBWA << ARM_LPAE_TCR_IRGN0_SHIFT) |
> > -	      (ARM_LPAE_TCR_RGN_WBWA << ARM_LPAE_TCR_ORGN0_SHIFT);
> > +	if (cfg->quirks & IO_PGTABLE_QUIRK_NO_DMA) {
> > +		reg = (ARM_LPAE_TCR_SH_IS << ARM_LPAE_TCR_SH0_SHIFT) |
> > +		      (ARM_LPAE_TCR_RGN_WBWA << ARM_LPAE_TCR_IRGN0_SHIFT) |
> > +		      (ARM_LPAE_TCR_RGN_WBWA << ARM_LPAE_TCR_ORGN0_SHIFT);
> > +	} else {
> > +		reg = (ARM_LPAE_TCR_SH_IS << ARM_LPAE_TCR_SH0_SHIFT) |
> 
> Nit: this should be outer-shareable (ARM_LPAE_TCR_SH_OS).
> 
> > +		      (ARM_LPAE_TCR_RGN_NC << ARM_LPAE_TCR_IRGN0_SHIFT) |
> > +		      (ARM_LPAE_TCR_RGN_NC << ARM_LPAE_TCR_ORGN0_SHIFT);
> > +	}
> 
> Should we also be doing something similar for the short-descriptor code
> in io-pgtable-arm-v7s.c? Looks like you just need to use ARM_V7S_RGN_NC
> instead of ARM_V7S_RGN_WBWA when initialising ttbr0 for non-coherent
> SMMUs.

Do you plan to respin this? I'll need it this week if you're shooting for
5.3.

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
