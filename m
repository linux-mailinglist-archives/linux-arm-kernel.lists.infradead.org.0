Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BBEE15D9A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 08:40:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VX7sSWQy1JucVeE7FtzjW+6QawP8zHR/FYhQR720gYA=; b=PDyK8E7JhT4pUq
	Qk6B3kEqLC5vfGo/vigwxRPc7RLkpvZmPm+YYZEeQM4gMUH5hf2+4TU2Ia13I4TpjDAx2Dl8RvQ2c
	lzIhDjM9S8ET6Dz9NFQhTG3QzXQJIiffENmr2gKA7oh4Gmzaz+/LrrTcVNykZ/S71MK+hCElf5K6m
	7tQdMExl0ZPZDI4l15pZpbVZoJBlKbe8EMEk0sGnI/Nw6NpisE7xU/iMBIUAokAZmG+GPXNQG5zty
	LnXDyNo5w9N5NYtBsagmDJrciEca2aK5oyGk+tS2979j1lAQkOmOoJ7rHnPPf6LRenUdMMIGYO2id
	HnmbRUl/XACXfZMA9P4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNtlr-0003H1-Ov; Tue, 07 May 2019 06:40:11 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hNtlg-0002k3-HT; Tue, 07 May 2019 06:40:00 +0000
Date: Mon, 6 May 2019 23:40:00 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Tom Murphy <tmurphy@arista.com>
Subject: Re: [PATCH v3 2/4] iommu/dma-iommu: Handle deferred devices
Message-ID: <20190507064000.GB5173@infradead.org>
References: <20190506185207.31069-1-tmurphy@arista.com>
 <20190506185207.31069-3-tmurphy@arista.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190506185207.31069-3-tmurphy@arista.com>
User-Agent: Mutt/1.9.2 (2017-12-15)
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
Cc: Heiko Stuebner <heiko@sntech.de>, Will Deacon <will.deacon@arm.com>,
 David Brown <david.brown@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>, linux-s390@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 iommu@lists.linux-foundation.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 Kukjin Kim <kgene@kernel.org>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Andy Gross <andy.gross@linaro.org>, linux-tegra@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>,
 linux-kernel@vger.kernel.org, murphyt7@tcd.ie, Rob Clark <robdclark@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 06, 2019 at 07:52:04PM +0100, Tom Murphy wrote:
> +static int handle_deferred_device(struct device *dev)
> +{
> +	struct iommu_domain *domain;
> +	const struct iommu_ops *ops;
> +
> +	if (!is_kdump_kernel())
> +		return 0;
> +
> +	domain = iommu_get_domain_for_dev(dev);

> -	dma_handle =__iommu_dma_map(dev, phys, size,
> +	if (unlikely(handle_deferred_device(dev)))
> +		return DMA_MAPPING_ERROR;
> +
> +	dma_handle = __iommu_dma_map(dev, phys, size,

__iommu_dma_map already looks up the domain, and as far as I can
tell all callers need the handle_deferred_device call.  Should we
just move it to there and pass the domain from the caller?

Also shouldn't the iommu_attach_device call inside
handle_deferred_device also get an unlikely marker?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
