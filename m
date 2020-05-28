Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E34C1E566A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 07:21:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fALmxHVfy/9WEknRoCjf5tN8jwAdmqEBZ0pqZyeRiCE=; b=aMPAGWQodh4zux
	f46s5WeRckUOwb0pXTvFVHS1sB/HUlXll+4yDjGKEQNZwsw6Et7W4xTZLzVBMfIBRqmYtI5AJFpCC
	GIlecqDkan3C0LpyXITav3/mQqCDQ8jIPqGBT6QOWRGZiww5R7QdB6zGKDtDO78ESXqu4x+5fxMv/
	+O3cyGpcyTPFfqI0KzNuClHQLZy/CKXN9obMguhVsKEXO519Oe6Bm0AJMlrAP0NG4u0cyGzf2wByd
	hGFxK6sW8K0VLDWNI8p+zcRh64LZmpzcyKJwcfHqx2XfrfJXusvBIC+xOmyEt/sfVavhU3Gt5uKlK
	XKgzvhlk3sEGdyAuejNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeAyO-0004Sj-Pi; Thu, 28 May 2020 05:20:56 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeAt7-00062J-6e
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 05:15:38 +0000
Received: by mail-wm1-x343.google.com with SMTP id n5so1848380wmd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 22:15:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9ogbDNvgcnvbjK2u+CfCd7F7vOweOB0DcAaASJSQleM=;
 b=gK1Wa8QlQn0RzLYnPm0DOAuWIsb3ZgQVejc8of4HcZHM9bTmfb7ku5IuobyHBWLV+A
 4pfX2QFACm9JWcZbeVXnuhuEeCC7j9gvmyRWHbderhxw2Wo93egg9/eMdIOKPW2vJ+Hi
 sdBTJqihazq9u6DGx72wef17BzJOJywp3pC7M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9ogbDNvgcnvbjK2u+CfCd7F7vOweOB0DcAaASJSQleM=;
 b=CfedARcFDHVAZ0y1qS62/vvlMKqI59wQl1BTrKsoc6CuOn7UZlJ/tWdrFF6VqdqUZa
 BR+sIRGPkvIXPm+rLD7P15Nvw3dBGS/zuPJkec6zsTFlIn+WFLaiXRVzwAj5Y6FJWAUh
 dElv30IZPr5kRHBOU+qglMbIfmCpwLVx1cNoF3my+31/Lc4h3VEVfTRKbC5mVtVQhDD6
 UbvnkdoUQedgz+vu8/8phmK7oA1EXxk/7GU3JdCkgVrbt1HvuwEPMzhlHncsuYgCI8SN
 uC0nkKsvM5PKxdz5e4lMWEk94qMoOmpa3Avif+oQdjI1NOIPH4a1H79S697ngU1AX5OJ
 Kfyg==
X-Gm-Message-State: AOAM530uIrO5P7kG31cIlUYhK5IEWv1WFUer5ObDY/RwxaLMr8p7GQSE
 z+MUUyCj2KVV5PLWVGkuyl6NnuwN0uAJILVuIK3J2Q==
X-Google-Smtp-Source: ABdhPJyMEj45EPh84qpSCpk1vUfDmAAfVx6Q6El+wTjic65DGrkCvumgrm1PCn0JrZdJJegdiRkqrF1LAf1puxUo8xQ=
X-Received: by 2002:a1c:740e:: with SMTP id p14mr1592366wmc.155.1590642926688; 
 Wed, 27 May 2020 22:15:26 -0700 (PDT)
MIME-Version: 1.0
References: <1590595398-4217-1-git-send-email-srinath.mannam@broadcom.com>
 <f9b221cf-1c7f-9f95-133b-dca65197b6c2@arm.com>
