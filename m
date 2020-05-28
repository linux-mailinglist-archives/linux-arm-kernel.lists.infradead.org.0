Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D431E5AFD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 10:39:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RKlm7ub/oYqB73Eq654HAZp0x4101wPdnfDAomUYsHc=; b=h2fcI4WqYsOlXs
	kfFHl9YqGDkntUkBCv4lxAZtiyWZcnwxqRozApT1WH3FxuLAAFOgQs1pDY81QCmjLN3IHTDbR7DwF
	RunqiSmXZ6ZFGp1FYfFqW6LnwvQhJKeH5A/KepdRcoJKUiNCelASEzSzB6lQcerQTnuSzbwTsbANB
	VXtUlfZFFca9YH4a58kqBEmfoebjFe2VSvKEfD8nWqcluw3+7eu4HQJ8bMUYgbWEM1r15+xr1GbnT
	o8XZCjDF1fEjl9cylCMcUYmtrAizsfX01JlrJ0vIzK1nD2f1NbYjfw1ZEQVdDVXnhNckxWtbvKigo
	1boHwCe3VAwmESmpEwcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeE4K-0008F6-KY; Thu, 28 May 2020 08:39:16 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeE49-0008Da-J4
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 08:39:07 +0000
Received: by mail-wm1-x344.google.com with SMTP id d128so1142086wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 01:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=YVkNlO8rWjI0H/buRx03yHhJ40oletHMhbdGkngmX0U=;
 b=GsCNBPNoC/NhrVuCzx9gpMv+W9gaKaX98tVY9sKPAP0z0eHQJG3ETMcWY8AnmIGF/s
 cNcbP7ItPaKM8kTRVYPal6ftk9RaU/3h09LilWQgVRtegLVoRs4tX24qyhnRupWqAZna
 X1ImFR6pCjpMR5Id9jAly/eXEgbqNXPH8crjj2/nd2C/inEgdQkv9Yk8vLYkDwykFU8x
 4DG76XIuQpBnHI2hEXDXnh49RSGT2d1a2t9IvpPLOD6UKYOkuF6SY190L80w1Nmx5NxH
 6r856JkQlwz1iub7xlLCGTNZIU+dakL4Mx7PgxLhyFysvqAXDQ2sVqMRB279lGnm3JdJ
 yrRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=YVkNlO8rWjI0H/buRx03yHhJ40oletHMhbdGkngmX0U=;
 b=Q3625rNvHyDpe/RCYrHqcKrVIa5KWcaSn96ajY5dFs/rQpfyCHMgnpdE8/hel9mTCe
 ixOrYuJzaXwjLJojyvVGtvWaYpylCOaimq23slqNPGDLuJzt/J6NF5Ph+Ku9pkc4MS74
 oOHqfbgqzZwnAHCu4X6bfBthokXbfvZzqL0phTIdb/RwAvNA+lWFKZgWxLLCDZGzSw+s
 ydXwT6aQbUEsdGMK8G3XJgh1M+vsiy02UPV0vrGEInaZKREAMKWVnPskVt5cJ5X5Q5Bv
 Knx18eAbMQ19AJvJzC4j1kwpPNd/bVn2cdI6nsxZo9xLF59eVF/E+eI48LSK6CDPF+5w
 2O8A==
X-Gm-Message-State: AOAM531OS2NCr7Bf6mEoqVi/wlr3Z1RTKDinZGNHMK+2y5sJrOw+81/d
 ooK0/PuF75TeAeio3CVgUqQgz5Dyw0w=
X-Google-Smtp-Source: ABdhPJyU7X/cmXGkIPgfpQ6GNgMM7uniNfPG9Z/DMTUwAuNSt7WsFrptBLq9l7pqlOvnMXJi1yWnQg==
X-Received: by 2002:a1c:3dd6:: with SMTP id k205mr1309305wma.87.1590655142697; 
 Thu, 28 May 2020 01:39:02 -0700 (PDT)
