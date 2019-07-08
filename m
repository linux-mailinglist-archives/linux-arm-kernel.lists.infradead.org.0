Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC5E61E13
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 13:56:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oF+lBKISan5R2LhB1wiJ0kW0s7vj/wzVWEBvm5A2bYQ=; b=phg6Q0zmOjBlZV
	4lOLt8Ukk7RVA2K54vTtPQsKo7NxZf5FEakm1UyQioj1qOZDlsZLKdJ2ZZkZ4aKVJlW4h366re615
	Y8oAQaJyCWhmI/KU8RfkuAVEenceMP6AB1iyCQgz37j8VztSrp/5VP9PT+pZrQ7fpUTiXFaJFRfO2
	MFcgRvzsSJOhmKtYivqXUYWb/bP2pFkqHtfMSk7D/dneGjC168ujw+k1elbK6HpUJw5E8wpdp/DHy
	U3/UQrYjyfiWm6AQ+Gjh1Wc94kOacE5AvdrBWOi/V0GP02lZGxakTxobJHxoIvQDR+swvd2Ot/gyE
	6rVn3c0VK8+IdMcF2w1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkSGP-0005tA-2X; Mon, 08 Jul 2019 11:56:57 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkSFw-0005hh-ON
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 11:56:30 +0000
Received: by mail-vs1-xe44.google.com with SMTP id m23so7994783vso.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jul 2019 04:56:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HBytyteQEqE0MSe1IOfYnAnkrJNKH8hCeBxnrS0M68E=;
 b=Rm7uAMB7M5Qn0X6mOV3Iz8dOnLsIQ9eGsDcwh4z92MopdN7KKiq31AboQlypIo9V9v
 ue9bef6yCpVOq2onDY/zQSjkhhKHmc+cbTLwy6OlgG0Lcy3AwSUbpz29HJdKqTZdjodu
 FOu1QU4FrfCCQ1PSZLHjJ1nnN1sfcEYlYy1FvzGRBwpgHIN6h3mwMUDQ1P2H8Tc3oKv7
 oZ+QkHk+nRGF5xp1DGXIjCku+ZIdHyeJCvc/Tsm/3sQbRgU0UlPbI2wofVSyQNLdHlAO
 Tg+EJOx0U9geRwo4Pu/oWUFHPGyernGW0Sp6KVrxuMab2/nNUIIQi9O9nfwGze9pk7AV
 w6xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HBytyteQEqE0MSe1IOfYnAnkrJNKH8hCeBxnrS0M68E=;
 b=BPVoqL6kZJuE6igGagB7SezWu4OxHSmeop/VwYPkFDPbrXbhjKqVrpXUWfiC8yEhBf
 LnZkXSfT2L6ExEO7Ugodi64j0djyN8rmLnLa1R+B8tLJE1muvMdKSewFOxMH2oJqjsbH
 euNKNOzkjs91oei6sP6Sg9nnJRwlQvNZ5dz61KK5ZWXSD5v8HHPF5jbq3q2ULVOGSmx+
 unfCQswn+de1R6c3Xawx+GYNXDpg2kfxPm4uknjoYEcyZm4vQppNbT0KOYvWVSosw+Re
 dihnhh5dtVdXkLLPlCBBrqb9yxSjrOA8H+SLvYdek6J0oiudm2nITPBBLZxpJ36pNpiy
 U0kQ==
X-Gm-Message-State: APjAAAXBeWG9uqRzF4r4fxHGF3zGbZIh/atOe02Ef365TrIrwjRzrrq6
 6J03FmWSclTQyuyqXCVpTvW3/dZzzbslzQvgOndfnH6n
X-Google-Smtp-Source: APXvYqzg4E2v4x7VsWLV3ufXyfYMYcZpu74cfh+llLws+qIdafA82e7IbF0d3dN/j1DEFitRvg4vHdb6lzOYvkL7RiA=
X-Received: by 2002:a67:7a90:: with SMTP id v138mr9705298vsc.200.1562586987921; 
 Mon, 08 Jul 2019 04:56:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190625092042.19320-1-hch@lst.de>
 <20190625092042.19320-3-hch@lst.de>
In-Reply-To: <20190625092042.19320-3-hch@lst.de>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 8 Jul 2019 13:55:52 +0200
Message-ID: <CAPDyKFr=skv_109JfYQgZrzrEox_CdSmpO_9iU10OC+sGTz1wQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] dma-mapping: remove dma_max_pfn
To: Christoph Hellwig <hch@lst.de>, Marc Gonzalez <marc.w.gonzalez@free.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_045628_793897_CDD6C58B 
X-CRM114-Status: GOOD (  18.46  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 25 Jun 2019 at 11:21, Christoph Hellwig <hch@lst.de> wrote:
>
> These days the DMA mapping code must bounce buffer for any not supported
> address, and if they driver needs to optimize for natively supported
> ranged it should use dma_get_required_mask.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Applied for next, by amending the changelog according to suggestions
from Marc, thanks!

I also decided to consider to the reply from Marc (with the changes
made) as an ack, so added a tag for that.

If there are any objections, from anyone, please tell now.

Kind regards
Uffe


> ---
>  arch/arm/include/asm/dma-mapping.h | 7 -------
>  include/linux/dma-mapping.h        | 7 -------
>  2 files changed, 14 deletions(-)
>
> diff --git a/arch/arm/include/asm/dma-mapping.h b/arch/arm/include/asm/dma-mapping.h
> index 03ba90ffc0f8..7e0486ad1318 100644
> --- a/arch/arm/include/asm/dma-mapping.h
> +++ b/arch/arm/include/asm/dma-mapping.h
> @@ -89,13 +89,6 @@ static inline dma_addr_t virt_to_dma(struct device *dev, void *addr)
>  }
>  #endif
>
> -/* The ARM override for dma_max_pfn() */
> -static inline unsigned long dma_max_pfn(struct device *dev)
> -{
> -       return dma_to_pfn(dev, *dev->dma_mask);
> -}
> -#define dma_max_pfn(dev) dma_max_pfn(dev)
> -
>  /* do not use this function in a driver */
>  static inline bool is_device_dma_coherent(struct device *dev)
>  {
> diff --git a/include/linux/dma-mapping.h b/include/linux/dma-mapping.h
> index 6309a721394b..8d13e28a8e07 100644
> --- a/include/linux/dma-mapping.h
> +++ b/include/linux/dma-mapping.h
> @@ -729,13 +729,6 @@ static inline int dma_set_seg_boundary(struct device *dev, unsigned long mask)
>         return -EIO;
>  }
>
> -#ifndef dma_max_pfn
> -static inline unsigned long dma_max_pfn(struct device *dev)
> -{
> -       return (*dev->dma_mask >> PAGE_SHIFT) + dev->dma_pfn_offset;
> -}
> -#endif
> -
>  static inline int dma_get_cache_alignment(void)
>  {
>  #ifdef ARCH_DMA_MINALIGN
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
