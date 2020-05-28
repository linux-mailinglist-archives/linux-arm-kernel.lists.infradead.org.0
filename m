Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD401E604C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 14:10:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RlA8yXl4YKW3fkTwK+SmJz2NRRN5lwVqW5BWOiTBTAQ=; b=Ak8Qh4cJutZf20
	gMmZlvLcZcYMIP1xSjjMy7c6dsbjRePdXlQK0CKuAURsSsUrug6IgNFp9VJihPpDeOAk0Tr5Njzqm
	uac7zgWGr4mXXpgl/6QTQ+v3f9iJpbVyEgU1TGM4K791w7EVIzRZoxs4TQDq1vGQCN15NJtD54DJA
	H54IKRf42TAO+fjh9B+1FP7mkWxo+PJhNAQBFDz955RX33qjZ4rERaexhueCfE9uZpWfbWkvckI69
	k+jLPPWipK+JRwSLAmlJbzzld4Ogz0r0pUwSQ2FNq8M7vMLarBhpGgRUPLc+M2tEwCPvPdfDPPHyL
	SvbwOVENysOh4LZXSVOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeHMc-0004TU-Kd; Thu, 28 May 2020 12:10:22 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeHMH-0003rp-1K
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 12:10:04 +0000
Received: from lhreml712-chm.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id C2851AA07490F451AB92;
 Thu, 28 May 2020 13:09:51 +0100 (IST)
Received: from lhreml710-chm.china.huawei.com (10.201.108.61) by
 lhreml712-chm.china.huawei.com (10.201.108.63) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1913.5; Thu, 28 May 2020 13:09:51 +0100
Received: from lhreml710-chm.china.huawei.com ([169.254.81.184]) by
 lhreml710-chm.china.huawei.com ([169.254.81.184]) with mapi id
 15.01.1913.007; Thu, 28 May 2020 13:09:51 +0100
From: Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>
To: Auger Eric <eric.auger@redhat.com>, Jean-Philippe Brucker
 <jean-philippe@linaro.org>
Subject: RE: [RFC PATCH] iommu/arm-smmu: Add module parameter to set msi iova
 address
Thread-Topic: [RFC PATCH] iommu/arm-smmu: Add module parameter to set msi iova
 address
Thread-Index: AQHWNEClbcZZxLYw10iKbWYLL5/D/ai8H7KAgADE+ACAACO8AIAABcQAgAAPZICAAAQfAIAAFMbQgAAcBICAABGJwA==
Date: Thu, 28 May 2020 12:09:51 +0000
Message-ID: <f62731300adc4def97418f0bc2f5010e@huawei.com>
References: <1590595398-4217-1-git-send-email-srinath.mannam@broadcom.com>
 <f9b221cf-1c7f-9f95-133b-dca65197b6c2@arm.com>
 <CABe79T7WwD2AyWp2e5pAi8TO2r5=-v5gPb2Gjtf8EhHOn3dogQ@mail.gmail.com>
 <20200528072308.GA414784@myrica>
 <527f25a4-ca5a-10da-150f-0b4ea3839635@redhat.com>
 <20200528083851.GB414784@myrica>
 <0076d965-b180-fc44-103c-9bc9d73fe7f2@redhat.com>
 <25ad278ae9ed4833aeb7b625fcb89d88@huawei.com>
 <9aeb1cd5-48de-f581-1212-5c7b95fd8338@redhat.com>
