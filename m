Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D83E8DA2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 18:06:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j7PfClrYodVMb2sZ5BwnogrkTn7uKIU5jjUBlkM0I2k=; b=WlOFpxWxwkKhvK
	SvBrt66mdTtdGkxhEuxlr49DhyauPl2XDcBVfPuvHh0+/HDi2gMtl0yDjRqqeAdUb6hXryEz0i6pY
	+xvmz7ozeoZyMiYXpIuwi9tjPYrL+PiN4TIRIBwh0w+BpYckVYfiOPBsopQsH/ds8rgyJICb1cSgT
	qs6rARpZYrHN5BD5PXUA8TgaVWJs7GKTLx2UY1ujM86FkqbnkoI7sH6ZWM3cHvu6AHeGLBTW++WOQ
	+UmUau7+bQwa0lY38DvePZkyb5RoIWY1h6UNprw1a4BrGg34xLqrXqir7ekB9UwLdMCPJQs73I4+I
	xU+8hZargkTE5O61Z18g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPUxL-0002vB-S8; Tue, 29 Oct 2019 17:06:55 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPUwz-0002uj-Hg
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 17:06:35 +0000
Received: by mail-ot1-f68.google.com with SMTP id c7so10415377otm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 10:06:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=GC14i0a6vNTrt70DU58VN8zmHmdhRfAj/+MPmYGUtXE=;
 b=cpaQUTe4jhy2WrnLPxV3P/GdYzg9xQ9+jzBfiJq26Q5b1F2uwEU2xakalU4jSWV4EI
 2FYkZOrCmelgPXx9UCz4Tn5OBtaU6tH19/+3BVaGuKkSJKrT+RpfOXMSNE3vJ5xkwx/h
 fr5NeQirC2lJ3m3WJECVWozzzPSrBMGOLliOX9NK1ujFVBAmoViNJawDBgppcBq2njkn
 9bIev+AaXp8TbqiPJdpVOYWaPVOf/iexoAUR8iAKOAGmp3jz7Axtg5kj5Qy7ruB1ssKZ
 ImOqkePMgbWOktWvpmzuFkWItEOm1+8X0QgoRWrIEvJVwaOOSzzI/LVeIEDwkf5v3Qz7
 SHiA==
X-Gm-Message-State: APjAAAX29zoXiTy6pxyDxoQZ62Ld+zGFCmvJ/P0wsDVutVgfP9k8amC7
 u6YFCSqFfApa9ZApAFLQOA==
X-Google-Smtp-Source: APXvYqwxuc1qq0Pe/NQx2tQToKOzPAe2SqdStbORUFAU/t3w6hFmNCek/Ptj3HmFxeR6nGnCCMMOsw==
X-Received: by 2002:a05:6830:2105:: with SMTP id
 i5mr5918445otc.334.1572368791887; 
 Tue, 29 Oct 2019 10:06:31 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id i10sm793631oii.2.2019.10.29.10.06.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 10:06:31 -0700 (PDT)
Date: Tue, 29 Oct 2019 12:06:30 -0500
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH] dt-bindings: usb: Convert Allwinner USB PHY controller
 to a schema
