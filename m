Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B88B31447D3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 23:38:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Au/CPtOOIC1rdtaMIkZQykep8zsjUW1zgkbhh0hELbw=; b=r00IWmxLVegkri
	YR+nysir1yF+x/2B1uXf4RDKuKIKluQOo4GnKa3qIGNMIwJP4lGIeqqn387kY+HDPzZp2FFEQ05lk
	j+8ypiZ8tF4Lyd2kxmC2zeMQp4vHpGwSKp8QMBtShJkc9Cx53X8iLGlawJ+bs2MJVI7ZgdkXgh6JT
	xKR8pmL2b7vM+bEgKzerIuE16pOAkG6wa+ijylaJ1bqkgUmfIP4+Tv0CPIPO2HvfisTRzXoh5sMGl
	8gQOtQgUhmXI7+gajM4eTvdfDn6VmnrzE4TtzSyoK8meXckNuD9k+rFIoAPv+ECwFu+RYg9vwmi8G
	4Qr4UWVLGrHm1Ij4IFTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu2AS-0000bA-NO; Tue, 21 Jan 2020 22:38:40 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu29x-0000M4-Kx
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 22:38:20 +0000
Received: by mail-ot1-f65.google.com with SMTP id 59so4483169otp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 14:38:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rCPpFo01LA0ufFxgslJygDyMKU7n29hE5cPSJPV/Tis=;
 b=PsIn66MDgK0eBK9+qttryB6zUrgf4ZGO+F/s24Hven+btk3Y6A4tUJsXO0NpH1VDCe
 dMWifZwUgvHJWBWZMonquEf7cocJAFNDsYvoEWSMTn3Z6dZK43NHjTB73/jsWcBLhSNJ
 JpGEgs2xsBprWXrU4dLggf4fCsbpcbVXVzH0bJ75ZzomEYHEPzBFOgx/pqL4kNz8aWdv
 RuIB0livISCxC33te5Dr8wv0mn7AMohWCCH6Rv6ZdnAJ+b57vWtMZ8DN36jZch+NshNF
 Nr2VlcymrXPX3mPgCk7jaQmGqdWuvRTu5sVjoRDWB+UhxrDs9UXJsYha+8OKijmsuevE
 Kl2w==
X-Gm-Message-State: APjAAAX3oQSkLB2kMh/7oq0a8QauXGJnhRJOx52qrUdaYMblU8fVw764
 h+QMfj/aggaf29V9dzxaEg==
X-Google-Smtp-Source: APXvYqxaMwA5tZhskkLIJL7NCltuCFOMNVxEM744Gs29VLJijpUh//35TuSNy4uUL26HFT1N/gjOsw==
X-Received: by 2002:a05:6830:1481:: with SMTP id
 s1mr5259732otq.66.1579646288799; 
 Tue, 21 Jan 2020 14:38:08 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id v14sm13967733oto.16.2020.01.21.14.38.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jan 2020 14:38:08 -0800 (PST)
Received: (nullmailer pid 1428 invoked by uid 1000);
 Tue, 21 Jan 2020 22:38:07 -0000
Date: Tue, 21 Jan 2020 16:38:07 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V3 1/3] dt-bindings: pinctrl: Convert i.MX8MQ to
 json-schema
