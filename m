Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 901911E5871
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 09:23:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5xukjrL78rGKW4opOOTkmETsprl/agAyLYvr7trDPdU=; b=a/FYnX9i/uu7yC
	udD061mSzPyzTFpkhiUpAcyJhASvSu8ECFTMiz39z0OADZ1rgpeYQJRGpYJAJ0dscd5VkTgMouKRb
	AAGJAOGlDTgw6kX+NZispbXMitucjwfM3TsJ0InogfRVAbj0AqsFCMgEv6bYFaOVqlovAzhjqDcvy
	Dtun2EAaLQLmSn4IT7VowJwanHYelkVCSbkBM00CSHfKDk7WQ4+LJgSauS0p5Z6qADz9GzgyTUgK9
	/oCtl44FbAYwKT4z0g2VdPvvSjVsK4/do/5Ou31T8v5hr2yWQi/NJ1oxiwaiOEC7skdXSLL11P4LB
	sdUZBoUVlQ/NUukeIKGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeCt5-0007aQ-GF; Thu, 28 May 2020 07:23:35 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeCsq-0007YD-O1
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 07:23:23 +0000
Received: by mail-wr1-x442.google.com with SMTP id x14so21396892wrp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 00:23:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=InMY+h5ju9g703H9YoEbGSFTkbcU+ukgyE+S56GkWPQ=;
 b=InkK/rSxsKaXdelob3M9cLlDBs0rBgXO01aMVn+eolm1ZVjzSM/VFqFf0BEklasJ/r
 GhCYSaB7q6gUmorWkhp7TKZJWqFYVTgS6U9J4RREm6EqNDN3fyDSdJwGebDOdSZ1Ohx9
 U8xQ4T0y5f2immgl9HESQWs6lGorq59FvI9mf7psfXQ4yXdvyBwsygNgnJcnOQgwwu4X
 HAXlYvBmywIc4RPS3wu2xVkQjUFpyyWnqnTVHxPL1kys/V/pNFZasZ9CY8hWpBaNaU26
 n7MHfb4aMwxtUKNWuWc+6WFRvIOND8W9m+ZUUs8uH7lqLZIBp6P6c1rJrn9kXp6n0Dsi
 g5kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=InMY+h5ju9g703H9YoEbGSFTkbcU+ukgyE+S56GkWPQ=;
 b=iC+c1uAOhw9Ngi6QmIqmAbdYOeSpRIP8W5xreKn+DmqCVFsD6veYUpJEF/CtSU4QRz
 41s4izWhc0M9MH0P2bX9zX+ROP2Y/+dDSC3f7xp+s0nKfmeK17JTU+ssfuIrOHkg/rcE
 sH9/HOhrhsw4BjoHhnS3sk0A0TYzDVS1nOlQNIYJz31kFmUNyLBRWZpdgbq2+gV5EhSm
 EroAYser5LLMPTZenm44XDhUKYmirSMjibhbGH/TQaeCYnu6s6/R+J8XA6fQVPywmkR6
 c3qkE7jAxIAQgHw6meGlxZbu+tRJD+uPb1QUcEFL+PZ9W7cxphOm1HEkkOm5V5ouClRE
 LmbQ==
X-Gm-Message-State: AOAM532SYS8zbN7OaaN/YQp3hzaaHTiWNA97WIi/ty9Pv/io4ZkcwkIj
 pzIz8pL96YG8iBPSGTlvLr3Org==
X-Google-Smtp-Source: ABdhPJzbxhctxMitxiFf0Xa9UQ0ZNCLBt5Yq1k8xkh8j+rzSxQW9LrEIGrMpovuh+jBZfCOXmELMRg==
X-Received: by 2002:adf:c391:: with SMTP id p17mr2036035wrf.243.1590650598769; 
 Thu, 28 May 2020 00:23:18 -0700 (PDT)
Received: from myrica ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id j18sm5243997wrn.59.2020.05.28.00.23.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 00:23:18 -0700 (PDT)
Date: Thu, 28 May 2020 09:23:08 +0200
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Srinath Mannam <srinath.mannam@broadcom.com>
Subject: Re: [RFC PATCH] iommu/arm-smmu: Add module parameter to set msi iova
 address
Message-ID: <20200528072308.GA414784@myrica>
References: <1590595398-4217-1-git-send-email-srinath.mannam@broadcom.com>
 <f9b221cf-1c7f-9f95-133b-dca65197b6c2@arm.com>
 <CABe79T7WwD2AyWp2e5pAi8TO2r5=-v5gPb2Gjtf8EhHOn3dogQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABe79T7WwD2AyWp2e5pAi8TO2r5=-v5gPb2Gjtf8EhHOn3dogQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_002320_818834_F6D9F2F9 
