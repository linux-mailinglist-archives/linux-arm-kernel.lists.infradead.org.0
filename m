Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 955641502C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 17:27:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C0BwnmIYGwq3e+IEIYrZJVSSS2TKq2vRcTYBfgGJqWg=; b=aZaVn0wz2gItz3
	Ssscoh/tAJm6jmlsXf9lznCXJbj9m8aYlsc4tgufoma7GBYijmc/cpLzHPMvDCv4e3m/OBLKwtoQu
	W1VlUEGV+H6IYcLsTkblbrfhYn1To0N/7NvVA+nXESeueDGkv0uTZ06zf83OeZHMZlksj1Qamiiv2
	eTZpF7UkqTZ0xmVjCwmzZYPvCK2Q0LBMDXD3YvTswaq9YBBz+3GaEdWrUAuYYabHkrrv3RgFtGtmB
	efUzXwB/D/txN44XWpQsgGnJ8Y1qcDtmvHI4t/SM4nNDWsRmjWFWgpb63bizi80he1G+46hVV/JQU
	ePa5Oos/kx7bQCt9ZoUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNfWb-0006fE-L8; Mon, 06 May 2019 15:27:29 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNfWU-0006e7-Ea
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 15:27:23 +0000
Received: by mail-wr1-x444.google.com with SMTP id h4so17817906wre.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 08:27:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GuMSdmXl0z53dDi0xhlaU7BU2n/bLw/DBUWaPvlO+dc=;
 b=C/d9PWiZ7kbJC0oH7zo5Ibhtjb0LJxg5WGRhk2z22dgXTR0ahak265kLVZyGYOhfje
 aEtSmh42RRvz8bCCBZRBFOn7uv5XCF0ECqKL0Hb338d0yPodqMwGb1L0gvRyJgITkaxQ
 Ki1y61sbdbPypKRjDCxUR8MH0zfn/bbro9LPpFVyLBByJZzEOqelQf5tS81MK2FkUIP3
 sLhve+NsmP0dlDX03w14Qjs93JrqJwcC/r4yHUZhJhCv/72E7VCM80drfYcNtln/9ipb
 cKIyK6t7ROv023pVx/00hbtubgQCmfBlIjzs3E6R48gtIILod1LUINjWV6UVWZ8tSjxH
 BBpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GuMSdmXl0z53dDi0xhlaU7BU2n/bLw/DBUWaPvlO+dc=;
 b=bNAJ3AUbjxPJyzLC0x/wsgVbtpUE13DS13SjyPwZ53BAVxR4vWFISoZH3S194x2uPj
 ukRQ4bw7fBiHrqVZFdVYh/Wqwfs1u4qKYHsM1U1i9Zc8srwkaliq56vay8SwdwfPzq2A
 uz2FmpT+KGZe4s1n2fspNtk1bNPId+cy7EkUE1ddms8YE4HrJXE3+t6TvVgp66DGyXfS
 KpQ4JH2XSeMvPiM16refiZnF56O2rEU/bXLWgcAfhwKLZoAIEmoHF/1j7KvVk6rxoxbD
 yhon2s5kjRDgzDeJygqh/SLiCQQ+NyUZuqcV3PsQ3KfX0VpWzLN1H3yxL81qepL37+8H
 IxnQ==
X-Gm-Message-State: APjAAAVJ1oRGHzHL73LHmMr5iKKtGm8ptoVGZ/Eo5lCf03S7AzRPQnTX
 iiRwr3tGNV4Sz+6/Crk0+1lO0a0/4fsVlOd3BxNtAA==
X-Google-Smtp-Source: APXvYqzdYjq2KzNwXSYRUYk147h4YL+JNa0zWfymURRoAL7aXQogilrHn37rwl9PoIS46ayzMGu+Ikwm2tOs7SUKN4Y=
X-Received: by 2002:a5d:5551:: with SMTP id g17mr20082024wrw.50.1557156440752; 
 Mon, 06 May 2019 08:27:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190504132327.27041-1-tmurphy@arista.com>
 <20190504132327.27041-2-tmurphy@arista.com>
 <8fef18f5-773c-e1c9-2537-c9dff5bfd35e@linux.intel.com>
