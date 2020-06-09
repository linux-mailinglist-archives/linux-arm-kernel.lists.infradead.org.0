Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB27A1F48C0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 23:21:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I6cQHNIDDzThkE5+/Rge664HuFg4nY73hTYbqviiK0I=; b=mSSPBEsWGaTB1O
	2FjVATG4FTiTbthZjNPX19BMiSm5DUwKe2yiMrQ0yycMnX6wSaplEL3GqGm6C2krpPJqW0qBoQr7H
	B7FzmLtOO6FgXf5AJXsOZJCCYkGR/HUUVjqBDIkYevyjcXqss7TJOWlsQRZgmtx20/vbHx3uruN00
	oXTRwEjWEKfhd1Txxe5BwW9CZcKk9+ZQ2FRSkMJANuQMfq7nRKEuae6Nwd/GUiWDOrbt2umrCBunK
	ZCv45dn40tKUPvdB2/8tjdDyxkrTnH3VcTdOA14JpziwK49WQ65rlFxJI0+BS77eXv5uxt8RxkRkq
	9kAOQLSJLZZ+/nhRD+jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jilgI-0006L6-EA; Tue, 09 Jun 2020 21:21:14 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jilgA-0006K0-8l; Tue, 09 Jun 2020 21:21:07 +0000
Received: by mail-io1-f68.google.com with SMTP id w18so15613381iom.5;
 Tue, 09 Jun 2020 14:21:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=XWzC2J2zPBRq99zmTAamTkCvAWsJFf56m/YNmkrqhjI=;
 b=TpwAT2Bm8NZ0pgKxkAkWlYfhUgugG1TOjk1S4q8VJqtNM04Jn83rBqWanryjJ/0e9q
 ewzlEUyM+ZbTiFXjHDw4VKwlq2STfovv2alQ8SBLKPGFvGEZJVWr7aWgSMNyyUZh5GNr
 p1oST/Buxz+Uvi5lNnoeiGbR/QU2VchMJEmUxQzZR1EWBKfoPIddPxmvYhD2b9aTJpmi
 L0Ngx5BA27w9G+5s6Lm4rr0fs6Btiz3Mjm7zd8LwfF/Zsril271yjG9sVlbpNdYK94Ks
 SuEcVrnZf9gHKduobXAOUMqAiO8FRStApUwLW/+B6SlnAldg0dKSIVPL+gQRvD45BVam
 n79w==
X-Gm-Message-State: AOAM532YLC2fA6X3kEbj4nTJ0NxaOn1w2PosGrb4uH+4QCPuR72Bb44y
 uqVQDtwvTGj6yqNFie7Y6g==
X-Google-Smtp-Source: ABdhPJwnyzqbzPdYRqQxyLBKph1AldYmaBNWEcQWN9kmn6fKm8rVJxp6frtZvPtxIvPRx1BxIouxcQ==
X-Received: by 2002:a6b:39d7:: with SMTP id g206mr64811ioa.31.1591737664915;
 Tue, 09 Jun 2020 14:21:04 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id m90sm10061329ilb.79.2020.06.09.14.21.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 14:21:04 -0700 (PDT)
Received: (nullmailer pid 1492410 invoked by uid 1000);
 Tue, 09 Jun 2020 21:21:02 -0000
Date: Tue, 9 Jun 2020 15:21:02 -0600
From: Rob Herring <robh@kernel.org>
To: Yong Wu <yong.wu@mediatek.com>
Subject: Re: [PATCH v4 01/17] media: dt-binding: mtk-vcodec: Separating
 mtk-vcodec encode node.
Message-ID: <20200609212102.GA1416099@bogus>
References: <1590826218-23653-1-git-send-email-yong.wu@mediatek.com>
 <1590826218-23653-2-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1590826218-23653-2-git-send-email-yong.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_142106_312009_E4F320D2 