In-Reply-To: <f9b221cf-1c7f-9f95-133b-dca65197b6c2@arm.com>
From: Srinath Mannam <srinath.mannam@broadcom.com>
Date: Thu, 28 May 2020 10:45:14 +0530
Message-ID: <CABe79T7WwD2AyWp2e5pAi8TO2r5=-v5gPb2Gjtf8EhHOn3dogQ@mail.gmail.com>
Subject: Re: [RFC PATCH] iommu/arm-smmu: Add module parameter to set msi iova
 address
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_221529_268673_9504BADD 
X-CRM114-Status: GOOD (  25.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Alex Williamson <alex.williamson@redhat.com>, Joerg Roedel <joro@8bytes.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Eric Auger <eric.auger@redhat.com>, iommu@lists.linux-foundation.org,
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 11:00 PM Robin Murphy <robin.murphy@arm.com> wrote:
>
Thanks Robin for your quick response.
> On 2020-05-27 17:03, Srinath Mannam wrote:
> > This patch gives the provision to change default value of MSI IOVA base
> > to platform's suitable IOVA using module parameter. The present
> > hardcoded MSI IOVA base may not be the accessible IOVA ranges of platform.
>
> That in itself doesn't seem entirely unreasonable; IIRC the current
> address is just an arbitrary choice to fit nicely into Qemu's memory
> map, and there was always the possibility that it wouldn't suit everything.
>
> > Since commit aadad097cd46 ("iommu/dma: Reserve IOVA for PCIe inaccessible
> > DMA address"), inaccessible IOVA address ranges parsed from dma-ranges
> > property are reserved.
>
> That, however, doesn't seem to fit here; iommu-dma maps MSI doorbells
> dynamically, so they aren't affected by reserved regions any more than
> regular DMA pages are. In fact, it explicitly ignores the software MSI
> region, since as the comment says, it *is* the software that manages those.
Yes you are right, we don't see any issues with kernel drivers(PCI EP) because
MSI IOVA allocated dynamically by honouring reserved regions same as DMA pages.
>
> The MSI_IOVA_BASE region exists for VFIO, precisely because in that case
> the kernel *doesn't* control the address space, but still needs some way
> to steal a bit of it for MSIs that the guest doesn't necessarily know
> about, and give userspace a fighting chance of knowing what it's taken.
> I think at the time we discussed the idea of adding something to the
> VFIO uapi such that userspace could move this around if it wanted or
> needed to, but decided we could live without that initially. Perhaps now
> the time has come?
Yes, we see issues only with user-space drivers(DPDK) in which MSI_IOVA_BASE
region is considered to map MSI registers. This patch helps us to fix the issue.

Thanks,
Srinath.
>
> Robin.
>
> > If any platform has the limitaion to access default MSI IOVA, then it can
> > be changed using "arm-smmu.msi_iova_base=0xa0000000" command line argument.
> >
> > Signed-off-by: Srinath Mannam <srinath.mannam@broadcom.com>
> > ---
> >   drivers/iommu/arm-smmu.c | 5 ++++-
> >   1 file changed, 4 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> > index 4f1a350..5e59c9d 100644
> > --- a/drivers/iommu/arm-smmu.c
> > +++ b/drivers/iommu/arm-smmu.c
> > @@ -72,6 +72,9 @@ static bool disable_bypass =
> >   module_param(disable_bypass, bool, S_IRUGO);
> >   MODULE_PARM_DESC(disable_bypass,
> >       "Disable bypass streams such that incoming transactions from devices that are not attached to an iommu domain will report an abort back to the device and will not be allowed to pass through the SMMU.");
> > +static unsigned long msi_iova_base = MSI_IOVA_BASE;
> > +module_param(msi_iova_base, ulong, S_IRUGO);
> > +MODULE_PARM_DESC(msi_iova_base, "msi iova base address.");
> >
> >   struct arm_smmu_s2cr {
> >       struct iommu_group              *group;
> > @@ -1566,7 +1569,7 @@ static void arm_smmu_get_resv_regions(struct device *dev,
> >       struct iommu_resv_region *region;
> >       int prot = IOMMU_WRITE | IOMMU_NOEXEC | IOMMU_MMIO;
> >
> > -     region = iommu_alloc_resv_region(MSI_IOVA_BASE, MSI_IOVA_LENGTH,
> > +     region = iommu_alloc_resv_region(msi_iova_base, MSI_IOVA_LENGTH,
> >                                        prot, IOMMU_RESV_SW_MSI);
> >       if (!region)
> >               return;
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
