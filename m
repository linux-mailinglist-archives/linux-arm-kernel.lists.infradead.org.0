Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBA5421AC0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 17:36:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rnrCtSkk7rzv0wAUxVolwRpsNWqp7xeEDkfBIRIea8M=; b=G3RaNvTCaIyLr5
	QZ5yPw+o2CSKX7sDJ64lAOtLr62N9lQMTV1cx6DlH9KOSlEwLf5ncRV9XuKlzWJx0JszRcNF2e0RX
	gJEDcJYL2e2QAhmdEat+6+5W5l85jeK/603ItAU70wJZvO0p48/wR3AjlfpdqUL9in/zRRQgXRiNq
	3roI9lC4NqeMrRrFqBKmk+G4s1npVyX0RoNv8xjqVKDlwSqVqMu1w2kIIb90RF9DdF3e6MEwJVrUP
	ZGWkS8RXrQQ1JF6mDrFwY2E1S8aUD9uriUIFOGjeO79Pvs6pjl95cGwvVDtBy2TBCuWaBjcgwYp4Z
	/zH7vXxpWlu761XXh/hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hReul-00016r-OM; Fri, 17 May 2019 15:36:55 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hReuQ-0000re-Pa
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 15:36:39 +0000
Received: by mail-wr1-x442.google.com with SMTP id c5so7576548wrs.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 08:36:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=6E5ON01H2nf881unjrijyCilTVQej1skhDclPJcb53Q=;
 b=Hk8UfTHsI889Ko1dvTJ1I4YpudWz6TeCmqBswYotDbYKfGH8tMzo+QJZKjzjuYfd7O
 3IiIIuR7t7fD1Ic+OrTMqg2smsaIKmNEJkjvA9wn+TpUTY4O9YJAk30p6BJDjBtDY7G4
 Z8Dl+yjxr43b/MtMUb4Q/M3lpEgVxqINLunSFiT2MmjNIiqjwMmakiWMOEweI2GeuRKF
 kCCGYI6xCEZJs+rkdvo3AEVmKDnD3TPT+jYe0Euyh+LNDf5JT8yJWZhDS9esYE2r1yeU
 RMZdo8U3i/2BXOw8htAcc5OeneW8bVAkXAhiSHPuFDKRhq9HtS4GE++vTVdEFEY3r9vv
 865g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=6E5ON01H2nf881unjrijyCilTVQej1skhDclPJcb53Q=;
 b=FQn5ZKe/U75oOCgLyL4a5KM28G9gMqFAIA61eoQk6Swq5BsyhSMFy12P7HBtGdKLoJ
 4DZgXIz4k572QRZ7/IP0y9xFO5qjgw/Vuk4I58XXSVPSrP4CMM9m5vwctRzlg+9Pw+5n
 SkncuGEImdV08pc5Wz9HgH9w1CcRTY/z+weYpU0eZcEoaybJ8M6HhI20j1GzzrR455fF
 7W9tPg1V72t5jhfmwxLLHBKxvySul/x3wxp5m8cxjbILS8cb5rD3LQi2aIdyu9jCVbA9
 SOTAdQPZ/qy+yoTaPICEYpFlYMPTqd1Rh/MMFl++K7IT5AP9Rbq1CVP35RuRWUuuZe3f
 eiVQ==
X-Gm-Message-State: APjAAAV3edlb+V2DL57esFxddq99HBcr3dxwU2sUzUMaYkq+r9bsgi2M
 ASDwBPVWV7QFgb+2S2PUMwGIpA==
X-Google-Smtp-Source: APXvYqxBbkv2X60sU/xz/QIyD6hX0VnCGJ2MW7KmVgIuFYjkdTvMq10s9ilH8/Y2d7vo2KEIs0E5LQ==
X-Received: by 2002:a5d:554f:: with SMTP id g15mr7125793wrw.318.1558107392777; 
 Fri, 17 May 2019 08:36:32 -0700 (PDT)
