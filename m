Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 762679CE31
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 13:34:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DFLxGlxbfZwYUU4ybq+OUEQs9g407sgaICW9tJK3ea0=; b=eOep1oT2UdxtMC
	XizJ7w2HeV1jMZGPtaTfLSX3+qwJWiKeqa2FvBFpkJTiLe2p/zezhfd9Y5F/Lu6Pbj6BRq5Prgrbu
	wRkHHPQ2wVPn1kK3O0b6q+KYXAYyCuMbcwrr4SQ3hremDvsa2Nv21MXceo/llqT63gBtLWtKktMp/
	oOsljKsIoOjEfE6Cs4m+4MUx4UFvGLSLRXKjpwzmIgB4X2Vi4YnYGRvohTP8DIha3icWKxhffurDX
	AiRzT8ZO864DMixNQWyYYEPLi/Jwr7Oycsc/AcC9SNtpdE24oPYDRfkMZAZwMbQCweGxSEQWy/Ckq
	lzgy+auKq652qVwUjtCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2DGA-0000P5-55; Mon, 26 Aug 2019 11:34:06 +0000
Received: from ozlabs.org ([203.11.71.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2DG3-0000Ny-Uc; Mon, 26 Aug 2019 11:34:01 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 46H8z50xybz9sBF;
 Mon, 26 Aug 2019 21:33:53 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, catalin.marinas@arm.com,
 hch@lst.de, wahrenst@gmx.net, marc.zyngier@arm.com, robh+dt@kernel.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arch@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-mm@kvack.org,
 linux-riscv@lists.infradead.org, Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [PATCH v2 09/11] dma-direct: turn ARCH_ZONE_DMA_BITS into a
 variable
In-Reply-To: <20190820145821.27214-10-nsaenzjulienne@suse.de>
References: <20190820145821.27214-1-nsaenzjulienne@suse.de>
 <20190820145821.27214-10-nsaenzjulienne@suse.de>
Date: Mon, 26 Aug 2019 21:33:51 +1000
Message-ID: <87ef1840v4.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_043400_174833_5D9E9C4E 
X-CRM114-Status: UNSURE (   6.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-s390@vger.kernel.org, f.fainelli@gmail.com,
 Vasily Gorbik <gor@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, frowand.list@gmail.com,
 linuxppc-dev@lists.ozlabs.org, Heiko Carstens <heiko.carstens@de.ibm.com>,
 linux-kernel@vger.kernel.org, eric@anholt.net, mbrugger@suse.com,
 Paul Mackerras <paulus@samba.org>, linux-rpi-kernel@lists.infradead.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, akpm@linux-foundation.org,
 will@kernel.org, nsaenzjulienne@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Nicolas Saenz Julienne <nsaenzjulienne@suse.de> writes:
> diff --git a/arch/powerpc/include/asm/page.h b/arch/powerpc/include/asm/page.h
> index 0d52f57fca04..73668a21ae78 100644
> --- a/arch/powerpc/include/asm/page.h
> +++ b/arch/powerpc/include/asm/page.h
> @@ -319,13 +319,4 @@ struct vm_area_struct;
>  #endif /* __ASSEMBLY__ */
>  #include <asm/slice.h>
>  
> -/*
> - * Allow 30-bit DMA for very limited Broadcom wifi chips on many powerbooks.

This comment got lost.

> diff --git a/arch/powerpc/mm/mem.c b/arch/powerpc/mm/mem.c
> index 9191a66b3bc5..2a69f87585df 100644
> --- a/arch/powerpc/mm/mem.c
> +++ b/arch/powerpc/mm/mem.c
> @@ -237,9 +238,14 @@ void __init paging_init(void)
>  	printk(KERN_DEBUG "Memory hole size: %ldMB\n",
>  	       (long int)((top_of_ram - total_ram) >> 20));
>  
> +	if (IS_ENABLED(CONFIG_PPC32))

Can you please propagate it here?

> +		zone_dma_bits = 30;
> +	else
> +		zone_dma_bits = 31;
> +

cheers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
