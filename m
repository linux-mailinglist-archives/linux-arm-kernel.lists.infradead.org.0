Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A584B1785E3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 23:47:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UmNpDDnKb+wwyFHZ9KGZeo+sgNdNbFoP6bi7j2h3lTQ=; b=CA8Ri2iX/IaN0J
	OaCvVMjpySRxYd7CLdM2kbzxhNyLqf33EJb3XjXAVRdcjsgeCZwe1ONv6KMjKlf2nYFpnyKi9AChz
	pynuUKDq36QhWQyoKqnM6ircqZ0iRFXXSu7aJI5GPlVoXiLjjbYRgrrSN/1LIxBTPcbEvFirzer77
	LHRt0q32u0g/GHV3YrLaxp5Y2qofv1kMgYOLDoP3JZZUvHn1IB6TpWrSboj+MADnMtvsQtupd21P0
	yrlLTjn/A8jXjMWq8R/U5LgCp+JflLQ14fegVhpA8Y+0OTfnFs1u8JH3f9F3VQ69PrEMyvr/l5Ux3
	0VSg0Se3HGLLJuSGkcXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9GK5-0008PQ-3g; Tue, 03 Mar 2020 22:47:33 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9GJh-0008Dn-Cn; Tue, 03 Mar 2020 22:47:10 +0000
Received: by mail-ot1-f65.google.com with SMTP id i14so95454otp.5;
 Tue, 03 Mar 2020 14:47:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Z0du2wcxyjg7iRH0s/qpIMsj7X0YCwaBDvE2vsxIrbk=;
 b=lagoFGtSBW7BIMufWo914TZz8gdFTZT16BflTmeZmo2Cvo3+YHT8jP1H3+alOk3zqO
 EfaLbQbGV5KKO0TFxkFkS2SgV0bYuY5zmkbZOIKybKNvqfkvAHyZwoQSrpmnifLZ+sNh
 BWVAmoYiJedYKBiw+WpXaZxnfZC9/jcHprkwb2YpiUIX1ORwv4cLnneBI7oxgcKMAYuy
 LqU2a3es6aUE1gcxWvpLDpSSu4YXhWjEW5hjZLUmCQIB+fhXRuuR8zYBC0Gc4M/JYPC/
 NAiMAcHXUmT7SS6+g9ENqaA4MbeTbgYU9S9YCxqsDJs9sI5qlkZtCa/kJugR+Be0ja/D
 97Lg==
X-Gm-Message-State: ANhLgQ2tvuEduWb4HPW1NNwaVTaiQX78p1ZsEPamzMxNGN5XC4EiiW87
 vUjXJ/adXGmbTkNXX48VNw==
X-Google-Smtp-Source: ADFU+vuU+JCOVQpYg1AlYEQdEKGSsg5SLhgtKZoaS1dScWhKEQWMAhE4l5CbjQlxM9gWy34zkZG6zg==
X-Received: by 2002:a9d:4c92:: with SMTP id m18mr129586otf.168.1583275628368; 
 Tue, 03 Mar 2020 14:47:08 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id b2sm5879600oii.20.2020.03.03.14.47.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 14:47:07 -0800 (PST)
Received: (nullmailer pid 32174 invoked by uid 1000);
 Tue, 03 Mar 2020 22:47:06 -0000
Date: Tue, 3 Mar 2020 16:47:06 -0600
From: Rob Herring <robh@kernel.org>
To: Chuanhong Guo <gch981213@gmail.com>
Subject: Re: [PATCH v2 3/4] dt-bindings: convert mtk-quadspi binding doc for
 spi-mtk-nor
Message-ID: <20200303224706.GA22867@bogus>
References: <20200228043636.559915-1-gch981213@gmail.com>
 <20200228043636.559915-4-gch981213@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200228043636.559915-4-gch981213@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_144709_439257_1FC5268B 
