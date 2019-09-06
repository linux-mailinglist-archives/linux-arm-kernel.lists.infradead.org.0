Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF2AABD1F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 17:59:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aj7g+0Q48MoV+PeAjuF32lvudf1/SsLOjccL6Ljqm8Q=; b=Z0HcjR4i7JAcPi
	KiyVnPe1ztZDZPnUycoaJE84i2V1x4zhqUFlWt5FUXu/N7iehscYAms4oSYb5mRGEYDY3zt+tmsyj
	qruVZWNCZZs535fpZtCSCqFWRBjBJAgVIRMDwLQV18SF+rcEqOecRzJ3rx3SHWFRnF//hX4lxYQ12
	0JXMfluO8WlPffoJ39QbwB97tTCn9xetya+Immg5ZQl7fmvOsukl2fXXRZsELaJTg+sq9j6gW4tLq
	nJ58Qc1y6PZASLrpnAOGAQgK7mdfKXSxc7oywO3W5akbMMNE6S3n08FWpe1p073hvbJ1toLTe5vLW
	JEcu4SB9FA9bDgckyM0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Gdk-0004k1-UA; Fri, 06 Sep 2019 15:59:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6GdU-0004jg-3f
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 15:58:58 +0000
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
 [209.85.160.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 968232186A
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  6 Sep 2019 15:58:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567785535;
 bh=5Xa64DDgQTlA0twWFBEh/6rw5yPEcKMciY3q5SZHGpg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=xqU+aQyBLnNXZ8poKwGLkz3m8ePw3SkXcnTf/tehuTwQ6wJ1sm/nTyeY4S4JkkUjV
 oPtJWHJC07ohFUvm6NmUGVcZMRQjXjfMnYtZwXZz03TGsAfrS1neKuAC3G3Ld3HhyT
 PAjwpaWkGKpFQl11Z0unFdwGdx/EyNFQ5ra+xKjc=
Received: by mail-qt1-f182.google.com with SMTP id a13so7630590qtj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Sep 2019 08:58:55 -0700 (PDT)
X-Gm-Message-State: APjAAAVmihkyTTSR5LzZ7WZrSgWWICBzZKd4bi194nj6JA7Nc4ynIAhc
 L/Iaz5DjUoe7dQJUWb7vdTDW8zMORpdSnVMw+Q==
X-Google-Smtp-Source: APXvYqx1zzwAucWFSeUA5Xn8OCCP477JQH3tzPjHEKs13+RFD/VFPewf7geqIl0U2abjEY7ZDlC9s5Mmsmsx3lb3DLQ=
X-Received: by 2002:ac8:100d:: with SMTP id z13mr3867259qti.224.1567785534684; 
 Fri, 06 Sep 2019 08:58:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190906151221.3148-1-mripard@kernel.org>
In-Reply-To: <20190906151221.3148-1-mripard@kernel.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 6 Sep 2019 16:58:42 +0100
X-Gmail-Original-Message-ID: <CAL_Jsq+a=YaN79A-NXVvnPzLijjkoVkjQJcceq4xwhH6ujpgqA@mail.gmail.com>
Message-ID: <CAL_Jsq+a=YaN79A-NXVvnPzLijjkoVkjQJcceq4xwhH6ujpgqA@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] ASoC: dt-bindings: Convert Allwinner A10 codec to
 a schema
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_085856_197333_3CD68041 
X-CRM114-Status: GOOD (  28.17  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Linux-ALSA <alsa-devel@alsa-project.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Mark Brown <broonie@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 6, 2019 at 4:12 PM Maxime Ripard <mripard@kernel.org> wrote:
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
> Changes from v2:
>   - Change the audio-routing values to an enum, and enforce boundaries on
>     the size
>   - Add restrictions to the possible values of audio-routing
>
> Changes from v1:
>   - Fix subject prefix
> ---
>  .../sound/allwinner,sun4i-a10-codec.yaml      | 262 ++++++++++++++++++
>  .../devicetree/bindings/sound/sun4i-codec.txt |  94 -------
>  2 files changed, 262 insertions(+), 94 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-codec.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/sun4i-codec.txt
>
> diff --git a/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-codec.yaml b/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-codec.yaml
> new file mode 100644
> index 000000000000..faa75b91c072
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-codec.yaml
> @@ -0,0 +1,262 @@
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
> +    description: |-
> +      A list of the connections between audio components.  Each entry
> +      is a pair of strings, the first being the connection's sink, the
> +      second being the connection's source.
> +    allOf:
> +      - $ref: /schemas/types.yaml#definitions/non-unique-string-array
> +      - minItems: 2
> +        maxItems: 18
> +        enum:
> +          # Audio Pins on the SoC
> +          - HP
> +          - HPCOM
> +          - LINEIN
> +          - LINEOUT
> +          - MIC1
> +          - MIC2
> +          - MIC3
> +
> +          # Microphone Biases from the SoC
> +          - HBIAS
> +          - MBIAS
> +
> +          # Board Connectors
> +          - Headphone
> +          - Headset Mic
> +          - Line In
> +          - Line Out
> +          - Mic
> +          - Speaker
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
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          enum:
> +            - allwinner,sun6i-a31-codec
> +            - allwinner,sun8i-a23-codec
> +            - allwinner,sun8i-h3-codec
> +            - allwinner,sun8i-v3s-codec
> +
> +    then:
> +      if:
> +        properties:
> +          compatible:
> +            const: allwinner,sun6i-a31-codec
> +
> +      then:
> +        required:
> +          - resets
> +          - allwinner,audio-routing
> +
> +      else:
> +        required:
> +          - resets
> +          - allwinner,audio-routing
> +          - allwinner,codec-analog-controls
> +
> +  - if:
> +      properties:
> +        compatible:
> +          enum:
> +            - allwinner,sun6i-a31-codec
> +
> +    then:
> +      properties:
> +        allwinner,audio-routing:
> +          enum:
> +            - HP
> +            - HPCOM
> +            - LINEIN
> +            - LINEOUT
> +            - MIC1
> +            - MIC2
> +            - MIC3
> +            - HBIAS
> +            - MBIAS
> +            - Headphone
> +            - Headset Mic
> +            - Line In
> +            - Line Out
> +            - Mic
> +            - Speaker

This looks like the same list as the default...

> +
> +  - if:
> +      properties:
> +        compatible:
> +          enum:
> +            - allwinner,sun8i-a23-codec
> +
> +    then:
> +      properties:
> +        allwinner,audio-routing:
> +          enum:
> +            - HP
> +            - HPCOM
> +            - LINEIN
> +            - MIC1
> +            - MIC2
> +            - HBIAS
> +            - MBIAS
> +            - Headphone
> +            - Headset Mic
> +            - Line In
> +            - Line Out
> +            - Mic
> +            - Speaker
> +
> +  - if:
> +      properties:
> +        compatible:
> +          enum:
> +            - allwinner,sun8i-h3-codec
> +
> +    then:
> +      properties:
> +        allwinner,audio-routing:
> +          enum:
> +            - HP
> +            - HPCOM
> +            - LINEIN
> +            - LINEOUT
> +            - MIC1
> +            - MIC2
> +            - HBIAS
> +            - MBIAS
> +            - Headphone
> +            - Headset Mic
> +            - Line In
> +            - Line Out
> +            - Mic
> +            - Speaker
> +
> +  - if:
> +      properties:
> +        compatible:
> +          enum:
> +            - allwinner,sun8i-v3s-codec
> +
> +    then:
> +      properties:
> +        allwinner,audio-routing:
> +          enum:
> +            - HP
> +            - HPCOM
> +            - MIC1
> +            - HBIAS
> +            - Headphone
> +            - Headset Mic
> +            - Line In
> +            - Line Out
> +            - Mic
> +            - Speaker
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
> diff --git a/Documentation/devicetree/bindings/sound/sun4i-codec.txt b/Documentation/devicetree/bindings/sound/sun4i-codec.txt
> deleted file mode 100644
> index 66579bbd3294..000000000000
> --- a/Documentation/devicetree/bindings/sound/sun4i-codec.txt
> +++ /dev/null
> @@ -1,94 +0,0 @@
> -* Allwinner A10 Codec
> -
> -Required properties:
> -- compatible: must be one of the following compatibles:
> -               - "allwinner,sun4i-a10-codec"
> -               - "allwinner,sun6i-a31-codec"
> -               - "allwinner,sun7i-a20-codec"
> -               - "allwinner,sun8i-a23-codec"
> -               - "allwinner,sun8i-h3-codec"
> -               - "allwinner,sun8i-v3s-codec"
> -- reg: must contain the registers location and length
> -- interrupts: must contain the codec interrupt
> -- dmas: DMA channels for tx and rx dma. See the DMA client binding,
> -       Documentation/devicetree/bindings/dma/dma.txt
> -- dma-names: should include "tx" and "rx".
> -- clocks: a list of phandle + clock-specifer pairs, one for each entry
> -  in clock-names.
> -- clock-names: should contain the following:
> -   - "apb": the parent APB clock for this controller
> -   - "codec": the parent module clock
> -
> -Optional properties:
> -- allwinner,pa-gpios: gpio to enable external amplifier
> -
> -Required properties for the following compatibles:
> -               - "allwinner,sun6i-a31-codec"
> -               - "allwinner,sun8i-a23-codec"
> -               - "allwinner,sun8i-h3-codec"
> -               - "allwinner,sun8i-v3s-codec"
> -- resets: phandle to the reset control for this device
> -- allwinner,audio-routing: A list of the connections between audio components.
> -                          Each entry is a pair of strings, the first being the
> -                          connection's sink, the second being the connection's
> -                          source. Valid names include:
> -
> -                          Audio pins on the SoC:
> -                          "HP"
> -                          "HPCOM"
> -                          "LINEIN"     (not on sun8i-v3s)
> -                          "LINEOUT"    (not on sun8i-a23 or sun8i-v3s)
> -                          "MIC1"
> -                          "MIC2"       (not on sun8i-v3s)
> -                          "MIC3"       (sun6i-a31 only)
> -
> -                          Microphone biases from the SoC:
> -                          "HBIAS"
> -                          "MBIAS"      (not on sun8i-v3s)
> -
> -                          Board connectors:
> -                          "Headphone"
> -                          "Headset Mic"
> -                          "Line In"
> -                          "Line Out"
> -                          "Mic"
> -                          "Speaker"
> -
> -Required properties for the following compatibles:
> -               - "allwinner,sun8i-a23-codec"
> -               - "allwinner,sun8i-h3-codec"
> -               - "allwinner,sun8i-v3s-codec"
> -- allwinner,codec-analog-controls: A phandle to the codec analog controls
> -                                  block in the PRCM.
> -
> -Example:
> -codec: codec@1c22c00 {
> -       #sound-dai-cells = <0>;
> -       compatible = "allwinner,sun7i-a20-codec";
> -       reg = <0x01c22c00 0x40>;
> -       interrupts = <0 30 4>;
> -       clocks = <&apb0_gates 0>, <&codec_clk>;
> -       clock-names = "apb", "codec";
> -       dmas = <&dma 0 19>, <&dma 0 19>;
> -       dma-names = "rx", "tx";
> -};
> -
> -codec: codec@1c22c00 {
> -       #sound-dai-cells = <0>;
> -       compatible = "allwinner,sun6i-a31-codec";
> -       reg = <0x01c22c00 0x98>;
> -       interrupts = <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
> -       clocks = <&ccu CLK_APB1_CODEC>, <&ccu CLK_CODEC>;
> -       clock-names = "apb", "codec";
> -       resets = <&ccu RST_APB1_CODEC>;
> -       dmas = <&dma 15>, <&dma 15>;
> -       dma-names = "rx", "tx";
> -       allwinner,audio-routing =
> -               "Headphone", "HP",
> -               "Speaker", "LINEOUT",
> -               "LINEIN", "Line In",
> -               "MIC1", "MBIAS",
> -               "MIC1", "Mic",
> -               "MIC2", "HBIAS",
> -               "MIC2", "Headset Mic";
> -};
> --
> 2.21.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
