Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A46991FD6EE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 23:16:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+n2scZN6fwToXM57Q72Iz8L4W6tyJML8I04Xn9FNykc=; b=ByWTKNNIDx6U3t
	pBqlCnay7RQ6NL1rkin94FIzQwBpbKuRDToVG9Ql1HfN9PTD1segDBbQ9yBTL2uRG2IpPkjfCyfJV
	DVwTEpMEP1Hcgir2zxvfdZEbroi/1ZvcRivytgQZwhfKUaqPEPJNRJDGJ+8Vt4ZZLl+Ft1Shsq3k6
	pb9A1pc8Z0ecIqlYYy72bBtjznquTCmAa7nGvwfY4FXBzDsiZQ/ULuoud7on23j+TQVgxCQEED1Jt
	rgIUvcatYdVmj88ZZgjUFsAV18IK+FauhF7ZI9CJWloo4hTRix5e8+eVYxF2tNANsWfUk5K2uDGQk
	bYWJ85q9dygW6FRQUNGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlfPm-0006Iw-Mt; Wed, 17 Jun 2020 21:16:10 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlfPL-00064b-5S; Wed, 17 Jun 2020 21:15:44 +0000
Received: by mail-io1-f68.google.com with SMTP id q8so4648206iow.7;
 Wed, 17 Jun 2020 14:15:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=xI0mlKe2wRYjHDHCCF+79f1gMeJVs47ukTuRHuYoNXw=;
 b=OX4Vgd/15ilzN8GxzQ9RBGuC0U6pWPFg9Y4g3M0jwPa++2VzL6n0MKdzrpCcE6SPPv
 0hDX9fZOVFYxUqYUVW1CsK2teRpQU08J+TiiGUusolCl6FapTWGUlO3SUgI2jUjBk9us
 bODOAKqD1tiP1k7GNK0InzmVtidR2serNcJ+owFtUszbRt/gljXbGPK7gA/MS7vmuP6K
 4b4RQLXXhACo2lBoZrPPtjjA5Fn0Jlzdkl5zJfbizMViI8B5H6nCRRQyo0hxA5MEoWI2
 O2sF0mi0Om5cmBGkMmL+vPAzlMBMnDGKHZlC/22R7l2mnIfpKcWvvOJfHe0Ad3LsHCTr
 mucw==
X-Gm-Message-State: AOAM530f5ef1JeEkxzjkjQkGjK8hWzaJvyikboOHLodonAMQAmfrLLXI
 hF3TVEu2/zM8dms+gSqlIg==
X-Google-Smtp-Source: ABdhPJy9jNQ2ywvtsoluzmREgiIioIKxsPjeXA+erf0DpK8C5v435zxINloN/zcGsS3rvsY1j6EOLA==
X-Received: by 2002:a05:6602:1204:: with SMTP id
 y4mr1523265iot.44.1592428542398; 
 Wed, 17 Jun 2020 14:15:42 -0700 (PDT)
Received: from xps15 ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id l16sm398139ilm.58.2020.06.17.14.15.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 14:15:42 -0700 (PDT)
Received: (nullmailer pid 2835354 invoked by uid 1000);
 Wed, 17 Jun 2020 21:15:41 -0000
Date: Wed, 17 Jun 2020 15:15:41 -0600
From: Rob Herring <robh@kernel.org>
To: Yifeng Zhao <yifeng.zhao@rock-chips.com>
Subject: Re: [PATCH v6 1/8] dt-bindings: mtd: Describe Rockchip RK3xxx NAND
 flash controller
Message-ID: <20200617211541.GB2811091@bogus>
References: <20200609074020.23860-1-yifeng.zhao@rock-chips.com>
 <20200609074020.23860-2-yifeng.zhao@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200609074020.23860-2-yifeng.zhao@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_141543_206142_388C0535 
