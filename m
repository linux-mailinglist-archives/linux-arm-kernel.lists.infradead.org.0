Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0062185514
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Mar 2020 08:42:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w1ZWADv9LXFxlyu/4SXqrNm92aRzoMxbDARx8YfJxhE=; b=pl1DBFV7WCnlA0
	NfXdH4e2Bw7JWnO5gWvh7Dtd7wnMf6AgnjtIWHuzySf4wgp0zYlQlEqyKwl0HYFZrDXFAot3tBSLE
	A3LzgqydcZarOMWWaYhNb/8EmbhRyXJwwJeC08by2lDWoykJpJiZ5R5cD9sLlDz9ZgOw3zXlRylGt
	4I9owRSAwKE+8axL30x3D58XL9nDtOUhtIwyuBMjw22M68SfNJtUYvPPLL2oHpP/h3NfccBp6O84A
	qzbZ+kevYCT+lKNa2sSQKbIkjfoCTRT81iJ4QCGVMMPUh086N4FwoZGGkHvE3DFBLW/0sT8FfSBe0
	ptSFqG6Yi1UpP3QpEZkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jD1QY-0003Xr-Gs; Sat, 14 Mar 2020 07:41:46 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jD1QN-0003XA-2q
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Mar 2020 07:41:37 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 2594B80501;
 Sat, 14 Mar 2020 08:41:19 +0100 (CET)
Date: Sat, 14 Mar 2020 08:41:18 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH 2/5] dt-bindings: panel: add binding for Xingbangda
 XBD599 panel
Message-ID: <20200314074118.GD5783@ravnborg.org>
References: <20200311163329.221840-1-icenowy@aosc.io>
 <20200311163329.221840-3-icenowy@aosc.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311163329.221840-3-icenowy@aosc.io>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=XpTUx2N9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=gEfo2CItAAAA:8
 a=NVUcaYqSR25QaaNNWYIA:9 a=CjuIK1q_8ugA:10 a=sptkURWiP4Gy88Gu7hUp:22
 a=pHzHmUro8NiASowvMSCR:22 a=nt3jZW36AmriUCFCBwmW:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200314_004135_308233_0C5EA152 
X-CRM114-Status: GOOD (  15.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
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
Cc: Ondrej Jirman <megous@megous.com>, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Icenowy

A few comment below.

	Sam

On Thu, Mar 12, 2020 at 12:33:26AM +0800, Icenowy Zheng wrote:
> Xingbangda XBD599 is a 5.99" 720x1440 MIPI-DSI LCD panel.
> 
> Add its device tree binding.
> 
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> ---
>  .../display/panel/xingbangda,xbd599.yaml      | 50 +++++++++++++++++++
>  1 file changed, 50 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/xingbangda,xbd599.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/xingbangda,xbd599.yaml b/Documentation/devicetree/bindings/display/panel/xingbangda,xbd599.yaml
> new file mode 100644
> index 000000000000..62816b34de31
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/xingbangda,xbd599.yaml
> @@ -0,0 +1,50 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/xingbangda,xbd599.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Xingbangda XBD599 5.99in MIPI-DSI LCD panel
> +
> +maintainers:
> +  - Icenowy Zheng <icenowy@aosc.io>
> +
> +allOf:
> +  - $ref: panel-common.yaml#
> +
> +properties:
> +  compatible:
> +    const: xingbangda,xbd599
> +  reg: true
> +  backlight: true
> +  reset-gpios: true
> +  vcc-supply:
> +     description: regulator that supplies the VCC voltage
Fix indent - two chars, not three

> +  iovcc-supply:
> +     description: regulator that supplies the IOVCC voltage
Same here

> +
> +required:
> +  - compatible
> +  - reg
> +  - backlight
> +  - vcc-supply
> +  - iovcc-supply
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    &dsi {
Remove '&' - dt_binding_check will fail otherwise

> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        panel@0 {
> +            compatible = "xingbangda,xbd599";
> +            reg = <0>;
> +            backlight = <&backlight>;
> +            iovcc-supply = <&reg_dldo2>;
> +            vcc-supply = <&reg_ldo_io0>;
> +        };
> +    };
> +
> +...
> -- 
> 2.24.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
