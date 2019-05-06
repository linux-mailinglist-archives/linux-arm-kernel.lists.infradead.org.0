Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A59F14360
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 03:41:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=su1d0hHf70yDuVyxYfxcW9u9h+EZTmJiL82bYYPP7pI=; b=agtsKTTczkdvxLA1kub6xZy/1
	KnVb7UUJdrrWGGRzsS5F9waFpAz2kqY/gQWzO09rKs4VE7Vqcl1J7diLc8ErKoOOSeBiua8PjlJmU
	HCzUSrWVo9AJ2PTtUaQDqXT6TTXSyMDRxFKTnBesMTXvialpXOMgFDzdWzIM+E9v/XzjXq5Rsvf4v
	5XUx51CnzNrMkxO8n50+e0bCmglTgPBN0KBjuegaZa9E3yLzmlMWR9SUAse4subPCh4oJiGqz1VEL
	8mZ1U574wb0N8DB9tjBtHKCwfOvgNNQhLZ3TDdYF2jDHjX8tQvzGvEXaC0AaV+zINmyPDejvmps82
	LbbN+FJKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNSdW-0005yR-Ch; Mon, 06 May 2019 01:41:46 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNSdN-0005wS-1W; Mon, 06 May 2019 01:41:38 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 May 2019 18:41:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,435,1549958400"; d="scan'208";a="146639249"
Received: from allen-box.sh.intel.com (HELO [10.239.159.136])
 ([10.239.159.136])
 by fmsmga008.fm.intel.com with ESMTP; 05 May 2019 18:41:24 -0700
Subject: Re: [RFC 6/7] iommu/vt-d: convert the intel iommu driver to the
 dma-iommu ops api
To: Tom Murphy <tmurphy@arista.com>
References: <20190504132327.27041-1-tmurphy@arista.com>
 <20190504132327.27041-7-tmurphy@arista.com>
 <602b77a2-9c68-ad14-b64f-904a7ff27a15@linux.intel.com>
 <CAPL0++57nyLYP1fq=-6zvNS0z_iCqjWLbQ1MsG5F60ODkmRCQQ@mail.gmail.com>
From: Lu Baolu <baolu.lu@linux.intel.com>
Message-ID: <2419e94d-bfdb-e70d-bbfd-425671886e99@linux.intel.com>
Date: Mon, 6 May 2019 09:34:59 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAPL0++57nyLYP1fq=-6zvNS0z_iCqjWLbQ1MsG5F60ODkmRCQQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_184137_103811_C62A7CCB 
X-CRM114-Status: GOOD (  21.61  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
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
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Andy Gross <andy.gross@linaro.org>, linux-tegra@vger.kernel.org,
 Marc Zyngier <marc.zyngier@arm.com>, linux-arm-msm@vger.kernel.org,
 Alex Williamson <alex.williamson@redhat.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 Tom Murphy <murphyt7@tcd.ie>, Rob Clark <robdclark@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, baolu.lu@linux.intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 5/6/19 1:03 AM, Tom Murphy wrote:
> On Sun, May 5, 2019 at 3:44 AM Lu Baolu<baolu.lu@linux.intel.com>  wrote:
>> Hi,
>>
>> On 5/4/19 9:23 PM, Tom Murphy wrote:
>>> static int intel_iommu_add_device(struct device *dev)
>>>    {
>>> +     struct dmar_domain *dmar_domain;
>>> +     struct iommu_domain *domain;
>>>        struct intel_iommu *iommu;
>>>        struct iommu_group *group;
>>> -     struct iommu_domain *domain;
>>> +     dma_addr_t base;
>>>        u8 bus, devfn;
>>>
>>>        iommu = device_to_iommu(dev, &bus, &devfn);
>>> @@ -4871,9 +4514,12 @@ static int intel_iommu_add_device(struct device *dev)
>>>        if (IS_ERR(group))
>>>                return PTR_ERR(group);
>>>
>>> +     base = IOVA_START_PFN << VTD_PAGE_SHIFT;
>>>        domain = iommu_get_domain_for_dev(dev);
>>> +     dmar_domain = to_dmar_domain(domain);
>>>        if (domain->type == IOMMU_DOMAIN_DMA)
>>> -             dev->dma_ops = &intel_dma_ops;
>>> +             iommu_setup_dma_ops(dev, base,
>>> +                             __DOMAIN_MAX_ADDR(dmar_domain->gaw) - base);
>> I didn't find the implementation of iommu_setup_dma_ops() in this
>> series. Will the iova resource be initialized in this function?
> Ah sorry, I should've mentioned this is based on the
> http://git.infradead.org/users/hch/misc.git/shortlog/refs/heads/dma-iommu-ops.3
> branch with the "iommu/vt-d: Delegate DMA domain to generic iommu" and
> "iommu/amd: Convert the AMD iommu driver to the dma-iommu api" patch
> sets applied.
> 
>> If so, will this block iommu_group_create_direct_mappings() which
>> reserves and maps the reserved iova ranges.
> The reserved regions will be reserved by the
> iova_reserve_iommu_regions function instead:
> (https://github.com/torvalds/linux/blob/6203838dec05352bc357625b1e9ba0a10d3bca35/drivers/iommu/dma-iommu.c#L238
> )
> iommu_setup_dma_ops calls iommu_dma_init_domain which calls
> iova_reserve_iommu_regions.
> iommu_group_create_direct_mappings will still execute normally but it
> won't be able to call the intel_iommu_apply_resv_region function
> because it's been removed in this patchset.
> This shouldn't change any behavior and the same regions should be reserved.
> 

Okay, I understand it now. Thanks for the explanation.

Best regards,
Lu Baolu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