X-CRM114-Status: GOOD (  20.46  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, open list <linux-kernel@vger.kernel.org>,
 linux-spi@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 28, 2020 at 12:36:35PM +0800, Chuanhong Guo wrote:
> spi-mtk-nor is a driver to replace mtk-quadspi and they have almost
> the same device-tree bindings. Reuse this binding documentation and
> convert it for new driver:
> 
> 1. "Mediatek SoCs" -> "Mediatek ARM SoCs" because MTK MIPS SoCs
>    use different controllers.
> 2. document "interrupts" as a required property because it's
>    available on all SoCs with this controller and new driver takes
>    advantages of it. It's implemented as optional only to maintain
>    backward compatibility.
> 3. replace binding example with a mt7629 one because this is the
>    only one I know the interrupt assignment.

That doesn't really matter. It would be less churn without that change 
and examples are just examples.

> 
> Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
> ---
> Change since v1:
>  none
> 
>  .../mtk-quadspi.txt => spi/spi-mtk-nor.txt}   | 34 ++++++++-----------
>  1 file changed, 15 insertions(+), 19 deletions(-)
>  rename Documentation/devicetree/bindings/{mtd/mtk-quadspi.txt => spi/spi-mtk-nor.txt} (62%)
> 
> diff --git a/Documentation/devicetree/bindings/mtd/mtk-quadspi.txt b/Documentation/devicetree/bindings/spi/spi-mtk-nor.txt
> similarity index 62%
> rename from Documentation/devicetree/bindings/mtd/mtk-quadspi.txt
> rename to Documentation/devicetree/bindings/spi/spi-mtk-nor.txt
> index a12e3b5c495d..829da480b9a9 100644
> --- a/Documentation/devicetree/bindings/mtd/mtk-quadspi.txt
> +++ b/Documentation/devicetree/bindings/spi/spi-mtk-nor.txt
> @@ -1,4 +1,4 @@
> -* Serial NOR flash controller for MediaTek SoCs
> +* SPI NOR flash controller for MediaTek ARM SoCs
>  
>  Required properties:
>  - compatible: 	  For mt8173, compatible should be "mediatek,mt8173-nor",
> @@ -13,6 +13,7 @@ Required properties:
>  		  "mediatek,mt7629-nor", "mediatek,mt8173-nor"
>  		  "mediatek,mt8173-nor"
>  - reg: 		  physical base address and length of the controller's register
> +- interrupts:	  Interrupt number used by the controller.
>  - clocks: 	  the phandle of the clocks needed by the nor controller
>  - clock-names: 	  the names of the clocks
>  		  the clocks should be named "spi" and "sf". "spi" is used for spi bus,
> @@ -22,29 +23,24 @@ Required properties:
>  - #address-cells: should be <1>
>  - #size-cells:	  should be <0>
>  
> -The SPI flash must be a child of the nor_flash node and must have a
> -compatible property. Also see jedec,spi-nor.txt.
> -
> -Required properties:
> -- compatible:	  May include a device-specific string consisting of the manufacturer
> -		  and name of the chip. Must also include "jedec,spi-nor" for any
> -		  SPI NOR flash that can be identified by the JEDEC READ ID opcode (0x9F).
> -- reg :		  Chip-Select number
> +There should be only one spi slave device following generic spi bindings.
> +It's not recommended to use this controller for devices other than SPI NOR
> +flash due to limited transfer capability of this controller.
>  
>  Example:
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/clock/mt7629-clk.h>
>  
> -nor_flash: spi@1100d000 {
> -	compatible = "mediatek,mt8173-nor";
> -	reg = <0 0x1100d000 0 0xe0>;
> -	clocks = <&pericfg CLK_PERI_SPI>,
> -		 <&topckgen CLK_TOP_SPINFI_IFR_SEL>;
> +spi_nor: spi@11014000 {
> +	compatible = "mediatek,mt7629-nor",
> +		     "mediatek,mt8173-nor";
> +	reg = <0x11014000 0xe0>;
> +	interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_LOW>;
> +	clocks = <&pericfg CLK_PERI_FLASH_PD>,
> +		 <&topckgen CLK_TOP_FLASH_SEL>;
>  	clock-names = "spi", "sf";
>  	#address-cells = <1>;
>  	#size-cells = <0>;
> -
> -	flash@0 {
> -		compatible = "jedec,spi-nor";
> -		reg = <0>;
> -	};

Better to leave this in the example IMO.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
