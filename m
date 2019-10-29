Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4616EE8C55
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 17:01:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XX/ndCna/QEYZqEZC29YEU/VKWPgtOJUSGX2kYZLduM=; b=SnSXEwJtwEFcwN
	yYvdGRMdH0iuMmdNi8tX0iO4Hf+lwAXN5To0Ql1by3G3aWD76NHM+UMvzwmu5qq9qAknL8Z094pkD
	Iwd6BxqtJRmafWKrkPRvW/51i3tV6jEMcZCpxYW3cakLulRcIqe+6CyIkDcBGJx9I4Jh2Kk2mupdR
	xhwd704G+hb+x6kNh8bKNpQ1YX71Eyjmnpw+gYCdus4Pebs9XkHF93sWAAuJV9VDKqZosEZF0Ii6S
	AsN9SPBZYanb8Y1QW2cnoDd8XxkoNQsflZnwwvG8rAwBr+8IBRa9s8EnHIFU+rdhROsYVInm5abwH
	uvcgjkew9z8xL9fihvqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPTvb-0003LQ-Bw; Tue, 29 Oct 2019 16:01:03 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPTvH-0003J6-FS; Tue, 29 Oct 2019 16:00:45 +0000
Received: by mail-ot1-f66.google.com with SMTP id 53so10210504otv.4;
 Tue, 29 Oct 2019 09:00:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=R//ybbMO3XH827fdF6Ly2Nl4C2iYjhABLiSuwPKBh2c=;
 b=GKVBS5nfTJ9x9upO1HyvHDIdNOOAVf8qXuHXMxP0me+ZbJ/xCUjoFQKkV1nXnTSOHT
 E4SDTg77fycUVxYcrqJymSyVVVwTxQmvz+MNfeL/10Pb37bfXVuF1dZ8A2r4VSXYOmsf
 sYPylEOz6byKD9iajRkI047k0SAsZBWQ603AiFRnx1OQ4Gr7UjLirTkpfTou+RKQYpaw
 YPUUN3TpAaX5Ez5DvMk4Z8X3+MIacfjMKuCXRi4YmnK0NiP+00VKWc3tPPKAm/Y5nC+P
 Z+jl92nU4O2MLNaul6H+q1EAVuw6qWl9EDMfvv9OFSkrwz+UOk2k9O4z3DHH3N2WX+AY
 iXTw==
X-Gm-Message-State: APjAAAXhjXG3JNHsigoxS2IskMmmW6sYYj05m3y1EWPpWlSGm3JGqOXD
 Fs8t3SnJaKBQtAbVy5MtJQ==
X-Google-Smtp-Source: APXvYqzlpNP/dgXzM+zC+lYUoBJviYrZV9XUAHPzWT5OtZXvoNRGsS9jmwJi02xfJpb+wb1XerDqmg==
X-Received: by 2002:a9d:620c:: with SMTP id g12mr9098638otj.11.1572364840953; 
 Tue, 29 Oct 2019 09:00:40 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 100sm4753202otl.48.2019.10.29.09.00.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 09:00:39 -0700 (PDT)
Date: Tue, 29 Oct 2019 11:00:38 -0500
From: Rob Herring <robh@kernel.org>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH] dt-bindings: usb: dwc3: Move Amlogic G12A DWC3 Glue
 Bindings to YAML schemas
