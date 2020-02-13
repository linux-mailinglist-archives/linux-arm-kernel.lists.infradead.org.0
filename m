Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9195715CC47
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 21:24:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GPNRu7kDU2n4sw102Us7P1+yt5r8pv4MN9d9hrpP5w0=; b=nXWv2u7R2EPXoS
	m+emZOI5zKqs16ru7egOQlIz/hCz0OcMydoHI2jQRJjJqY74v22Exy22P4IoHxY2q2ZOeAfqakPFB
	20hNRUL8uZnHADsWW+wNI0W3Jccz5/SrqYXNPEVTsA9xOOMu/z+LZNHQA/ocwNF9MfOajHRLOX1ZA
	dc+6m5+J87QNTOl+f+2HGgfiW1yv0HcCF/auILDQp8mfupNwgf8kFrpTW+i9N5p3LNGppBBHgCDFa
	ITrTvkfIbmlfNjO9v2pOlLpVjWlT+KFuGkFBtzbMoa4l8FciyFuJA5BjCpzPcvkI21oTK9bfI8i1m
	nD0X5bcVOsPHAxH4UIzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2L2e-0004d1-N8; Thu, 13 Feb 2020 20:24:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2L1v-00049C-Ic
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 20:24:13 +0000
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com
 [209.85.219.49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6178F24693
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 20:24:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581625450;
 bh=N9a+BVoiRLAWlMQYqOvNOgYl0ZU8s6znAZLOX+gpEAg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=YdPh3EGw+QWQVVqHsMg9hNFXHacHaK7sr+Dmdv7j3MlHW9CT23s9m93H6F6SOwCoL
 6IDaXzP3wkNbSOdyhe0j4uWmYZAKOrCOKKJJRJUTRUV5R1u6sXYUPhhgRb1F5OBHk3
 j5THtWcKp7FsxhB45Ro9yIAR3vjQS20IQm0sJIyE=
Received: by mail-qv1-f49.google.com with SMTP id dc14so3240007qvb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 12:24:10 -0800 (PST)
X-Gm-Message-State: APjAAAWrSfhWMhXMjPfozAf7d1BOa1Cc/t2fipzBeyYvgAXnmGDQio7d
 ApUnd1cVobBkLw4BSSayFfXZK9D7FjSA83ehlA==
X-Google-Smtp-Source: APXvYqzySaRcn1yJ5/y7FYHk+Er01trcCUflqTCPJ+GCFdvM7asA/lZD7VyTokV1bgOliI+T0Zf5Vgc8A/I7WGsIK8o=
X-Received: by 2002:ad4:4511:: with SMTP id k17mr12491088qvu.135.1581625449440; 
 Thu, 13 Feb 2020 12:24:09 -0800 (PST)
MIME-Version: 1.0
References: <20200210092713.279105-1-linus.walleij@linaro.org>
 <20200210092713.279105-4-linus.walleij@linaro.org>
In-Reply-To: <20200210092713.279105-4-linus.walleij@linaro.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 13 Feb 2020 14:23:58 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+4bx=sOmexqBC-+Yv6-KwoS_0uLqVTLuiL+hLh+G03bA@mail.gmail.com>
Message-ID: <CAL_Jsq+4bx=sOmexqBC-+Yv6-KwoS_0uLqVTLuiL+hLh+G03bA@mail.gmail.com>
Subject: Re: [PATCH 3/7] dt-bindings: arm: Add Integrator YAML schema
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_122411_715803_2FD74BC0 
X-CRM114-Status: GOOD (  22.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 10, 2020 at 3:27 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> This implements the top-level schema for the ARM Integrator
> platforms.
>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  .../bindings/arm/arm,integrator.yaml          | 85 +++++++++++++++++++
>  1 file changed, 85 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/arm,integrator.yaml
>
> diff --git a/Documentation/devicetree/bindings/arm/arm,integrator.yaml b/Documentation/devicetree/bindings/arm/arm,integrator.yaml
> new file mode 100644
> index 000000000000..39aa3e31f934
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/arm,integrator.yaml
> @@ -0,0 +1,85 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/arm,integrator.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ARM Integrator Boards Device Tree Bindings
> +
> +maintainers:
> +  - Linus Walleij <linus.walleij@linaro.org>
> +
> +description: |+
> +  These were the first ARM platforms officially supported by ARM Ltd.
> +  They are ARMv4, ARMv5 and ARMv6-capable using different core tiles,
> +  so the system is modular and can host a variety of CPU tiles called
> +  "core tiles" and referred to in the device tree as "core modules".
> +
> +properties:
> +  $nodename:
> +    const: '/'
> +  compatible:
> +    oneOf:
> +      - description: ARM Integrator Application Platform, this board has a PCI
> +          host and several PCI slots, as well as a number of slots for logical
> +          expansion modules, it is referred to as an "ASIC Development
> +          Motherboard" and is extended with custom FPGA and is intended for
> +          rapid prototyping. See ARM DUI 0098B. This board can physically come
> +          pre-packaged in a PC Tower form factor called Integrator/PP1 or a
> +          special metal fixture called Integrator/PP2, see ARM DUI 0169A.
> +        items:
> +          - const: arm,integrator-ap
> +      - description: ARM Integrator Compact Platform (HBI-0086), this board has
> +          a compact form factor and mainly consists of the bare minimum
> +          peripherals to make use of the core module. See ARM DUI 0159B.
> +        items:
> +          - const: arm,integrator-cp
> +      - description: ARM Integrator Standard Development Board (SDB) Platform,
> +          this board is a PCI-based board conforming to the Microsoft SDB
> +          (HARP) specification. See ARM DUI 0099A.
> +        items:
> +          - const: arm,integrator-sp
> +
> +  syscon:

Given there's a 'reg' property here, this should have a unit-address.

> +    description: All Integrator boards must provide a system controller as a
> +      node in the root of the device tree.
> +    type: object
> +    properties:
> +      compatible:
> +        oneOf:
> +          - items:
> +            - const: arm,integrator-ap-syscon
> +            - const: syscon
> +          - items:
> +            - const: arm,integrator-cp-syscon
> +            - const: syscon
> +          - items:
> +            - const: arm,integrator-sp-syscon
> +            - const: syscon

No need for oneOf:

items:
  - enum:
      - arm,integrator-ap-syscon
      - arm,integrator-cp-syscon
      - arm,integrator-sp-syscon
  - const: syscon

> +    required:
> +      - compatible
> +      - reg

'reg' should be listed as property too. How many entries?

> +
> +patternProperties:
> +  "^core-module@[0-9a-f]+$":
> +    type: object
> +    description: the root node in the Integrator platforms must contain
> +      a core module child node. They are always at physical address
> +      0x10000000 in all the Integrator variants.

Then do 'core-module@10000000' for the property name.

> +    properties:
> +      compatible:
> +        contains:
> +          const: arm,core-module-integrator
> +        description: this node is the core module node, it can be compatible
> +          with syscon and simple-bus as well

Those compatibles should be listed, too.

> +
> +    required:
> +      - compatible
> +      - reg
> +
> +required:
> +  - compatible
> +  - syscon
> +  - core-module@10000000
> +
> +...
> --
> 2.23.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
