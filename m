Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA949E7D0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 14:23:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6z8XGZeNxR2we++QO2sftU/wWpfziTB64GPFnwduW9s=; b=ut9NFyUmw1FU56MXR/483iE3J
	/kZPLsb65qKTbCwiAVd3k29KrNYXT2sVmNBPjtZR4MDmRHgWnQJ0af3vPkJRBOtM2Jxy8cPssCgf6
	w+OBr4HXcmS0gNhHDIPhpa1Q8ZO+vHnjOuPJ6NS+PkrNgIa3x8czS7ATO58HzEuMLzLhN1ktKEDkU
	xHE3PEXCWgMwGQJRSlPt6zUjhTOCjL0tlDs84tGzSJrNer500Lh9M5DzkE9WO086DxcHBUKIUQq+4
	Lvff6v4rh97012bvscC8wsHDdY2Z6rWfNW8ZlRwWpvwaJ3PaVbNmKaiMblgrhesmaIRe+9aMKkkPU
	BJ1czoTAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2aVf-0006ZA-Mt; Tue, 27 Aug 2019 12:23:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2aVU-0006YS-JB
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 12:23:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5D8E228;
 Tue, 27 Aug 2019 05:23:26 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4D4633F718;
 Tue, 27 Aug 2019 05:23:25 -0700 (PDT)
Subject: Re: [PATCH] arm: xen: mm: use __GPF_DMA32 for arm64
To: Peng Fan <peng.fan@nxp.com>,
 "sstabellini@kernel.org" <sstabellini@kernel.org>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>
References: <20190709083729.11135-1-peng.fan@nxp.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <d70b3a5c-647c-2147-99be-4572f76e898b@arm.com>
Date: Tue, 27 Aug 2019 13:23:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190709083729.11135-1-peng.fan@nxp.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_052328_677473_1CBF4914 
X-CRM114-Status: GOOD (  18.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "van.freenix@gmail.com" <van.freenix@gmail.com>,
 "xen-devel@lists.xenproject.org" <xen-devel@lists.xenproject.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/07/2019 09:22, Peng Fan wrote:
> arm64 shares some code under arch/arm/xen, including mm.c.
> However ZONE_DMA is removed by commit
> ad67f5a6545("arm64: replace ZONE_DMA with ZONE_DMA32").
> So to ARM64, need use __GFP_DMA32.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>   arch/arm/xen/mm.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/xen/mm.c b/arch/arm/xen/mm.c
> index e1d44b903dfc..a95e76d18bf9 100644
> --- a/arch/arm/xen/mm.c
> +++ b/arch/arm/xen/mm.c
> @@ -27,7 +27,7 @@ unsigned long xen_get_swiotlb_free_pages(unsigned int order)
>   
>   	for_each_memblock(memory, reg) {
>   		if (reg->base < (phys_addr_t)0xffffffff) {
> -			flags |= __GFP_DMA;
> +			flags |= __GFP_DMA | __GFP_DMA32;

Given the definition of GFP_ZONE_BAD, I'm not sure this combination of 
flags is strictly valid, but rather is implicitly reliant on only one of 
those zones ever actually existing. As such, it seems liable to blow up 
if the plans to add ZONE_DMA to arm64[1] go ahead.

Robin.

[1] 
https://lore.kernel.org/linux-arm-kernel/20190820145821.27214-1-nsaenzjulienne@suse.de/

>   			break;
>   		}
>   	}
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
