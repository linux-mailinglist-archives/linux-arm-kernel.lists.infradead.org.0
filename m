Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC28123CAC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 02:50:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jspZYAVwu2hqLz+MukGa6fWR+Mw/ZkS9+pxm++7MZmw=; b=rW+RYjMcSf3ozg
	yWqnk3IlZQbLWlGyIzaqkO1YMh4AAB7LKATmfbi9DofwOX/54bh8Zk5Pe3ghb0xMeY14tleRV53Nx
	MU2QIiuEkK+ouBjSd61EbMxrZJ6WMUOO7+ZS1p77YTu7y3Kxlgfuu1/IOD1dgs1PXayAvUSXB/n8C
	NTQICWrGjdVKc0S130KrzmL/asexh/GaMANivT8/F6VlMCqRNs79SUL5Hk2JHn8BY4xV7UJAF5V3a
	rVrRjo2tWHrpLeYpYp+nPfYvZlccBf6my8B47n++4teL796wXyP6V2TzPjDsX4fDQpdvmPVv83j8H
	iAz0GB7hvWck2ESB7HoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihOTz-0005Ln-AL; Wed, 18 Dec 2019 01:50:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihOTr-0005LK-2P
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 01:50:28 +0000
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
 [209.85.160.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6741821D7D
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 01:50:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576633824;
 bh=1ER1+Te1M9LX+7Gk5H0lMylo+O7IaUKXOyMSLvBiGdw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=tJpSKwz5LbEq7uihFvq3h9Vn+kqe2zX0nuh1C6Oyxz1Bh5yu727s9JLudZAIGOLME
 13Pvb1K294A5bXi6JTYLI6JjXhHVpHf494NE+C3jR07jFkcDCctJJzZ249RxBZUxcc
 jsGzkR+hETe5uFKg6+YJWST+cCClE/3mWd3hTLxw=
Received: by mail-qt1-f176.google.com with SMTP id k40so649333qtk.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 17:50:24 -0800 (PST)
X-Gm-Message-State: APjAAAWGX0ohcjjJkaJ4AWtf8jn4s5IalMU5oDVEo96lKSqDUvjf7Oed
 ++Hdymy155qP/AADAxh2cU+Kr91ZbVtNaUpi+Q==
X-Google-Smtp-Source: APXvYqxzmxWo6m2szzNin7/6pi1AzpfPnPJsh7QcQlbw7BCYatEkJb5KqW7BvgSxSjL0yCZQCCBYdTj8oKhbarpsrhE=
X-Received: by 2002:ac8:1c4e:: with SMTP id j14mr159494qtk.300.1576633823583; 
 Tue, 17 Dec 2019 17:50:23 -0800 (PST)
MIME-Version: 1.0
References: <20191209093441.50694-1-maxime@cerno.tech>
 <20191209093441.50694-4-maxime@cerno.tech>
In-Reply-To: <20191209093441.50694-4-maxime@cerno.tech>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 17 Dec 2019 19:50:12 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJ0Nq8P6bXeNsb20t0M5qj6XH1XW77bQH4PWL0bzspZvg@mail.gmail.com>
Message-ID: <CAL_JsqJ0Nq8P6bXeNsb20t0M5qj6XH1XW77bQH4PWL0bzspZvg@mail.gmail.com>
Subject: Re: [PATCH 4/4] dt-bindings: sram: Convert Allwinner A10 system
 controller to a schema
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_175027_154990_BFCE9E24 
X-CRM114-Status: GOOD (  19.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 9, 2019 at 3:34 AM Maxime Ripard <maxime@cerno.tech> wrote:
>
> The older Allwinner SoCs have a system controller that is supported in
> Linux, with a matching Device Tree binding.
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../allwinner,sun4i-a10-system-control.yaml   | 140 ++++++++++++++++++
>  .../devicetree/bindings/sram/sunxi-sram.txt   | 113 --------------
>  2 files changed, 140 insertions(+), 113 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/sram/allwinner,sun4i-a10-system-control.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sram/sunxi-sram.txt
>
> diff --git a/Documentation/devicetree/bindings/sram/allwinner,sun4i-a10-system-control.yaml b/Documentation/devicetree/bindings/sram/allwinner,sun4i-a10-system-control.yaml
> new file mode 100644
> index 000000000000..3a368fbdff58
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sram/allwinner,sun4i-a10-system-control.yaml
> @@ -0,0 +1,140 @@
> +# SPDX-License-Identifier: GPL-2.0+
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sram/allwinner,sun4i-a10-system-control.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner A10 System Control Device Tree Bindings
> +
> +maintainers:
> +  - Chen-Yu Tsai <wens@csie.org>
> +  - Maxime Ripard <mripard@kernel.org>
> +
> +description:
> +  The SRAM controller found on most Allwinner devices is represented
> +  by a regular node for the SRAM controller itself, with sub-nodes
> +  representing the SRAM handled by the SRAM controller.
> +
> +properties:
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 1
> +
> +  compatible:
> +    oneOf:
> +      - const: allwinner,sun4i-a10-sram-controller
> +        deprecated: true
> +      - const: allwinner,sun4i-a10-system-control
> +      - const: allwinner,sun5i-a13-system-control
> +      - items:
> +        - const: allwinner,sun7i-a20-system-control
> +        - const: allwinner,sun4i-a10-system-control
> +      - const: allwinner,sun8i-a23-system-control
> +      - const: allwinner,sun8i-h3-system-control
> +      - const: allwinner,sun50i-a64-sram-controller
> +        deprecated: true
> +      - const: allwinner,sun50i-a64-system-control
> +      - const: allwinner,sun50i-h5-system-control
> +      - items:
> +        - const: allwinner,sun50i-h6-system-control
> +        - const: allwinner,sun50i-a64-system-control
> +      - items:
> +        - const: allwinner,suniv-f1c100s-system-control
> +        - const: allwinner,sun4i-a10-system-control
> +
> +  reg:
> +    maxItems: 1
> +
> +  ranges: true
> +
> +patternProperties:
> +  "^sram@[a-z0-9]+":
> +    type: object
> +
> +    properties:
> +      compatible:
> +        const: mmio-sram
> +
> +    patternProperties:
> +      "^sram-section?@[a-f0-9]+$":
> +        type: object
> +
> +        compatible:

This should be under 'properties'. I fixed it up.

I think this should have triggered an error before, but I reworked the
meta-schema a bit today as there were several cases where we weren't
descending levels correctly.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
