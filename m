Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 289A371C9D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 18:14:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sWXb+eDsKvQ9jM0z3sVEEiK90rqCCf5h59z/4A//lFk=; b=OAF8EDHsPUlZWr
	pWklZKNTEB7BJI1HaeplnWotiFkXN00emiqeRYPqfBDjirjt/GYZGVzVvhWI2QWaH/jXkQYn9HPk4
	Qz5dtC3nBMcqqTea8weucsGu1s56EO9VHpbXtJuD08jUCnMasVF+P8WU/Hdq7PXNH1oTrUm+2qt1a
	zLxLnsmGtGIcwY+rL0uRuouzv6VQNMuAOg4ppBIpf6x6QH26KWII8+sPkHNOXvX9PNPaz+cygxtUb
	j5EezMrHz+Aq/uXi1nVBByJowHg8cU8LOV2lpyjBWBn7q3l9j4wd4rCMztO7jTHWm7E45BwngkzD0
	3AlT6oqIL5aHTJSEH7Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpxQw-0008G2-D5; Tue, 23 Jul 2019 16:14:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpxQi-0008FR-Ta
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 16:14:22 +0000
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com
 [209.85.219.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DF67D223BA
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 16:14:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563898460;
 bh=lWPON7VBjbQx5DMKFjEWYTP1sMIlP0q/j6mSvaUBvhE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=D8KhtYZQrcoPEkkm3wYKnMsfIcM2e2yhkPUxvjgGgVS7D+jMQ4dkS3exde44rqTFX
 sKdTgCo0CVqKbzns8jZN244/VJwXx1s1U8WkzpgJ40WGg/AJV4DYKF8xew2TCmd0sM
 IFppg/5EnROqyfzvAAKxNcPOpHw19Cap/eCuIbKU=
Received: by mail-yb1-f173.google.com with SMTP id q5so4188491ybp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 09:14:19 -0700 (PDT)
X-Gm-Message-State: APjAAAUF15XFLpNqznBtJwJGYd4/sBKHmLT4ifiewjBxMwJ7mVv3reLw
 8q/NdY298dEa4Ehy58y8rUFOad989pyxCck6gg==
X-Google-Smtp-Source: APXvYqyzeNUQAlAwydptK7cxSXY+LELavm+ycMB0Sosh3OqniGOOGEBzozTbgVuUCJlBnIXtiZlPwtUGhspw2Zn1rhI=
X-Received: by 2002:a25:7c05:: with SMTP id x5mr47406679ybc.358.1563898459148; 
 Tue, 23 Jul 2019 09:14:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190723132658.5068-1-maxime.ripard@bootlin.com>
In-Reply-To: <20190723132658.5068-1-maxime.ripard@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 23 Jul 2019 10:14:06 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJJTwBwjXixjgr8KbiM-p6uTkVTcBwzUawdgkeybABxOQ@mail.gmail.com>
Message-ID: <CAL_JsqJJTwBwjXixjgr8KbiM-p6uTkVTcBwzUawdgkeybABxOQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: irq: Convert Allwinner IRQ Controller to
 a schema
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_091420_988628_E52EA6EF 
X-CRM114-Status: GOOD (  21.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, maz@kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Thomas Gleixner <tglx@linutronix.de>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 7:27 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> The Allwinner SoCs have an interrupt controller supported in Linux, with a
> matching Device Tree binding.
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  .../allwinner,sun4i-a10-ic.yaml               | 49 +++++++++++++++++++
>  .../allwinner,sun4i-ic.txt                    | 20 --------
>  2 files changed, 49 insertions(+), 20 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-a10-ic.yaml
>  delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-ic.txt
>
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-a10-ic.yaml b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-a10-ic.yaml
> new file mode 100644
> index 000000000000..806cf4770f75
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-a10-ic.yaml
> @@ -0,0 +1,49 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/interrupt-controller/allwinner,sun4i-a10-ic.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner A10 Interrupt Controller Device Tree Bindings
> +
> +maintainers:
> +  - Chen-Yu Tsai <wens@csie.org>
> +  - Maxime Ripard <maxime.ripard@bootlin.com>
> +
> +allOf:
> +  - $ref: /schemas/interrupt-controller.yaml#
> +
> +properties:
> +  "#interrupt-cells":
> +    const: 1
> +
> +  compatible:
> +    enum:
> +      - allwinner,sun4i-a10-ic
> +      - allwinner,suniv-f1c100s-ic
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupt-controller: true
> +
> +required:
> +  - "#interrupt-cells"
> +  - compatible
> +  - reg
> +  - interrupt-controller
> +
> +# FIXME: We should set it, but it would report all the generic
> +# properties as additional properties.
> +# additionalProperties: false

Looks to me like you could enable this.

BTW, I think the fix is going to be just the new
'unevaluatedProperties: false'. We could start putting that in as
unknown keys are ignored (though the meta-schema will need an update
to allow it).

> +
> +examples:
> +  - |
> +    intc: interrupt-controller {

unit-address needed.

I need to figure out how to enable dtc warnings by default on the examples...

> +        compatible = "allwinner,sun4i-a10-ic";
> +        reg = <0x01c20400 0x400>;
> +        interrupt-controller;
> +        #interrupt-cells = <1>;
> +    };
> +
> +...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
