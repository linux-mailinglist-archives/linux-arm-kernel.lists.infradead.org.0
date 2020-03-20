Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1DE18C77B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 07:31:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JQ97R7B/X9rvzdvr4ctA1vigS94mHevVgmu9vN1Ic5Y=; b=p2K/UwxNV2OrpQ
	9uMn0zKHAvYuTfZao3aStLnheAcLgA3TQCskukFArP/dXUwwqk60508RolFfm5aNEEbMQzhU1t0B4
	9t1GbGEfXcfsM7tDDq2DOg+LNLAkuGsPMh+3wZjCwEj6c2LLCmOmdtH79Any+o8j5658H99/BVFCK
	PN6yRW839mQKU44+xTuf5GDoVJ4m5kDMVnbSdrmYQqJv/86rg94Cv+l0T3JttlcdhCrclF1LDQAKY
	/RxNwlcPpli+JTL2tNY7KO+WUe0lCnAXerRTb+Evm4+zQXEMD0OoHIge+AxMqjPczdtBCpGUkYbvm
	/W3ElKcy15scErc6Sg3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFBBb-0006zn-0g; Fri, 20 Mar 2020 06:31:15 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFBBP-0006wy-JL
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 06:31:06 +0000
Received: by mail-io1-xd41.google.com with SMTP id q128so4855013iof.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 23:31:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tcd-ie.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1/VIn1wtF4hsQJkFxlnmnWv82JMKOrPFn/SqXh1kTXo=;
 b=ALp9alTQuLJLrtYNnyRjvA8PMiz1K4ZRf5nzLyAi+v2/I3lM5M5naHCyPFAdUU7NU9
 wx8SODJR6FU9l1lCyIMN3qqLsbRNFpv0ypNDVGw6BO/60a5FCcILJuKIcbnqlN/29fnY
 A4sy1/pR6UT8YJDvQK2RN9cauHsQ63ohAuCF3DyO7KtZ0AxycSd7Un2OryglDuoIIt3J
 YLdR7e5RgpvbG4fcchtVZYh60gsXK5GYIrsKc232S+xWkPGrmZZ90ZhY2oUjJX7P8a3U
 Qu4cOmU0u7PmBgUf3ublP3r8gsr/zoNScg4QxMSmvJ/EEGXtQ3shCFRNsg4sf6wGEuEt
 3H4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1/VIn1wtF4hsQJkFxlnmnWv82JMKOrPFn/SqXh1kTXo=;
 b=lZ36CUkhyGsTsIiTj3mguF2AqPVs+BGOU1u5FUtuWg8v6rlCduJ/v8Ej6xNi4M3eCo
 x7rIUxwE1hFVGp2d9hbgXi1zyPFXxEOOWmrHcLAb70e7uiSrwmm86pfyo/gQh/h+LzDX
 IXUnccsWCFf0G5hPUS2SQT3NyR4tlY0sOSupH/x8ggNkkKANamDIAmcvu0/oeCM28KRM
 Bta/c7H7lg8WVJCOBAukIFDjdjSWGJP9aNzPNmA0b4TdsZVEnlumQ+S6hkb2uS2z1u56
 EhuzMjzwQ63xWHRTWoIRmUeOxuc5okuqGL6ohCSTL3BVR1mdV6/PaN4+iM1C18mNwgN8
 T0PQ==
X-Gm-Message-State: ANhLgQ2weC0ej97+iA2eNVV1QJIk7BZAiXmS9Tc/hY1RnA8bbosyChNB
 ht1xwS4YTcJpYipZPOILaV7Jx1KJUyU6MiMqLUAdgw==
X-Google-Smtp-Source: ADFU+vv0RVPDe7OSqYC09UstbxEpj6UJl/ooVVvm+TTFONFef168+lVao+hBMRX+yBG3YxegODoM+L1qUGjcesJyDlI=
X-Received: by 2002:a5d:8405:: with SMTP id i5mr5964251ion.197.1584685862390; 
 Thu, 19 Mar 2020 23:31:02 -0700 (PDT)
MIME-Version: 1.0
References: <20191221150402.13868-1-murphyt7@tcd.ie>
 <20191221150402.13868-4-murphyt7@tcd.ie>
In-Reply-To: <20191221150402.13868-4-murphyt7@tcd.ie>
From: Tom Murphy <murphyt7@tcd.ie>
Date: Thu, 19 Mar 2020 23:30:51 -0700
Message-ID: <CALQxJuuue2MCF+xAAAcWCW=301HHZ9yWBmYV-K-ubCxO4s5eqQ@mail.gmail.com>
Subject: Re: [PATCH 3/8] iommu/vt-d: Remove IOVA handling code from
 non-dma_ops path
