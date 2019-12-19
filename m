Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 251261265AD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 16:25:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RbEVmVaPuQopSYrs1VBP6VAorMXcV/wd13RLhWDvkbY=; b=qVrNaxxBv70RK2
	Gb5akJ5ERPK0XTC3h8WyqgG7JXxb3O8NOnpXKufFQN4DK2NiTxzrskdu6KaxMYW2zF8GKUHdOk8VA
	CUypzqGF6JZzGPWVywqtZaQ3rLUg2eL/DyETU6NZQkU6hh1MvsepUmKUXOghlTHALKAAEC3U/NwkU
	Js9FnJFcrEwwzqJK2Yj3k6Ui2Ag0Riniv6YCg6tKIhEIxImgqIGZtEAiEiZ0nGkK/F3Hqt70DV2dj
	HoWPq00aYr2WFSS/oTVa/NipqjmVseehwe6VXJX8m4sOSTqsnXRt5WZBy6HA757w51fUR7yU5r2aN
	N3YAHn5Lg/ArcWdRa3Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihxfy-0000mt-4s; Thu, 19 Dec 2019 15:25:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihxfm-0000FA-Gr
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 15:25:08 +0000
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
 [209.85.128.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D77CF21D7D
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 15:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576769106;
 bh=/oz0Lnf4DBLEQwFr/zzM8JbVGrzMMRE5/AMWXswFdtQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=kLg7lIRN7/VT2Jo+na25JWjyu7yPZTM+VkfvwR7yq9fcghHST3w/sfCThzj2FhqB5
 oaRJ7Nh1s99P8b9QvbeY3hazzEUMhU03Pj3mhTL4CSRcwnKLUywRSjBLnmMAWOuOnp
 upYL3uh3lUJUKnqpPk8Z7DB2hvmUvTsGA5FE1FZw=
Received: by mail-wm1-f45.google.com with SMTP id b19so5837326wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 07:25:05 -0800 (PST)
X-Gm-Message-State: APjAAAV85dfwEsulE6+DzU7vjeBq0I80fBtNedIfbgAJQ/7BE/LaBMhe
 AODivaZO02UTw9AMEYGPSVC4W1xhSz3MWuN9kaQ=
X-Google-Smtp-Source: APXvYqyjAmLF5BxFtYYgMh0BMNtnKW8iHMmHE/m7GJOovj1r3RwzFCSGytQtjSCErxKIy8ZGsFId38iCST7gaefT5vk=
X-Received: by 2002:a7b:cf12:: with SMTP id l18mr11402298wmg.66.1576769104353; 
 Thu, 19 Dec 2019 07:25:04 -0800 (PST)
MIME-Version: 1.0
References: <20191219084332.944123-1-maxime@cerno.tech>
In-Reply-To: <20191219084332.944123-1-maxime@cerno.tech>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Thu, 19 Dec 2019 23:24:52 +0800
X-Gmail-Original-Message-ID: <CAGb2v643z-GwEgOV_OS96ESihDgGNOwp2s7eyJr68QFyPNqd_Q@mail.gmail.com>
Message-ID: <CAGb2v643z-GwEgOV_OS96ESihDgGNOwp2s7eyJr68QFyPNqd_Q@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: usb: Convert Allwinner A80 USB PHY
 controller to a schema
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_072506_613171_201A819E 
X-CRM114-Status: GOOD (  24.57  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 4:43 PM Maxime Ripard <maxime@cerno.tech> wrote:
>
> The Allwinner A80 SoCs have a USB PHY controller that is used by Linux,
> with a matching Device Tree binding.
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../phy/allwinner,sun9i-a80-usb-phy.yaml      | 135 ++++++++++++++++++
>  .../devicetree/bindings/phy/sun9i-usb-phy.txt |  37 -----
>  2 files changed, 135 insertions(+), 37 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml
>  delete mode 100644 Documentation/devicetree/bindings/phy/sun9i-usb-phy.txt
>
> diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml
> new file mode 100644
> index 000000000000..ded7d6f0a119
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml
> @@ -0,0 +1,135 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/allwinner,sun9i-a80-usb-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner A80 USB PHY Device Tree Bindings
> +
> +maintainers:
> +  - Chen-Yu Tsai <wens@csie.org>
> +  - Maxime Ripard <mripard@kernel.org>
> +
> +properties:
> +  "#phy-cells":
> +    const: 0
> +
> +  compatible:
> +    const: allwinner,sun9i-a80-usb-phy
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    anyOf:
> +      - description: Main PHY Clock
> +
> +      - items:
> +          - description: Main PHY clock
> +          - description: HSIC 12MHz clock
> +          - description: HSIC 480MHz clock
> +
> +  clock-names:
> +    oneOf:
> +      - const: phy
> +
> +      - items:
> +          - const: phy
> +          - const: hsic_12M
> +          - const: hsic_480M
> +
> +  resets:
> +    anyOf:
> +      - description: Normal USB PHY reset
> +
> +      - items:
> +          - description: Normal USB PHY reset
> +          - description: HSIC Reset
> +
> +  reset-names:
> +    oneOf:
> +      - const: phy
> +
> +      - items:
> +          - const: phy
> +          - const: hsic
> +
> +  phy_type:
> +    const: hsic
> +    description:
> +      When absent, the PHY type will be assumed to be normal USB.
> +
> +  phy-supply:
> +    description:
> +      Regulator that powers VBUS
> +
> +required:
> +  - "#phy-cells"
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - resets
> +  - reset-names
> +
> +additionalProperties: false
> +
> +if:
> +  properties:
> +    phy_type:
> +      const: hsic
> +
> +  required:
> +    - phy_type
> +
> +then:
> +  properties:
> +    clocks:
> +      maxItems: 3
> +
> +    clock-names:
> +      maxItems: 3
> +
> +    resets:
> +      maxItems: 2
> +
> +    reset-names:
> +      maxItems: 2

So this is slightly incorrect. If phy_type == "hsic", then the
"phy" clock and reset should not be needed. I say should because
no boards actually came with HSIC implemented. The A80 Optimus
board had the HSIC lines on one of the GPIO headers, but I never
had any HSIC chips lol.

ChenYu

> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/sun9i-a80-usb.h>
> +    #include <dt-bindings/reset/sun9i-a80-usb.h>
> +
> +    usbphy1: phy@a00800 {
> +        compatible = "allwinner,sun9i-a80-usb-phy";
> +        reg = <0x00a00800 0x4>;
> +        clocks = <&usb_clocks CLK_USB0_PHY>;
> +        clock-names = "phy";
> +        resets = <&usb_clocks RST_USB0_PHY>;
> +        reset-names = "phy";
> +        phy-supply = <&reg_usb1_vbus>;
> +        #phy-cells = <0>;
> +    };
> +
> +  - |
> +    #include <dt-bindings/clock/sun9i-a80-usb.h>
> +    #include <dt-bindings/reset/sun9i-a80-usb.h>
> +
> +    usbphy3: phy@a02800 {
> +        compatible = "allwinner,sun9i-a80-usb-phy";
> +        reg = <0x00a02800 0x4>;
> +        clocks = <&usb_clocks CLK_USB2_PHY>,
> +                 <&usb_clocks CLK_USB_HSIC>,
> +                 <&usb_clocks CLK_USB2_HSIC>;
> +        clock-names = "phy",
> +                      "hsic_12M",
> +                      "hsic_480M";
> +        resets = <&usb_clocks RST_USB2_PHY>,
> +                 <&usb_clocks RST_USB2_HSIC>;
> +        reset-names = "phy",
> +                      "hsic";
> +        phy_type = "hsic";
> +        phy-supply = <&reg_usb3_vbus>;
> +        #phy-cells = <0>;
> +    };
> diff --git a/Documentation/devicetree/bindings/phy/sun9i-usb-phy.txt b/Documentation/devicetree/bindings/phy/sun9i-usb-phy.txt
> deleted file mode 100644
> index 64f7109aea1f..000000000000
> --- a/Documentation/devicetree/bindings/phy/sun9i-usb-phy.txt
> +++ /dev/null
> @@ -1,37 +0,0 @@
> -Allwinner sun9i USB PHY
> ------------------------
> -
> -Required properties:
> -- compatible : should be one of
> -  * allwinner,sun9i-a80-usb-phy
> -- reg : a list of offset + length pairs
> -- #phy-cells : from the generic phy bindings, must be 0
> -- phy_type : "hsic" for HSIC usage;
> -            other values or absence of this property indicates normal USB
> -- clocks : phandle + clock specifier for the phy clocks
> -- clock-names : depending on the "phy_type" property,
> -  * "phy" for normal USB
> -  * "hsic_480M", "hsic_12M" for HSIC
> -- resets : a list of phandle + reset specifier pairs
> -- reset-names : depending on the "phy_type" property,
> -  * "phy" for normal USB
> -  * "hsic" for HSIC
> -
> -Optional Properties:
> -- phy-supply : from the generic phy bindings, a phandle to a regulator that
> -              provides power to VBUS.
> -
> -It is recommended to list all clocks and resets available.
> -The driver will only use those matching the phy_type.
> -
> -Example:
> -       usbphy1: phy@a01800 {
> -               compatible = "allwinner,sun9i-a80-usb-phy";
> -               reg = <0x00a01800 0x4>;
> -               clocks = <&usb_phy_clk 2>, <&usb_phy_clk 10>,
> -                      <&usb_phy_clk 3>;
> -               clock-names = "hsic_480M", "hsic_12M", "phy";
> -               resets = <&usb_phy_clk 18>, <&usb_phy_clk 19>;
> -               reset-names = "hsic", "phy";
> -               #phy-cells = <0>;
> -       };
> --
> 2.23.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
