Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5056DA3A74
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 17:36:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m0rTncut0VHtMOC70qlELawI2myuu/hfgu0kxTpbkBA=; b=paAgBRmryLkz8U
	cas1s4S4eL5PnX5xcgcsSRMfpzTwVDT1ouno1yyyIplGZUP9sKwp78tBG8Kodeb5OPkCCfG1H8rd1
	PZrvMLJhZCdPp4d+xDrYFAGfQEAFGc8gJ87OURwaR296W7CecmfA+I7o/e0ug9H1T3PrNOi/1+7b0
	xgQif7fALuqcF1SHztsikavhlc765mvGIwrXo0pebHX7Et+zJVkAz25gJ0RWEdReSzcRaNH23LPbs
	fbSfA7VVQxZJ+QXYsrG8Bu2Fpzxg5CwwLxwGI1TW6Zu7Abnxiu+KmLmy57BQztXAnUg8+5goeuxKI
	anjXeqLR5MBs5cifZT5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3iwy-0000q7-4K; Fri, 30 Aug 2019 15:36:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3iwm-0000pc-Ta
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 15:36:22 +0000
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
 [209.85.160.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A1EB32342A
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 15:36:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567179377;
 bh=A1QrV49tH9q9dlQhAxJiuEe1Gg2tCFFNDHsDHnohYu4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=dBSnWY0LCPv9EeotfjqGDgXVxUGuh8MDpDsFA1gcJk+hfMsODcgD4hMDFQwXA9RMK
 1TvokkDW8cWVEKAd8CzIvtLwVoWRdz91wpnLG2UOzHo0U7XHHRvBAKDH6OMIbq/4gg
 pnnWoxMK2njiZ8oR2e6ZDD7Gl9CilQTsyAjDm2Gw=
Received: by mail-qt1-f171.google.com with SMTP id n7so8023990qtb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 08:36:17 -0700 (PDT)
X-Gm-Message-State: APjAAAXYP0HPw6tjachQP78bOAovuECmvIUjaigbfKDJBm1IFvp+lGQ0
 VFzatFLdP9fa1Htl67P0emQLrw1fgvGgRO4EdQ==
X-Google-Smtp-Source: APXvYqyqu+wKSjq8CtuKESA3gZWEHLsO/lSYJHQHqy8f0pK610bo1aWQwIn6ZI6qr6CNseMYx/sE4s//KRRz/X/Ntyc=
X-Received: by 2002:aed:24f4:: with SMTP id u49mr16247909qtc.110.1567179376775; 
 Fri, 30 Aug 2019 08:36:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190828125209.28173-1-mripard@kernel.org>
 <20190828125209.28173-2-mripard@kernel.org>
In-Reply-To: <20190828125209.28173-2-mripard@kernel.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 30 Aug 2019 10:36:04 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLatP9BaaHZvW=ax+X98imPR1rxYiQCb8rKLvAbyV8Y7A@mail.gmail.com>
Message-ID: <CAL_JsqLatP9BaaHZvW=ax+X98imPR1rxYiQCb8rKLvAbyV8Y7A@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] ASoC: dt-bindings: Convert Allwinner A10 codec to
 a schema
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_083620_997254_1B0442E5 
X-CRM114-Status: GOOD (  22.45  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Linux-ALSA <alsa-devel@alsa-project.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Mark Brown <broonie@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 7:52 AM Maxime Ripard <mripard@kernel.org> wrote:
>
> From: Maxime Ripard <maxime.ripard@bootlin.com>
>
> The Allwinner SoCs have an embedded audio codec that is supported in Linux,
> with a matching Device Tree binding.
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> ---
>
> Changes from v1:
>   - Fix subject prefix
> ---
>  .../sound/allwinner,sun4i-a10-codec.yaml      | 162 ++++++++++++++++++
>  .../devicetree/bindings/sound/sun4i-codec.txt |  94 ----------
>  2 files changed, 162 insertions(+), 94 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-codec.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/sun4i-codec.txt
>
> diff --git a/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-codec.yaml b/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-codec.yaml
> new file mode 100644
> index 000000000000..44feefae0ef0
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-codec.yaml
> @@ -0,0 +1,162 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/allwinner,sun4i-a10-codec.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner A10 Codec Device Tree Bindings
> +
> +maintainers:
> +  - Chen-Yu Tsai <wens@csie.org>
> +  - Maxime Ripard <maxime.ripard@bootlin.com>
> +
> +properties:
> +  "#sound-dai-cells":
> +    const: 0
> +
> +  compatible:
> +    enum:
> +      - allwinner,sun4i-a10-codec
> +      - allwinner,sun6i-a31-codec
> +      - allwinner,sun7i-a20-codec
> +      - allwinner,sun8i-a23-codec
> +      - allwinner,sun8i-h3-codec
> +      - allwinner,sun8i-v3s-codec
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: Bus Clock
> +      - description: Module Clock
> +
> +  clock-names:
> +    items:
> +      - const: apb
> +      - const: codec
> +
> +  dmas:
> +    items:
> +      - description: RX DMA Channel
> +      - description: TX DMA Channel
> +
> +  dma-names:
> +    items:
> +      - const: rx
> +      - const: tx
> +
> +  resets:
> +    maxItems: 1
> +
> +  allwinner,audio-routing:
> +    $ref: /schemas/types.yaml#definitions/non-unique-string-array
> +    description: |-
> +      A list of the connections between audio components.  Each entry
> +      is a pair of strings, the first being the connection\'s sink, the
> +      second being the connection\'s source. Valid names include
> +
> +        Audio pins on the SoC
> +          HP
> +          HPCOM
> +          LINEIN    (not on sun8i-v3s)
> +          LINEOUT   (not on sun8i-a23 or sun8i-v3s)
> +          MIC1
> +          MIC2      (not on sun8i-v3s)
> +          MIC3      (only on sun6i-a31)
> +
> +        Microphone biases from the SoC
> +          HBIAS
> +          MBIAS     (not on sun8i-v3s)
> +
> +        Board connectors
> +          Headphone
> +          Headset Mic
> +          Line In
> +          Line Out
> +          Mic
> +          Speaker

All these strings should be in an enum. If 'items' is a schema rather
than a list, it applies to all items.

Also, I assume that maxItems can be 18 and minItems is 2?

> +
> +  allwinner,codec-analog-controls:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description: Phandle to the codec analog controls in the PRCM
> +
> +  allwinner,pa-gpios:
> +    description: GPIO to enable the external amplifier
> +
> +required:
> +  - "#sound-dai-cells"
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - dmas
> +  - dma-names
> +
> +if:
> +  properties:
> +    compatible:
> +      enum:
> +        - allwinner,sun6i-a31-codec
> +        - allwinner,sun8i-a23-codec
> +        - allwinner,sun8i-h3-codec
> +        - allwinner,sun8i-v3s-codec
> +
> +then:
> +  if:
> +    properties:
> +      compatible:
> +        const: allwinner,sun6i-a31-codec
> +
> +  then:
> +    required:
> +      - resets
> +      - allwinner,audio-routing
> +
> +  else:
> +    required:
> +      - resets
> +      - allwinner,audio-routing
> +      - allwinner,codec-analog-controls
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    codec@1c22c00 {
> +        #sound-dai-cells = <0>;
> +        compatible = "allwinner,sun7i-a20-codec";
> +        reg = <0x01c22c00 0x40>;
> +        interrupts = <0 30 4>;
> +        clocks = <&apb0_gates 0>, <&codec_clk>;
> +        clock-names = "apb", "codec";
> +        dmas = <&dma 0 19>, <&dma 0 19>;
> +        dma-names = "rx", "tx";
> +    };
> +
> +  - |
> +    codec@1c22c00 {
> +        #sound-dai-cells = <0>;
> +        compatible = "allwinner,sun6i-a31-codec";
> +        reg = <0x01c22c00 0x98>;
> +        interrupts = <0 29 4>;
> +        clocks = <&ccu 61>, <&ccu 135>;
> +        clock-names = "apb", "codec";
> +        resets = <&ccu 42>;
> +        dmas = <&dma 15>, <&dma 15>;
> +        dma-names = "rx", "tx";
> +        allwinner,audio-routing =
> +            "Headphone", "HP",
> +            "Speaker", "LINEOUT",
> +            "LINEIN", "Line In",
> +            "MIC1", "MBIAS",
> +            "MIC1", "Mic",
> +            "MIC2", "HBIAS",
> +            "MIC2", "Headset Mic";
> +    };
> +
> +...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
