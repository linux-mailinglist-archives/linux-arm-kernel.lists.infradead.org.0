Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3AA2FC1CE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 09:47:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cHhUAWujFfm7JlIAx5PppmTCn0XFhqLfc/PgPFBJuuY=; b=YakXm0SJmRgxVU
	KN9wv7K5q/OcRlCC7/AA0EstRszcCBvzrrFdR+57tlehypIcZgZ5HljsaWNfBPyb1WkwhNx8ACwB2
	nzhMr6aEJ/HfiZWHKiDGxVxW6jJvxqYgHm660r3FR3OlKElS9lCUwHje00kh5RdLKd3mTwfrZnxKu
	SBltb3miJH9BArkmiIh3kYzVZ9r14F+0VlZRTc2HaG/6oMbMQhPECXtfKdPj+kSOcg1YR/8SqRn0b
	gJRfFX0e4vZe/8zQGW1BLhZth0XXKvlJjC1lsNxZPBaiiLwMQxkwuqaID1IeWagsxwP1OeFv0EOKv
	gObDtHWnRsguFTyuAAsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVAmm-0004bs-Un; Thu, 14 Nov 2019 08:47:28 +0000
Received: from ozlabs.org ([2401:3900:2:1::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVAmc-0004Z6-VL
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 08:47:21 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 47DFTs20Lqz9sNT;
 Thu, 14 Nov 2019 19:47:13 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ellerman.id.au;
 s=201909; t=1573721233;
 bh=6stxD/P99Wd0VO3VjYcBYgKRhWGeDRkv4DHJwuG5urg=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=kVBnH1S6jcLglXb05iWLAEiHR10k0w1FhIdJdWvuStzBNsnARBl4+uSum5s2brxqP
 GJKfzNUU9xlPnXpQFoB7VITQ2OqfqOQs0rAG0CLQ3W5073nN2M00BOeOkimq3YeKkP
 TdbSxqMAPGijfnL7OZRTBDoHc2ILG5v5wUC02n346N7mpwNn7+Y3H79hl5XiAfFXSw
 F8JTEaftbfxSAu4IoLR1A6JgSW2EAokcIko7HMU6NHZhO+81GjkLbdvKtMguFykaGo
 58U9wlWqYA3jIl1yb8C1Zlgl6ro+izLPJI1NtywgXb/5daBLLgSe7ziWWtYWYEOEvc
 1a0vKhm4Wgi6g==
From: Michael Ellerman <mpe@ellerman.id.au>
To: Christoph Hellwig <hch@lst.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 iommu@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>
Subject: Re: [PATCH 1/3] dma-direct: unify the dma_capable definitions
In-Reply-To: <20191113073539.9660-2-hch@lst.de>
References: <20191113073539.9660-1-hch@lst.de>
 <20191113073539.9660-2-hch@lst.de>
Date: Thu, 14 Nov 2019 19:47:09 +1100
Message-ID: <875zjm26b6.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_004719_214748_01FC31C0 
X-CRM114-Status: GOOD (  13.76  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2401:3900:2:1:0:0:0:2 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linuxppc-dev@lists.ozlabs.org, linux-mips@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Christoph Hellwig <hch@lst.de> writes:
> Currently each architectures that wants to override dma_to_phys and
> phys_to_dma also has to provide dma_capable.  But there isn't really
> any good reason for that.  powerpc and mips just have copies of the
> generic one minus the latests fix, and the arm one was the inspiration
> for said fix, but misses the bus_dma_mask handling.
> Make all architectures use the generic version instead.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/arm/include/asm/dma-direct.h     | 19 -------------------
>  arch/mips/include/asm/dma-direct.h    |  8 --------
>  arch/powerpc/include/asm/dma-direct.h |  9 ---------

Looks OK to me.

Acked-by: Michael Ellerman <mpe@ellerman.id.au> (powerpc)

cheers

> diff --git a/arch/arm/include/asm/dma-direct.h b/arch/arm/include/asm/dma-direct.h
> index b67e5fc1fe43..7c3001a6a775 100644
> --- a/arch/arm/include/asm/dma-direct.h
> +++ b/arch/arm/include/asm/dma-direct.h
> @@ -14,23 +14,4 @@ static inline phys_addr_t __dma_to_phys(struct device *dev, dma_addr_t dev_addr)
>  	return __pfn_to_phys(dma_to_pfn(dev, dev_addr)) + offset;
>  }
>  
> -static inline bool dma_capable(struct device *dev, dma_addr_t addr, size_t size)
> -{
> -	u64 limit, mask;
> -
> -	if (!dev->dma_mask)
> -		return 0;
> -
> -	mask = *dev->dma_mask;
> -
> -	limit = (mask + 1) & ~mask;
> -	if (limit && size > limit)
> -		return 0;
> -
> -	if ((addr | (addr + size - 1)) & ~mask)
> -		return 0;
> -
> -	return 1;
> -}
> -
>  #endif /* ASM_ARM_DMA_DIRECT_H */
> diff --git a/arch/mips/include/asm/dma-direct.h b/arch/mips/include/asm/dma-direct.h
> index b5c240806e1b..14e352651ce9 100644
> --- a/arch/mips/include/asm/dma-direct.h
> +++ b/arch/mips/include/asm/dma-direct.h
> @@ -2,14 +2,6 @@
>  #ifndef _MIPS_DMA_DIRECT_H
>  #define _MIPS_DMA_DIRECT_H 1
>  
> -static inline bool dma_capable(struct device *dev, dma_addr_t addr, size_t size)
> -{
> -	if (!dev->dma_mask)
> -		return false;
> -
> -	return addr + size - 1 <= *dev->dma_mask;
> -}
> -
>  dma_addr_t __phys_to_dma(struct device *dev, phys_addr_t paddr);
>  phys_addr_t __dma_to_phys(struct device *dev, dma_addr_t daddr);
>  
> diff --git a/arch/powerpc/include/asm/dma-direct.h b/arch/powerpc/include/asm/dma-direct.h
> index a2912b47102c..e29e8a236b8d 100644
> --- a/arch/powerpc/include/asm/dma-direct.h
> +++ b/arch/powerpc/include/asm/dma-direct.h
> @@ -2,15 +2,6 @@
>  #ifndef ASM_POWERPC_DMA_DIRECT_H
>  #define ASM_POWERPC_DMA_DIRECT_H 1
>  
> -static inline bool dma_capable(struct device *dev, dma_addr_t addr, size_t size)
> -{
> -	if (!dev->dma_mask)
> -		return false;
> -
> -	return addr + size - 1 <=
> -		min_not_zero(*dev->dma_mask, dev->bus_dma_mask);
> -}
> -
>  static inline dma_addr_t __phys_to_dma(struct device *dev, phys_addr_t paddr)
>  {
>  	if (!dev)
> diff --git a/include/linux/dma-direct.h b/include/linux/dma-direct.h
> index 6db863c3eb93..991f8aa2676e 100644
> --- a/include/linux/dma-direct.h
> +++ b/include/linux/dma-direct.h
> @@ -24,6 +24,7 @@ static inline phys_addr_t __dma_to_phys(struct device *dev, dma_addr_t dev_addr)
>  
>  	return paddr + ((phys_addr_t)dev->dma_pfn_offset << PAGE_SHIFT);
>  }
> +#endif /* !CONFIG_ARCH_HAS_PHYS_TO_DMA */
>  
>  static inline bool dma_capable(struct device *dev, dma_addr_t addr, size_t size)
>  {
> @@ -38,7 +39,6 @@ static inline bool dma_capable(struct device *dev, dma_addr_t addr, size_t size)
>  
>  	return end <= min_not_zero(*dev->dma_mask, dev->bus_dma_mask);
>  }
> -#endif /* !CONFIG_ARCH_HAS_PHYS_TO_DMA */
>  
>  #ifdef CONFIG_ARCH_HAS_FORCE_DMA_UNENCRYPTED
>  bool force_dma_unencrypted(struct device *dev);
> -- 
> 2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
