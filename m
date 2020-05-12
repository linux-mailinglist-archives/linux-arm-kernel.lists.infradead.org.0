Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E71211CEA6A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 04:01:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/k3mpjgRDNCO9jjpuNWBYwM+/SmMsRdM857dmIYMzMA=; b=dTEWlimQR1vBkW
	77WzDsBfXQYpnBHTTmjR8IEP2bCCoJElKzcjYYnEImdT2NEX4D+qNhPyxZ8YsoVzn9eHZDAe4BSud
	Kc3UqIyrmjLORUnP+0Kmy4KvD9khfPlXKnY/W+orPKP4E9oGENz/lbLJY+NRhqSyaiM0dbmyZUAQe
	A8+zg+cokUrmhSLIzkoQMThKugqPAxgsC2IdOZ/nK5mmBMewRAidHMuf1ZXOZCU1CZD6D1cLiaz/i
	/TUjcs4JvInOoe8VcdGohW+62ws8kIuZtnacg2mY9kcoz8yKwh9YZtUz3DqxQdJe1Sd9mqQ0B1OFQ
	TQRppBZZfsOUPy7/KMWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYKEj-0000TZ-Ns; Tue, 12 May 2020 02:01:37 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYKEa-0000TA-PV
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 02:01:30 +0000
Received: by mail-oi1-f194.google.com with SMTP id c124so16717448oib.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 19:01:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=czrIsdP31tdcxDtB1xe4T17Dg1vLDkIDYdtdygiUTRo=;
 b=ezsWvmScELBnqDYWTAAaEIFU6QQhkNae3wpk8r5bV9L6+UMkm7kSnNConxSiVKhT0L
 214j6biiaknahI9JXj61vbY9oiqdSwG5y74k2sMayv2Hv+jd4896c3jWjLWl8IzF9M2N
 xIxGVgdhZ/1qFCJzuHF8hpUgwIjeiPpToh1BY3Wr1WXZ54PblctiK/aFXg65kZDctTVq
 VtxZq6pDM8C015yD18n8hasqglN/TUHxJGHnd2RuGKiUupYCmbxOaUwQVe1LZQl5Ccm2
 LsdunjXAyMF7DNT11w+38mw1b02BoCrDF5nn84tMOaOgy9Ua50YGMblxlryhk7hLSJoV
 aW5w==
X-Gm-Message-State: AGi0PuYWI9PDXlT6/d71RKq2tYTjUNDDjgnGoIJfEZtisQlO1AnLD6v/
 gqaU5MchYUGkb7hZ2PFh5JfC4uc=
X-Google-Smtp-Source: APiQypLgYcOz8qrWFrjJhzlHKPYHwX9/yN/oW9ISWgjWp+EMSVnfdHDAulPu0L/QF7egHog7BK6v9A==
X-Received: by 2002:aca:4e10:: with SMTP id c16mr21922126oib.140.1589248887866; 
 Mon, 11 May 2020 19:01:27 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 60sm3120813oth.38.2020.05.11.19.01.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 19:01:27 -0700 (PDT)
Received: (nullmailer pid 26411 invoked by uid 1000);
 Tue, 12 May 2020 02:01:26 -0000
Date: Mon, 11 May 2020 21:01:26 -0500
From: Rob Herring <robh@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: Re: [PATCH net] dt-bindings: net: Convert UniPhier AVE4 controller
 to json-schema