To: iommu@lists.linux-foundation.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_233103_649099_01DA64EE 
X-CRM114-Status: GOOD (  25.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Heiko Stuebner <heiko@sntech.de>, kvm@vger.kernel.org,
 David Airlie <airlied@linux.ie>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-tegra@vger.kernel.org, Julien Grall <julien.grall@arm.com>,
 Thierry Reding <thierry.reding@gmail.com>, Will Deacon <will@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-samsung-soc@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 Andy Gross <agross@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-s390@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Eric Auger <eric.auger@redhat.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 linux-mediatek@lists.infradead.org, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 virtualization@lists.linux-foundation.org,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 David Woodhouse <dwmw2@infradead.org>, Cornelia Huck <cohuck@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Clark <robdclark@gmail.com>, Kukjin Kim <kgene@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Lu Baolu <baolu.lu@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Could we merge patch 1-3 from this series? it just cleans up weird
code and merging these patches will cover some of the work needed to
move the intel iommu driver to the dma-iommu api in the future.

On Sat, 21 Dec 2019 at 07:04, Tom Murphy <murphyt7@tcd.ie> wrote:
>
> Remove all IOVA handling code from the non-dma_ops path in the intel
> iommu driver.
>
> There's no need for the non-dma_ops path to keep track of IOVAs. The
> whole point of the non-dma_ops path is that it allows the IOVAs to be
> handled separately. The IOVA handling code removed in this patch is
> pointless.
>
> Signed-off-by: Tom Murphy <murphyt7@tcd.ie>
> ---
>  drivers/iommu/intel-iommu.c | 89 ++++++++++++++-----------------------
>  1 file changed, 33 insertions(+), 56 deletions(-)
>
> diff --git a/drivers/iommu/intel-iommu.c b/drivers/iommu/intel-iommu.c
> index 64b1a9793daa..8d72ea0fb843 100644
> --- a/drivers/iommu/intel-iommu.c
> +++ b/drivers/iommu/intel-iommu.c
> @@ -1908,7 +1908,8 @@ static void domain_exit(struct dmar_domain *domain)
>         domain_remove_dev_info(domain);
>
>         /* destroy iovas */
> -       put_iova_domain(&domain->iovad);
> +       if (domain->domain.type == IOMMU_DOMAIN_DMA)
> +               put_iova_domain(&domain->iovad);
>
>         if (domain->pgd) {
>                 struct page *freelist;
> @@ -2671,19 +2672,9 @@ static struct dmar_domain *set_domain_for_dev(struct device *dev,
>  }
>
>  static int iommu_domain_identity_map(struct dmar_domain *domain,
> -                                    unsigned long long start,
> -                                    unsigned long long end)
> +                                    unsigned long first_vpfn,
> +                                    unsigned long last_vpfn)
>  {
> -       unsigned long first_vpfn = start >> VTD_PAGE_SHIFT;
> -       unsigned long last_vpfn = end >> VTD_PAGE_SHIFT;
> -
> -       if (!reserve_iova(&domain->iovad, dma_to_mm_pfn(first_vpfn),
> -                         dma_to_mm_pfn(last_vpfn))) {
> -               pr_err("Reserving iova failed\n");
> -               return -ENOMEM;
> -       }
> -
> -       pr_debug("Mapping reserved region %llx-%llx\n", start, end);
>         /*
>          * RMRR range might have overlap with physical memory range,
>          * clear it first
> @@ -2760,7 +2751,8 @@ static int __init si_domain_init(int hw)
>
>                 for_each_mem_pfn_range(i, nid, &start_pfn, &end_pfn, NULL) {
>                         ret = iommu_domain_identity_map(si_domain,
> -                                       PFN_PHYS(start_pfn), PFN_PHYS(end_pfn));
> +                                       mm_to_dma_pfn(start_pfn),
> +                                       mm_to_dma_pfn(end_pfn));
>                         if (ret)
>                                 return ret;
>                 }
> @@ -4593,58 +4585,37 @@ static int intel_iommu_memory_notifier(struct notifier_block *nb,
>                                        unsigned long val, void *v)
>  {
>         struct memory_notify *mhp = v;
> -       unsigned long long start, end;
> -       unsigned long start_vpfn, last_vpfn;
> +       unsigned long start_vpfn = mm_to_dma_pfn(mhp->start_pfn);
> +       unsigned long last_vpfn = mm_to_dma_pfn(mhp->start_pfn +
> +                       mhp->nr_pages - 1);
>
>         switch (val) {
>         case MEM_GOING_ONLINE:
> -               start = mhp->start_pfn << PAGE_SHIFT;
> -               end = ((mhp->start_pfn + mhp->nr_pages) << PAGE_SHIFT) - 1;
> -               if (iommu_domain_identity_map(si_domain, start, end)) {
> -                       pr_warn("Failed to build identity map for [%llx-%llx]\n",
> -                               start, end);
> +               if (iommu_domain_identity_map(si_domain, start_vpfn,
> +                                       last_vpfn)) {
> +                       pr_warn("Failed to build identity map for [%lx-%lx]\n",
> +                               start_vpfn, last_vpfn);
>                         return NOTIFY_BAD;
>                 }
>                 break;
>
>         case MEM_OFFLINE:
>         case MEM_CANCEL_ONLINE:
> -               start_vpfn = mm_to_dma_pfn(mhp->start_pfn);
> -               last_vpfn = mm_to_dma_pfn(mhp->start_pfn + mhp->nr_pages - 1);
> -               while (start_vpfn <= last_vpfn) {
> -                       struct iova *iova;
> +               {
>                         struct dmar_drhd_unit *drhd;
>                         struct intel_iommu *iommu;
>                         struct page *freelist;
>
> -                       iova = find_iova(&si_domain->iovad, start_vpfn);
> -                       if (iova == NULL) {
> -                               pr_debug("Failed get IOVA for PFN %lx\n",
> -                                        start_vpfn);
> -                               break;
> -                       }
> -
> -                       iova = split_and_remove_iova(&si_domain->iovad, iova,
> -                                                    start_vpfn, last_vpfn);
> -                       if (iova == NULL) {
> -                               pr_warn("Failed to split IOVA PFN [%lx-%lx]\n",
> -                                       start_vpfn, last_vpfn);
> -                               return NOTIFY_BAD;
> -                       }
> -
> -                       freelist = domain_unmap(si_domain, iova->pfn_lo,
> -                                              iova->pfn_hi);
> +                       freelist = domain_unmap(si_domain, start_vpfn,
> +                                       last_vpfn);
>
>                         rcu_read_lock();
>                         for_each_active_iommu(iommu, drhd)
>                                 iommu_flush_iotlb_psi(iommu, si_domain,
> -                                       iova->pfn_lo, iova_size(iova),
> +                                       start_vpfn, mhp->nr_pages,
>                                         !freelist, 0);
>                         rcu_read_unlock();
>                         dma_free_pagelist(freelist);
> -
> -                       start_vpfn = iova->pfn_hi + 1;
> -                       free_iova_mem(iova);
>                 }
>                 break;
>         }
> @@ -4672,8 +4643,9 @@ static void free_all_cpu_cached_iovas(unsigned int cpu)
>                 for (did = 0; did < cap_ndoms(iommu->cap); did++) {
>                         domain = get_iommu_domain(iommu, (u16)did);
>
> -                       if (!domain)
> +                       if (!domain || domain->domain.type != IOMMU_DOMAIN_DMA)
>                                 continue;
> +
>                         free_cpu_cached_iovas(cpu, &domain->iovad);
>                 }
>         }
> @@ -5095,9 +5067,6 @@ static int md_domain_init(struct dmar_domain *domain, int guest_width)
>  {
>         int adjust_width;
>
> -       init_iova_domain(&domain->iovad, VTD_PAGE_SIZE, IOVA_START_PFN);
> -       domain_reserve_special_ranges(domain);
> -
>         /* calculate AGAW */
>         domain->gaw = guest_width;
>         adjust_width = guestwidth_to_adjustwidth(guest_width);
> @@ -5116,6 +5085,18 @@ static int md_domain_init(struct dmar_domain *domain, int guest_width)
>         return 0;
>  }
>
> +static void intel_init_iova_domain(struct dmar_domain *dmar_domain)
> +{
> +       init_iova_domain(&dmar_domain->iovad, VTD_PAGE_SIZE, IOVA_START_PFN);
> +       copy_reserved_iova(&reserved_iova_list, &dmar_domain->iovad);
> +
> +       if (init_iova_flush_queue(&dmar_domain->iovad, iommu_flush_iova,
> +                               iova_entry_free)) {
> +               pr_warn("iova flush queue initialization failed\n");
> +               intel_iommu_strict = 1;
> +       }
> +}
> +
>  static struct iommu_domain *intel_iommu_domain_alloc(unsigned type)
>  {
>         struct dmar_domain *dmar_domain;
> @@ -5136,12 +5117,8 @@ static struct iommu_domain *intel_iommu_domain_alloc(unsigned type)
>                         return NULL;
>                 }
>
> -               if (type == IOMMU_DOMAIN_DMA &&
> -                   init_iova_flush_queue(&dmar_domain->iovad,
> -                                         iommu_flush_iova, iova_entry_free)) {
> -                       pr_warn("iova flush queue initialization failed\n");
> -                       intel_iommu_strict = 1;
> -               }
> +               if (type == IOMMU_DOMAIN_DMA)
> +                       intel_init_iova_domain(dmar_domain);
>
>                 domain_update_iommu_cap(dmar_domain);
>
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
