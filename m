Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC4B12C99
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 13:43:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mBqvuIjHWXEm/wpmWmRLp8+bJpcuwHnC5ypUAyKwLbI=; b=gC92Js4t+Ocj/r
	8PFtDujsJB6bdtDS9TEuRVaaDO4ZRkJOev1uqTw/i58odU62AumhNjM+HW1GZ4Yiz5S8KFKhaDmdE
	xKa2g8P450QaZYF3XG2z/2irryUjyq2QJjiUeB9XWmKXw9mgXIKaoYvuCwjLv3M2BRyEXPVJq7OUl
	vMM+m2M0oI4ixP1MITXdAb78xXd2Y0rOYjPUZSXK04eHl0tTDKnKMBiGqpBsQIRwGfGBS0OwzMsZ2
	eM7SgkgGutRbOTPXiIoZterX6v8NNOPY2gziX8J3om7wkE9/Sa6P9dhbJfgc/a1RVcHdHKrtpWiwV
	7IiOrx5WUPWZY2tbaZVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMWbT-0008BR-O2; Fri, 03 May 2019 11:43:47 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMWbM-0008Av-QP
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 11:43:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D14FA374;
 Fri,  3 May 2019 04:43:39 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 46DCE3F220; Fri,  3 May 2019 04:43:38 -0700 (PDT)
Date: Fri, 3 May 2019 12:43:35 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 04/25] iommu/dma: Remove the flush_page callback
Message-ID: <20190503114335.GC55449@arrakis.emea.arm.com>
References: <20190430105214.24628-1-hch@lst.de>
 <20190430105214.24628-5-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430105214.24628-5-hch@lst.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_044340_866273_98ED4257 
X-CRM114-Status: GOOD (  18.45  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Tom Lendacky <thomas.lendacky@amd.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 06:51:53AM -0400, Christoph Hellwig wrote:
> We now have a arch_dma_prep_coherent architecture hook that is used
> for the generic DMA remap allocator, and we should use the same
> interface for the dma-iommu code.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  arch/arm64/mm/dma-mapping.c | 8 +-------
>  drivers/iommu/dma-iommu.c   | 8 +++-----
>  include/linux/dma-iommu.h   | 3 +--
>  3 files changed, 5 insertions(+), 14 deletions(-)
> 
> diff --git a/arch/arm64/mm/dma-mapping.c b/arch/arm64/mm/dma-mapping.c
> index 674860e3e478..10a8852c8b6a 100644
> --- a/arch/arm64/mm/dma-mapping.c
> +++ b/arch/arm64/mm/dma-mapping.c
> @@ -104,12 +104,6 @@ arch_initcall(arm64_dma_init);
>  #include <linux/platform_device.h>
>  #include <linux/amba/bus.h>
>  
> -/* Thankfully, all cache ops are by VA so we can ignore phys here */
> -static void flush_page(struct device *dev, const void *virt, phys_addr_t phys)
> -{
> -	__dma_flush_area(virt, PAGE_SIZE);
> -}

Rather than removing, should this not become arch_dma_prep_coherent()?
With patch 2 selecting the corresponding Kconfig option, I think with
this patch you'd get a build error (haven't tried).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
