Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CA3679041
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 18:04:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vfHx/elRyDzIWvUn641h2A2chDjXVCiVzohbUFjz6fA=; b=hWDFJYgyajqrp4v5kDxJyC2Le
	hwQcjzLa3CNp0cx52C69P4hJ8Jc6nyBytAmuNXmi+dKSuJHDjugEwUeTZ8erMyj1+ArsWShw93VMC
	Y6XvqMWknJD67Oqviuh7P8P8z/RGwR/EYs+f7O3BigbU/7F5LGXAwttuxK2Xje4IYq3rW4/bSUEYx
	0OLoHxQNYinSEPiqdszjl7LU2eb9t8vWTRRoPd7Cot0w4qaIZnOhsVVoSUq31DWjscL+JL8iLQFol
	TwLAXAAMiHCCudLSqsCPmrjstXxt4+K4f9LDRqFTK/okc4m760Nkir/fP1KA7eYCFyOpv6MjXO0/V
	cqDHC9TuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs88G-0004zg-2c; Mon, 29 Jul 2019 16:04:16 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs884-0004zM-46
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 16:04:05 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1hs87z-0000vv-BM; Mon, 29 Jul 2019 18:03:59 +0200
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] iommu/dma: Handle MSI mappings separately
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Mon, 29 Jul 2019 17:03:59 +0100
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <2b2595de703c60a772ebcffe248d0cf036143e6a.1564414114.git.robin.murphy@arm.com>
References: <2b2595de703c60a772ebcffe248d0cf036143e6a.1564414114.git.robin.murphy@arm.com>
Message-ID: <c2ff38164489ca24ef4364ab83b10e76@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: robin.murphy@arm.com, joro@8bytes.org,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 shameerali.kolothum.thodi@huawei.com, andre.przywara@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_090404_310874_1874D34E 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Andre Przywara <andre.przywara@arm.com>, joro@8bytes.org,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-07-29 16:32, Robin Murphy wrote:
> MSI pages must always be mapped into a device's *current* domain, 
> which
> *might* be the default DMA domain, but might instead be a VFIO domain
> with its own MSI cookie. This subtlety got accidentally lost in the
> streamlining of __iommu_dma_map(), but rather than reintroduce more
> complexity and/or special-casing, it turns out neater to just split 
> this
> path out entirely.
>
> Since iommu_dma_get_msi_page() already duplicates much of what
> __iommu_dma_map() does, it can easily just make the allocation and
> mapping calls directly as well. That way we can further streamline 
> the
> helper back to exclusively operating on DMA domains.
>
> Fixes: b61d271e59d7 ("iommu/dma: Move domain lookup into
> __iommu_dma_{map,unmap}")
> Reported-by: Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>
> Reported-by: Andre Przywara <andre.przywara@arm.com>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>

With this patch, my TX2 is back in business with a bnx2x device passed
to a guest. FWIW:

Tested-by: Marc Zyngier <maz@kernel.org>

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
