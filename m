Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85465A0BD3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 22:49:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iIe5VvKzUR8jidv9B56kfzc9fgpUUwBOjIWYEJB9N7c=; b=OOpba4V07EjTKP
	5lodMdzM7kUfLhK3CQdeQV9HaiIi75cblF/59iMQRkco5Iy4xL1fJer2jlhoqRBKLpgvgqWHEOsxv
	G/S//9YglNJjRcgz0qS1ymMj1MWCnjI2UFVRUgoPT4dCheexnQZ0W0ENKfcOQ5gWm+Xux+EFTAseI
	nFwSb0bTPq87alxezg1pDOho7ULXLJXb1HSeJtHSsMU2wx1H0oA1bCnTwtSEdm7Ie9OnJJY7yl0N0
	5N0eFOeLMKHmMDwBr9XhtG+WPW9UTX7F7mK2mik6F2veByawEXPXAIy2JD/ZFLR8MBafizkpXd94t
	Hp40S1SiPypsrBRaf4Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i34sL-000816-Oq; Wed, 28 Aug 2019 20:49:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i34sA-00080j-RP
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 20:48:56 +0000
Received: from localhost (c-67-164-102-47.hsd1.ca.comcast.net [67.164.102.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A49E92189D;
 Wed, 28 Aug 2019 20:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567025334;
 bh=wedKbY+wULWSOFuNELNsjmsKune/wJFgcC8Ep9J72tE=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=dlHzspDsR4tSZ4pxoW0w/uceuuYYaigGCgU2ZBdI09VlO+9TzA2LfVGtLA/DWoNLc
 DkvT7J3braU+7C9K6xiN1FAyM/zHVUJi44ICjLQP+F4uj1+MO+Fm7MY0eu8WOO86OU
 QNlR4r/NS/sl19fR0UY6OdHgsz7PCa1wLNNKmRSw=
Date: Wed, 28 Aug 2019 13:48:53 -0700 (PDT)
From: Stefano Stabellini <sstabellini@kernel.org>
X-X-Sender: sstabellini@sstabellini-ThinkPad-T480s
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] arm-smmu: check for generic bindings first
In-Reply-To: <f6fe31f1-52e1-8ab8-4ba4-f23db262d1b5@arm.com>
Message-ID: <alpine.DEB.2.21.1908281338090.25361@sstabellini-ThinkPad-T480s>
References: <20190828173837.29617-1-sstabellini@kernel.org>
 <f6fe31f1-52e1-8ab8-4ba4-f23db262d1b5@arm.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_134854_934203_BF2AAA03 
X-CRM114-Status: GOOD (  34.54  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stefano Stabellini <sstabellini@kernel.org>, linux-kernel@vger.kernel.org,
 michal.simek@xilinx.com, git@xilinx.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 28 Aug 2019, Robin Murphy wrote:
> On 28/08/2019 18:38, Stefano Stabellini wrote:
> > From: Stefano Stabellini <stefano.stabellini@xilinx.com>
> > 
> > Today, the arm-smmu driver checks for mmu-masters on device tree, the
> > legacy property, if it is absent it assumes that we are using the new
> > bindings. If it is present it assumes that we are using the legacy
> > bindings. All arm-smmus need to use the same bindings: legacy or new.
> > 
> > There are two issues with this:
> > 
> > - we are not actually checking for the new bindings explicitly
> > It would be better to have an explicit check for the new bindings rather
> > than assuming we must be using the new if the old are not there.
> 
> The legacy binding is the special case, though. Isn't it perfectly logical to
> check for the special case, and assume the normal case otherwise? ;)

I don't know ... all cases are special and all cases are normal
depending on who you ask or when. The normal case of today can be the
special case of tomorrow and vice versa.


> > - old and new bindings cannot coexist
> > It would be nice to be able to provide both old and new bindings so
> > that software that hasn't been updated yet is still able to get IOMMU
> > information from the legacy bindings while at the same time newer
> > software can get the latest information via the new bindings. (Xen has
> > not been updated to use the new binding yet for instance.) The current
> > code breaks under these circumstances because if the old bindings are
> > present, the new are not even checked.
> 
> FWIW that was a deliberate design decision. We didn't want to see DTs with
> both bindings at once - the legacy binding support remains only for the sake
> of DTBs deployed in fossilised firmware that can't/won't ever be updated. And
> I'm pretty sure the intervening 3 years have only reinforced that position.
> Only a couple more months now until it will have been deprecated for longer
> than it wasn't :)

This way the people that would be willing to put in extra effort to
maintain compatibility wouldn't be able to achieve the goal.


> Do note that "mmu-masters" isn't just deprecated for giggles either - the
> binding made some flawed assumptions, and there are Stream ID topologies that
> it cannot possibly describe, which do exist in the real world.
>
> > This patch changes the scheme by checking for #iommu-cells, which is
> > only present with the new bindings, before checking for mmu-masters.
> > The new bindings are always favored when present. All SMMUs still need
> > to use the same bindings: mix-and-matching new and old bindings between
> > different SMMUs is not allowed.
> > 
> > Signed-off-by: Stefano Stabellini <stefano.stabellini@xilinx.com>
> > ---
> > 
> > Let me know if you'd like me to turn the two using_*_binding variables
> > into a single one.
> > 
> > Also, please note that this is not meant as an excuse not to get Xen
> > updated to use the new binding.
> 
> Fair enough, but conversely, what makes it Linux's responsibility to handle?
> If Xen wants to deal with funky hybrid DTs then why shouldn't it be Xen's job
> to just filter deprecated properties out of whatever it presents to Linux?

Yes, Xen does it just fine. But if you boot Linux with the same DT but
without Xen, problems occur.

The code looked suboptimal to me because of the reasons I listed in the
commit message. I thought it was done this way by "mistake". However, I
now realize that if it is written this way on purpose, then I have a
very little chance of convincing you to change it.


 
> >   drivers/iommu/arm-smmu.c | 22 +++++++++++++---------
> >   1 file changed, 13 insertions(+), 9 deletions(-)
> > 
> > diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> > index 64977c131ee6..79b518ff215c 100644
> > --- a/drivers/iommu/arm-smmu.c
> > +++ b/drivers/iommu/arm-smmu.c
> > @@ -2118,7 +2118,7 @@ static int arm_smmu_device_dt_probe(struct
> > platform_device *pdev,
> >   {
> >   	const struct arm_smmu_match_data *data;
> >   	struct device *dev = &pdev->dev;
> > -	bool legacy_binding;
> > +	bool legacy_binding, generic_binding;
> >     	if (of_property_read_u32(dev->of_node, "#global-interrupts",
> >   				 &smmu->num_global_irqs)) {
> > @@ -2132,16 +2132,20 @@ static int arm_smmu_device_dt_probe(struct
> > platform_device *pdev,
> >     	parse_driver_options(smmu);
> >   -	legacy_binding = of_find_property(dev->of_node, "mmu-masters", NULL);
> > -	if (legacy_binding && !using_generic_binding) {
> > -		if (!using_legacy_binding)
> > -			pr_notice("deprecated \"mmu-masters\" DT property in
> > use; DMA API support unavailable\n");
> > -		using_legacy_binding = true;
> > -	} else if (!legacy_binding && !using_legacy_binding) {
> > +	generic_binding = of_find_property(dev->of_node, "#iommu-cells",
> > NULL);
> > +	if (generic_binding && !using_legacy_binding) {
> >   		using_generic_binding = true;
> >   	} else {
> > -		dev_err(dev, "not probing due to mismatched DT properties\n");
> > -		return -ENODEV;
> > +		legacy_binding = of_find_property(dev->of_node, "mmu-masters",
> > +						  NULL);
> > +		if (legacy_binding && !using_generic_binding) {
> > +			if (!using_legacy_binding)
> > +				pr_notice("deprecated \"mmu-masters\" DT
> > property in use; DMA API support unavailable\n");
> > +			using_legacy_binding = true;
> > +		} else {
> > +			dev_err(dev, "not probing due to mismatched DT
> > properties\n");
> > +			return -ENODEV;
> > +		}
> >   	}
> >     	if (of_dma_is_coherent(dev->of_node))
> > 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