Message-ID: <20191029160038.GA22675@bogus>
References: <20191021132322.25256-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021132322.25256-1-narmstrong@baylibre.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_090043_532237_865C27D0 
X-CRM114-Status: GOOD (  26.46  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 21, 2019 at 03:23:22PM +0200, Neil Armstrong wrote:
> Now that we have the DT validation in place, let's convert the device tree
> bindings for the Amlogic G12A DWC3 Glue Bindings over to a YAML schemas,
> the AXG and GXL glue bindings will be converted later.
> 
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  .../devicetree/bindings/usb/amlogic,dwc3.txt  |  88 ------------
>  .../usb/amlogic,meson-g12a-usb-ctrl.yaml      | 132 ++++++++++++++++++
>  2 files changed, 132 insertions(+), 88 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/usb/amlogic,meson-g12a-usb-ctrl.yaml
> 
> diff --git a/Documentation/devicetree/bindings/usb/amlogic,dwc3.txt b/Documentation/devicetree/bindings/usb/amlogic,dwc3.txt
> index b9f04e617eb7..9a8b631904fd 100644
> --- a/Documentation/devicetree/bindings/usb/amlogic,dwc3.txt
> +++ b/Documentation/devicetree/bindings/usb/amlogic,dwc3.txt
> @@ -40,91 +40,3 @@ Example device nodes:
>  				phy-names = "usb2-phy", "usb3-phy";
>  			};
>  		};
> -
> -Amlogic Meson G12A DWC3 USB SoC Controller Glue
> -
> -The Amlogic G12A embeds a DWC3 USB IP Core configured for USB2 and USB3
> -in host-only mode, and a DWC2 IP Core configured for USB2 peripheral mode
> -only.
> -
> -A glue connects the DWC3 core to USB2 PHYs and optionnaly to an USB3 PHY.
> -
> -One of the USB2 PHY can be re-routed in peripheral mode to a DWC2 USB IP.
> -
> -The DWC3 Glue controls the PHY routing and power, an interrupt line is
> -connected to the Glue to serve as OTG ID change detection.
> -
> -Required properties:
> -- compatible:	Should be "amlogic,meson-g12a-usb-ctrl"
> -- clocks:	a handle for the "USB" clock
> -- resets:	a handle for the shared "USB" reset line
> -- reg:		The base address and length of the registers
> -- interrupts:	the interrupt specifier for the OTG detection
> -- phys: 	handle to used PHYs on the system
> -	- a <0> phandle can be used if a PHY is not used
> -- phy-names:	names of the used PHYs on the system :
> -	- "usb2-phy0" for USB2 PHY0 if USBHOST_A port is used
> -	- "usb2-phy1" for USB2 PHY1 if USBOTG_B port is used
> -	- "usb3-phy0" for USB3 PHY if USB3_0 is used
> -- dr_mode:	should be "host", "peripheral", or "otg" depending on
> -	the usage and configuration of the OTG Capable port.
> -	- "host" and "peripheral" means a fixed Host or Device only connection
> -	- "otg" means the port can be used as both Host or Device and
> -	  be switched automatically using the OTG ID pin.
> -
> -Optional properties:
> -- vbus-supply:	should be a phandle to the regulator controlling the VBUS
> -		power supply when used in OTG switchable mode
> -
> -Required child nodes:
> -
> -A child node must exist to represent the core DWC3 IP block. The name of
> -the node is not important. The content of the node is defined in dwc3.txt.
> -
> -A child node must exist to represent the core DWC2 IP block. The name of
> -the node is not important. The content of the node is defined in dwc2.txt.
> -
> -PHY documentation is provided in the following places:
> -- Documentation/devicetree/bindings/phy/meson-g12a-usb2-phy.txt
> -- Documentation/devicetree/bindings/phy/meson-g12a-usb3-pcie-phy.txt
> -
> -Example device nodes:
> -	usb: usb@ffe09000 {
> -			compatible = "amlogic,meson-g12a-usb-ctrl";
> -			reg = <0x0 0xffe09000 0x0 0xa0>;
> -			interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>;
> -			#address-cells = <2>;
> -			#size-cells = <2>;
> -			ranges;
> -
> -			clocks = <&clkc CLKID_USB>;
> -			resets = <&reset RESET_USB>;
> -
> -			dr_mode = "otg";
> -
> -			phys = <&usb2_phy0>, <&usb2_phy1>,
> -			       <&usb3_pcie_phy PHY_TYPE_USB3>;
> -			phy-names = "usb2-phy0", "usb2-phy1", "usb3-phy0";
> -
> -			dwc2: usb@ff400000 {
> -				compatible = "amlogic,meson-g12a-usb", "snps,dwc2";
> -				reg = <0x0 0xff400000 0x0 0x40000>;
> -				interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
> -				clocks = <&clkc CLKID_USB1_DDR_BRIDGE>;
> -				clock-names = "ddr";
> -				phys = <&usb2_phy1>;
> -				dr_mode = "peripheral";
> -				g-rx-fifo-size = <192>;
> -				g-np-tx-fifo-size = <128>;
> -				g-tx-fifo-size = <128 128 16 16 16>;
> -			};
> -
> -			dwc3: usb@ff500000 {
> -				compatible = "snps,dwc3";
> -				reg = <0x0 0xff500000 0x0 0x100000>;
> -				interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
> -				dr_mode = "host";
> -				snps,dis_u2_susphy_quirk;
> -				snps,quirk-frame-length-adjustment;
> -			};
> -	};
> diff --git a/Documentation/devicetree/bindings/usb/amlogic,meson-g12a-usb-ctrl.yaml b/Documentation/devicetree/bindings/usb/amlogic,meson-g12a-usb-ctrl.yaml
> new file mode 100644
> index 000000000000..45bcc98ee9a4
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/usb/amlogic,meson-g12a-usb-ctrl.yaml
> @@ -0,0 +1,132 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright 2019 BayLibre, SAS
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/usb/amlogic,meson-g12a-usb-ctrl.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Amlogic Meson G12A DWC3 USB SoC Controller Glue
> +
> +maintainers:
> +  - Neil Armstrong <narmstrong@baylibre.com>
> +
> +description: |
> +  The Amlogic G12A embeds a DWC3 USB IP Core configured for USB2 and USB3
> +  in host-only mode, and a DWC2 IP Core configured for USB2 peripheral mode
> +  only.
> +
> +  A glue connects the DWC3 core to USB2 PHYs and optionnaly to an USB3 PHY.
> +
> +  One of the USB2 PHY can be re-routed in peripheral mode to a DWC2 USB IP.
> +
> +  The DWC3 Glue controls the PHY routing and power, an interrupt line is
> +  connected to the Glue to serve as OTG ID change detection.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - amlogic,meson-g12a-usb-ctrl
> +
> +  ranges: true
> +
> +  "#address-cells":
> +    enum: [ 1, 2 ]
> +
> +  "#size-cells":
> +    enum: [ 1, 2 ]
> +
> +  clocks:
> +    minItems: 1
> +
> +  resets:
> +    minItems: 1
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  phy-names:
> +    items:
> +      - const: usb2-phy0 # USB2 PHY0 if USBHOST_A port is used
> +      - const: usb2-phy1 # USB2 PHY1 if USBOTG_B port is used
> +      - const: usb3-phy0 # USB3 PHY if USB3_0 is used
> +
> +  phys:
> +    minItems: 1
> +    maxItems: 3
> +
> +  dr_mode:
> +    enum:
> +      - host # fixed Host connection
> +      - peripheral # fixed Device connection
> +      - otg # Host or Device and switched automatically using the OTG ID pin