Message-ID: <20191029170630.GA14239@bogus>
References: <20191022161810.43451-1-mripard@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191022161810.43451-1-mripard@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_100633_594061_7927BBC4 
X-CRM114-Status: GOOD (  18.93  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 kishon@ti.com, Chen-Yu Tsai <wens@csie.org>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 22, 2019 at 06:18:10PM +0200, Maxime Ripard wrote:
> The Allwinner SoCs have a USB PHY controller that is supported in Linux,
> with a matching Device Tree binding.
> 
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
> 
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  .../phy/allwinner,sun4i-a10-usb-phy.yaml      | 541 ++++++++++++++++++
>  .../devicetree/bindings/phy/sun4i-usb-phy.txt |  68 ---
>  2 files changed, 541 insertions(+), 68 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/allwinner,sun4i-a10-usb-phy.yaml
>  delete mode 100644 Documentation/devicetree/bindings/phy/sun4i-usb-phy.txt

Perhaps this one should be split into multiple files. The oneOf's and 
if/then's are a bit much IMO.

You could always extract what's common and then $ref the common file.

> 
> diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun4i-a10-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun4i-a10-usb-phy.yaml
> new file mode 100644
> index 000000000000..de63a5eb1e2a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/allwinner,sun4i-a10-usb-phy.yaml
> @@ -0,0 +1,541 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/allwinner,sun4i-a10-usb-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner A10 USB PHY Device Tree Bindings
> +
> +maintainers:
> +  - Chen-Yu Tsai <wens@csie.org>
> +  - Maxime Ripard <maxime.ripard@bootlin.com>
> +
> +properties:
> +  "#phy-cells":
> +    const: 1
> +
> +  compatible:
> +    enum:
> +      - allwinner,sun4i-a10-usb-phy
> +      - allwinner,sun5i-a13-usb-phy
> +      - allwinner,sun6i-a31-usb-phy
> +      - allwinner,sun7i-a20-usb-phy
> +      - allwinner,sun8i-a23-usb-phy
> +      - allwinner,sun8i-a33-usb-phy
> +      - allwinner,sun8i-a83t-usb-phy
> +      - allwinner,sun8i-h3-usb-phy
> +      - allwinner,sun8i-r40-usb-phy
> +      - allwinner,sun8i-v3s-usb-phy
> +      - allwinner,sun50i-a64-usb-phy
> +      - allwinner,sun50i-h6-usb-phy
> +
> +  reg:
> +    anyOf:
> +      - minItems: 2
> +        maxItems: 3
> +        items:
> +          - description: PHY Control registers
> +          - description: PHY PMU1 registers
> +          - description: PHY PMU2 registers
> +
> +      - minItems: 2
> +        maxItems: 5
> +        items:
> +          - description: PHY Control registers
> +          - description: PHY PMU0 registers
> +          - description: PHY PMU1 registers
> +          - description: PHY PMU2 registers
> +          - description: PHY PMU3 registers
> +
> +      - items:
> +          - description: PHY Control registers
> +          - description: PHY PMU0 registers
> +          - description: PHY PMU3 registers
> +
> +  reg-names:
> +    oneOf:
> +      - minItems: 2
> +        maxItems: 3
> +        items:
> +          - const: phy_ctrl
> +          - const: pmu1
> +          - const: pmu2
> +
> +      - minItems: 2
> +        maxItems: 5
> +        items:
> +          - const: phy_ctrl
> +          - const: pmu0
> +          - const: pmu1
> +          - const: pmu2
> +          - const: pmu3
> +
> +      - items:
> +          - const: phy_ctrl
> +          - const: pmu0
> +          - const: pmu3
> +
> +  clocks:
> +    anyOf:
> +      - description: USB PHY bus clock
> +
> +      - minItems: 1
> +        maxItems: 4
> +        items:
> +          - description: USB OTG PHY bus clock
> +          - description: USB Host 0 PHY bus clock
> +          - description: USB Host 1 PHY bus clock
> +          - description: USB Host 2 PHY bus clock
> +
> +      - items:
> +          - description: USB OTG PHY bus clock
> +          - description: USB Host 0 PHY bus clock
> +          - description: USB Host 1 PHY bus clock
> +          - description: USB HSIC 12MHz clock
> +
> +      - items:
> +          - description: USB OTG PHY bus clock
> +          - description: USB Host PHY bus clock
> +
> +  clock-names:
> +    oneOf:
> +      - const: usb_phy
> +
> +      - minItems: 1
> +        maxItems: 4
> +        items:
> +          - const: usb0_phy
> +          - const: usb1_phy
> +          - const: usb2_phy
> +          - const: usb3_phy
> +
> +      - items:
> +          - const: usb0_phy
> +          - const: usb1_phy
> +          - const: usb2_phy
> +          - const: usb2_hsic_12M
> +
> +      - items:
> +          - const: usb0_phy
> +          - const: usb3_phy
> +
> +  resets:
> +    anyOf:
> +      - minItems: 1
> +        maxItems: 4
> +        items:
> +          - description: USB OTG reset
> +          - description: USB Host 1 Controller reset
> +          - description: USB Host 2 Controller reset
> +          - description: USB Host 3 Controller reset
> +
> +      - items:
> +          - description: USB OTG reset
> +          - description: USB Host Controller reset
> +
> +  reset-names:
> +    oneOf:
> +      - minItems: 1
> +        maxItems: 4
> +        items:
> +          - const: usb0_reset
> +          - const: usb1_reset
> +          - const: usb2_reset
> +          - const: usb3_reset
> +
> +      - items:
> +          - const: usb0_reset
> +          - const: usb3_reset
> +
> +  usb0_id_det-gpios:
> +    description: GPIO to the USB OTG ID pin
> +
> +  usb0_vbus_det-gpios:
> +    description: GPIO to the USB OTG VBUS detect pin
> +
> +  usb0_vbus_power-supply:
> +    description: Power supply to detect the USB OTG VBUS
> +
> +  usb0_vbus-supply:
> +    description: Regulator controlling USB OTG VBUS
> +
> +  usb1_vbus-supply:
> +    description: Regulator controlling USB1 Host controller
> +
> +  usb2_vbus-supply:
> +    description: Regulator controlling USB2 Host controller
> +
> +  usb3_vbus-supply:
> +    description: Regulator controlling USB3 Host controller
> +
> +required:
> +  - "#phy-cells"
> +  - compatible
> +  - clocks
> +  - clock-names
> +  - reg
> +  - reg-names
> +  - resets
> +  - reset-names
> +
> +additionalProperties: false
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - allwinner,sun4i-a10-usb-phy
> +              - allwinner,sun7i-a20-usb-phy
> +
> +    then:
> +      properties:
> +        reg:
> +          maxItems: 3
> +
> +        reg-names:
> +          items:
> +            - const: phy_ctrl
> +            - const: pmu1
> +            - const: pmu2
> +
> +        clocks:
> +          maxItems: 1
> +
> +        clock-names:
> +          const: usb_phy
> +
> +        resets:
> +          maxItems: 3
> +
> +        reset-names:
> +          items:
> +            - const: usb0_reset
> +            - const: usb1_reset
> +            - const: usb2_reset
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - allwinner,sun5i-a13-usb-phy
> +
> +    then:
> +      properties:
> +        reg:
> +          maxItems: 2
> +
> +        reg-names:
> +          items:
> +            - const: phy_ctrl
> +            - const: pmu1
> +
> +        clocks:
> +          maxItems: 1
> +
> +        clock-names:
> +          const: usb_phy
> +
> +        resets:
> +          maxItems: 2
> +
> +        reset-names:
> +          items:
> +            - const: usb0_reset
> +            - const: usb1_reset
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: allwinner,sun6i-a31-usb-phy
> +
> +    then:
> +      properties:
> +        reg:
> +          maxItems: 3
> +
> +        reg-names:
> +          items:
> +            - const: phy_ctrl
> +            - const: pmu1
> +            - const: pmu2
> +
> +        clocks:
> +          maxItems: 3
> +
> +        clock-names:
> +          items:
> +            - const: usb0_phy
> +            - const: usb1_phy
> +            - const: usb2_phy
> +
> +        resets:
> +          maxItems: 3
> +
> +        reset-names:
> +          items:
> +            - const: usb0_reset
> +            - const: usb1_reset
> +            - const: usb2_reset
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - allwinner,sun8i-a23-usb-phy
> +              - allwinner,sun8i-a33-usb-phy
> +
> +    then:
> +      properties:
> +        reg:
> +          maxItems: 2
> +
> +        reg-names:
> +          items:
> +            - const: phy_ctrl
> +            - const: pmu1
> +
> +        clocks:
> +          maxItems: 2
> +
> +        clock-names:
> +          items:
> +            - const: usb0_phy
> +            - const: usb1_phy
> +
> +        resets:
> +          maxItems: 2
> +
> +        reset-names:
> +          items:
> +            - const: usb0_reset
> +            - const: usb1_reset
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: allwinner,sun8i-a83t-usb-phy
> +
> +    then:
> +      properties:
> +        reg:
> +          maxItems: 3
> +
> +        reg-names:
> +          items:
> +            - const: phy_ctrl
> +            - const: pmu1
> +            - const: pmu2
> +
> +        clocks:
> +          maxItems: 4
> +
> +        clock-names:
> +          items:
> +            - const: usb0_phy
> +            - const: usb1_phy
> +            - const: usb2_phy
> +            - const: usb2_hsic_12M
> +
> +        resets:
> +          maxItems: 3
> +
> +        reset-names:
> +          items:
> +            - const: usb0_reset
> +            - const: usb1_reset
> +            - const: usb2_reset
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: allwinner,sun8i-h3-usb-phy
> +
> +    then:
> +      properties:
> +        reg:
> +          maxItems: 5
> +
> +        reg-names:
> +          items:
> +            - const: phy_ctrl
> +            - const: pmu0
> +            - const: pmu1
> +            - const: pmu2
> +            - const: pmu3
> +
> +        clocks:
> +          maxItems: 4
> +
> +        clock-names:
> +          items:
> +            - const: usb0_phy
> +            - const: usb1_phy
> +            - const: usb2_phy
> +            - const: usb3_phy
> +
> +        resets:
> +          maxItems: 4
> +
> +        reset-names:
> +          items:
> +            - const: usb0_reset
> +            - const: usb1_reset
> +            - const: usb2_reset
> +            - const: usb3_reset
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: allwinner,sun8i-r40-usb-phy
> +
> +    then:
> +      properties:
> +        reg:
> +          maxItems: 4
> +
> +        reg-names:
> +          items:
> +            - const: phy_ctrl
> +            - const: pmu0
> +            - const: pmu1
> +            - const: pmu2
> +
> +        clocks:
> +          maxItems: 3
> +
> +        clock-names:
> +          items:
> +            - const: usb0_phy
> +            - const: usb1_phy
> +            - const: usb2_phy
> +
> +        resets:
> +          maxItems: 3
> +
> +        reset-names:
> +          items:
> +            - const: usb0_reset
> +            - const: usb1_reset
> +            - const: usb2_reset
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: allwinner,sun8i-v3s-usb-phy
> +
> +    then:
> +      properties:
> +        reg:
> +          maxItems: 2
> +
> +        reg-names:
> +          items:
> +            - const: phy_ctrl
> +            - const: pmu0
> +
> +        clocks:
> +          maxItems: 1
> +
> +        clock-names:
> +          const: usb0_phy
> +
> +        resets:
> +          maxItems: 1
> +
> +        reset-names:
> +          const: usb0_reset
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: allwinner,sun50i-a64-usb-phy
> +
> +    then:
> +      properties:
> +        reg:
> +          maxItems: 3
> +
> +        reg-names:
> +          items:
> +            - const: phy_ctrl
> +            - const: pmu0
> +            - const: pmu1
> +
> +        clocks:
> +          maxItems: 2
> +
> +        clock-names:
> +          items:
> +            - const: usb0_phy
> +            - const: usb1_phy
> +
> +        resets:
> +          maxItems: 2
> +
> +        reset-names:
> +          items:
> +            - const: usb0_reset
> +            - const: usb1_reset
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: allwinner,sun50i-h6-usb-phy
> +
> +    then:
> +      properties:
> +        reg:
> +          maxItems: 3
> +
> +        reg-names:
> +          items:
> +            - const: phy_ctrl
> +            - const: pmu0
> +            - const: pmu3
> +
> +        clocks:
> +          maxItems: 2
> +
> +        clock-names:
> +          items:
> +            - const: usb0_phy
> +            - const: usb3_phy
> +
> +        resets:
> +          maxItems: 2
> +
> +        reset-names:
> +          items:
> +            - const: usb0_reset
> +            - const: usb3_reset
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    usbphy: phy@01c13400 {
> +        compatible = "allwinner,sun4i-a10-usb-phy";
> +        reg = <0x01c13400 0x10>, <0x01c14800 0x4>, <0x01c1c800 0x4>;
> +        reg-names = "phy_ctrl", "pmu1", "pmu2";
> +        clocks = <&usb_clk 8>;
> +        clock-names = "usb_phy";
> +        resets = <&usb_clk 0>, <&usb_clk 1>, <&usb_clk 2>;
> +        reset-names = "usb0_reset", "usb1_reset", "usb2_reset";
> +        usb0_id_det-gpios = <&pio 7 19 GPIO_ACTIVE_HIGH>;
> +        usb0_vbus_det-gpios = <&pio 7 22 GPIO_ACTIVE_HIGH>;
> +        usb0_vbus-supply = <&reg_usb0_vbus>;
> +        usb1_vbus-supply = <&reg_usb1_vbus>;
> +        usb2_vbus-supply = <&reg_usb2_vbus>;
> +        #phy-cells = <1>;
> +    };
> diff --git a/Documentation/devicetree/bindings/phy/sun4i-usb-phy.txt b/Documentation/devicetree/bindings/phy/sun4i-usb-phy.txt
> deleted file mode 100644
> index f2e120af17f0..000000000000
> --- a/Documentation/devicetree/bindings/phy/sun4i-usb-phy.txt
> +++ /dev/null
> @@ -1,68 +0,0 @@
> -Allwinner sun4i USB PHY
> ------------------------
> -
> -Required properties:
> -- compatible : should be one of
> -  * allwinner,sun4i-a10-usb-phy
> -  * allwinner,sun5i-a13-usb-phy
> -  * allwinner,sun6i-a31-usb-phy
> -  * allwinner,sun7i-a20-usb-phy
> -  * allwinner,sun8i-a23-usb-phy
> -  * allwinner,sun8i-a33-usb-phy
> -  * allwinner,sun8i-a83t-usb-phy
> -  * allwinner,sun8i-h3-usb-phy
> -  * allwinner,sun8i-r40-usb-phy
> -  * allwinner,sun8i-v3s-usb-phy
> -  * allwinner,sun50i-a64-usb-phy
> -  * allwinner,sun50i-h6-usb-phy
> -- reg : a list of offset + length pairs
> -- reg-names :
> -  * "phy_ctrl"
> -  * "pmu0" for H3, V3s, A64 or H6
> -  * "pmu1"
> -  * "pmu2" for sun4i, sun6i, sun7i, sun8i-a83t or sun8i-h3
> -  * "pmu3" for sun8i-h3 or sun50i-h6
> -- #phy-cells : from the generic phy bindings, must be 1
> -- clocks : phandle + clock specifier for the phy clocks
> -- clock-names :
> -  * "usb_phy" for sun4i, sun5i or sun7i
> -  * "usb0_phy", "usb1_phy" and "usb2_phy" for sun6i
> -  * "usb0_phy", "usb1_phy" for sun8i
> -  * "usb0_phy", "usb1_phy", "usb2_phy" and "usb2_hsic_12M" for sun8i-a83t
> -  * "usb0_phy", "usb1_phy", "usb2_phy" and "usb3_phy" for sun8i-h3
> -  * "usb0_phy" and "usb3_phy" for sun50i-h6
> -- resets : a list of phandle + reset specifier pairs
> -- reset-names :
> -  * "usb0_reset"
> -  * "usb1_reset"
> -  * "usb2_reset" for sun4i, sun6i, sun7i, sun8i-a83t or sun8i-h3
> -  * "usb3_reset" for sun8i-h3 and sun50i-h6
> -
> -Optional properties:
> -- usb0_id_det-gpios : gpio phandle for reading the otg id pin value
> -- usb0_vbus_det-gpios : gpio phandle for detecting the presence of usb0 vbus
> -- usb0_vbus_power-supply: power-supply phandle for usb0 vbus presence detect
> -- usb0_vbus-supply : regulator phandle for controller usb0 vbus
> -- usb1_vbus-supply : regulator phandle for controller usb1 vbus
> -- usb2_vbus-supply : regulator phandle for controller usb2 vbus
> -- usb3_vbus-supply : regulator phandle for controller usb3 vbus
> -
> -Example:
> -	usbphy: phy@01c13400 {
> -		#phy-cells = <1>;
> -		compatible = "allwinner,sun4i-a10-usb-phy";
> -		/* phy base regs, phy1 pmu reg, phy2 pmu reg */
> -		reg = <0x01c13400 0x10 0x01c14800 0x4 0x01c1c800 0x4>;
> -		reg-names = "phy_ctrl", "pmu1", "pmu2";
> -		clocks = <&usb_clk 8>;
> -		clock-names = "usb_phy";
> -		resets = <&usb_clk 0>, <&usb_clk 1>, <&usb_clk 2>;
> -		reset-names = "usb0_reset", "usb1_reset", "usb2_reset";
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&usb0_id_detect_pin>, <&usb0_vbus_detect_pin>;
> -		usb0_id_det-gpios = <&pio 7 19 GPIO_ACTIVE_HIGH>; /* PH19 */
> -		usb0_vbus_det-gpios = <&pio 7 22 GPIO_ACTIVE_HIGH>; /* PH22 */
> -		usb0_vbus-supply = <&reg_usb0_vbus>;
> -		usb1_vbus-supply = <&reg_usb1_vbus>;
> -		usb2_vbus-supply = <&reg_usb2_vbus>;
> -	};
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