X-CRM114-Status: GOOD (  30.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alex Williamson <alex.williamson@redhat.com>,
 Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Eric Auger <eric.auger@redhat.com>, iommu@lists.linux-foundation.org,
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 28, 2020 at 10:45:14AM +0530, Srinath Mannam wrote:
> On Wed, May 27, 2020 at 11:00 PM Robin Murphy <robin.murphy@arm.com> wrote:
> >
> Thanks Robin for your quick response.
> > On 2020-05-27 17:03, Srinath Mannam wrote:
> > > This patch gives the provision to change default value of MSI IOVA base
> > > to platform's suitable IOVA using module parameter. The present
> > > hardcoded MSI IOVA base may not be the accessible IOVA ranges of platform.
> >
> > That in itself doesn't seem entirely unreasonable; IIRC the current
> > address is just an arbitrary choice to fit nicely into Qemu's memory
> > map, and there was always the possibility that it wouldn't suit everything.
> >
> > > Since commit aadad097cd46 ("iommu/dma: Reserve IOVA for PCIe inaccessible
> > > DMA address"), inaccessible IOVA address ranges parsed from dma-ranges
> > > property are reserved.

I don't understand why we only reserve the PCIe windows for DMA domains.
Shouldn't VFIO also prevent userspace from mapping them?  If they were
part of the common reserved regions then we could have VFIO choose a
SW_MSI region among the remaining free space. It would just need a
different way of asking the IOMMU driver if a SW_MSI is needed, for
example with a domain attribute.

Thanks,
Jean

> >
> > That, however, doesn't seem to fit here; iommu-dma maps MSI doorbells
> > dynamically, so they aren't affected by reserved regions any more than
> > regular DMA pages are. In fact, it explicitly ignores the software MSI
> > region, since as the comment says, it *is* the software that manages those.
> Yes you are right, we don't see any issues with kernel drivers(PCI EP) because
> MSI IOVA allocated dynamically by honouring reserved regions same as DMA pages.
> >
> > The MSI_IOVA_BASE region exists for VFIO, precisely because in that case
> > the kernel *doesn't* control the address space, but still needs some way
> > to steal a bit of it for MSIs that the guest doesn't necessarily know
> > about, and give userspace a fighting chance of knowing what it's taken.
> > I think at the time we discussed the idea of adding something to the
> > VFIO uapi such that userspace could move this around if it wanted or
> > needed to, but decided we could live without that initially. Perhaps now
> > the time has come?
> Yes, we see issues only with user-space drivers(DPDK) in which MSI_IOVA_BASE
> region is considered to map MSI registers. This patch helps us to fix the issue.
> 
> Thanks,
> Srinath.
> >
> > Robin.
> >
> > > If any platform has the limitaion to access default MSI IOVA, then it can
> > > be changed using "arm-smmu.msi_iova_base=0xa0000000" command line argument.
> > >
> > > Signed-off-by: Srinath Mannam <srinath.mannam@broadcom.com>
> > > ---
> > >   drivers/iommu/arm-smmu.c | 5 ++++-
> > >   1 file changed, 4 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> > > index 4f1a350..5e59c9d 100644
> > > --- a/drivers/iommu/arm-smmu.c
> > > +++ b/drivers/iommu/arm-smmu.c
> > > @@ -72,6 +72,9 @@ static bool disable_bypass =
> > >   module_param(disable_bypass, bool, S_IRUGO);
> > >   MODULE_PARM_DESC(disable_bypass,
> > >       "Disable bypass streams such that incoming transactions from devices that are not attached to an iommu domain will report an abort back to the device and will not be allowed to pass through the SMMU.");
> > > +static unsigned long msi_iova_base = MSI_IOVA_BASE;
> > > +module_param(msi_iova_base, ulong, S_IRUGO);
> > > +MODULE_PARM_DESC(msi_iova_base, "msi iova base address.");
> > >
> > >   struct arm_smmu_s2cr {
> > >       struct iommu_group              *group;
> > > @@ -1566,7 +1569,7 @@ static void arm_smmu_get_resv_regions(struct device *dev,
> > >       struct iommu_resv_region *region;
> > >       int prot = IOMMU_WRITE | IOMMU_NOEXEC | IOMMU_MMIO;
> > >
> > > -     region = iommu_alloc_resv_region(MSI_IOVA_BASE, MSI_IOVA_LENGTH,
> > > +     region = iommu_alloc_resv_region(msi_iova_base, MSI_IOVA_LENGTH,
> > >                                        prot, IOMMU_RESV_SW_MSI);
> > >       if (!region)
> > >               return;
> > >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
