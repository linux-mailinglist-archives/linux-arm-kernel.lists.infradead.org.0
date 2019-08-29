Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70FD4A2A42
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 00:49:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uyB4qJ6h9K1/5VKIACZNXGbLSB3XmlB3qMBGYpzhHYo=; b=RTWiJh2YnaIJj5
	SdYABO6sHx1Bj6sVb54/RTpI6k3mR5HTZrlNLj/aWDFBVyOkA6EoWWwGXQr6HRUGTjqjh3vMWWWqv
	f5DMT+HHDpMCWy2pFgOq/CQO8YgnUDo5cYEH/KXi7t5rVoXm/R9RZGvN6J71Tyh6/kV1l3SLo92Hl
	lRUEuAFUjzosQiRWiFyHJCmcwhwMG2aZ+y9CePjtYuMSge4HdMWNqbuprDnJvsCE5JBaxTZso8z//
	cBsZUUJZqQVpeh99r0bCJi09dV1fdtoRVxDR6OsJ93MZnQExs10ncrx1BotilTSSEEZb8sZyp6EMj
	gFzmqeBsRjwXNaKDh1Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3TEg-000420-4e; Thu, 29 Aug 2019 22:49:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3TDV-0002ys-OK
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 22:48:35 +0000
Received: from localhost (c-67-164-102-47.hsd1.ca.comcast.net [67.164.102.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D7AD72189D;
 Thu, 29 Aug 2019 22:48:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567118913;
 bh=ZGRvcaq/a8pJd+ywMIWiJwEFzqT0vsYzNvrp/+e8HkA=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=wnkNFIIv+4LJV93bbLL55j9Hxy9G2m3QtVn4rgC4iUTgVBDhTaNaO2ubx36Anoprj
 /xtSvbGDC2SgW8e7dEuJQF71Y045fGovXpA3c1vi7wuauPYe1W8Ib/cgSSGlSTK4Qd
 G4oXD/PaKu6vmQypn5BNG22/goyVDTLPSBwEAb58=
Date: Thu, 29 Aug 2019 15:48:32 -0700 (PDT)
From: Stefano Stabellini <sstabellini@kernel.org>
X-X-Sender: sstabellini@sstabellini-ThinkPad-T480s
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 11/11] arm64: use asm-generic/dma-mapping.h
In-Reply-To: <20190826121944.515-12-hch@lst.de>
Message-ID: <alpine.DEB.2.21.1908281527130.8175@sstabellini-ThinkPad-T480s>
References: <20190826121944.515-1-hch@lst.de>
 <20190826121944.515-12-hch@lst.de>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_154833_938713_103497DA 
X-CRM114-Status: GOOD (  14.67  )
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
 xen-devel@lists.xenproject.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 26 Aug 2019, Christoph Hellwig wrote:
> Now that the Xen special cases are gone nothing worth mentioning is
> left in the arm64 <asm/dma-mapping.h> file, so switch to use the
> asm-generic version instead.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Acked-by: Will Deacon <will@kernel.org>

Reviewed-by: Stefano Stabellini <sstabellini@kernel.org>


> ---
>  arch/arm64/include/asm/Kbuild        |  1 +
>  arch/arm64/include/asm/dma-mapping.h | 22 ----------------------
>  arch/arm64/mm/dma-mapping.c          |  1 +
>  3 files changed, 2 insertions(+), 22 deletions(-)
>  delete mode 100644 arch/arm64/include/asm/dma-mapping.h
> 
> diff --git a/arch/arm64/include/asm/Kbuild b/arch/arm64/include/asm/Kbuild
> index c52e151afab0..98a5405c8558 100644
> --- a/arch/arm64/include/asm/Kbuild
> +++ b/arch/arm64/include/asm/Kbuild
> @@ -4,6 +4,7 @@ generic-y += delay.h
>  generic-y += div64.h
>  generic-y += dma.h
>  generic-y += dma-contiguous.h
> +generic-y += dma-mapping.h
>  generic-y += early_ioremap.h
>  generic-y += emergency-restart.h
>  generic-y += hw_irq.h
> diff --git a/arch/arm64/include/asm/dma-mapping.h b/arch/arm64/include/asm/dma-mapping.h
> deleted file mode 100644
> index 67243255a858..000000000000
> --- a/arch/arm64/include/asm/dma-mapping.h
> +++ /dev/null
> @@ -1,22 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0-only */
> -/*
> - * Copyright (C) 2012 ARM Ltd.
> - */
> -#ifndef __ASM_DMA_MAPPING_H
> -#define __ASM_DMA_MAPPING_H
> -
> -#ifdef __KERNEL__
> -
> -#include <linux/types.h>
> -#include <linux/vmalloc.h>
> -
> -#include <xen/xen.h>
> -#include <asm/xen/hypervisor.h>
> -
> -static inline const struct dma_map_ops *get_arch_dma_ops(struct bus_type *bus)
> -{
> -	return NULL;
> -}
> -
> -#endif	/* __KERNEL__ */
> -#endif	/* __ASM_DMA_MAPPING_H */
> diff --git a/arch/arm64/mm/dma-mapping.c b/arch/arm64/mm/dma-mapping.c
> index 4b244a037349..6578abcfbbc7 100644
> --- a/arch/arm64/mm/dma-mapping.c
> +++ b/arch/arm64/mm/dma-mapping.c
> @@ -8,6 +8,7 @@
>  #include <linux/cache.h>
>  #include <linux/dma-noncoherent.h>
>  #include <linux/dma-iommu.h>
> +#include <xen/xen.h>
>  #include <xen/swiotlb-xen.h>
>  
>  #include <asm/cacheflush.h>
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
