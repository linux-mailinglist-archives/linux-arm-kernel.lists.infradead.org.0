Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C4F9EB05
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 16:30:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZFm83x8th2W/zEuZ/as/LGYxMxuD21WidMpvFrJx0ho=; b=Lldc8C1g9MVRJg
	eT2yFU785MFQ/vTMl8nMIZGLaTuAZHayxBavf91bOuyAv04O61Bs0F+iyMKA6wU2+QXdtbgC4RMOf
	BjiZUZ81Se7VuV/i2g1RTQ+8hUKzMq0QAn5inj5zLryXhH1VZx8U/DlAkwFujqUI8Kd48iU5rzRTQ
	xbyA/Wiz9oWzhCRbO3Zxb0oUIbcNN1VVTPT78S5oe68WZmTaeZz+PfWkuBhq2PRMs/irweX/oLSLW
	xa+uj5e4X97uC1O3H8qt1EfPkPz8Cr9ejftv2o3qwfhufWjTmmddjrOyUs7brdpz4r8TiXBWfoEAK
	9Z/X5mqxxFT1RUmLE/qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2cTw-0007Ic-47; Tue, 27 Aug 2019 14:30:00 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2cTk-0007Hv-QI
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 14:29:50 +0000
Received: by mail-ed1-f65.google.com with SMTP id s49so31677579edb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 07:29:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7BaT7WqHF/e/bUnH+2TrTHyVYT8MU5OxXpD2wLaF+Io=;
 b=C6v6Q09VZtrb4Xi2ihyxAQIYo/+nmFBYG6+XJkMRlGNCkPdWE5CkQwZZksh/WoR1mH
 ZtxtU5Mz3TQXB/X6sV2oy48ckJVLF77pCbdY5o2Ggde9pAEtFMwb8ZFnMVmeW23eFJru
 KGdeBtbLbGnajYduhTnZzaG9bAqB0azRas/drezsjSR6Rjb6f5NWm7DpHPWcuOeBLfGz
 7q8y6wqymGIC0AtgX6PLbSCO1YYf1w2g7gNiSvHQh9QpSxDU/M61UfdoepLUP0JhNAJ7
 J+Pa0QeWVxDkN2B098/2T2Z5J4iVu0J8ubTofXbGW4ZeJnBtPZctJwQ9QtRABD6wcQkN
 VHjQ==
X-Gm-Message-State: APjAAAXO24vgtl1WBSc5UbaYPkJNImSwkwHtC62defNHYMRI+5vUn4QY
 fkKSL3KcebBu0aiiTiz2MIXMgjI7CSc=
X-Google-Smtp-Source: APXvYqx7E0u23X30jAMtyaWbvxsYI4ZH9Ho6IlAHj6EQQnTT0QWBJd5qvqTgx4ohfd1Nc+wleM9uUw==
X-Received: by 2002:a17:906:5ad2:: with SMTP id
 x18mr21889141ejs.127.1566916185230; 
 Tue, 27 Aug 2019 07:29:45 -0700 (PDT)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com.
 [209.85.128.45])
 by smtp.gmail.com with ESMTPSA id va28sm3444687ejb.36.2019.08.27.07.29.44
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 27 Aug 2019 07:29:44 -0700 (PDT)
Received: by mail-wm1-f45.google.com with SMTP id l2so3308107wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 07:29:44 -0700 (PDT)
X-Received: by 2002:a05:600c:292:: with SMTP id
 18mr29403987wmk.51.1566916184111; 
 Tue, 27 Aug 2019 07:29:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190827142547.14577-1-mripard@kernel.org>
 <20190827142547.14577-3-mripard@kernel.org>
