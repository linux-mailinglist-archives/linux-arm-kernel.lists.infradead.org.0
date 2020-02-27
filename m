Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3936170DE5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 02:33:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vim9q8eZr7SCFJK6iSB1rzNt56PQTT3Dd0xAEmO2gj0=; b=cet+Z+pWoMj7no
	WlqpqbFQRipCwLCiet6cShxYcmMoxUVou3Cgf+RUyhhTy99HPOJ7TaOxJgoGRgGXduRvKl2t2yUV4
	n9tLyCxHF+oSCwUc22mbEM03UhXYLmGuSgBYdst1SeU8BGT2g6XVs1o4V2WppfS+OxOIKpj9XKB79
	3elHiO3gK63+MhI2F+w/l1EBRlHkdWtndn8jun6qhI/DsW/jXTqnpS87iaIcmegJ/D0CD3Iyd8mFv
	Nk9a7fKBJZkMmJF7eBgftWRco9J12fNB6ES+zJ88CO9SgkOcMMOriRNCc3QxORal3M4X5XREcEWP9
	8ICvK7EEcEMRxnSeGrjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j782u-0001Z7-SX; Thu, 27 Feb 2020 01:33:00 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j782j-0001YF-JM
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 01:32:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582767167; bh=WVRy76LC7XiiMA2ZecSI+IWUDn0bUblprAlu9loucFU=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=JezkskDUQCEiG532IBF9XyFgGd66FEgc8MoMom3aeNEk8/V9m9HW0TMzvoP26dDKG
 ulkoJoiXBMHuMqtnsyI0gCfL2z36xJlfJHG13IFgonRq3Ig452NyKrkLeke6pgIhSo
 +3OJtd6LcG+GwkynYDcuVwJ0IDXRtCDk6PIHjivk=
Date: Thu, 27 Feb 2020 02:32:47 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH v2 2/3] dt-bindings: arm: sunxi: Add PinePhone 1.0 and
 1.1 bindings
Message-ID: <20200227013247.mufbxd4gsc5c6g6p@core.my.home>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Corentin Labbe <clabbe@baylibre.com>,
 Georgii Staroselskii <georgii.staroselskii@emlid.com>,
 Samuel Holland <samuel@sholland.org>,
 Martijn Braam <martijn@brixit.nl>, Luca Weiss <luca@z3ntu.xyz>,
 Bhushan Shah <bshah@kde.org>, Icenowy Zheng <icenowy@aosc.io>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20200227012650.1179151-1-megous@megous.com>
 <20200227012650.1179151-3-megous@megous.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227012650.1179151-3-megous@megous.com>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_173249_948012_8C09ACF4 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Martijn Braam <martijn@brixit.nl>,
 Samuel Holland <samuel@sholland.org>, Bhushan Shah <bshah@kde.org>,
 linux-kernel@vger.kernel.org, Luca Weiss <luca@z3ntu.xyz>,
 Georgii Staroselskii <georgii.staroselskii@emlid.com>,
 devicetree@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Thu, Feb 27, 2020 at 02:26:49AM +0100, megous hlavni wrote:
> Document board compatible names for Pine64 PinePhone:
> 
> - 1.0 - Developer variant
> - 1.1 - Braveheart variant
> 
> Signed-off-by: Ondrej Jirman <megous@megous.com>

This also got:

Reviewed-by: Rob Herring <robh@kernel.org>

short time ago on v1. I didn't catch that before sending v2 out.

regards,
	o.

> ---
>  Documentation/devicetree/bindings/arm/sunxi.yaml | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
> index 5b22b77e4bb73..abf2d97fb7ae3 100644
> --- a/Documentation/devicetree/bindings/arm/sunxi.yaml
> +++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
> @@ -642,6 +642,16 @@ properties:
>            - const: pine64,pinebook
>            - const: allwinner,sun50i-a64
>  
> +      - description: Pine64 PinePhone Developer Batch (1.0)
> +        items:
> +          - const: pine64,pinephone-1.0
> +          - const: allwinner,sun50i-a64
> +
> +      - description: Pine64 PinePhone Braveheart (1.1)
> +        items:
> +          - const: pine64,pinephone-1.1
> +          - const: allwinner,sun50i-a64
> +
>        - description: Pine64 PineTab
>          items:
>            - const: pine64,pinetab
> -- 
> 2.25.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