Received: from [10.1.2.12] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id y40sm14914929wrd.96.2019.05.17.08.36.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 May 2019 08:36:32 -0700 (PDT)
Subject: Re: [PATCH v3 2/2] dt-bindings: arm: Convert Amlogic board/soc
 bindings to json-schema
To: Rob Herring <robh@kernel.org>, Kevin Hilman <khilman@baylibre.com>
References: <20190517152723.28518-1-robh@kernel.org>
 <20190517152723.28518-2-robh@kernel.org>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <77fcc70c-74ef-2421-c925-eb4fb9b7554d@baylibre.com>
Date: Fri, 17 May 2019 17:36:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190517152723.28518-2-robh@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_083634_835420_27E78A3B 
X-CRM114-Status: GOOD (  20.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 linux-kernel@vger.kernel.org, Carlo Caione <carlo@caione.org>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17/05/2019 17:27, Rob Herring wrote:
> Convert Amlogic SoC bindings to DT schema format using json-schema.
> 
> Cc: Carlo Caione <carlo@caione.org>
> Cc: Kevin Hilman <khilman@baylibre.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> v3:
> - Add board descriptions
> - Rebase onto Linus' master
> 
>  .../devicetree/bindings/arm/amlogic.txt       | 113 --------------
>  .../devicetree/bindings/arm/amlogic.yaml      | 140 ++++++++++++++++++
>  2 files changed, 140 insertions(+), 113 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/amlogic.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/amlogic.yaml
> 
> diff --git a/Documentation/devicetree/bindings/arm/amlogic.txt b/Documentation/devicetree/bindings/arm/amlogic.txt
> deleted file mode 100644
> index 5f650248b18e..000000000000
> --- a/Documentation/devicetree/bindings/arm/amlogic.txt
> +++ /dev/null
> @@ -1,113 +0,0 @@
> -Amlogic MesonX device tree bindings
> --------------------------------------------
> -
> -Work in progress statement:
> -
> -Device tree files and bindings applying to Amlogic SoCs and boards are
> -considered "unstable". Any Amlogic device tree binding may change at
> -any time. Be sure to use a device tree binary and a kernel image
> -generated from the same source tree.
> -
> -Please refer to Documentation/devicetree/bindings/ABI.txt for a definition of a
> -stable binding/ABI.
> -
> ----------------------------------------------------------------
> -
> -Boards with the Amlogic Meson6 SoC shall have the following properties:
> -  Required root node property:
> -    compatible: "amlogic,meson6"
> -
> -Boards with the Amlogic Meson8 SoC shall have the following properties:
> -  Required root node property:
> -    compatible: "amlogic,meson8";
> -
> -Boards with the Amlogic Meson8b SoC shall have the following properties:
> -  Required root node property:
> -    compatible: "amlogic,meson8b";
> -
> -Boards with the Amlogic Meson8m2 SoC shall have the following properties:
> -  Required root node property:
> -    compatible: "amlogic,meson8m2";
> -
> -Boards with the Amlogic Meson GXBaby SoC shall have the following properties:
> -  Required root node property:
> -    compatible: "amlogic,meson-gxbb";
> -
> -Boards with the Amlogic Meson GXL S905X SoC shall have the following properties:
> -  Required root node property:
> -    compatible: "amlogic,s905x", "amlogic,meson-gxl";
> -
> -Boards with the Amlogic Meson GXL S905D SoC shall have the following properties:
> -  Required root node property:
> -    compatible: "amlogic,s905d", "amlogic,meson-gxl";
> -
> -Boards with the Amlogic Meson GXL S805X SoC shall have the following properties:
> -  Required root node property:
> -    compatible: "amlogic,s805x", "amlogic,meson-gxl";
> -
> -Boards with the Amlogic Meson GXL S905W SoC shall have the following properties:
> -  Required root node property:
> -    compatible: "amlogic,s905w", "amlogic,meson-gxl";
> -
> -Boards with the Amlogic Meson GXM S912 SoC shall have the following properties:
> -  Required root node property:
> -    compatible: "amlogic,s912", "amlogic,meson-gxm";
> -
> -Boards with the Amlogic Meson AXG A113D SoC shall have the following properties:
> -  Required root node property:
> -    compatible: "amlogic,a113d", "amlogic,meson-axg";
> -
> -Boards with the Amlogic Meson G12A S905D2 SoC shall have the following properties:
> -  Required root node property:
> -    compatible: "amlogic,g12a";
> -
> -Board compatible values (alphabetically, grouped by SoC):
> -
> -  - "geniatech,atv1200" (Meson6)
> -
> -  - "minix,neo-x8" (Meson8)
> -
> -  - "endless,ec100" (Meson8b)
> -  - "hardkernel,odroid-c1" (Meson8b)
> -  - "tronfy,mxq" (Meson8b)
> -
> -  - "tronsmart,mxiii-plus" (Meson8m2)
> -
> -  - "amlogic,p200" (Meson gxbb)
> -  - "amlogic,p201" (Meson gxbb)
> -  - "friendlyarm,nanopi-k2" (Meson gxbb)
> -  - "hardkernel,odroid-c2" (Meson gxbb)
> -  - "nexbox,a95x" (Meson gxbb or Meson gxl s905x)
> -  - "tronsmart,vega-s95-pro", "tronsmart,vega-s95" (Meson gxbb)
> -  - "tronsmart,vega-s95-meta", "tronsmart,vega-s95" (Meson gxbb)
> -  - "tronsmart,vega-s95-telos", "tronsmart,vega-s95" (Meson gxbb)
> -  - "wetek,hub" (Meson gxbb)
> -  - "wetek,play2" (Meson gxbb)
> -
> -  - "amlogic,p212" (Meson gxl s905x)
> -  - "hwacom,amazetv" (Meson gxl s905x)
> -  - "khadas,vim" (Meson gxl s905x)
> -  - "libretech,cc" (Meson gxl s905x)
> -
> -  - "amlogic,p230" (Meson gxl s905d)
> -  - "amlogic,p231" (Meson gxl s905d)
> -  - "phicomm,n1" (Meson gxl s905d)
> -
> -  - "amlogic,p241" (Meson gxl s805x)
> -  - "libretech,aml-s805x-ac" (Meson gxl s805x)
> -
> -  - "amlogic,p281" (Meson gxl s905w)
> -  - "oranth,tx3-mini" (Meson gxl s905w)
> -
> -  - "amlogic,q200" (Meson gxm s912)
> -  - "amlogic,q201" (Meson gxm s912)
> -  - "khadas,vim2" (Meson gxm s912)
> -  - "kingnovel,r-box-pro" (Meson gxm S912)
> -  - "nexbox,a1" (Meson gxm s912)
> -  - "tronsmart,vega-s96" (Meson gxm s912)
> -
> -  - "amlogic,s400" (Meson axg a113d)
> -
> -  - "amlogic,u200" (Meson g12a s905d2)
> -  - "amediatech,x96-max" (Meson g12a s905x2)
> -  - "seirobotics,sei510" (Meson g12a s905x2)
> diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
> new file mode 100644
> index 000000000000..6d5bb493db03
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
> @@ -0,0 +1,140 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/amlogic.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Amlogic MesonX device tree bindings
> +
> +maintainers:
> +  - Neil Armstrong <narmstrong@baylibre.com>
> +  - Carlo Caione <carlo@caione.org>
> +  - Kevin Hilman <khilman@baylibre.com>

Please drop Carlo and me.

> +
> +description: |+
> +  Work in progress statement:
> +
> +  Device tree files and bindings applying to Amlogic SoCs and boards are
> +  considered "unstable". Any Amlogic device tree binding may change at
> +  any time. Be sure to use a device tree binary and a kernel image
> +  generated from the same source tree.
> +
> +  Please refer to Documentation/devicetree/bindings/ABI.txt for a definition of a
> +  stable binding/ABI.
> +
> +properties:
> +  $nodename:
> +    const: '/'
> +  compatible:
> +    oneOf:
> +      - description: Boards with the Amlogic Meson6 SoC
> +        items:
> +          - enum:
> +              - geniatech,atv1200
> +          - const: amlogic,meson6
> +
> +      - description: Boards with the Amlogic Meson8 SoC
> +        items:
> +          - enum:
> +              - minix,neo-x8
> +          - const: amlogic,meson8
> +
> +      - description: Boards with the Amlogic Meson8m2 SoC
> +        items:
> +          - enum:
> +              - tronsmart,mxiii-plus
> +          - const: amlogic,meson8m2
> +
> +      - description: Boards with the Amlogic Meson8b SoC
> +        items:
> +          - enum:
> +              - endless,ec100
> +              - hardkernel,odroid-c1
> +              - tronfy,mxq
> +          - const: amlogic,meson8b
> +
> +      - description: Boards with the Amlogic Meson GXBaby SoC
> +        items:
> +          - enum:
> +              - amlogic,p200
> +              - amlogic,p201
> +              - friendlyarm,nanopi-k2
> +              - hardkernel,odroid-c2
> +              - nexbox,a95x
> +              - wetek,hub
> +              - wetek,play2
> +          - const: amlogic,meson-gxbb
> +
> +      - description: Tronsmart Vega S95 devices
> +        items:
> +          - enum:
> +              - tronsmart,vega-s95-pro
> +              - tronsmart,vega-s95-meta
> +              - tronsmart,vega-s95-telos
> +          - const: tronsmart,vega-s95
> +          - const: amlogic,meson-gxbb
> +
> +      - description: Boards with the Amlogic Meson GXL S805X SoC
> +        items:
> +          - enum:
> +              - amlogic,p241
> +              - libretech,aml-s805x-ac
> +          - const: amlogic,s805x
> +          - const: amlogic,meson-gxl
> +
> +      - description: Boards with the Amlogic Meson GXL S905W SoC
> +        items:
> +          - enum:
> +              - amlogic,p281
> +              - oranth,tx3-mini
> +          - const: amlogic,s905w
> +          - const: amlogic,meson-gxl
> +
> +      - description: Boards with the Amlogic Meson GXL S905X SoC
> +        items:
> +          - enum:
> +              - amediatech,x96-max
> +              - amlogic,p212
> +              - hwacom,amazetv
> +              - khadas,vim
> +              - libretech,cc
> +              - nexbox,a95x
> +              - seirobotics,sei510
> +          - const: amlogic,s905x
> +          - const: amlogic,meson-gxl
> +
> +      - description: Boards with the Amlogic Meson GXL S905D SoC
> +        items:
> +          - enum:
> +              - amlogic,p230
> +              - amlogic,p231
> +              - phicomm,n1
> +          - const: amlogic,s905d
> +          - const: amlogic,meson-gxl
> +
> +      - description: Boards with the Amlogic Meson GXM S912 SoC
> +        items:
> +          - enum:
> +              - amlogic,q200
> +              - amlogic,q201
> +              - khadas,vim2
> +              - kingnovel,r-box-pro
> +              - nexbox,a1
> +              - tronsmart,vega-s96
> +          - const: amlogic,s912
> +          - const: amlogic,meson-gxm
> +
> +      - description: Boards with the Amlogic Meson AXG A113D SoC
> +        items:
> +          - enum:
> +              - amlogic,s400
> +          - const: amlogic,a113d
> +          - const: amlogic,meson-axg
> +
> +      - description: Boards with the Amlogic Meson G12A S905D2 SoC
> +        items:
> +          - enum:
> +              - amlogic,u200
> +          - const: amlogic,g12a
> +
> +...
> 

Otherwise looks fine.

With carlo and me removed from the maintainers :
Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>

Neil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
