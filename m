Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6179C1DD29F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 18:01:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PfFrWU+43Ssq+nmyZhIWYQfmSimVM2uj7FQ9xFbHEPw=; b=kEAOYkENYGL5EE
	BI3HQy7JCZshe/UpJwZMKqIHehIJGEyBBfGoF8An/gvCwL9A2RsfYV7hpCFVnDu1lvm8VfWy3Wx5z
	soDI2EweZdAbzn7Jjrn2lulAXPGGPXApOijNCvUAtn6a0PZi84x5ePeewFdKs7t5PcBnfAlyeeiDJ
	zgGPWNY9sO4HfAM2gHmJfdWdIeQKAwulYs67qi7c90nr+Weokkz1hQBUo31JH0+UMcj6UlyRMWmBq
	fyFIYlCN4EaojhSGerICvnAhgoEtlMHhdkU5MDrQX+Otqp3Ht4aZFCiTuuF1393UmkgbUkIHV7toa
	STBP4uDUKXnn1/+OJ3ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbnd0-00062p-De; Thu, 21 May 2020 16:01:02 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbncp-00060v-At
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 16:00:53 +0000
Received: by mail-wm1-x342.google.com with SMTP id f13so5982292wmc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 09:00:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=l1/7oVopGR8ZQd6NaIEuCXZDCOqHLrR/3N7LZWtpNqA=;
 b=GeTX2t72tcZNw5Q1Vq3bxOOwmr927HcyIkpXvBpKk0ZxuhWAwrGZ2fRvHtBA+vCd0a
 shiz7RMixnasTu8+CYC9VSFQPu/XFvPZUYSqT+77V10ReU/ZVMLAWMEwJi0ovuk6Cshd
 DWBNncRW5nBLTOcjfC9jlB3vujEzgdkgNY/1Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=l1/7oVopGR8ZQd6NaIEuCXZDCOqHLrR/3N7LZWtpNqA=;
 b=iniUvLG6TkgNW5xSZBdHDPryhoXpGVHRLZbvJqxf2wpRyX5k2JvjEIxC9dnkPvV609
 NgZRf/Oh9Pb5O/hIkIchuC4InSDPIKIsoT4cRXhhruzFqYT67lty5X5NYmjAg0pun+eP
 5c4tKm1OiY+Nj+CjRH/xVrrGcq7AKNOukAm9t98UBb4tT3bBgx3vGN9cVkWz6LwJYonj
 Sc3haJkyDDkQagCJ7cj1uNfaRoVmwKxB2Dwrkx1fwB5Y6NdBk/Rl9OS0hmMyB6GHqG3N
 6DRYv22S5Gse0jOUbrPfuc8WXiEtZnhRCMDaG/WYP+u8nAoUhA+YU7p9oQgHa7Ofb7tG
 y17A==
X-Gm-Message-State: AOAM532viXSeeTasbtxS7ZaNw7Y4JvatcNyw2FqY4hNkBe/ZYdHmMS+8
 Ns55UjttaL/DnON3ORs2r11brQ==
X-Google-Smtp-Source: ABdhPJwBbbkzQM0pkq+XJy1eUeL/VqXKXEJpvr6yzQ+SOqXN0RpdIlsOxlmRNdPbmgSFjRlsFB6ApA==
X-Received: by 2002:a7b:c3da:: with SMTP id t26mr8868032wmj.146.1590076848935; 
 Thu, 21 May 2020 09:00:48 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id y207sm7661823wmd.7.2020.05.21.09.00.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 May 2020 09:00:48 -0700 (PDT)
Date: Thu, 21 May 2020 16:00:46 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Xia Jiang <xia.jiang@mediatek.com>
Subject: Re: [PATCH v8 11/14] media: dt-bindings: Add jpeg enc device tree
 node document
Message-ID: <20200521160046.GJ209565@chromium.org>
References: <20200403094033.8288-1-xia.jiang@mediatek.com>
 <20200403094033.8288-12-xia.jiang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403094033.8288-12-xia.jiang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_090051_368815_D5D6992F 
X-CRM114-Status: GOOD (  19.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: drinkcat@chromium.org, devicetree@vger.kernel.org, mojahsu@chromium.org,
 srv_heupstream@mediatek.com, Rick Chang <rick.chang@mediatek.com>,
 senozhatsky@chromium.org, linux-kernel@vger.kernel.org,
 maoguang.meng@mediatek.com, Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 sj.huang@mediatek.com, Rob Herring <robh+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, yong.wu@mediatek.com,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-mediatek@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Xia,

On Fri, Apr 03, 2020 at 05:40:30PM +0800, Xia Jiang wrote:
> Add jpeg enc device tree node document
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
> ---
> v8: no changes
> 
> v7: no changes
> 
> v6: no changes
> 
> v5: no changes
> 
> v4: no changes
> 
> v3: change compatible to SoC specific compatible
> 
> v2: no changes
> ---
>  .../bindings/media/mediatek-jpeg-encoder.txt  | 37 +++++++++++++++++++
>  1 file changed, 37 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.txt
> 

Thank you for the patch. Please see my comments inline.

> diff --git a/Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.txt b/Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.txt
> new file mode 100644
> index 000000000000..fa8da699493b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.txt
> @@ -0,0 +1,37 @@
> +* MediaTek JPEG Encoder
> +
> +MediaTek JPEG Encoder is the JPEG encode hardware present in MediaTek SoCs
> +
> +Required properties:
> +- compatible : should be one of:
> +               "mediatek,mt2701-jpgenc"
> +               ...

What does this "..." mean?

> +               followed by "mediatek,mtk-jpgenc"
> +- reg : physical base address of the JPEG encoder registers and length of
> +  memory mapped region.
> +- interrupts : interrupt number to the interrupt controller.
> +- clocks: device clocks, see
> +  Documentation/devicetree/bindings/clock/clock-bindings.txt for details.
> +- clock-names: must contain "jpgenc". It is the clock of JPEG encoder.

nit: In principle the clocks should be named after the function the clock
performs on the consumer side, i.e. the JPEG block in this case, I guess
here it's just a generic clock that does everything, but I guess it comes
from somewhere. Is it the AHB clock or something? In that case it would
normally be called "ahb".

> +- power-domains: a phandle to the power domain, see
> +  Documentation/devicetree/bindings/power/power_domain.txt for details.
> +- mediatek,larb: must contain the local arbiters in the current SoCs, see
> +  Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.txt
> +  for details.

I believe this isn't necessary anymore, because larbs are added
automatically by the MTK IOMMU driver using device links. +CC Yong who
worked on that.

> +- iommus: should point to the respective IOMMU block with master port as
> +  argument, see Documentation/devicetree/bindings/iommu/mediatek,iommu.txt
> +  for details.
> +
> +Example:
> +	jpegenc: jpegenc@1500a000 {
> +		compatible = "mediatek,mt2701-jpgenc",
> +			     "mediatek,mtk-jpgenc";
> +		reg = <0 0x1500a000 0 0x1000>;
> +		interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_LOW>;
> +		clocks =  <&imgsys CLK_IMG_VENC>;
> +		clock-names = "jpgenc";
> +		power-domains = <&scpsys MT2701_POWER_DOMAIN_ISP>;
> +		mediatek,larb = <&larb2>;

Ditto.

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
