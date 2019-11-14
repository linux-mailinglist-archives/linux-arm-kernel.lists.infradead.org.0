Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA784FC1D6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 09:48:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f9SReCz62Fuf+U0hFO9Hll+OYV3iuMts5VXpxjCPVA8=; b=hJTKfj7aCyHbZg
	LNvR/E82pcKPND8arlFQEKa9RPMioWzYV05t3OLwpXpIngdxZxrVQG112wu1YpuUxh4SJxCG+aIjb
	KEouR1x5C0MuH5qTYKa6UFb8w9IzQmSDkCCvjQUPbbadj+hebLaIbnZNILOa41xAEHKj+IH5fx2g+
	3sZrp0MlgKuqlbGyRCTLqRYmu/J+Wi5/NIH5iwfhZcfuIWwtcVSKaFqOuZ+AmZTuu3USXg8WRYWsF
	wstVATxu/2bRbqruVuyxrHWXIiIIjsZyN81t2nyqeLEPHQiYrXPe7kvmeqO67V80NKxC/jPorXxpu
	7Abpe0tUOSJHlHCkd1Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVAoE-0004v8-C4; Thu, 14 Nov 2019 08:48:58 +0000
Received: from ozlabs.org ([203.11.71.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVAo6-0004uU-Dg
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 08:48:51 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 47DFWh1KCJz9sNT;
 Thu, 14 Nov 2019 19:48:48 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ellerman.id.au;
 s=201909; t=1573721328;
 bh=bDF+Yyy88Fi18Ty7c9txdLpa+ezncf6v+l29k9UorgE=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=h8xc1Vk45YLl9MzdGeCdPvVM/gZgFW8kGJAtTantRRnTOlPRUk++Y13aiXGqk/x0i
 +uYEKQ6YmW092dWaZrlWweY0cIjcwmDub4jkR/wcrMJYEUmFGPzEJ2z6Ihh2l9l84s
 VWu2apAPX2+lF206X5eZXVLXEk+Z4OjWoh3rvv3tb1AO83VqhnrRpa/I0Gcb49rzlo
 KnNUrtMjeae+4ZLyJp+BqjmUzhV2MqmSlAxK7/LELcl2os+oGvZOJwGpAm8mUJEh5W
 erpXofYK/ZCFPUo11Pk1SoU/EupeIr+q89BxoSTnukj3aY8zV7vWldzixXShJN/wTN
 wKlQaaHzA3RhQ==
From: Michael Ellerman <mpe@ellerman.id.au>
To: Christoph Hellwig <hch@lst.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 iommu@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>
Subject: Re: [PATCH 3/3] powerpc: remove support for NULL dev in __phys_to_dma
 / __dma_to_phys
In-Reply-To: <20191113073539.9660-4-hch@lst.de>
References: <20191113073539.9660-1-hch@lst.de>
 <20191113073539.9660-4-hch@lst.de>
Date: Thu, 14 Nov 2019 19:48:47 +1100
Message-ID: <8736eq268g.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_004850_623226_B16E3B95 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.11.71.1 listed in list.dnswl.org]
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
> Support for calling the DMA API functions without a valid device pointer
> was removed a while ago, so remove the stale support for that from the
> powerpc __phys_to_dma / __dma_to_phys helpers.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/powerpc/include/asm/dma-direct.h | 4 ----
>  1 file changed, 4 deletions(-)

Acked-by: Michael Ellerman <mpe@ellerman.id.au>

cheers

> diff --git a/arch/powerpc/include/asm/dma-direct.h b/arch/powerpc/include/asm/dma-direct.h
> index e29e8a236b8d..abc154d784b0 100644
> --- a/arch/powerpc/include/asm/dma-direct.h
> +++ b/arch/powerpc/include/asm/dma-direct.h
> @@ -4,15 +4,11 @@
>  
>  static inline dma_addr_t __phys_to_dma(struct device *dev, phys_addr_t paddr)
>  {
> -	if (!dev)
> -		return paddr + PCI_DRAM_OFFSET;
>  	return paddr + dev->archdata.dma_offset;
>  }
>  
>  static inline phys_addr_t __dma_to_phys(struct device *dev, dma_addr_t daddr)
>  {
> -	if (!dev)
> -		return daddr - PCI_DRAM_OFFSET;
>  	return daddr - dev->archdata.dma_offset;
>  }
>  #endif /* ASM_POWERPC_DMA_DIRECT_H */
> -- 
> 2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
