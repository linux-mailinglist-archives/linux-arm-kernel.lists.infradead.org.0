Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9463F14145
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 May 2019 19:03:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R95qXp8/NNg8S95BEH9UDj/ZEFEbkfMsHjuPNxIaPYw=; b=nwDPCOqFU9OXBC
	CNMBexTB+MpZHCSk57jb5WJ6/Y0AapGwChlYWLPnFn1R04XP3PRelyqJ7g4WrQ0ULj5NiODX6IJUS
	e7HqTG3qY3Tz+2RYK4OMronW4bCXniOY5/u1ZzsnNPUHaLQ9TFTRqHDFZNRQGMNbZf+NFwgdAbonN
	wJ0FIhCjLs1vd2XsdAB2CDoy9bKlFXr3fEu0bmH2v7sPQ4FC5vM1KqUwOoVH/y8yiJlU3UPNHzdF9
	7VG5qCWNtngxkfvYbW7YgK0g9be5AQ6+tRKGG2MKbgXhF7xoC/hqQn4uZreeyXBESp3RxtZq7HOHW
	C1jnYfDkjyrD9Er3zt0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNKXt-0006XA-9f; Sun, 05 May 2019 17:03:25 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNKXl-0006Vw-UZ
 for linux-arm-kernel@lists.infradead.org; Sun, 05 May 2019 17:03:19 +0000
Received: by mail-wr1-x441.google.com with SMTP id h4so14220339wre.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 May 2019 10:03:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=S14+Saw50db8S99Z7u2shrBLJtQSP1RkJXIAVw5pLBQ=;
 b=jugLcBXRtPNuiKygehBn3dRh5gv2O3n+6CZdR9c0ZkktI0CvjyoksEeeH2FfA1Q8xH
 SqTElONPKWQBKsU0uJQu8/4wptVHk0j3GxZWG+CA0HjhrepIVFXHP29zNbjhuDeaonnN
 97d3CBboz5W+phNi8nRbOR+m5GoULw/MmeCEZ5EltfZbRHRsDTLjuCw4WWTkYy3yUqZI
 EIDwHmihhNOllL5cqFRBllZpxOUcacxfDAaI+HPZMWZaZhGbjI2/tay2jJLP/i4RqR4o
 vlUd0iNLLI5u8lL4HvT+QCdV2M59SHV6zxPaQcTE1z1/Kw5EFI5DZr9zemt+AgWD44KI
 OF3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=S14+Saw50db8S99Z7u2shrBLJtQSP1RkJXIAVw5pLBQ=;
 b=C0+n7Oabwi16+TWyQcrnEVSswkom43sO1G3z2XbRo3UsGjZ4ynRAd+1H9/yvaM+nYx
 4luJo9n54FUHwA5UeWC1EbyW8gdscQXkZYw231BgjbNbtXuX4iPBaMqyZ56O4Fp4Z7Hv
 4PswfLaSsC/Szv993EZqIqlhssUho6NQ4P64IaXraImvtWfQm1S3E/bAw86nDK8KLziP
 Ack/+EQTGmmsmEGT9N8YnSB7JnWij1vdSAkDYcFyoRw1hdWnYYoB8zlL+7Un0nlGf2vN
 U4Tlq0a5hv6AOpbfxsSh2JmcU37y+H6ePylq03McabuUrJNFzI2uBv/yj1d6qAN7INZR
 p58Q==
X-Gm-Message-State: APjAAAWucoRJjzim3Tx9rNYBrjHstNRPuT1Qxed9BmMtzUyJKDHki5ZH
 8AXSspNYwTD2Md6XmKNomxRzZwvOdRNgnKK2e/HKOw==
X-Google-Smtp-Source: APXvYqwrz/neemWb9vnz/FkpTRyXsq1RpflAc1+fcvk/jy/wtfTvsXtCkcfhMT+x+U7qMUUGE6g6BzjVgXI0vnlcixI=
X-Received: by 2002:a5d:4942:: with SMTP id r2mr14362363wrs.159.1557075793556; 
 Sun, 05 May 2019 10:03:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190504132327.27041-1-tmurphy@arista.com>
 <20190504132327.27041-7-tmurphy@arista.com>
 <602b77a2-9c68-ad14-b64f-904a7ff27a15@linux.intel.com>
In-Reply-To: <602b77a2-9c68-ad14-b64f-904a7ff27a15@linux.intel.com>
From: Tom Murphy <tmurphy@arista.com>
Date: Sun, 5 May 2019 18:03:02 +0100
Message-ID: <CAPL0++57nyLYP1fq=-6zvNS0z_iCqjWLbQ1MsG5F60ODkmRCQQ@mail.gmail.com>
Subject: Re: [RFC 6/7] iommu/vt-d: convert the intel iommu driver to the
 dma-iommu ops api