Message-ID: <20200512020126.GA22178@bogus>
References: <1588055482-13012-1-git-send-email-hayashi.kunihiko@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1588055482-13012-1-git-send-email-hayashi.kunihiko@socionext.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_190128_831906_04DA2E2C 
X-CRM114-Status: GOOD (  23.38  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 03:31:22PM +0900, Kunihiko Hayashi wrote:
> Convert the UniPhier AVE4 controller binding to DT schema format.
> This changes phy-handle property to required.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  .../bindings/net/socionext,uniphier-ave4.txt       |  64 ------------
>  .../bindings/net/socionext,uniphier-ave4.yaml      | 109 +++++++++++++++++++++
>  MAINTAINERS                                        |   2 +-
>  3 files changed, 110 insertions(+), 65 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/net/socionext,uniphier-ave4.txt
>  create mode 100644 Documentation/devicetree/bindings/net/socionext,uniphier-ave4.yaml
> 
> diff --git a/Documentation/devicetree/bindings/net/socionext,uniphier-ave4.txt b/Documentation/devicetree/bindings/net/socionext,uniphier-ave4.txt
> deleted file mode 100644
> index 4e85fc4..0000000
> --- a/Documentation/devicetree/bindings/net/socionext,uniphier-ave4.txt
> +++ /dev/null
> @@ -1,64 +0,0 @@
> -* Socionext AVE ethernet controller
> -
> -This describes the devicetree bindings for AVE ethernet controller
> -implemented on Socionext UniPhier SoCs.
> -
> -Required properties:
> - - compatible: Should be
> -	- "socionext,uniphier-pro4-ave4" : for Pro4 SoC
> -	- "socionext,uniphier-pxs2-ave4" : for PXs2 SoC
> -	- "socionext,uniphier-ld11-ave4" : for LD11 SoC
> -	- "socionext,uniphier-ld20-ave4" : for LD20 SoC
> -	- "socionext,uniphier-pxs3-ave4" : for PXs3 SoC
> - - reg: Address where registers are mapped and size of region.
> - - interrupts: Should contain the MAC interrupt.
> - - phy-mode: See ethernet.txt in the same directory. Allow to choose
> -	"rgmii", "rmii", "mii", or "internal" according to the PHY.
> -	The acceptable mode is SoC-dependent.
> - - phy-handle: Should point to the external phy device.
> -	See ethernet.txt file in the same directory.
> - - clocks: A phandle to the clock for the MAC.
> -	For Pro4 SoC, that is "socionext,uniphier-pro4-ave4",
> -	another MAC clock, GIO bus clock and PHY clock are also required.
> - - clock-names: Should contain
> -	- "ether", "ether-gb", "gio", "ether-phy" for Pro4 SoC
> -	- "ether" for others
> - - resets: A phandle to the reset control for the MAC. For Pro4 SoC,
> -	GIO bus reset is also required.
> - - reset-names: Should contain
> -	- "ether", "gio" for Pro4 SoC
> -	- "ether" for others
> - - socionext,syscon-phy-mode: A phandle to syscon with one argument
> -	that configures phy mode. The argument is the ID of MAC instance.
> -
> -The MAC address will be determined using the optional properties
> -defined in ethernet.txt.
> -
> -Required subnode:
> - - mdio: A container for child nodes representing phy nodes.
> -         See phy.txt in the same directory.
> -
> -Example:
> -
> -	ether: ethernet@65000000 {
> -		compatible = "socionext,uniphier-ld20-ave4";
> -		reg = <0x65000000 0x8500>;
> -		interrupts = <0 66 4>;
> -		phy-mode = "rgmii";
> -		phy-handle = <&ethphy>;
> -		clock-names = "ether";
> -		clocks = <&sys_clk 6>;
> -		reset-names = "ether";
> -		resets = <&sys_rst 6>;
> -		socionext,syscon-phy-mode = <&soc_glue 0>;
> -		local-mac-address = [00 00 00 00 00 00];
> -
> -		mdio {
> -			#address-cells = <1>;
> -			#size-cells = <0>;
> -
> -			ethphy: ethphy@1 {
> -				reg = <1>;
> -			};
> -		};
> -	};
> diff --git a/Documentation/devicetree/bindings/net/socionext,uniphier-ave4.yaml b/Documentation/devicetree/bindings/net/socionext,uniphier-ave4.yaml
> new file mode 100644
> index 0000000..fd31e87
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/socionext,uniphier-ave4.yaml
> @@ -0,0 +1,109 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/net/socionext,uniphier-ave4.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Socionext AVE ethernet controller
> +
> +maintainers:
> +  - Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> +
> +description: |
> +  This describes the devicetree bindings for AVE ethernet controller
> +  implemented on Socionext UniPhier SoCs.
> +
> +allOf:
> +  - $ref: ethernet-controller.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - socionext,uniphier-pro4-ave4
> +      - socionext,uniphier-pxs2-ave4
> +      - socionext,uniphier-ld11-ave4
> +      - socionext,uniphier-ld20-ave4
> +      - socionext,uniphier-pxs3-ave4
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  phy-mode:
> +    $ref: ethernet-controller.yaml#/properties/phy-mode
> +
> +  phy-handle:
> +    $ref: ethernet-controller.yaml#/properties/phy-handle

No need for these $ref, the 1st reference did this. Just:

phy-mode: true

> +
> +  clocks:
> +    minItems: 1
> +    maxItems: 4
> +
> +  clock-names:
> +    oneOf:
> +      - items:          # for Pro4
> +        - const: gio
> +        - const: ether
> +        - const: ether-gb
> +        - const: ether-phy
> +      - const: ether    # for others
> +
> +  resets:
> +    minItems: 1
> +    maxItems: 2
> +
> +  reset-names:
> +    oneOf:
> +      - items:          # for Pro4
> +        - const: gio
> +        - const: ether
> +      - const: ether    # for others
> +
> +  socionext,syscon-phy-mode:
> +    $ref: /schemas/types.yaml#definitions/phandle-array
> +    description:
> +      A phandle to syscon with one argument that configures phy mode.
> +      The argument is the ID of MAC instance.
> +
> +  mdio:
> +    $ref: mdio.yaml#
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - phy-mode
> +  - phy-handle
> +  - clocks
> +  - clock-names
> +  - resets
> +  - reset-names
> +  - mdio
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    ether: ethernet@65000000 {
> +        compatible = "socionext,uniphier-ld20-ave4";
> +                reg = <0x65000000 0x8500>;
> +                interrupts = <0 66 4>;
> +                phy-mode = "rgmii";
> +                phy-handle = <&ethphy>;
> +                clock-names = "ether";
> +                clocks = <&sys_clk 6>;
> +                reset-names = "ether";
> +                resets = <&sys_rst 6>;
> +                socionext,syscon-phy-mode = <&soc_glue 0>;
> +
> +                mdio {
> +                        #address-cells = <1>;
> +                        #size-cells = <0>;
> +
> +                        ethphy: ethernet-phy@1 {
> +                                reg = <1>;
> +                        };
> +                };
> +        };
> diff --git a/MAINTAINERS b/MAINTAINERS
> index a1558eb..0ee65e2 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -15590,7 +15590,7 @@ SOCIONEXT (SNI) AVE NETWORK DRIVER
>  M:	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
>  L:	netdev@vger.kernel.org
>  S:	Maintained
> -F:	Documentation/devicetree/bindings/net/socionext,uniphier-ave4.txt
> +F:	Documentation/devicetree/bindings/net/socionext,uniphier-ave4.yaml
>  F:	drivers/net/ethernet/socionext/sni_ave.c
>  
>  SOCIONEXT (SNI) NETSEC NETWORK DRIVER
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
