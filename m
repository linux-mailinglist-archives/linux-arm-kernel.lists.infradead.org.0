Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4CBB1303C5
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Jan 2020 18:27:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZwEr+hhTSVyi5tWR9Avcqds22OJtA40i9rk1H9gXGLk=; b=LsxR8EDHTZpE7H
	oDC7Wv0LcoIiMI6DOBrFoOK6urFmrBEDMF1b9BQakF/iZcMKBGQIX/HMnm99pnMBYz/oKt47jTNt0
	87K3cJwXMVUWqjpVuJOri+Hu74t+XHiLpyaX23Mma+qBsO/NUAKnUy6P9VnB9B1qsQE+MZoUCQ0AY
	/GeNeuoxj2DS+fm1xUxDUvCSXenZ/FpmLemp4OZFsFGz2acEr2M9+lzR3tB2nX6Yg9NBIJT8lux3r
	B3QXTNfP6s/y1qBuF/lFQQxkKZYf8J61z+tjWbtJ3mEDyOEYYK27RyYWhaT8+HP0abCk3L/EBo2pP
	nVfZ160r6upXlHrgtE3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1innCx-0003wz-JA; Sat, 04 Jan 2020 17:27:27 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1innCr-0003wW-Na
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Jan 2020 17:27:23 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 3BDD120030;
 Sat,  4 Jan 2020 18:27:19 +0100 (CET)
Date: Sat, 4 Jan 2020 18:27:17 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 1/2] drm/panel: Add DT bindings for Novatek NT35510-based
 panels
Message-ID: <20200104172717.GB8724@ravnborg.org>
References: <20191225115610.14518-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191225115610.14518-1-linus.walleij@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=eMA9ckh1 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=j8Cu_9a8AAAA:8
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=gEfo2CItAAAA:8 a=e5mUnYsNAAAA:8
 a=_oycOFcioCRde9wpaXwA:9 a=CjuIK1q_8ugA:10 a=A2jcf3dkIZPIRbEE90CI:22
 a=AjGcO6oz07-iQ99wixmX:22 a=cvBusfyB2V15izCimMoJ:22
 a=sptkURWiP4Gy88Gu7hUp:22 a=Vxmtnl_E_bksehYqCbjh:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_092722_131433_72A9AA57 
X-CRM114-Status: GOOD (  20.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Stephan Gerhold <stephan@gerhold.net>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, dri-devel@lists.freedesktop.org,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus.

On Wed, Dec 25, 2019 at 12:56:09PM +0100, Linus Walleij wrote:
> This adds device tree bindings for the Novatek NT35510-based
> family of panels. Since several such panels are in existence
> we define bindings common for all, and define the compatible
> string for one certain panel (Hydis HVA40WV1).
> 
> As other panels are discovered and investigated, we can add
> more compatibles to the binding.
> 
> Cc: Stephan Gerhold <stephan@gerhold.net>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  .../display/panel/novatek-nt35510.yaml        | 53 +++++++++++++++++++
>  1 file changed, 53 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/novatek-nt35510.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/novatek-nt35510.yaml b/Documentation/devicetree/bindings/display/panel/novatek-nt35510.yaml
> new file mode 100644
> index 000000000000..a4a6b5adf15b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/novatek-nt35510.yaml
> @@ -0,0 +1,53 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/novatek-nt35510.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Novatek NT35510-based display panels
> +
> +maintainers:
> +  - Linus Walleij <linus.walleij@linaro.org>
> +
> +allOf:
> +  - $ref: panel-common.yaml#
> +
> +properties:
> +  compatible:
> +    const: hydis,hva40wv1
compatible fail to match filename - which is common practice.
And hydis is not a known vendor-prefix.


> +    description: This indicates the panel manufacturer of the panel
> +      that is in turn using the NT35510 panel driver. The compatible
> +      string determines how the NT35510 panel driver shall be configured
> +      to work with the indicated panel.
The description is just a general description of what compatible is used
for.
Please drop it as it does not provide anything specific for the panel.

	Sam

> +  reg: true
> +  reset-gpios: true
> +  vdd-supply:
> +     description: regulator that supplies the vdd voltage
> +  vddi-supply:
> +     description: regulator that supplies the vddi voltage
> +  backlight: true
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    dsi@a0351000 {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        panel {
> +            compatible = "hydis,hva40wv1";
> +            reg = <0>;
> +            vdd-supply = <&ab8500_ldo_aux4_reg>;
> +            vddi-supply = <&ab8500_ldo_aux6_reg>;
> +            reset-gpios = <&gpio4 11 GPIO_ACTIVE_LOW>;
> +            backlight = <&gpio_bl>;
> +        };
> +    };
> +
> +...
> -- 
> 2.21.0
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