To: Lu Baolu <baolu.lu@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_100318_010555_2B933634 
X-CRM114-Status: GOOD (  19.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Heiko Stuebner <heiko@sntech.de>, kvm@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, David Brown <david.brown@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>, linux-s390@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 iommu@lists.linux-foundation.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 Kukjin Kim <kgene@kernel.org>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Andy Gross <andy.gross@linaro.org>, linux-tegra@vger.kernel.org,
 Marc Zyngier <marc.zyngier@arm.com>, linux-arm-msm@vger.kernel.org,
 Alex Williamson <alex.williamson@redhat.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 Tom Murphy <murphyt7@tcd.ie>, Rob Clark <robdclark@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, May 5, 2019 at 3:44 AM Lu Baolu <baolu.lu@linux.intel.com> wrote:
>
> Hi,
>
> On 5/4/19 9:23 PM, Tom Murphy wrote:
> > static int intel_iommu_add_device(struct device *dev)
> >   {
> > +     struct dmar_domain *dmar_domain;
> > +     struct iommu_domain *domain;
> >       struct intel_iommu *iommu;
> >       struct iommu_group *group;
> > -     struct iommu_domain *domain;
> > +     dma_addr_t base;
> >       u8 bus, devfn;
> >
> >       iommu = device_to_iommu(dev, &bus, &devfn);
> > @@ -4871,9 +4514,12 @@ static int intel_iommu_add_device(struct device *dev)
> >       if (IS_ERR(group))
> >               return PTR_ERR(group);
> >
> > +     base = IOVA_START_PFN << VTD_PAGE_SHIFT;
> >       domain = iommu_get_domain_for_dev(dev);
> > +     dmar_domain = to_dmar_domain(domain);
> >       if (domain->type == IOMMU_DOMAIN_DMA)
> > -             dev->dma_ops = &intel_dma_ops;
> > +             iommu_setup_dma_ops(dev, base,
> > +                             __DOMAIN_MAX_ADDR(dmar_domain->gaw) - base);
>
> I didn't find the implementation of iommu_setup_dma_ops() in this
> series. Will the iova resource be initialized in this function?

Ah sorry, I should've mentioned this is based on the
http://git.infradead.org/users/hch/misc.git/shortlog/refs/heads/dma-iommu-ops.3
branch with the "iommu/vt-d: Delegate DMA domain to generic iommu" and
"iommu/amd: Convert the AMD iommu driver to the dma-iommu api" patch
sets applied.

>
> If so, will this block iommu_group_create_direct_mappings() which
> reserves and maps the reserved iova ranges.

The reserved regions will be reserved by the
iova_reserve_iommu_regions function instead:
( https://github.com/torvalds/linux/blob/6203838dec05352bc357625b1e9ba0a10d3bca35/drivers/iommu/dma-iommu.c#L238
)
iommu_setup_dma_ops calls iommu_dma_init_domain which calls
iova_reserve_iommu_regions.
iommu_group_create_direct_mappings will still execute normally but it
won't be able to call the intel_iommu_apply_resv_region function
because it's been removed in this patchset.
This shouldn't change any behavior and the same regions should be reserved.

>
> >
> >       iommu_group_put(group);
> >       return 0;
> > @@ -5002,19 +4648,6 @@ int intel_iommu_enable_pasid(struct intel_iommu *iommu, struct intel_svm_dev *sd
> >       return ret;
> >   }
> >
> > -static void intel_iommu_apply_resv_region(struct device *dev,
> > -                                       struct iommu_domain *domain,
> > -                                       struct iommu_resv_region *region)
> > -{
> > -     struct dmar_domain *dmar_domain = to_dmar_domain(domain);
> > -     unsigned long start, end;
> > -
> > -     start = IOVA_PFN(region->start);
> > -     end   = IOVA_PFN(region->start + region->length - 1);
> > -
> > -     WARN_ON_ONCE(!reserve_iova(&dmar_domain->iovad, start, end));
> > -}
> > -
> >   struct intel_iommu *intel_svm_device_to_iommu(struct device *dev)
> >   {
> >       struct intel_iommu *iommu;
> > @@ -5050,13 +4683,13 @@ const struct iommu_ops intel_iommu_ops = {
> >       .detach_dev             = intel_iommu_detach_device,
> >       .map                    = intel_iommu_map,
> >       .unmap                  = intel_iommu_unmap,
> > +     .flush_iotlb_all        = iommu_flush_iova,
> >       .flush_iotlb_range      = intel_iommu_flush_iotlb_range,
> >       .iova_to_phys           = intel_iommu_iova_to_phys,
> >       .add_device             = intel_iommu_add_device,
> >       .remove_device          = intel_iommu_remove_device,
> >       .get_resv_regions       = intel_iommu_get_resv_regions,
> >       .put_resv_regions       = intel_iommu_put_resv_regions,
> > -     .apply_resv_region      = intel_iommu_apply_resv_region,
>
> With this removed, how will iommu_group_create_direct_mappings() work?
>
> Best regards,
> Lu Baolu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