This should have a common definition. You can assume it does, so you 
just need 'true'.

> +
> +  power-domains:
> +    maxItems: 1
> +
> +  vbus-supply:
> +    description: VBUS power supply when used in OTG switchable mode
> +    maxItems: 1
> +
> +patternProperties:
> +  "^usb@[0-9a-f]+$":
> +    type: object
> +
> +additionalProperties: false
> +
> +required:
> +  - compatible
> +  - "#address-cells"
> +  - "#size-cells"
> +  - ranges
> +  - clocks
> +  - resets
> +  - reg
> +  - interrupts
> +  - phy-names
> +  - phys
> +  - dr_mode
> +
> +examples:
> +  - |
> +    usb: usb@ffe09000 {
> +          compatible = "amlogic,meson-g12a-usb-ctrl";
> +          reg = <0x0 0xffe09000 0x0 0xa0>;
> +          interrupts = <16>;
> +          #address-cells = <1>;
> +          #size-cells = <1>;
> +          ranges;
> +
> +          clocks = <&clkc_usb>;
> +          resets = <&reset_usb>;
> +
> +          dr_mode = "otg";
> +
> +          phys = <&usb2_phy0>, <&usb2_phy1>, <&usb3_phy0>;
> +          phy-names = "usb2-phy0", "usb2-phy1", "usb3-phy0";
> +
> +          dwc2: usb@ff400000 {
> +              compatible = "amlogic,meson-g12a-usb", "snps,dwc2";
> +              reg = <0xff400000 0x40000>;
> +              interrupts = <31>;
> +              clocks = <&clkc_usb1>;
> +              clock-names = "ddr";
> +              phys = <&usb2_phy1>;
> +              dr_mode = "peripheral";

However, it seems folks just put 'dr_mode' where ever they please. I saw 
one in usb phy yesterday. Just a comment, not really anything for you to 
change here...

> +              g-rx-fifo-size = <192>;
> +              g-np-tx-fifo-size = <128>;
> +              g-tx-fifo-size = <128 128 16 16 16>;
> +          };
> +
> +          dwc3: usb@ff500000 {
> +              compatible = "snps,dwc3";
> +              reg = <0xff500000 0x100000>;
> +              interrupts = <30>;
> +              dr_mode = "host";
> +              snps,dis_u2_susphy_quirk;
> +              snps,quirk-frame-length-adjustment;
> +          };
> +    };
> +
> -- 
> 2.22.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
