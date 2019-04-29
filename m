Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2F7E5A3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 17:01:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+VGm6ZU00iyKhj66FmrN5VXYslKia2kfkFUmNwJlya4=; b=BbTTTLs81nxgXTFKc2zHRgfKi
	Mx/PTtHx+Sclw9SPBC1bwE3e3e9KbEZEaA9QztuUo7NRaQrx1Kn2Jqm23/pxb4m1D0HGWD9XYGw+V
	sz4YmtGrmiOwH5WwwH+d0IZYWbUL1hL+QYa+lNvd8kseA5JtJibQtRVVGAtnPhUC0KZtfORu+Yic9
	sHDQ6QVzaiM1VkEg4qcMuqVZ9vncx/yt9jMbNQl5A67zyuuvabFtANQ+ecEe9PA5Je63orOPbS+3l
	i4lnDoPLyDA3CKCAw7krJdNwl7tQFqTqKCTys7z4gb9FVinVxRmwrmCHfuJEnfcyD3E590+lTqsPo
	R5ldgFR+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL7mZ-0005EM-KL; Mon, 29 Apr 2019 15:01:27 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL7la-0005B0-EK
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 15:00:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E415280D;
 Mon, 29 Apr 2019 08:00:25 -0700 (PDT)
Received: from [10.1.196.75] (e110467-lin.cambridge.arm.com [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7D34E3F5C1;
 Mon, 29 Apr 2019 08:00:24 -0700 (PDT)
Subject: Re: [PATCH 26/26] arm64: trim includes in dma-mapping.c
To: Christoph Hellwig <hch@lst.de>
References: <20190422175942.18788-1-hch@lst.de>
 <20190422175942.18788-27-hch@lst.de>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <8d257026-870c-c183-4c34-48b9f8bc6872@arm.com>
Date: Mon, 29 Apr 2019 16:00:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190422175942.18788-27-hch@lst.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_080026_489591_1CDCB729 
X-CRM114-Status: GOOD (  19.92  )
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
Cc: Tom Lendacky <thomas.lendacky@amd.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22/04/2019 18:59, Christoph Hellwig wrote:
> With most of the previous functionality now elsewhere a lot of the
> headers included in this file are not needed.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   arch/arm64/mm/dma-mapping.c | 11 -----------
>   1 file changed, 11 deletions(-)
> 
> diff --git a/arch/arm64/mm/dma-mapping.c b/arch/arm64/mm/dma-mapping.c
> index 184ef9ccd69d..15bd768ceb7e 100644
> --- a/arch/arm64/mm/dma-mapping.c
> +++ b/arch/arm64/mm/dma-mapping.c
> @@ -5,20 +5,9 @@
>    */
>   
>   #include <linux/gfp.h>
> -#include <linux/acpi.h>
> -#include <linux/memblock.h>
>   #include <linux/cache.h>
> -#include <linux/export.h>
> -#include <linux/slab.h>
> -#include <linux/genalloc.h>
> -#include <linux/dma-direct.h>
>   #include <linux/dma-noncoherent.h>
> -#include <linux/dma-contiguous.h>
>   #include <linux/dma-iommu.h>
> -#include <linux/vmalloc.h>
> -#include <linux/swiotlb.h>
> -#include <linux/pci.h>
> -

Nit: please keep the blank line between linux/ and asm/ include blocks 
to match the predominant local style.

With that,

Reviewed-by: Robin Murphy <robin.murphy@arm.com>

>   #include <asm/cacheflush.h>
>   
>   pgprot_t arch_dma_mmap_pgprot(struct device *dev, pgprot_t prot,
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