X-CRM114-Status: GOOD (  18.54  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Maoguang Meng <maoguang.meng@mediatek.com>,
 Will Deacon <will.deacon@arm.com>, youlin.pei@mediatek.com,
 Irui Wang <irui.wang@mediatek.com>, Nicolas Boichat <drinkcat@chromium.org>,
 Joerg Roedel <joro@8bytes.org>, Evan Green <evgreen@chromium.org>,
 eizan@chromium.org, Matthias Kaehlcke <mka@chromium.org>,
 devicetree@vger.kernel.org, cui.zhang@mediatek.com,
 Tomasz Figa <tfiga@google.com>, linux-mediatek@lists.infradead.org,
 Hsin-Yi Wang <hsinyi@chromium.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 ming-fan.chen@mediatek.com, linux-arm-kernel@lists.infradead.org,
 anan.sun@mediatek.com, acourbot@chromium.org, srv_heupstream@mediatek.com,
 linux-kernel@vger.kernel.org, chao.hao@mediatek.com,
 iommu@lists.linux-foundation.org, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 30, 2020 at 04:10:02PM +0800, Yong Wu wrote:
> From: Maoguang Meng <maoguang.meng@mediatek.com>
> 
> Update binding document since the avc and vp8 hardware encoder in
> mt8173 are now separated. Separate "mediatek,mt8173-vcodec-enc" to
> "mediatek,mt8173-vcodec-vp8-enc" and "mediatek,mt8173-vcodec-avc-enc".

The h/w suddenly split in 2? You are breaking compatibility. Up to the 
Mediatek maintainers to decide if that's okay, but you need to state you 
are breaking compatibility (here and in the driver) and why that is 
okay.

> 
> This is a preparing patch for smi cleaning up "mediatek,larb".
> 
> Signed-off-by: Maoguang Meng <maoguang.meng@mediatek.com>
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> Signed-off-by: Irui Wang <irui.wang@mediatek.com>
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> ---
>  .../devicetree/bindings/media/mediatek-vcodec.txt  | 58 ++++++++++++----------
>  1 file changed, 31 insertions(+), 27 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/mediatek-vcodec.txt b/Documentation/devicetree/bindings/media/mediatek-vcodec.txt
> index 8093335..1023740 100644
> --- a/Documentation/devicetree/bindings/media/mediatek-vcodec.txt
> +++ b/Documentation/devicetree/bindings/media/mediatek-vcodec.txt
> @@ -4,7 +4,9 @@ Mediatek Video Codec is the video codec hw present in Mediatek SoCs which
>  supports high resolution encoding and decoding functionalities.
>  
>  Required properties:
> -- compatible : "mediatek,mt8173-vcodec-enc" for MT8173 encoder
> +- compatible : must be one of the following string:
> +  "mediatek,mt8173-vcodec-vp8-enc" for mt8173 vp8 encoder.
> +  "mediatek,mt8173-vcodec-avc-enc" for mt8173 avc encoder.
>    "mediatek,mt8183-vcodec-enc" for MT8183 encoder.
>    "mediatek,mt8173-vcodec-dec" for MT8173 decoder.
>  - reg : Physical base address of the video codec registers and length of
> @@ -13,10 +15,11 @@ Required properties:
>  - mediatek,larb : must contain the local arbiters in the current Socs.
>  - clocks : list of clock specifiers, corresponding to entries in
>    the clock-names property.
> -- clock-names: encoder must contain "venc_sel_src", "venc_sel",,
> -  "venc_lt_sel_src", "venc_lt_sel", decoder must contain "vcodecpll",
> -  "univpll_d2", "clk_cci400_sel", "vdec_sel", "vdecpll", "vencpll",
> -  "venc_lt_sel", "vdec_bus_clk_src".
> +- clock-names:
> +   avc venc must contain "venc_sel";
> +   vp8 venc must contain "venc_lt_sel";
> +   decoder  must contain "vcodecpll", "univpll_d2", "clk_cci400_sel",
> +   "vdec_sel", "vdecpll", "vencpll", "venc_lt_sel", "vdec_bus_clk_src".
>  - iommus : should point to the respective IOMMU block with master port as
>    argument, see Documentation/devicetree/bindings/iommu/mediatek,iommu.txt
>    for details.
> @@ -80,14 +83,10 @@ vcodec_dec: vcodec@16000000 {
>      assigned-clock-rates = <0>, <0>, <0>, <1482000000>, <800000000>;
>    };
>  
> -  vcodec_enc: vcodec@18002000 {
> -    compatible = "mediatek,mt8173-vcodec-enc";
> -    reg = <0 0x18002000 0 0x1000>,    /*VENC_SYS*/
> -          <0 0x19002000 0 0x1000>;    /*VENC_LT_SYS*/
> -    interrupts = <GIC_SPI 198 IRQ_TYPE_LEVEL_LOW>,
> -		 <GIC_SPI 202 IRQ_TYPE_LEVEL_LOW>;
> -    mediatek,larb = <&larb3>,
> -		    <&larb5>;
> +vcodec_enc: vcodec@18002000 {
> +    compatible = "mediatek,mt8173-vcodec-avc-enc";
> +    reg = <0 0x18002000 0 0x1000>;
> +    interrupts = <GIC_SPI 198 IRQ_TYPE_LEVEL_LOW>;
>      iommus = <&iommu M4U_PORT_VENC_RCPU>,
>               <&iommu M4U_PORT_VENC_REC>,
>               <&iommu M4U_PORT_VENC_BSDMA>,
> @@ -98,8 +97,20 @@ vcodec_dec: vcodec@16000000 {
>               <&iommu M4U_PORT_VENC_REF_LUMA>,
>               <&iommu M4U_PORT_VENC_REF_CHROMA>,
>               <&iommu M4U_PORT_VENC_NBM_RDMA>,
> -             <&iommu M4U_PORT_VENC_NBM_WDMA>,
> -             <&iommu M4U_PORT_VENC_RCPU_SET2>,
> +             <&iommu M4U_PORT_VENC_NBM_WDMA>;
> +    mediatek,larb = <&larb3>;
> +    mediatek,vpu = <&vpu>;
> +    clocks = <&topckgen CLK_TOP_VENC_SEL>;
> +    clock-names = "venc_sel";
> +    assigned-clocks = <&topckgen CLK_TOP_VENC_SEL>;
> +    assigned-clock-parents = <&topckgen CLK_TOP_VCODECPLL>;
> +  };
> +
> +vcodec_enc_lt: vcodec@19002000 {
> +    compatible = "mediatek,mt8173-vcodec-vp8-enc";
> +    reg =  <0 0x19002000 0 0x1000>;	/* VENC_LT_SYS */
> +    interrupts = <GIC_SPI 202 IRQ_TYPE_LEVEL_LOW>;
> +    iommus = <&iommu M4U_PORT_VENC_RCPU_SET2>,
>               <&iommu M4U_PORT_VENC_REC_FRM_SET2>,
>               <&iommu M4U_PORT_VENC_BSDMA_SET2>,
>               <&iommu M4U_PORT_VENC_SV_COMA_SET2>,
> @@ -108,17 +119,10 @@ vcodec_dec: vcodec@16000000 {
>               <&iommu M4U_PORT_VENC_CUR_CHROMA_SET2>,
>               <&iommu M4U_PORT_VENC_REF_LUMA_SET2>,
>               <&iommu M4U_PORT_VENC_REC_CHROMA_SET2>;
> +    mediatek,larb = <&larb5>;
>      mediatek,vpu = <&vpu>;
> -    clocks = <&topckgen CLK_TOP_VENCPLL_D2>,
> -             <&topckgen CLK_TOP_VENC_SEL>,
> -             <&topckgen CLK_TOP_UNIVPLL1_D2>,
> -             <&topckgen CLK_TOP_VENC_LT_SEL>;
> -    clock-names = "venc_sel_src",
> -                  "venc_sel",
> -                  "venc_lt_sel_src",
> -                  "venc_lt_sel";
> -    assigned-clocks = <&topckgen CLK_TOP_VENC_SEL>,
> -                      <&topckgen CLK_TOP_VENC_LT_SEL>;
> -    assigned-clock-parents = <&topckgen CLK_TOP_VENCPLL_D2>,
> -                             <&topckgen CLK_TOP_UNIVPLL1_D2>;
> +    clocks = <&topckgen CLK_TOP_VENC_LT_SEL>;
> +    clock-names = "venc_lt_sel";
> +    assigned-clocks = <&topckgen CLK_TOP_VENC_LT_SEL>;
> +    assigned-clock-parents = <&topckgen CLK_TOP_VCODECPLL_370P5>;
>    };
> -- 
> 1.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
