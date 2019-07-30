Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C107A14B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 08:28:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vGguBBEiXjeZ8CBZ2E6FU6qDd5Va34pFOwGkoJxR8MY=; b=GyeTtNo6ROtpYv
	cN2ITt6d572aFeyYbDoT+lZMdV8al2CZ1/B1hXfnHfau69nhDGE7MX/0g2L5BmgdeE4jFiGY7QN4s
	T2h6gO826eaQtIp9Ow2NnUjhqoOVakmFaXb5WcksoABZLZpl+XBPU0CvkXjg6FaODPXvcXUyd3+FB
	LThoUsc6BhW9ib3xtHhkqknLNNYnLm9dfylyPA7PwIuZ5p9qUtl8pJd+F2j7DiJhkvIZKsaGbZR0p
	UMD0qZGGaPjgl8lrxV6FUTcSr0zTagwecTJgHPl3KSau9ROUdfH/h1PRJkyekEAyG5/Rr9wYmrwaT
	1aomqgk3OO0x+nQ/cT5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsLd0-0002LG-Lq; Tue, 30 Jul 2019 06:28:54 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hsLcp-0002L2-Fk; Tue, 30 Jul 2019 06:28:43 +0000
Date: Mon, 29 Jul 2019 23:28:43 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] iommu/dma: Handle MSI mappings separately
Message-ID: <20190730062843.GA1400@infradead.org>
References: <2b2595de703c60a772ebcffe248d0cf036143e6a.1564414114.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2b2595de703c60a772ebcffe248d0cf036143e6a.1564414114.git.robin.murphy@arm.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: maz@kernel.org, joro@8bytes.org, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, Andre Przywara <andre.przywara@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 04:32:38PM +0100, Robin Murphy wrote:
> MSI pages must always be mapped into a device's *current* domain, which
> *might* be the default DMA domain, but might instead be a VFIO domain
> with its own MSI cookie. This subtlety got accidentally lost in the
> streamlining of __iommu_dma_map(), but rather than reintroduce more
> complexity and/or special-casing, it turns out neater to just split this
> path out entirely.
> 
> Since iommu_dma_get_msi_page() already duplicates much of what
> __iommu_dma_map() does, it can easily just make the allocation and
> mapping calls directly as well. That way we can further streamline the
> helper back to exclusively operating on DMA domains.
> 
> Fixes: b61d271e59d7 ("iommu/dma: Move domain lookup into __iommu_dma_{map,unmap}")
> Reported-by: Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>
> Reported-by: Andre Przywara <andre.przywara@arm.com>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>

Hmm.  I remember proposing this patch and you didn't like it because
we could also have msis for a !IOMMU_DMA_IOVA_COOKIE cookie type.
Or did we talk past each other?

Note that if this change turns out to be valid we should also
clean up the iommu_dma_free_iova() side.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
