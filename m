Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 767BF16BA81
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 08:20:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jewKOKmTYvaOsy9BNez89lyuQDn6IBg5GUtyqnw/qt4=; b=XT/0o4IC8A8rLJ
	kbhk+ydJ3+YlkWeN/SvSwRTICumTO7p+uSqnH5ugGp84NciMxR9F+xGWBVq2YO7LLTmVPawS3KiGm
	0HGqQ3SwV0iLoSNmFUDE6tFEGY1TY82aBl+FRSwISIPF/F7+wR4QxjkBSnWzEX+u4+j8ZChF5yela
	L9hAaH790gujd5L79sxzUSRvMAx8dehdszYX7C7qqH9jhawfmPYxxUlnn/g0j62MVIu/96M1GNyfs
	W2I/Sm1IG7ihF6UkkRYmchHjkDkOlBEwwlBCyJ1PoK0eKzWMfyNohd495dzoCl0GhH8HMnBzDDTAm
	nDld+DYcxp5M+GnmpGSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6UVt-0002uc-OW; Tue, 25 Feb 2020 07:20:17 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6UVk-0002c7-8L; Tue, 25 Feb 2020 07:20:09 +0000
X-UUID: 92f565236a844ff9934b24c559d7aee9-20200224
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=vtL1iILHsFW94yP0jBQ/SNoSG9C8HGFiyrsycu7XsME=; 
 b=tUljZGnPBYfB+xLMxjzAar5PvLc7DRpXaXOHfOU/tQGO/7uSIty2ySbze5cBCjPAVzvzsMVGgjEPZJLKWTdKJHGHoz/9ZwRxeNuog933GVYoztDsmCHWnLySewgi8/TxVu32hWQSN2a172t3Fr8+bam/TqLiC86t7/lWNaamO9w=;
X-UUID: 92f565236a844ff9934b24c559d7aee9-20200224
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1596919323; Mon, 24 Feb 2020 23:20:03 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 24 Feb 2020 23:21:04 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 25 Feb 2020 15:18:01 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 25 Feb 2020 15:19:40 +0800
Message-ID: <1582615193.21887.15.camel@mtksdaap41>
Subject: Re: [PATCH v7 1/4] dt-bindings: display: mediatek: update dpi
 supported chips
From: CK Hu <ck.hu@mediatek.com>
To: Jitao Shi <jitao.shi@mediatek.com>
Date: Tue, 25 Feb 2020 15:19:53 +0800
In-Reply-To: <20200225064638.112282-2-jitao.shi@mediatek.com>
References: <20200225064638.112282-1-jitao.shi@mediatek.com>
 <20200225064638.112282-2-jitao.shi@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_232008_313985_985A4C04 
X-CRM114-Status: GOOD (  16.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 bibby.hsieh@mediatek.com, srv_heupstream@mediatek.com,
 David Airlie <airlied@linux.ie>, huijuan.xie@mediatek.com, stonea168@163.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 cawa.cheng@mediatek.com, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>, yingjoe.chen@mediatek.com,
 eddie.huang@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Jitao:

On Tue, 2020-02-25 at 14:46 +0800, Jitao Shi wrote:
> Add decriptions about supported chips, including MT2701 & MT8173 &
> mt8183

descriptions

> 
> 1. Add more chips support. ex. MT2701 & MT8173 & MT8183
> 2. Add property "pinctrl-names" to swap pin mode between gpio and dpi mode. Set
>    pin mode to gpio oupput-low to avoid leakage current when dpi disable.
> 3. Add property "pclk-sample" to config the dpi sample on falling (0),
>    rising (1), both falling and rising (2).

The title is just about supported chips, so I prefer you move other
modification to another patch. Of course, you could use a more rough
title to include all what you do so you need not to break this patch.

> 
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> ---
>  .../bindings/display/mediatek/mediatek,dpi.txt         | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt
> index b6a7e7397b8b..0dee4f7a227e 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt
> @@ -7,6 +7,7 @@ output bus.
>  
>  Required properties:
>  - compatible: "mediatek,<chip>-dpi"
> +  the supported chips are mt2701 , mt8173 and mt8183.
>  - reg: Physical base address and length of the controller's registers
>  - interrupts: The interrupt signal from the function block.
>  - clocks: device clocks
> @@ -16,6 +17,11 @@ Required properties:
>    Documentation/devicetree/bindings/graph.txt. This port should be connected
>    to the input port of an attached HDMI or LVDS encoder chip.
>  
> +Optional properties:
> +- pinctrl-names: Contain "gpiomode" and "dpimode".
> +- pclk-sample: 0: sample in falling edge, 1: sample in rising edge, 2: sample
> +  in both falling and rising edge.

pinctrl-names & pclk-sample are defined in another document, please list
the reference document, [1] is the sample. For pclk-sample, I think you
should modify [2] to add 'sampling in both failing and rising edge'.

[1] Documentation/devicetree/bindings/display/bridge/ti,tfp410.txt
[2] Documentation/devicetree/bindings/media/video-interfaces.txt

> +
>  Example:
>  
>  dpi0: dpi@1401d000 {
> @@ -26,6 +32,10 @@ dpi0: dpi@1401d000 {
>  		 <&mmsys CLK_MM_DPI_ENGINE>,
>  		 <&apmixedsys CLK_APMIXED_TVDPLL>;
>  	clock-names = "pixel", "engine", "pll";
> +	pclk-sample = 0;

I think you should move pclk-sample into the port node according to [2].

Regards,
CK

> +	pinctrl-names = "gpiomode", "dpimode";
> +	pinctrl-0 = <&dpi_pin_gpio>;
> +	pinctrl-1 = <&dpi_pin_func>;
>  
>  	port {
>  		dpi0_out: endpoint {

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