Received: from myrica ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id q4sm5775850wma.47.2020.05.28.01.39.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 01:39:02 -0700 (PDT)
Date: Thu, 28 May 2020 10:38:51 +0200
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Auger Eric <eric.auger@redhat.com>
Subject: Re: [RFC PATCH] iommu/arm-smmu: Add module parameter to set msi iova
 address
Message-ID: <20200528083851.GB414784@myrica>
References: <1590595398-4217-1-git-send-email-srinath.mannam@broadcom.com>
 <f9b221cf-1c7f-9f95-133b-dca65197b6c2@arm.com>
 <CABe79T7WwD2AyWp2e5pAi8TO2r5=-v5gPb2Gjtf8EhHOn3dogQ@mail.gmail.com>
 <20200528072308.GA414784@myrica>
 <527f25a4-ca5a-10da-150f-0b4ea3839635@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <527f25a4-ca5a-10da-150f-0b4ea3839635@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_013905_632197_45324B7D 
X-CRM114-Status: GOOD (  34.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 iommu@lists.linux-foundation.org, shameerali.kolothum.thodi@huawei.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Alex Williamson <alex.williamson@redhat.com>,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[+ Shameer]

On Thu, May 28, 2020 at 09:43:46AM +0200, Auger Eric wrote:
> Hi,
> 
> On 5/28/20 9:23 AM, Jean-Philippe Brucker wrote:
> > On Thu, May 28, 2020 at 10:45:14AM +0530, Srinath Mannam wrote:
> >> On Wed, May 27, 2020 at 11:00 PM Robin Murphy <robin.murphy@arm.com> wrote:
> >>>
> >> Thanks Robin for your quick response.
> >>> On 2020-05-27 17:03, Srinath Mannam wrote:
> >>>> This patch gives the provision to change default value of MSI IOVA base
> >>>> to platform's suitable IOVA using module parameter. The present
> >>>> hardcoded MSI IOVA base may not be the accessible IOVA ranges of platform.
> >>>
> >>> That in itself doesn't seem entirely unreasonable; IIRC the current
> >>> address is just an arbitrary choice to fit nicely into Qemu's memory
> >>> map, and there was always the possibility that it wouldn't suit everything.
> >>>
> >>>> Since commit aadad097cd46 ("iommu/dma: Reserve IOVA for PCIe inaccessible
> >>>> DMA address"), inaccessible IOVA address ranges parsed from dma-ranges
> >>>> property are reserved.
> > 
> > I don't understand why we only reserve the PCIe windows for DMA domains.
> > Shouldn't VFIO also prevent userspace from mapping them?
> 
> VFIO prevents userspace from DMA mapping iovas within reserved regions:
> 9b77e5c79840  vfio/type1: check dma map request is within a valid iova range

Right but I was asking specifically about the IOVA reservation introduced
by commit aadad097cd46. They are not registered as reserved regions within
the IOMMU core, they are only taken into account by dma-iommu.c when
creating a DMA domain. As VFIO uses UNMANAGED domains, it isn't aware of
those regions and they won't be seen by vfio_iommu_resv_exclude().

It looks like the PCIe regions used to be common until cd2c9fcf5c66
("iommu/dma: Move PCI window region reservation back into dma specific
path.") But I couldn't find the justification for this commit.

The thing is, if VFIO isn't aware of the reserved PCIe windows, then
allowing VFIO or userspace to choose MSI_IOVA_BASE won't solve the problem
reported by Srinath, because they could well choose an IOVA within the
PCIe window...

Thanks,
Jean

> but it does not prevent the SW MSI region chosen by the kernel from
> colliding with other reserved regions (esp. PCIe host bridge windows).
> 
>   If they were
> > part of the common reserved regions then we could have VFIO choose a
> > SW_MSI region among the remaining free space.
> As Robin said this was the initial chosen approach
> [PATCH 10/10] vfio: allow the user to register reserved iova range for
> MSI mapping
> https://patchwork.kernel.org/patch/8121641/
> 
> Some additional background about why the static SW MSI region chosen by
> the kernel was later chosen:
> Summary of LPC guest MSI discussion in Santa Fe (was: Re: [RFC 0/8] KVM
> PCIe/MSI passthrough on ARM/ARM64 (Alt II))
> https://lists.linuxfoundation.org/pipermail/iommu/2016-November/019060.html
> 
> Thanks
> 
> Eric
> 
> 
>  It would just need a
> > different way of asking the IOMMU driver if a SW_MSI is needed, for
> > example with a domain attribute.
> > 
> > Thanks,
> > Jean
> > 
> >>>
> >>> That, however, doesn't seem to fit here; iommu-dma maps MSI doorbells
> >>> dynamically, so they aren't affected by reserved regions any more than
> >>> regular DMA pages are. In fact, it explicitly ignores the software MSI
> >>> region, since as the comment says, it *is* the software that manages those.
> >> Yes you are right, we don't see any issues with kernel drivers(PCI EP) because
> >> MSI IOVA allocated dynamically by honouring reserved regions same as DMA pages.
> >>>
> >>> The MSI_IOVA_BASE region exists for VFIO, precisely because in that case
> >>> the kernel *doesn't* control the address space, but still needs some way
> >>> to steal a bit of it for MSIs that the guest doesn't necessarily know
> >>> about, and give userspace a fighting chance of knowing what it's taken.
> >>> I think at the time we discussed the idea of adding something to the
> >>> VFIO uapi such that userspace could move this around if it wanted or
> >>> needed to, but decided we could live without that initially. Perhaps now
> >>> the time has come?
> >> Yes, we see issues only with user-space drivers(DPDK) in which MSI_IOVA_BASE
> >> region is considered to map MSI registers. This patch helps us to fix the issue.
> >>
> >> Thanks,
> >> Srinath.
> >>>
> >>> Robin.
> >>>
> >>>> If any platform has the limitaion to access default MSI IOVA, then it can
> >>>> be changed using "arm-smmu.msi_iova_base=0xa0000000" command line argument.
> >>>>
> >>>> Signed-off-by: Srinath Mannam <srinath.mannam@broadcom.com>
> >>>> ---
> >>>>   drivers/iommu/arm-smmu.c | 5 ++++-
> >>>>   1 file changed, 4 insertions(+), 1 deletion(-)
> >>>>
> >>>> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> >>>> index 4f1a350..5e59c9d 100644
> >>>> --- a/drivers/iommu/arm-smmu.c
> >>>> +++ b/drivers/iommu/arm-smmu.c
> >>>> @@ -72,6 +72,9 @@ static bool disable_bypass =
> >>>>   module_param(disable_bypass, bool, S_IRUGO);
> >>>>   MODULE_PARM_DESC(disable_bypass,
> >>>>       "Disable bypass streams such that incoming transactions from devices that are not attached to an iommu domain will report an abort back to the device and will not be allowed to pass through the SMMU.");
> >>>> +static unsigned long msi_iova_base = MSI_IOVA_BASE;
> >>>> +module_param(msi_iova_base, ulong, S_IRUGO);
> >>>> +MODULE_PARM_DESC(msi_iova_base, "msi iova base address.");
> >>>>
> >>>>   struct arm_smmu_s2cr {
> >>>>       struct iommu_group              *group;
> >>>> @@ -1566,7 +1569,7 @@ static void arm_smmu_get_resv_regions(struct device *dev,
> >>>>       struct iommu_resv_region *region;
> >>>>       int prot = IOMMU_WRITE | IOMMU_NOEXEC | IOMMU_MMIO;
> >>>>
> >>>> -     region = iommu_alloc_resv_region(MSI_IOVA_BASE, MSI_IOVA_LENGTH,
> >>>> +     region = iommu_alloc_resv_region(msi_iova_base, MSI_IOVA_LENGTH,
> >>>>                                        prot, IOMMU_RESV_SW_MSI);
> >>>>       if (!region)
> >>>>               return;
> >>>>
> > 
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> > 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