X-CRM114-Status: GOOD (  19.28  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, richard@nod.at,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 linux-arm-kernel@lists.infradead.org, vigneshr@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 09, 2020 at 03:40:18PM +0800, Yifeng Zhao wrote:
> Documentation support for Rockchip RK3xxx NAND flash controllers
> 
> Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> ---
> 
> Changes in v6:
> - Fix some wrong define
> - Modified the definition of compatible
> 
> Changes in v5:
> - Fix some wrong define
> - Add boot-medium define
> - Remove some compatible define
> 
> Changes in v4:
> - The compatible define with rkxx_nfc
> - Add assigned-clocks
> - Fix some wrong define
> 
> Changes in v3:
> - Change the title for the dt-bindings
> 
> Changes in v2: None
> 
>  .../mtd/rockchip,nand-controller.yaml         | 154 ++++++++++++++++++
>  1 file changed, 154 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml b/Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml
> new file mode 100644
> index 000000000000..f753fe8248aa
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml
> @@ -0,0 +1,154 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mtd/rockchip,nand-controller.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip SoCs NAND FLASH Controller (NFC)
> +
> +allOf:
> +  - $ref: "nand-controller.yaml#"
> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - const: rockchip,px30-nfc
> +      - const: rockchip,rk2928-nfc
> +      - const: rockchip,rv1108-nfc
> +      - items:
> +          - const: rockchip,rk3326-nfc
> +          - const: rockchip,px30-nfc
> +      - items:
> +          - const: rockchip,rk3036-nfc
> +          - const: rockchip,rk2928-nfc
> +      - items:
> +          - const: rockchip,rk3308-nfc
> +          - const: rockchip,rv1108-nfc
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 1
> +    items:
> +      - description: Bus Clock
> +      - description: Module Clock
> +
> +  clock-names:
> +    minItems: 1
> +    items:
> +      - const: ahb
> +      - const: nfc
> +
> +  assigned-clocks:
> +    maxItems: 1
> +
> +  assigned-clock-rates:
> +    maxItems: 1
> +
> +  pinctrl-0:
> +    maxItems: 1
> +
> +  pinctrl-names:
> +    const: default
> +
> +  power-domains:
> +     maxItems: 1
> +
> +patternProperties:
> +  "^nand@[a-f0-9]$":
> +    type: object
> +    properties:
> +      reg:
> +        minimum: 0
> +        maximum: 7
> +
> +      nand-ecc-mode:
> +        const: hw
> +
> +      nand-ecc-step-size:
> +        const: 1024
> +
> +      nand-ecc-strength:
> +        enum: [16, 24, 40, 60, 70]
> +        description:

This needs a '|' at the end if you want the below line breaks preserved.

> +          The ECC configurations that can be supported are as follows.
> +          - NFCv900(PX30 and RK3326) support ecc strength 16, 40, 60 and 70.
> +          - NFCv600(RK3066 and RK2928) support ecc strength 16, 24, 40 and 60.
> +          - NFCv622(RK3036 and RK3128) support ecc strength 16, 24, 40 and 60.
> +          - NFCv800(RK3308 and RV1108) support ecc strength 16.
> +
> +      nand-bus-width:
> +        const: 8
> +
> +      rockchip,boot-blks:
> +        minimum: 2
> +        default: 16
> +        allOf:
> +        - $ref: /schemas/types.yaml#/definitions/uint32
> +        description:
> +          The NFC driver need this information to select ECC
> +          algorithms supported by the BOOTROM.
> +          Only used in combination with 'nand-is-boot-medium'.
> +
> +      rockchip,boot-ecc-strength:
> +        enum: [16, 24, 40, 60, 70]
> +        allOf:
> +        - $ref: /schemas/types.yaml#/definitions/uint32
> +        description:
> +          If specified it indicates that a different BCH/ECC setting is
> +          supported by the BOOTROM.
> +          - NFCv900(PX30 and RK3326) support ecc strength 16 and 70.
> +          - NFCv600(RK3066 and RK2928) support ecc strength 16, 24, 40 and 60.
> +          - NFCv622(RK3036 and RK3128) support ecc strength 16, 24, 40 and 60.
> +          - NFCv800(RK3308 and RV1108) support ecc strength 16.
> +          Only used in combination with 'nand-is-boot-medium'.
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/rk3308-cru.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    nfc: nand-controller@ff4b0000 {
> +      compatible = "rockchip,rk3308-nfc",
> +                   "rockchip,rv1108-nfc";
> +      reg = <0x0 0xff4b0000 0x0 0x4000>;
> +      interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>;
> +      clocks = <&cru HCLK_NANDC>, <&cru SCLK_NANDC>;
> +      clock-names = "ahb", "nfc";
> +      assigned-clocks = <&clks SCLK_NANDC>;
> +      assigned-clock-rates = <150000000>;
> +
> +      pinctrl-0 = <&flash_ale &flash_bus8 &flash_cle &flash_csn0
> +                   &flash_rdn &flash_rdy &flash_wrn>;
> +      pinctrl-names = "default";
> +
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +
> +      nand@0 {
> +        reg = <0>;
> +        label = "rk-nand";
> +        nand-bus-width = <8>;
> +        nand-ecc-mode = "hw";
> +        nand-ecc-step-size = <1024>;
> +        nand-ecc-strength = <16>;
> +        nand-is-boot-medium;
> +        rockchip,boot-blks = <8>;
> +        rockchip,boot-ecc-strength = <16>;
> +      };
> +    };
> +
> +...
> -- 
> 2.17.1
> 
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