Message-ID: <20200121223807.GA24850@bogus>
References: <1579051845-30378-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579051845-30378-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_143809_759944_85772364 
X-CRM114-Status: GOOD (  21.67  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: aisheng.dong@nxp.com, mark.rutland@arm.com, devicetree@vger.kernel.org,
 festevam@gmail.com, linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 stefan@agner.ch, linux-gpio@vger.kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 09:30:43AM +0800, Anson Huang wrote:
> Convert the i.MX8MQ pinctrl binding to DT schema format using json-schema
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V2:
> 	- the lisence should be GPL-2.0.
> ---
>  .../bindings/pinctrl/fsl,imx8mq-pinctrl.txt        | 36 -----------
>  .../bindings/pinctrl/fsl,imx8mq-pinctrl.yaml       | 69 ++++++++++++++++++++++
>  2 files changed, 69 insertions(+), 36 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/pinctrl/fsl,imx8mq-pinctrl.txt
>  create mode 100644 Documentation/devicetree/bindings/pinctrl/fsl,imx8mq-pinctrl.yaml
> 
> diff --git a/Documentation/devicetree/bindings/pinctrl/fsl,imx8mq-pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/fsl,imx8mq-pinctrl.txt
> deleted file mode 100644
> index 66de750..0000000
> --- a/Documentation/devicetree/bindings/pinctrl/fsl,imx8mq-pinctrl.txt
> +++ /dev/null
> @@ -1,36 +0,0 @@
> -* Freescale IMX8MQ IOMUX Controller
> -
> -Please refer to fsl,imx-pinctrl.txt and pinctrl-bindings.txt in this directory
> -for common binding part and usage.
> -
> -Required properties:
> -- compatible: "fsl,imx8mq-iomuxc"
> -- reg: should contain the base physical address and size of the iomuxc
> -  registers.
> -
> -Required properties in sub-nodes:
> -- fsl,pins: each entry consists of 6 integers and represents the mux and config
> -  setting for one pin.  The first 5 integers <mux_reg conf_reg input_reg mux_val
> -  input_val> are specified using a PIN_FUNC_ID macro, which can be found in
> -  imx8mq-pinfunc.h under device tree source folder.  The last integer CONFIG is
> -  the pad setting value like pull-up on this pin.  Please refer to i.MX8M Quad
> -  Reference Manual for detailed CONFIG settings.
> -
> -Examples:
> -
> -&uart1 {
> -       pinctrl-names = "default";
> -       pinctrl-0 = <&pinctrl_uart1>;
> -};
> -
> -iomuxc: pinctrl@30330000 {
> -        compatible = "fsl,imx8mq-iomuxc";
> -        reg = <0x0 0x30330000 0x0 0x10000>;
> -
> -        pinctrl_uart1: uart1grp {
> -                fsl,pins = <
> -                        MX8MQ_IOMUXC_UART1_RXD_UART1_DCE_RX             0x49
> -                        MX8MQ_IOMUXC_UART1_TXD_UART1_DCE_TX             0x49
> -                >;
> -        };
> -};
> diff --git a/Documentation/devicetree/bindings/pinctrl/fsl,imx8mq-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/fsl,imx8mq-pinctrl.yaml
> new file mode 100644
> index 0000000..e010808
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pinctrl/fsl,imx8mq-pinctrl.yaml
> @@ -0,0 +1,69 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pinctrl/fsl,imx8mq-pinctrl.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale IMX8MQ IOMUX Controller
> +
> +maintainers:
> +  - Anson Huang <Anson.Huang@nxp.com>
> +
> +description:
> +  Please refer to fsl,imx-pinctrl.txt and pinctrl-bindings.txt in this directory
> +  for common binding part and usage.
> +
> +properties:
> +  compatible:
> +    const: fsl,imx8mq-iomuxc
> +
> +  reg:
> +    maxItems: 1
> +
> +# Client device subnode's properties
> +patternProperties:
> +  'grp$':
> +    type: object
> +    description:
> +      Pinctrl node's client devices use subnodes for desired pin configuration.
> +      Client device subnodes use below standard properties.
> +
> +    properties:
> +      fsl,pins:
> +        allOf:
> +          - $ref: /schemas/types.yaml#/definitions/uint32-array
> +        description:
> +          each entry consists of 6 integers and represents the mux and config
> +          setting for one pin. The first 5 integers <mux_reg conf_reg input_reg
> +          mux_val input_val> are specified using a PIN_FUNC_ID macro, which can
> +          be found in <arch/arm64/boot/dts/freescale/imx8mq-pinfunc.h>. The last
> +          integer CONFIG is the pad setting value like pull-up on this pin. Please
> +          refer to i.MX8M Quad Reference Manual for detailed CONFIG settings.

Based on the description, I think this should be an uint32-matrix type 
instead with a schema like this:

items:
  items:
    - description: mux_reg
    - description: conf_reg
    - description: input_reg
    - description: mux_val
    - description: input_val
    - description: pad setting

(With better descriptions preferrably)

The dts files should then be bracketed accordingly.
   
> +
> +    required:
> +      - fsl,pins
> +
> +    additionalProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  # Pinmux controller node
> +  - |
> +    iomuxc: pinctrl@30330000 {
> +        compatible = "fsl,imx8mq-iomuxc";
> +        reg = <0x30330000 0x10000>;
> +
> +        pinctrl_uart1: uart1grp {
> +            fsl,pins = <
> +                0x234 0x49C 0x4F4 0x0 0x0	0x49
> +                0x238 0x4A0 0x4F4 0x0 0x0	0x49
> +            >;
> +        };
> +    };
> +
> +...
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
