Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8EB19DB96
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 18:25:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9sOwwR31Fl6jPvL5KxL8AXJUeWGrz5Q54K1szTBJIgE=; b=a5G6QqRnyY3A0T
	Qm6AbyQ0iBrEncyWfT2CJJLhIBEfkM0OxiJnOM8w5s40oRAs5beK3BeabOg+UMDSnllLVb3ovD6qW
	dIbtmLkBBpTBeroud16kvBy/hsOhyNqMt0n8YeThhe10glc9QjSQQd9V0QnLM5ZusQeN3YURURnPa
	5OargywKcJfdX2PemIsyVRcIfphN1WUrRrLDWzXsu80yrBAoIemHWpzDlljdr9My6fFCXIKXD3yNw
	9Kdr4GDwXRmq2T0gxqywMZEwq9bI+zltoAu219+zd0u/3zGeHfUbFZpTSzBRmaIdOdrt2JsOGA0ob
	XsSRCb7KkPVGAeibilMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKP8G-0003Zw-OE; Fri, 03 Apr 2020 16:25:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKP81-0003TW-ST; Fri, 03 Apr 2020 16:25:11 +0000
Received: from p5b127fb0.dip0.t-ipconnect.de ([91.18.127.176]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jKP7y-000641-2O; Fri, 03 Apr 2020 18:25:06 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Maxime Chevallier <maxime.chevallier@bootlin.com>
Subject: Re: [PATCH 1/3] media: dt-bindings: media: Document Rockchip CIF
 bindings
Date: Fri, 03 Apr 2020 18:25:05 +0200
Message-ID: <1766530.2SdDkCQg1P@phil>
In-Reply-To: <20200403142122.297283-2-maxime.chevallier@bootlin.com>
References: <20200403142122.297283-1-maxime.chevallier@bootlin.com>
 <20200403142122.297283-2-maxime.chevallier@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_092510_071073_4C32F11E 
X-CRM114-Status: GOOD (  18.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Maxime,

Am Freitag, 3. April 2020, 16:21:20 CEST schrieb Maxime Chevallier:
> Add a documentation for the Rockchip Camera Interface controller
> binding.
> 
> This controller can be found on platforms such as the PX30 or the
> RK3288, the PX30 being the only platform supported so far.
> 
> Signed-off-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
> ---
>  .../bindings/media/rockchip-cif.yaml          | 98 +++++++++++++++++++
>  1 file changed, 98 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/rockchip-cif.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/rockchip-cif.yaml b/Documentation/devicetree/bindings/media/rockchip-cif.yaml
> new file mode 100644
> index 000000000000..87fb5e136edd
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/rockchip-cif.yaml
> @@ -0,0 +1,98 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/rockchip-cif.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip Camera Interface (CIF)
> +
> +maintainers:
> +  - Maxime Chevallier <maxime.chevallier@bootlin.com>
> +
> +description: |-
> +Camera Interface for Rockcip platforms
> +
> +properties:
> +  compatible:
> +    const: rockchip,px30-cif
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: ACLK
> +      - description: HCLK
> +      - description: PCLK
> +      - description: CIF_OUT
> +
> +  clock-names:
> +    items:
> +      - const: aclk_cif
> +      - const: hclk_cif
> +      - const: pclk_cif
> +      - const: cif_out

names for clocks / reset are always local to the node/ip-block
so there is no need to have that _cif in them.

Also the pclk isn't coming from the cru but from some external source
at least on px30 and rk3288 (and I guess others as well), so maybe
that deserves a distinct name.

Maybe something like aclk, hclk, pclkin or so?

Also the cif_out clock is not actual part of the CIF block, on both
the rk3288 and px30 (and probably the others too) it is generated
in the SoC's clock controller and then just led to an output-pin on
the soc, so I'd assume a peripheral wanting to use that would take
care of setting+enabling that clock (similar to the i2s mclk)?


> +
> +  resets:
> +    items:
> +      - description: Reset CIF A
> +      - description: Reset CIF H
> +      - description: Reset CIF PCLK IN
> +
> +  reset-names:
> +    items:
> +      - const: rst_cif_a
> +      - const: rst_cif_h
> +      - const: rst_cif_pclkin

Same here, maybe just "axi", "ahb", "pclkin" like the
vop resets do?


Heiko




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
