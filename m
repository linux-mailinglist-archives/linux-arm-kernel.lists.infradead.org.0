Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC495A7826
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 03:44:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K92jCmetF4Jzzmbghb8Q+3adwXWK/KsZTUH5UUttokE=; b=aUpLBTX9eD6uZu
	36oyNyUiDVvRWK+frkl6Lm7h59S22vdgCC32EZQ1PEeyC2y2vjdq8za6uDZ5e+GlsI+srgh0j0/t1
	6AYBqcquY2qO+LabtixeLioCNVWzwAFZ2Hy+rTjpP7HLO/L/RACOj1nxss/wHMBAeh06ZwdTP6Nyo
	aECLfJ7OBcCAur7OLxOkzMmJzhTCMxb839SqeUep6VTLFFYUREwB/9ilGdfEFRyOlUuhp/ZHej4uG
	FpdJOs9dDxrb2vNoYGCKodx63g53gNBTRNr2hTnxbw1ViO+ZX1+uVxV8u3EJsyvgxB+rNYxjNNINV
	dGs8Vm2mwT4ousRDHrzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5KLg-0005q3-Hy; Wed, 04 Sep 2019 01:44:40 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5KLK-0005pH-6u; Wed, 04 Sep 2019 01:44:20 +0000
X-UUID: f0378e116f4041afae1e8ba1609152f4-20190903
X-UUID: f0378e116f4041afae1e8ba1609152f4-20190903
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1268437623; Tue, 03 Sep 2019 17:44:13 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 3 Sep 2019 18:44:12 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 4 Sep 2019 09:44:08 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 4 Sep 2019 09:44:08 +0800
Message-ID: <1567561448.6949.0.camel@mtksdaap41>
Subject: Re: [PATCH v5, 02/32] dt-bindings: mediatek: add ovl_2l description
 for mt8183 display
From: CK Hu <ck.hu@mediatek.com>
To: <yongqiang.niu@mediatek.com>
Date: Wed, 4 Sep 2019 09:44:08 +0800
In-Reply-To: <1567090254-15566-3-git-send-email-yongqiang.niu@mediatek.com>
References: <1567090254-15566-1-git-send-email-yongqiang.niu@mediatek.com>
 <1567090254-15566-3-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 8264C2D1E11AEA1A4F44BD0DDA0F68C7BD70E9D873AA0FEFE7B33B2BA55FEC962000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_184418_508862_FFEB21FF 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Yongqiang:

On Thu, 2019-08-29 at 22:50 +0800, yongqiang.niu@mediatek.com wrote:
> From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> 
> Update device tree binding documention for the display subsystem for
> Mediatek MT8183 SOCs

Applied to mediatek-drm-next-5.5 [1], thanks.

[1]
https://github.com/ckhu-mediatek/linux.git-tags/commits/mediatek-drm-next-5.5

Regards,
CK

> 
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
>  .../bindings/display/mediatek/mediatek,disp.txt    | 27 +++++++++++-----------
>  1 file changed, 14 insertions(+), 13 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
> index 464b92f..8c4700f 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
> @@ -27,19 +27,20 @@ Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt.
>  
>  Required properties (all function blocks):
>  - compatible: "mediatek,<chip>-disp-<function>", one of
> -	"mediatek,<chip>-disp-ovl"   - overlay (4 layers, blending, csc)
> -	"mediatek,<chip>-disp-rdma"  - read DMA / line buffer
> -	"mediatek,<chip>-disp-wdma"  - write DMA
> -	"mediatek,<chip>-disp-color" - color processor
> -	"mediatek,<chip>-disp-aal"   - adaptive ambient light controller
> -	"mediatek,<chip>-disp-gamma" - gamma correction
> -	"mediatek,<chip>-disp-merge" - merge streams from two RDMA sources
> -	"mediatek,<chip>-disp-split" - split stream to two encoders
> -	"mediatek,<chip>-disp-ufoe"  - data compression engine
> -	"mediatek,<chip>-dsi"        - DSI controller, see mediatek,dsi.txt
> -	"mediatek,<chip>-dpi"        - DPI controller, see mediatek,dpi.txt
> -	"mediatek,<chip>-disp-mutex" - display mutex
> -	"mediatek,<chip>-disp-od"    - overdrive
> +	"mediatek,<chip>-disp-ovl"   		- overlay (4 layers, blending, csc)
> +	"mediatek,<chip>-disp-ovl-2l"           - overlay (2 layers, blending, csc)
> +	"mediatek,<chip>-disp-rdma"  		- read DMA / line buffer
> +	"mediatek,<chip>-disp-wdma"  		- write DMA
> +	"mediatek,<chip>-disp-color" 		- color processor
> +	"mediatek,<chip>-disp-aal"   		- adaptive ambient light controller
> +	"mediatek,<chip>-disp-gamma" 		- gamma correction
> +	"mediatek,<chip>-disp-merge" 		- merge streams from two RDMA sources
> +	"mediatek,<chip>-disp-split" 		- split stream to two encoders
> +	"mediatek,<chip>-disp-ufoe"  		- data compression engine
> +	"mediatek,<chip>-dsi"        		- DSI controller, see mediatek,dsi.txt
> +	"mediatek,<chip>-dpi"        		- DPI controller, see mediatek,dpi.txt
> +	"mediatek,<chip>-disp-mutex" 		- display mutex
> +	"mediatek,<chip>-disp-od"    		- overdrive
>    the supported chips are mt2701, mt2712 and mt8173.
>  - reg: Physical base address and length of the function block register space
>  - interrupts: The interrupt signal from the function block (required, except for



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