In-Reply-To: <20190827142547.14577-3-mripard@kernel.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 27 Aug 2019 22:29:33 +0800
X-Gmail-Original-Message-ID: <CAGb2v67tEgtD9PEus0TaPQg9969L_7dn2c4GFZSioR1AtxBpmQ@mail.gmail.com>
Message-ID: <CAGb2v67tEgtD9PEus0TaPQg9969L_7dn2c4GFZSioR1AtxBpmQ@mail.gmail.com>
Subject: Re: [PATCH 3/5] dt-bindings: sound: Convert Allwinner A33 codec to a
 schema
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_072948_856554_E2CF0F7E 
X-CRM114-Status: GOOD (  23.67  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 27, 2019 at 10:25 PM Maxime Ripard <mripard@kernel.org> wrote:
>
> From: Maxime Ripard <maxime.ripard@bootlin.com>
>
> The Allwinner A33 SoC have an embedded audio codec that is supported in Linux,
> with a matching Device Tree binding.
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  .../sound/allwinner,sun8i-a33-codec.yaml      | 57 +++++++++++++++++
>  .../bindings/sound/sun8i-a33-codec.txt        | 63 -------------------
>  2 files changed, 57 insertions(+), 63 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/sun8i-a33-codec.txt
>
> diff --git a/Documentation/devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml b/Documentation/devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml
> new file mode 100644
> index 000000000000..5e7cc05bbff1
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml
> @@ -0,0 +1,57 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/allwinner,sun8i-a33-codec.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner A33 Codec Device Tree Bindings
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
> +    const: allwinner,sun8i-a33-codec
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
> +      - const: bus
> +      - const: mod
> +
> +required:
> +  - "#sound-dai-cells"
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    audio-codec@1c22e00 {
> +      #sound-dai-cells = <0>;
> +      compatible = "allwinner,sun8i-a33-codec";
> +      reg = <0x01c22e00 0x400>;
> +      interrupts = <0 29 4>;
> +      clocks = <&ccu 47>, <&ccu 92>;
> +      clock-names = "bus", "mod";
> +    };
> +
> +...
> diff --git a/Documentation/devicetree/bindings/sound/sun8i-a33-codec.txt b/Documentation/devicetree/bindings/sound/sun8i-a33-codec.txt
> deleted file mode 100644
> index 7ecf6bd60d27..000000000000
> --- a/Documentation/devicetree/bindings/sound/sun8i-a33-codec.txt
> +++ /dev/null
> @@ -1,63 +0,0 @@
> -Allwinner SUN8I audio codec
> -------------------------------------
> -
> -On Sun8i-A33 SoCs, the audio is separated in different parts:
> -         - A DAI driver. It uses the "sun4i-i2s" driver which is
> -         documented here:
> -         Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-i2s.yaml
> -         - An analog part of the codec which is handled as PRCM registers.
> -         See Documentation/devicetree/bindings/sound/sun8i-codec-analog.txt
> -         - An digital part of the codec which is documented in this current
> -         binding documentation.
> -         - And finally, an audio card which links all the above components.
> -         The simple-audio card will be used.
> -         See Documentation/devicetree/bindings/sound/simple-card.txt
> -
> -This bindings documentation exposes Sun8i codec (digital part).
> -
> -Required properties:
> -- compatible: must be "allwinner,sun8i-a33-codec"
> -- reg: must contain the registers location and length
> -- interrupts: must contain the codec interrupt
> -- clocks: a list of phandle + clock-specifer pairs, one for each entry
> -  in clock-names.
> -- clock-names: should contain followings:
> -   - "bus": the parent APB clock for this controller
> -   - "mod": the parent module clock
> -
> -Here is an example to add a sound card and the codec binding on sun8i SoCs that
> -are similar to A33 using simple-card:
> -
> -       sound {
> -               compatible = "simple-audio-card";
> -               simple-audio-card,name = "sun8i-a33-audio";
> -               simple-audio-card,format = "i2s";
> -               simple-audio-card,frame-master = <&link_codec>;
> -               simple-audio-card,bitclock-master = <&link_codec>;
> -               simple-audio-card,mclk-fs = <512>;
> -               simple-audio-card,aux-devs = <&codec_analog>;
> -               simple-audio-card,routing =
> -                               "Left DAC", "Digital Left DAC",
> -                               "Right DAC", "Digital Right DAC";

At some point we should start listing the endpoints available for routing?

ChenYu

> -
> -               simple-audio-card,cpu {
> -                       sound-dai = <&dai>;
> -               };
> -
> -               link_codec: simple-audio-card,codec {
> -                       sound-dai = <&codec>;
> -               };
> -
> -       soc@1c00000 {
> -               [...]
> -
> -               audio-codec@1c22e00 {
> -                       #sound-dai-cells = <0>;
> -                       compatible = "allwinner,sun8i-a33-codec";
> -                       reg = <0x01c22e00 0x400>;
> -                       interrupts = <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
> -                       clocks = <&ccu CLK_BUS_CODEC>, <&ccu CLK_AC_DIG>;
> -                       clock-names = "bus", "mod";
> -               };
> -       };
> -
> --
> 2.21.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