In-Reply-To: <9aeb1cd5-48de-f581-1212-5c7b95fd8338@redhat.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.47.88.123]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_051001_376278_E123BA75 
X-CRM114-Status: GOOD (  37.03  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [185.176.76.210 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Will Deacon <will@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>, Linux
 Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Alex Williamson <alex.williamson@redhat.com>,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Auger Eric [mailto:eric.auger@redhat.com]
> Sent: 28 May 2020 12:48
> To: Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>;
> Jean-Philippe Brucker <jean-philippe@linaro.org>
> Cc: Robin Murphy <robin.murphy@arm.com>; Joerg Roedel
> <joro@8bytes.org>; iommu@lists.linux-foundation.org; Linux Kernel Mailing
> List <linux-kernel@vger.kernel.org>; Alex Williamson
> <alex.williamson@redhat.com>; Srinath Mannam
> <srinath.mannam@broadcom.com>; BCM Kernel Feedback
> <bcm-kernel-feedback-list@broadcom.com>; Will Deacon <will@kernel.org>;
> Linux ARM <linux-arm-kernel@lists.infradead.org>
> Subject: Re: [RFC PATCH] iommu/arm-smmu: Add module parameter to set msi
> iova address
> 
> 
> 
> On 5/28/20 11:15 AM, Shameerali Kolothum Thodi wrote:
> >
> >
> >> -----Original Message-----
> >> From: Auger Eric [mailto:eric.auger@redhat.com]
> >> Sent: 28 May 2020 09:54
> >> To: Jean-Philippe Brucker <jean-philippe@linaro.org>
> >> Cc: Will Deacon <will@kernel.org>; Joerg Roedel <joro@8bytes.org>;
> >> iommu@lists.linux-foundation.org; Shameerali Kolothum Thodi
> >> <shameerali.kolothum.thodi@huawei.com>; Linux Kernel Mailing List
> >> <linux-kernel@vger.kernel.org>; Alex Williamson
> >> <alex.williamson@redhat.com>; Srinath Mannam
> >> <srinath.mannam@broadcom.com>; BCM Kernel Feedback
> >> <bcm-kernel-feedback-list@broadcom.com>; Robin Murphy
> >> <robin.murphy@arm.com>; Linux ARM
> <linux-arm-kernel@lists.infradead.org>
> >> Subject: Re: [RFC PATCH] iommu/arm-smmu: Add module parameter to set
> msi
> >> iova address
> >>
> >> Hi,
> >>
> >> On 5/28/20 10:38 AM, Jean-Philippe Brucker wrote:
> >>> [+ Shameer]
> >>>
> >>> On Thu, May 28, 2020 at 09:43:46AM +0200, Auger Eric wrote:
> >>>> Hi,
> >>>>
> >>>> On 5/28/20 9:23 AM, Jean-Philippe Brucker wrote:
> >>>>> On Thu, May 28, 2020 at 10:45:14AM +0530, Srinath Mannam wrote:
> >>>>>> On Wed, May 27, 2020 at 11:00 PM Robin Murphy
> >> <robin.murphy@arm.com> wrote:
> >>>>>>>
> >>>>>> Thanks Robin for your quick response.
> >>>>>>> On 2020-05-27 17:03, Srinath Mannam wrote:
> >>>>>>>> This patch gives the provision to change default value of MSI IOVA
> base
> >>>>>>>> to platform's suitable IOVA using module parameter. The present
> >>>>>>>> hardcoded MSI IOVA base may not be the accessible IOVA ranges of
> >> platform.
> >>>>>>>
> >>>>>>> That in itself doesn't seem entirely unreasonable; IIRC the current
> >>>>>>> address is just an arbitrary choice to fit nicely into Qemu's memory
> >>>>>>> map, and there was always the possibility that it wouldn't suit
> >> everything.
> >>>>>>>
> >>>>>>>> Since commit aadad097cd46 ("iommu/dma: Reserve IOVA for PCIe
> >> inaccessible
> >>>>>>>> DMA address"), inaccessible IOVA address ranges parsed from
> >> dma-ranges
> >>>>>>>> property are reserved.
> >>>>>
> >>>>> I don't understand why we only reserve the PCIe windows for DMA
> >> domains.
> >>>>> Shouldn't VFIO also prevent userspace from mapping them?
> >>>>
> >>>> VFIO prevents userspace from DMA mapping iovas within reserved
> regions:
> >>>> 9b77e5c79840  vfio/type1: check dma map request is within a valid iova
> >> range
> >>>
> >>> Right but I was asking specifically about the IOVA reservation introduced
> >>> by commit aadad097cd46. They are not registered as reserved regions
> within
> >>> the IOMMU core, they are only taken into account by dma-iommu.c when
> >>> creating a DMA domain. As VFIO uses UNMANAGED domains, it isn't
> aware
> >> of
> >>> those regions and they won't be seen by vfio_iommu_resv_exclude().
> >>>
> >>> It looks like the PCIe regions used to be common until cd2c9fcf5c66
> >>> ("iommu/dma: Move PCI window region reservation back into dma specific
> >>> path.") But I couldn't find the justification for this commit.
> >>
> >> Yes I noticed that as well when debugging the above mentioned case
> >> before and after cd2c9fcf5c66. I do not remember about the rationale of
> >> removing the DMA host brige windows from the resv regions. Did it break
> >> a legacy case?
> >>>
> >
> > I think yes. And going through the ML discussions, this was done so because
> with the
> > " vfio/type1: Add support for valid iova list management" series you reported
> > an issue with Seattle platform. See the full discussion here,
> >
> > https://lore.kernel.org/patchwork/patch/889012/
> 
> Hey thank you for reminding me of the Seattle case :-) Now I also recall
> that, if I am not wrong, this also caused some trouble on some x86
> platforms as well, reported by Alex? 

True, Alex reported that VT-d RMRR ranges were causing issues[1] as well.
And then you came with IOMMU_RESV_DIRECT_RELAXABLE regions
to exclude those[2]

Maybe we should still report PCI
> host bridge windows in the reserved regions, if possible/feasible tag
> them differently from other reserved regions and not reject any VFIO
> DMA_MAP colliding with them?

I guess that is possible. But current interface is to report the regions that are safe
from a IOMMU transaction point of view and I am not sure PCI window regions 
comes under that.

Thanks,
Shameer

1. https://lkml.org/lkml/2018/6/5/760
2. https://lore.kernel.org/patchwork/cover/1083072/

> Thanks
> 
> Eric
> >
> > Cheers,
> > Shameer
> >
> >>> The thing is, if VFIO isn't aware of the reserved PCIe windows, then
> >>> allowing VFIO or userspace to choose MSI_IOVA_BASE won't solve the
> >> problem
> >>> reported by Srinath, because they could well choose an IOVA within the
> >>> PCIe window...
> >> I agree with you
> >>
> >> Thanks
> >>
> >> Eric
> >>>
> >>> Thanks,
> >>> Jean
> >>>
> >>>> but it does not prevent the SW MSI region chosen by the kernel from
> >>>> colliding with other reserved regions (esp. PCIe host bridge windows).
> >>>>
> >>>>   If they were
> >>>>> part of the common reserved regions then we could have VFIO choose a
> >>>>> SW_MSI region among the remaining free space.
> >>>> As Robin said this was the initial chosen approach
> >>>> [PATCH 10/10] vfio: allow the user to register reserved iova range for
> >>>> MSI mapping
> >>>> https://patchwork.kernel.org/patch/8121641/
> >>>>
> >>>> Some additional background about why the static SW MSI region chosen
> by
> >>>> the kernel was later chosen:
> >>>> Summary of LPC guest MSI discussion in Santa Fe (was: Re: [RFC 0/8] KVM
> >>>> PCIe/MSI passthrough on ARM/ARM64 (Alt II))
> >>>>
> >>
> https://lists.linuxfoundation.org/pipermail/iommu/2016-November/019060.ht
> >> ml
> >>>>
> >>>> Thanks
> >>>>
> >>>> Eric
> >>>>
> >>>>
> >>>>  It would just need a
> >>>>> different way of asking the IOMMU driver if a SW_MSI is needed, for
> >>>>> example with a domain attribute.
> >>>>>
> >>>>> Thanks,
> >>>>> Jean
> >>>>>
> >>>>>>>
> >>>>>>> That, however, doesn't seem to fit here; iommu-dma maps MSI
> >> doorbells
> >>>>>>> dynamically, so they aren't affected by reserved regions any more
> than
> >>>>>>> regular DMA pages are. In fact, it explicitly ignores the software MSI
> >>>>>>> region, since as the comment says, it *is* the software that manages
> >> those.
> >>>>>> Yes you are right, we don't see any issues with kernel drivers(PCI EP)
> >> because
> >>>>>> MSI IOVA allocated dynamically by honouring reserved regions same as
> >> DMA pages.
> >>>>>>>
> >>>>>>> The MSI_IOVA_BASE region exists for VFIO, precisely because in that
> >> case
> >>>>>>> the kernel *doesn't* control the address space, but still needs some
> way
> >>>>>>> to steal a bit of it for MSIs that the guest doesn't necessarily know
> >>>>>>> about, and give userspace a fighting chance of knowing what it's
> taken.
> >>>>>>> I think at the time we discussed the idea of adding something to the
> >>>>>>> VFIO uapi such that userspace could move this around if it wanted or
> >>>>>>> needed to, but decided we could live without that initially. Perhaps
> now
> >>>>>>> the time has come?
> >>>>>> Yes, we see issues only with user-space drivers(DPDK) in which
> >> MSI_IOVA_BASE
> >>>>>> region is considered to map MSI registers. This patch helps us to fix the
> >> issue.
> >>>>>>
> >>>>>> Thanks,
> >>>>>> Srinath.
> >>>>>>>
> >>>>>>> Robin.
> >>>>>>>
> >>>>>>>> If any platform has the limitaion to access default MSI IOVA, then it
> can
> >>>>>>>> be changed using "arm-smmu.msi_iova_base=0xa0000000"
> command
> >> line argument.
> >>>>>>>>
> >>>>>>>> Signed-off-by: Srinath Mannam <srinath.mannam@broadcom.com>
> >>>>>>>> ---
> >>>>>>>>   drivers/iommu/arm-smmu.c | 5 ++++-
> >>>>>>>>   1 file changed, 4 insertions(+), 1 deletion(-)
> >>>>>>>>
> >>>>>>>> diff --git a/drivers/iommu/arm-smmu.c
> b/drivers/iommu/arm-smmu.c
> >>>>>>>> index 4f1a350..5e59c9d 100644
> >>>>>>>> --- a/drivers/iommu/arm-smmu.c
> >>>>>>>> +++ b/drivers/iommu/arm-smmu.c
> >>>>>>>> @@ -72,6 +72,9 @@ static bool disable_bypass =
> >>>>>>>>   module_param(disable_bypass, bool, S_IRUGO);
> >>>>>>>>   MODULE_PARM_DESC(disable_bypass,
> >>>>>>>>       "Disable bypass streams such that incoming transactions
> from
> >> devices that are not attached to an iommu domain will report an abort back
> to
> >> the device and will not be allowed to pass through the SMMU.");
> >>>>>>>> +static unsigned long msi_iova_base = MSI_IOVA_BASE;
> >>>>>>>> +module_param(msi_iova_base, ulong, S_IRUGO);
> >>>>>>>> +MODULE_PARM_DESC(msi_iova_base, "msi iova base address.");
> >>>>>>>>
> >>>>>>>>   struct arm_smmu_s2cr {
> >>>>>>>>       struct iommu_group              *group;
> >>>>>>>> @@ -1566,7 +1569,7 @@ static void
> >> arm_smmu_get_resv_regions(struct device *dev,
> >>>>>>>>       struct iommu_resv_region *region;
> >>>>>>>>       int prot = IOMMU_WRITE | IOMMU_NOEXEC |
> >> IOMMU_MMIO;
> >>>>>>>>
> >>>>>>>> -     region = iommu_alloc_resv_region(MSI_IOVA_BASE,
> >> MSI_IOVA_LENGTH,
> >>>>>>>> +     region = iommu_alloc_resv_region(msi_iova_base,
> >> MSI_IOVA_LENGTH,
> >>>>>>>>                                        prot,
> >> IOMMU_RESV_SW_MSI);
> >>>>>>>>       if (!region)
> >>>>>>>>               return;
> >>>>>>>>
> >>>>>
> >>>>> _______________________________________________
> >>>>> linux-arm-kernel mailing list
> >>>>> linux-arm-kernel@lists.infradead.org
> >>>>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> >>>>>
> >>>>
> >>>
> >>> _______________________________________________
> >>> linux-arm-kernel mailing list
> >>> linux-arm-kernel@lists.infradead.org
> >>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> >>>
> >
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
