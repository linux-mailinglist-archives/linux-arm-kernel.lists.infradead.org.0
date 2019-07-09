Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7D363A04
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 19:15:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eyCX58yNKDLBAxYwxG0fdzLoGjsS/fozMwuFqR2zpIo=; b=TRyKOsjYPgPRxi
	GjaSM/OG3yyRtAZj9WRfvvGIlvf9rHhl87DDCy7WLKQXzhMfZH8PyBD9uMMvuot/GYfyTpnC9xzmz
	uKiB9OpOnUVBi1er7BbZ1k3h8ppTbzMivpvg7dXB0UX3fHLafnKN03P3EgOa/WyUluboESthG3wUP
	EUUcIv0JSZks4CTPBqD1si79WC3HnBTRRK6Pu5Skudx9azn7WbKEP7ds+StEalNWe+2Cf6sOqTKP+
	OQv5kdgHXpayIABZmmlwCSqLH38ysPkva8whIzP5j4Hgq5eBVchq15JhHeY8vVUcMxkXoasOqhfCU
	YV1hht8gLqRRJEdOKnUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hktiB-0000tX-FR; Tue, 09 Jul 2019 17:15:27 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkti0-0000sn-Ga
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 17:15:18 +0000
Received: by mail-pl1-x642.google.com with SMTP id t14so7334906plr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 10:15:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=6JqEUq6HaXDJWu6s7yj66u17X0ICHbiONtveTUyPzEk=;
 b=eNcxbWYnHcBQa2L5Y8oqfVLwTSg1uIl/DeQjz+alQshTGfMRfp8NbFnIJfvpqiK1b6
 gtQpDXS0ArTdrNsAJ/DPjzpURsIGeIVF7YiBBeATJrDAB1SibPz+iqb0CMHeMR4bDxlz
 wDeqMWOUlMDEPUQWuc+yQgqEMS6ynbVePapmj2cQyzxfel22Kt5nE/0Uy9KwjE5sqlY6
 +5qknYKUPURGf9uutfwQcDgFCnyxGLBU864+LTwGxw881ou5SZe3e7QHlTZAJMRTLr+e
 DDCk5cEwSJouZMsWnPTZ7HY47c3mdR2I6m21FmisviWCHhxugHB0IJ0/Sj1kdEpDPCEh
 i3Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=6JqEUq6HaXDJWu6s7yj66u17X0ICHbiONtveTUyPzEk=;
 b=hOgkYL+jRbvaqOrIRG47KlL4FUjHPguquO6cOrQoAQIypcAnxNLLGwcKV9DN0B1+z9
 G2Ubnp1w3S1MG1qZjycYt5LC8S4kq3RGNw3DtNQer8eDLMjRZlxYvn7EyF4XsMdUsLzB
 qDJZCJkcKieCfxU9NkMuExkmD9fenWhgIwVWQyVCy/BjyMCZWgMggmwkEXeGyDwXM7k2
 voibHVWVo9mz/C7/nwnAfLQhxrcuK7d63m0ZGtdb2tXZyJFZEND8lRdBzWU7rPrbi0Zf
 qSOwvgPyeW7pKdW24qtsIjfPgTYewagqFf47VCDgoZqNbyqmESAaFJ9zSz6ZzV1TfrWd
 e6KA==
X-Gm-Message-State: APjAAAVG/c8kqYL5mmh5EjKULtHkF38mHNKXByF2IR27MvEF0Ila+kmd
 tlDYGgsx7Pj/e1RcoovfYYTN
X-Google-Smtp-Source: APXvYqyNTmDI4M26K6JugK2vIR4D1U3j9E/kiP98iSOHWzeJ2x3Qx7I0p+WRjsowVapfdoTws09qyA==
X-Received: by 2002:a17:902:1129:: with SMTP id
 d38mr33932147pla.220.1562692515236; 
 Tue, 09 Jul 2019 10:15:15 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2405:204:7105:f96f:dc5f:6504:2cec:969e])
 by smtp.gmail.com with ESMTPSA id e13sm17644218pff.45.2019.07.09.10.15.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 09 Jul 2019 10:15:14 -0700 (PDT)
Date: Tue, 9 Jul 2019 22:45:08 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: arm: Convert RDA Micro board/soc bindings
 to json-schema
Message-ID: <20190709171508.GA10127@Mani-XPS-13-9360>
References: <20190618212229.32302-4-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190618212229.32302-4-robh@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_101516_563910_70520A6E 
X-CRM114-Status: GOOD (  15.85  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: devicetree@vger.kernel.org,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On Tue, Jun 18, 2019 at 03:22:28PM -0600, Rob Herring wrote:
> Convert RDA Micro SoC bindings to DT schema format using json-schema.
> =

> Cc: "Andreas F=E4rber" <afaerber@suse.de>
> Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> Andreas, Update the license on this one too to dual licensed if you =

> want.

I'm fine with GPL-2.0. Since there isn't any other RDA specific patches
in my tree, you want to take this patch? Else I have to send the Pull
Request to ARM SoC folks with this patch alone.

Thanks,
Mani

> =

>  Documentation/devicetree/bindings/arm/rda.txt | 17 ----------------
>  .../devicetree/bindings/arm/rda.yaml          | 20 +++++++++++++++++++
>  MAINTAINERS                                   |  2 +-
>  3 files changed, 21 insertions(+), 18 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/rda.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/rda.yaml
> =

> diff --git a/Documentation/devicetree/bindings/arm/rda.txt b/Documentatio=
n/devicetree/bindings/arm/rda.txt
> deleted file mode 100644
> index 43c80762c428..000000000000
> --- a/Documentation/devicetree/bindings/arm/rda.txt
> +++ /dev/null
> @@ -1,17 +0,0 @@
> -RDA Micro platforms device tree bindings
> -----------------------------------------
> -
> -RDA8810PL SoC
> -=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> -
> -Required root node properties:
> -
> - - compatible :  must contain "rda,8810pl"
> -
> -
> -Boards:
> -
> -Root node property compatible must contain, depending on board:
> -
> - - Orange Pi 2G-IoT: "xunlong,orangepi-2g-iot"
> - - Orange Pi i96: "xunlong,orangepi-i96"
> diff --git a/Documentation/devicetree/bindings/arm/rda.yaml b/Documentati=
on/devicetree/bindings/arm/rda.yaml
> new file mode 100644
> index 000000000000..51cec2b63b04
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/rda.yaml
> @@ -0,0 +1,20 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/rda.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: RDA Micro platforms device tree bindings
> +
> +maintainers:
> +  - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - xunlong,orangepi-2g-iot     # Orange Pi 2G-IoT
> +          - xunlong,orangepi-i96        # Orange Pi i96
> +      - const: rda,8810pl
> +
> +...
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 2c6f4d15805e..56ee276088eb 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -2111,7 +2111,7 @@ F:	arch/arm/boot/dts/rda8810pl-*
>  F:	drivers/clocksource/timer-rda.c
>  F:	drivers/irqchip/irq-rda-intc.c
>  F:	drivers/tty/serial/rda-uart.c
> -F:	Documentation/devicetree/bindings/arm/rda.txt
> +F:	Documentation/devicetree/bindings/arm/rda.yaml
>  F:	Documentation/devicetree/bindings/interrupt-controller/rda,8810pl-int=
c.txt
>  F:	Documentation/devicetree/bindings/serial/rda,8810pl-uart.txt
>  F:	Documentation/devicetree/bindings/timer/rda,8810pl-timer.txt
> -- =

> 2.20.1
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
