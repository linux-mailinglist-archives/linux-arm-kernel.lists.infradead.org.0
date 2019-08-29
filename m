Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39923A2A3F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 00:49:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3cGM36eU91XrnaAyb371IPTrYgcG+j/BXS6pDAQ3WtI=; b=ckRRHnat0WgA9M
	SISZf6TIKf6Qihz3u6ym/3zs+khSuzhirCpdCIJYsHvXbthLPUiWLtUGO8LSipGW9iaOp3cP5/lO2
	4KwnUf9sHangC+jCjlpIelrKQoeZu2RjLo9Wy91whT8LOts73+k68nv5Fy0+l25kDAXM0cDrS0igo
	bkoXu0rOdCl26bP2NdSAoTWh/u3UwDllpIZAGwJUCVPVnW0Pp7J9bBGo2VOsASIRR9n+ARFZSz2Np
	YeZ1rJBoisrBh23eM3Z8Nh+qQOi9wUhwPGY1wDKXZaAnMbITgzWJomml9U3bj+1oC+FApijQhJflY
	lYOWm69ocZJJPOOcocmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3TEC-0003UC-Fa; Thu, 29 Aug 2019 22:49:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3TCz-0002VJ-J2
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 22:48:03 +0000
Received: from localhost (c-67-164-102-47.hsd1.ca.comcast.net [67.164.102.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AC0992173E;
 Thu, 29 Aug 2019 22:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567118881;
 bh=AF7KaaN0SPHZVCzMo4I0QlziT4Dc084NALpVNTE66xw=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=iThSoqqrWY1rBHxgi2xpVYpYO5u/qkuBWYnStULaaLWA7uxqFPq1k2ifNvRpQjCsx
 oSUbcFoQVW+Q2dWM8uumjkvHntXywq9XuABVd8lVFeKIULhiYmtzH1Oa21ErYKv5Q2
 UmYWrhepeTu37larup9+65efIBZ3rbyjcLiAAXV4=
Date: Thu, 29 Aug 2019 15:48:00 -0700 (PDT)
From: Stefano Stabellini <sstabellini@kernel.org>
X-X-Sender: sstabellini@sstabellini-ThinkPad-T480s
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 09/11] swiotlb-xen: remove page-coherent.h
In-Reply-To: <20190826121944.515-10-hch@lst.de>
Message-ID: <alpine.DEB.2.21.1908281526280.8175@sstabellini-ThinkPad-T480s>
References: <20190826121944.515-1-hch@lst.de>
 <20190826121944.515-10-hch@lst.de>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_154801_772885_57B4298E 
X-CRM114-Status: GOOD (  15.80  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Stefano Stabellini <sstabellini@kernel.org>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 xen-devel@lists.xenproject.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 26 Aug 2019, Christoph Hellwig wrote:
> The only thing left of page-coherent.h is two functions implemented by
> the architecture for non-coherent DMA support that are never called for
> fully coherent architectures.  Just move the prototypes for those to
> swiotlb-xen.h instead.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Reviewed-by: Stefano Stabellini <sstabellini@kernel.org>


> ---
>  arch/arm/include/asm/xen/page-coherent.h   |  2 --
>  arch/arm64/include/asm/xen/page-coherent.h |  2 --
>  arch/x86/include/asm/xen/page-coherent.h   | 11 -----------
>  drivers/xen/swiotlb-xen.c                  |  3 ---
>  include/Kbuild                             |  1 -
>  include/xen/arm/page-coherent.h            | 10 ----------
>  include/xen/swiotlb-xen.h                  |  6 ++++++
>  7 files changed, 6 insertions(+), 29 deletions(-)
>  delete mode 100644 arch/arm/include/asm/xen/page-coherent.h
>  delete mode 100644 arch/arm64/include/asm/xen/page-coherent.h
>  delete mode 100644 arch/x86/include/asm/xen/page-coherent.h
>  delete mode 100644 include/xen/arm/page-coherent.h
> 
> diff --git a/arch/arm/include/asm/xen/page-coherent.h b/arch/arm/include/asm/xen/page-coherent.h
> deleted file mode 100644
> index 27e984977402..000000000000
> --- a/arch/arm/include/asm/xen/page-coherent.h
> +++ /dev/null
> @@ -1,2 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0 */
> -#include <xen/arm/page-coherent.h>
> diff --git a/arch/arm64/include/asm/xen/page-coherent.h b/arch/arm64/include/asm/xen/page-coherent.h
> deleted file mode 100644
> index 27e984977402..000000000000
> --- a/arch/arm64/include/asm/xen/page-coherent.h
> +++ /dev/null
> @@ -1,2 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0 */
> -#include <xen/arm/page-coherent.h>
> diff --git a/arch/x86/include/asm/xen/page-coherent.h b/arch/x86/include/asm/xen/page-coherent.h
> deleted file mode 100644
> index c9c8398a31ff..000000000000
> --- a/arch/x86/include/asm/xen/page-coherent.h
> +++ /dev/null
> @@ -1,11 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0 */
> -#ifndef _ASM_X86_XEN_PAGE_COHERENT_H
> -#define _ASM_X86_XEN_PAGE_COHERENT_H
> -
> -static inline void xen_dma_sync_single_for_cpu(struct device *hwdev,
> -		dma_addr_t handle, size_t size, enum dma_data_direction dir) { }
> -
> -static inline void xen_dma_sync_single_for_device(struct device *hwdev,
> -		dma_addr_t handle, size_t size, enum dma_data_direction dir) { }
> -
> -#endif /* _ASM_X86_XEN_PAGE_COHERENT_H */
> diff --git a/drivers/xen/swiotlb-xen.c b/drivers/xen/swiotlb-xen.c
> index a642e284f1e2..95911ff9c11c 100644
> --- a/drivers/xen/swiotlb-xen.c
> +++ b/drivers/xen/swiotlb-xen.c
> @@ -35,9 +35,6 @@
>  #include <xen/xen-ops.h>
>  #include <xen/hvc-console.h>
>  
> -#include <asm/dma-mapping.h>
> -#include <asm/xen/page-coherent.h>
> -
>  #include <trace/events/swiotlb.h>
>  /*
>   * Used to do a quick range check in swiotlb_tbl_unmap_single and
> diff --git a/include/Kbuild b/include/Kbuild
> index c38f0d46b267..cce5cf6abf89 100644
> --- a/include/Kbuild
> +++ b/include/Kbuild
> @@ -1189,7 +1189,6 @@ header-test-			+= video/vga.h
>  header-test-			+= video/w100fb.h
>  header-test-			+= xen/acpi.h
>  header-test-			+= xen/arm/hypercall.h
> -header-test-			+= xen/arm/page-coherent.h
>  header-test-			+= xen/arm/page.h
>  header-test-			+= xen/balloon.h
>  header-test-			+= xen/events.h
> diff --git a/include/xen/arm/page-coherent.h b/include/xen/arm/page-coherent.h
> deleted file mode 100644
> index 635492d41ebe..000000000000
> --- a/include/xen/arm/page-coherent.h
> +++ /dev/null
> @@ -1,10 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0 */
> -#ifndef _XEN_ARM_PAGE_COHERENT_H
> -#define _XEN_ARM_PAGE_COHERENT_H
> -
> -void xen_dma_sync_for_cpu(struct device *dev, dma_addr_t handle,
> -		phys_addr_t paddr, size_t size, enum dma_data_direction dir);
> -void xen_dma_sync_for_device(struct device *dev, dma_addr_t handle,
> -		phys_addr_t paddr, size_t size, enum dma_data_direction dir);
> -
> -#endif /* _XEN_ARM_PAGE_COHERENT_H */
> diff --git a/include/xen/swiotlb-xen.h b/include/xen/swiotlb-xen.h
> index 5e4b83f83dbc..a7c642872568 100644
> --- a/include/xen/swiotlb-xen.h
> +++ b/include/xen/swiotlb-xen.h
> @@ -2,8 +2,14 @@
>  #ifndef __LINUX_SWIOTLB_XEN_H
>  #define __LINUX_SWIOTLB_XEN_H
>  
> +#include <linux/dma-mapping.h>
>  #include <linux/swiotlb.h>
>  
> +void xen_dma_sync_for_cpu(struct device *dev, dma_addr_t handle,
> +		phys_addr_t paddr, size_t size, enum dma_data_direction dir);
> +void xen_dma_sync_for_device(struct device *dev, dma_addr_t handle,
> +		phys_addr_t paddr, size_t size, enum dma_data_direction dir);
> +
>  extern int xen_swiotlb_init(int verbose, bool early);
>  extern const struct dma_map_ops xen_swiotlb_dma_ops;
>  
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
