Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF2D18A892
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 23:49:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eOYwffPCIAX9j/4n9gs1AasHcWafQfyuP014oew/wzw=; b=a0V7E4ecyMuA1b
	gkxKjvsNuUfQoo0wPQ10/tg35yCCX4y6h3Npa64WfPJXnsasq8MEP+6Y31k/S08FYyyyiMSWW0+5W
	Pcfg0/KdGSMRaTwh8oFWNnZvGq5E832BcRiiai6eMaV2sbjhdb8HoTZiwPYNvv3mFGNK8yfL0Zq5/
	YZ8KDkOhMwRFu/NHp8dlqf5ZJs2t3fOcp4BjFrcpEUruMXMpnFxgz21QuYLiaY/kVsISj7UqCdumj
	J8BQ4ZbL4BSRCAfOM8D3o9Wn/OBE1CRsHBOdZ6SbzAixpzGK61Nk6w8lIFtnzoExJOUWSUUb2GqRQ
	zP/J145wrRZ/mXphXcrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEhUb-0001kE-La; Wed, 18 Mar 2020 22:48:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEhUT-0001js-IS
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 22:48:46 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E7DC020752;
 Wed, 18 Mar 2020 22:48:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584571725;
 bh=sxbtUTf11iJytMzmHFkvIe4CnT3yrC6BYKS3V/0Z0Fk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jaM0G/5trMtdFkV2/vhMxNOFWaSGhrrs52HK2xDjUYl+JI3hUsWXm6CPYojhT/ldL
 j3jQDJn+SmUHKWEmCw8/fOnx7X2yRYKJ3RXUvmhvhVIUEaKPQzUP3rG1mL4eh2B5sb
 HN/0wISxOh2nwOxnShOj3pxzI9FpXy/K2iWAVTrY=
Date: Wed, 18 Mar 2020 22:48:40 +0000
From: Will Deacon <will@kernel.org>
To: Jordan Crouse <jcrouse@codeaurora.org>
Subject: Re: [PATCH v1 2/6] arm/smmu: Add auxiliary domain support for
 arm-smmuv2
Message-ID: <20200318224840.GA10796@willie-the-truck>
References: <1580249770-1088-1-git-send-email-jcrouse@codeaurora.org>
 <1580249770-1088-3-git-send-email-jcrouse@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1580249770-1088-3-git-send-email-jcrouse@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_154845_631694_9F3C978C 
X-CRM114-Status: GOOD (  16.88  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-msm@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 28, 2020 at 03:16:06PM -0700, Jordan Crouse wrote:
> Support auxiliary domains for arm-smmu-v2 to initialize and support
> multiple pagetables for a single SMMU context bank. Since the smmu-v2
> hardware doesn't have any built in support for switching the pagetable
> base it is left as an exercise to the caller to actually use the pagetable.
> 
> Aux domains are supported if split pagetable (TTBR1) support has been
> enabled on the master domain.  Each auxiliary domain will reuse the
> configuration of the master domain. By default the a domain with TTBR1
> support will have the TTBR0 region disabled so the first attached aux
> domain will enable the TTBR0 region in the hardware and conversely the
> last domain to be detached will disable TTBR0 translations.  All subsequent
> auxiliary domains create a pagetable but not touch the hardware.
> 
> The leaf driver will be able to query the physical address of the
> pagetable with the DOMAIN_ATTR_PTBASE attribute so that it can use the
> address with whatever means it has to switch the pagetable base.
> 
> Following is a pseudo code example of how a domain can be created
> 
>  /* Check to see if aux domains are supported */
>  if (iommu_dev_has_feature(dev, IOMMU_DEV_FEAT_AUX)) {
> 	 iommu = iommu_domain_alloc(...);
> 
> 	 if (iommu_aux_attach_device(domain, dev))
> 		 return FAIL;
> 
> 	/* Save the base address of the pagetable for use by the driver
> 	iommu_domain_get_attr(domain, DOMAIN_ATTR_PTBASE, &ptbase);
>  }

I'm not really understanding what the pagetable base gets used for here and,
to be honest with you, the whole thing feels like a huge layering violation
with the way things are structured today. Why doesn't the caller just
interface with io-pgtable directly?

Finally, if we need to support context-switching TTBR0 for a live domain
then that code really needs to live inside the SMMU driver because the
ASID and TLB management necessary to do that safely doesn't belong anywhere
else.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
