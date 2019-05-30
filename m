Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7956A30510
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 00:57:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WBshHfeDziyQBEHZmxcYjgOFMgcob2sJasf09yksiik=; b=F3gkBRZCwvE9Dk
	Pe83P2GgwPCL1YQwTnH52qPwihm/quJS/p3IiThExVaMHlM2XwZjEnfB3p2T96hgRK6HVDv/cyqq8
	1Ij7w0pbZNYXvTot6aoH+KlLdI1xFR3hwDCI7rPA8N36+MpR1euy6koVgynopwP10/KY8kbcEtQGG
	Yvb80TFwiLc6RJNB2g/rnRq5tJnLkackH6aexwqvFpqD1kFetkGk6AkKoLu2YZLAH2cX3b1yR7nlF
	QHnOKgmAGMaNq2D+5DBOEOSm2DPnUn+FEEKKzIDT4C34fuI29orTiGvvqwnHtpKNZu/s/Fe1dXiky
	hfMwASpowwRAvkOE2CiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWTz1-0006xT-4D; Thu, 30 May 2019 22:57:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWTyt-0006x3-Ha; Thu, 30 May 2019 22:57:08 +0000
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 079B2262D0;
 Thu, 30 May 2019 22:57:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559257027;
 bh=iWlHwQIQWXgJxw5M7bJPq4MrgLHO4zyeNxvUKrcQDJs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=eDQuxbkGjkCAjxTDwhjOqsUUKwS5T+l9GzaPR7RBxLxTl+iBKmcTUMdrT+fiJdW+/
 kKRS+2KsvqgM5EqpG8kq54+6i7djmBKARo6z3QPbMHFi7wxOubOmP56RGfYFMvk9za
 7Gd+MU8CdRzFhTJyrd436HeCx2cUeKXtLt7sUdxc=
Received: by mail-wr1-f48.google.com with SMTP id r7so5200479wrr.13;
 Thu, 30 May 2019 15:57:06 -0700 (PDT)
X-Gm-Message-State: APjAAAX21bIQ9ZA9VSPh0LoLSS4t3JVXfyvmL60dcNm709GGHHzVuSwa
 ffn4pe2aJtbzKp15zoAq3XLcweBkbgYgCpbmPuQ=
X-Google-Smtp-Source: APXvYqzB/imXLBAYcgV5SPngjuVw5E3+3UKU9f5J+X1Zzb2GO4Nj5erqdYaBmQU52zkdl0I+DX6YMxUcnUkt7x5fGUA=
X-Received: by 2002:adf:afd5:: with SMTP id y21mr4064469wrd.12.1559257025604; 
 Thu, 30 May 2019 15:57:05 -0700 (PDT)
MIME-Version: 1.0
References: <1558946326-13630-1-git-send-email-neal.liu@mediatek.com>
 <1558946326-13630-3-git-send-email-neal.liu@mediatek.com>
In-Reply-To: <1558946326-13630-3-git-send-email-neal.liu@mediatek.com>
From: Sean Wang <sean.wang@kernel.org>
Date: Thu, 30 May 2019 15:56:55 -0700
X-Gmail-Original-Message-ID: <CAGp9LzrQegBb9Oe-=jfkwOrsYY=eN3BSF=DWnu+aSBAhQ5bexA@mail.gmail.com>
Message-ID: <CAGp9LzrQegBb9Oe-=jfkwOrsYY=eN3BSF=DWnu+aSBAhQ5bexA@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: rng: update bindings for MediaTek
 ARMv8 SoCs
To: Neal Liu <neal.liu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_155707_610242_9190F88C 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Herbert Xu <herbert@gondor.apana.org.au>, wsd_upstream@mediatek.com,
 lkml <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 linux-crypto@vger.kernel.org, Matt Mackall <mpm@selenic.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Crystal Guo <Crystal.Guo@mediatek.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Neal

On Mon, May 27, 2019 at 1:39 AM Neal Liu <neal.liu@mediatek.com> wrote:
>
> Document the binding used by the MediaTek ARMv8 SoCs random
> number generator with TrustZone enabled.
>
> Signed-off-by: Neal Liu <neal.liu@mediatek.com>
> ---
>  Documentation/devicetree/bindings/rng/mtk-rng.txt |   13 ++++++++++---
>  1 file changed, 10 insertions(+), 3 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/rng/mtk-rng.txt b/Documentation/devicetree/bindings/rng/mtk-rng.txt
> index 2bc89f1..1fb9b1d 100644
> --- a/Documentation/devicetree/bindings/rng/mtk-rng.txt
> +++ b/Documentation/devicetree/bindings/rng/mtk-rng.txt
> @@ -3,9 +3,12 @@ found in MediaTek SoC family
>
>  Required properties:
>  - compatible       : Should be
> -                       "mediatek,mt7622-rng",  "mediatek,mt7623-rng" : for MT7622
> -                       "mediatek,mt7629-rng",  "mediatek,mt7623-rng" : for MT7629
> -                       "mediatek,mt7623-rng" : for MT7623
> +                       "mediatek,mt7622-rng", "mediatek,mt7623-rng" for MT7622
> +                       "mediatek,mt7629-rng", "mediatek,mt7623-rng" for MT7629
> +                       "mediatek,mt7623-rng" for MT7623

No make any change for those lines not belong to the series

> +                       "mediatek,mtk-sec-rng" for MediaTek ARMv8 SoCs

I thought "mediatek,mtk-sec-rng" is only for those MediaTek ARMv8 SoCs
with security RNG

> +
> +Optional properties:
>  - clocks           : list of clock specifiers, corresponding to
>                       entries in clock-names property;
>  - clock-names      : Should contain "rng" entries;
> @@ -19,3 +22,7 @@ rng: rng@1020f000 {
>         clocks = <&infracfg CLK_INFRA_TRNG>;
>         clock-names = "rng";
>  };

For those MediaTek ARMv8 SoCs with security RNG

> +
> +hwrng: hwrng {
> +       compatible = "mediatek,mtk-sec-rng";
> +};
> --
> 1.7.9.5
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
