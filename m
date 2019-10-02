Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D5DC4591
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 03:32:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YPn79KSHEX2vT+rG9SBJNOpMdYapun0s9DxRdfod8As=; b=pjlDQQWde6jm/I
	iaEtCCvP8mjhlEWaGDo96GqiQzjrdYlpik4+IBusnOM82TnrknCwoEJtNgzYhM8jzXerd8rMAF50N
	OALgn5d1t9rd4Fdhr7pCKd08aSGA6f6g/0PzVr2dEQ5mhM6iXX+fR57zH0yRgtpWkd5YzznlqyXms
	RdkEbgX/Qv7+TeV0QdYh18cU4DgJz79ufQkFTxOXZHpargmjVxpSRAL8Fsqi4oxC8UiC5Be4+qjVb
	2/ZgcvM97t9Ox1Q0GG/Kj2OwxanMh+Q2SjHZl47hKY5UmsSKOg7Bp7BkVwuI4aFB7UHIfWuyHPckq
	WgmPoXpeNZPRrMDvTsIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFTVN-0007jY-7O; Wed, 02 Oct 2019 01:32:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFTVG-0007jD-AK
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 01:32:31 +0000
Received: from localhost (c-67-164-102-47.hsd1.ca.comcast.net [67.164.102.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8BB2C20873;
 Wed,  2 Oct 2019 01:32:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569979949;
 bh=NCguvm8ZH0VuZJmubMT+6CVArPYEWQ8h34WUk935RPo=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=KNhJvieS/cKytIVJyr+/bHg0NN3WQ7WX9xcFf7l3A93WhPtSRUHFCSgAKAzhTyJAF
 ZUNKk3lQuokC9cBJ/I+caASRiSbZW/pD+ziAuaOntm2CgVs0/PXZjLRX4DbevPnsiX
 0HKawEnzhFk8qy/tQQKc1k4Zs7pegRK+GmI2XO0k=
Date: Tue, 1 Oct 2019 18:32:29 -0700 (PDT)
From: Stefano Stabellini <sstabellini@kernel.org>
X-X-Sender: sstabellini@sstabellini-ThinkPad-T480s
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH V3] arm: xen: mm: use __GPF_DMA32 for arm64
In-Reply-To: <1568627400-21335-1-git-send-email-peng.fan@nxp.com>
Message-ID: <alpine.DEB.2.21.1910011832200.26319@sstabellini-ThinkPad-T480s>
References: <1568627400-21335-1-git-send-email-peng.fan@nxp.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_183230_380644_5CE01BE2 
X-CRM114-Status: GOOD (  15.22  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "sstabellini@kernel.org" <sstabellini@kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 dl-linux-imx <linux-imx@nxp.com>,
 "xen-devel@lists.xenproject.org" <xen-devel@lists.xenproject.org>,
 "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 16 Sep 2019, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> arm64 shares some code under arch/arm/xen, including mm.c.
> However ZONE_DMA is removed by commit
> ad67f5a6545("arm64: replace ZONE_DMA with ZONE_DMA32").
> 
> So add a check if CONFIG_ZONE_DMA32 is enabled use __GFP_DMA32.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Acked-by: Stefano Stabellini <sstabellini@kernel.org>


> ---
> 
> V3:
>  Use IS_ENABLED(CONFIG_ZONE_DMA32) and drop xen_set_gfp_dma.
> 
> V2:
>  Follow suggestion from Stefano,
>  introduce static inline void xen_set_gfp_dma(gfp_t *flags) for arm32/arm64, and
>  for arm64 using __GFP_DMA for the former and __GFP_DMA32 for the latter.
> 
> 
>  arch/arm/xen/mm.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/xen/mm.c b/arch/arm/xen/mm.c
> index 2b2c208408bb..38fa917c8585 100644
> --- a/arch/arm/xen/mm.c
> +++ b/arch/arm/xen/mm.c
> @@ -28,7 +28,10 @@ unsigned long xen_get_swiotlb_free_pages(unsigned int order)
>  
>  	for_each_memblock(memory, reg) {
>  		if (reg->base < (phys_addr_t)0xffffffff) {
> -			flags |= __GFP_DMA;
> +			if (IS_ENABLED(CONFIG_ZONE_DMA32))
> +				flags |= __GFP_DMA32;
> +			else
> +				flags |= __GFP_DMA;
>  			break;
>  		}
>  	}
> -- 
> 2.16.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