In-Reply-To: <8fef18f5-773c-e1c9-2537-c9dff5bfd35e@linux.intel.com>
From: Tom Murphy <tmurphy@arista.com>
Date: Mon, 6 May 2019 16:27:09 +0100
Message-ID: <CAPL0++4_Qa+dxzQ2k6BJi_o+VSSrHEtomYgVmRqjtjsOfHbGew@mail.gmail.com>
Subject: Re: [RFC 1/7] iommu/vt-d: Set the dma_ops per device so we can remove
 the iommu_no_mapping code
To: Lu Baolu <baolu.lu@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_082722_494415_4A9B5AA3 
X-CRM114-Status: GOOD (  22.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Mon, May 6, 2019 at 2:48 AM Lu Baolu <baolu.lu@linux.intel.com> wrote:
>
> Hi,
>
> On 5/4/19 9:23 PM, Tom Murphy wrote:
> > Set the dma_ops per device so we can remove the iommu_no_mapping code.
> >
> > Signed-off-by: Tom Murphy<tmurphy@arista.com>
> > ---
> >   drivers/iommu/intel-iommu.c | 85 +++----------------------------------
> >   1 file changed, 6 insertions(+), 79 deletions(-)
> >
> > diff --git a/drivers/iommu/intel-iommu.c b/drivers/iommu/intel-iommu.c
> > index eace915602f0..2db1dc47e7e4 100644
> > --- a/drivers/iommu/intel-iommu.c
> > +++ b/drivers/iommu/intel-iommu.c
> > @@ -2622,17 +2622,6 @@ static int __init si_domain_init(int hw)
> >       return 0;
> >   }
> >
> > -static int identity_mapping(struct device *dev)
> > -{
> > -     struct device_domain_info *info;
> > -
> > -     info = dev->archdata.iommu;
> > -     if (info && info != DUMMY_DEVICE_DOMAIN_INFO)
> > -             return (info->domain == si_domain);
> > -
> > -     return 0;
> > -}
> > -
> >   static int domain_add_dev_info(struct dmar_domain *domain, struct device *dev)
> >   {
> >       struct dmar_domain *ndomain;
> > @@ -3270,43 +3259,6 @@ static unsigned long intel_alloc_iova(struct device *dev,
> >       return iova_pfn;
> >   }
> >
> > -/* Check if the dev needs to go through non-identity map and unmap process.*/
> > -static int iommu_no_mapping(struct device *dev)
> > -{
> > -     int found;
> > -
> > -     if (iommu_dummy(dev))
> > -             return 1;
> > -
> > -     found = identity_mapping(dev);
> > -     if (found) {
> > -             /*
> > -              * If the device's dma_mask is less than the system's memory
> > -              * size then this is not a candidate for identity mapping.
> > -              */
> > -             u64 dma_mask = *dev->dma_mask;
> > -
> > -             if (dev->coherent_dma_mask &&
> > -                 dev->coherent_dma_mask < dma_mask)
> > -                     dma_mask = dev->coherent_dma_mask;
> > -
> > -             if (dma_mask < dma_get_required_mask(dev)) {
> > -                     /*
> > -                      * 32 bit DMA is removed from si_domain and fall back
> > -                      * to non-identity mapping.
> > -                      */
> > -                     dmar_remove_one_dev_info(dev);
> > -                     dev_warn(dev, "32bit DMA uses non-identity mapping\n");
> > -
> > -                     return 0;
> > -             }
>
> The iommu_no_mapping() also checks whether any 32bit DMA device uses
> identity mapping. The device might not work if the system memory space
> is bigger than 4G.

It looks like their is actually a bug in the v3 of the "iommu/vt-d:
Delegate DMA domain to generic iommu" patch set. I will leave a
message in that email thread. Fixing that bug should also fix this
issue.


>
> Will you add this to other place, or it's unnecessary?
>
> Best regards,
> Lu Baolu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
