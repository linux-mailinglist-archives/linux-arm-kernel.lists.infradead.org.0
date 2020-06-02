Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF15C1EC308
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 21:49:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dHzq8gkPh9J5CQlDnPYAl9ZJZDbSW+I8oJSHgxFdhbc=; b=oGBmZADg3654CZ
	pwx0L54FIGXnJiWAI81jEzKSC7kDywPxfYtczaReK9eFQT3pXlhRhCOcZ5ESzUqnAdixnEQcaREhB
	IS3H/V8enmOE3OVJZcQJiLHNeDZsIt4EXeh/JbAjemXqUZuIktrcZUSsqUARZVjzIzzFtiY8nRzKT
	QWQVzZONgZI9/9S9d/N9GbZ8L1v8MY/qouIFbRTcasZMls4fydYxcDj2TJWeX+SpfkElvjCi6V42i
	oDukeh1CPe94tf5+BQi5ww5Z56422Tda4tzBQGCcbPmL40Igqs1tir2cbUiRHGkOnJOjq/GLKNMmW
	xqtuk0mn6Yt1h1SS1iog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgCul-0006zC-O9; Tue, 02 Jun 2020 19:49:35 +0000
Received: from ns2.baikalelectronics.com ([94.125.187.42]
 helo=mail.baikalelectronics.ru)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgCuf-0006yr-9W
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 19:49:31 +0000
Received: from localhost (unknown [127.0.0.1])
 by mail.baikalelectronics.ru (Postfix) with ESMTP id 966508030838;
 Tue,  2 Jun 2020 19:49:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at baikalelectronics.ru
Received: from mail.baikalelectronics.ru ([127.0.0.1])
 by localhost (mail.baikalelectronics.ru [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H-uqhSvYPpnb; Tue,  2 Jun 2020 22:49:25 +0300 (MSK)
Date: Tue, 2 Jun 2020 22:49:25 +0300
From: Serge Semin <Sergey.Semin@baikalelectronics.ru>
To: Lars Povlsen <lars.povlsen@microchip.com>
Subject: Re: [PATCH 04/10] dt-bindings: spi: Add bindings for spi-dw-mchp
Message-ID: <20200602194925.qbevttzz3ghvmd2d@mobilestation>
References: <20200513140031.25633-1-lars.povlsen@microchip.com>
 <20200513140031.25633-5-lars.povlsen@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513140031.25633-5-lars.povlsen@microchip.com>
X-ClientProxiedBy: MAIL.baikal.int (192.168.51.25) To mail (192.168.51.25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_124929_687977_0FB1CFA4 
X-CRM114-Status: GOOD (  19.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Mark Brown <broonie@kernel.org>, linux-kernel@vger.kernel.org,
 Serge Semin <fancer.lancer@gmail.com>, linux-spi@vger.kernel.org,
 SoC Team <soc@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 04:00:25PM +0200, Lars Povlsen wrote:
> This add DT bindings for the Microsemi/Microchip SPI controller used
> in various SoC's. It describes the "mscc,ocelot-spi" and
> "mscc,jaguar2-spi" bindings.

As I see it, there is no need in this patch at all. Current DT binding file
describes the MSCC version of the DW APB SSI IP pretty well. You can add an
example to the DT schema though with "mscc,ocelot-spi" or "mscc,jaguar2-spi"
compatible string and additional registers range. 

-Sergey

> 
> Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
> ---
>  .../bindings/spi/mscc,ocelot-spi.yaml         | 60 +++++++++++++++++++
>  .../bindings/spi/snps,dw-apb-ssi.txt          |  7 +--
>  MAINTAINERS                                   |  1 +
>  3 files changed, 63 insertions(+), 5 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/spi/mscc,ocelot-spi.yaml
> 
> diff --git a/Documentation/devicetree/bindings/spi/mscc,ocelot-spi.yaml b/Documentation/devicetree/bindings/spi/mscc,ocelot-spi.yaml
> new file mode 100644
> index 0000000000000..a3ac0fa576553
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/spi/mscc,ocelot-spi.yaml
> @@ -0,0 +1,60 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/spi/mscc,ocelot-spi.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Microsemi Vcore-III SPI Communication Controller
> +
> +maintainers:
> +  - Alexandre Belloni <alexandre.belloni@bootlin.com>
> +  - Lars Povlsen <lars.povlsen@microchip.com>
> +
> +allOf:
> +  - $ref: "spi-controller.yaml#"
> +
> +description: |
> +  The Microsemi Vcore-III SPI controller is a general purpose SPI
> +  controller based upon the Designware SPI controller. It uses an 8
> +  byte rx/tx fifo.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - mscc,ocelot-spi
> +      - mscc,jaguar2-spi
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  reg:
> +    minItems: 2
> +    items:
> +      - description: Designware SPI registers
> +      - description: CS override registers
> +
> +  clocks:
> +    maxItems: 1
> +
> +  reg-io-width:
> +    description: |
> +      The I/O register width (in bytes) implemented by this device.
> +    items:
> +       enum: [ 2, 4 ]
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +
> +examples:
> +  - |
> +    spi0: spi@101000 {
> +      compatible = "mscc,ocelot-spi";
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +      reg = <0x101000 0x100>, <0x3c 0x18>;
> +      interrupts = <9>;
> +      clocks = <&ahb_clk>;
> +    };
> diff --git a/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.txt b/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.txt
> index 3ed08ee9feba4..5e1849be7bae5 100644
> --- a/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.txt
> +++ b/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.txt
> @@ -1,10 +1,8 @@
>  Synopsys DesignWare AMBA 2.0 Synchronous Serial Interface.
> 
>  Required properties:
> -- compatible : "snps,dw-apb-ssi" or "mscc,<soc>-spi", where soc is "ocelot" or
> -  "jaguar2", or "amazon,alpine-dw-apb-ssi"
> -- reg : The register base for the controller. For "mscc,<soc>-spi", a second
> -  register set is required (named ICPU_CFG:SPI_MST)
> +- compatible : "snps,dw-apb-ssi" or "amazon,alpine-dw-apb-ssi"
> +- reg : The register base for the controller.
>  - interrupts : One interrupt, used by the controller.
>  - #address-cells : <1>, as required by generic SPI binding.
>  - #size-cells : <0>, also as required by generic SPI binding.
> @@ -38,4 +36,3 @@ Example:
>  		cs-gpios = <&gpio0 13 0>,
>  			   <&gpio0 14 0>;
>  	};
> -
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 1db598723a1d8..6472240b8391b 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -11231,6 +11231,7 @@ L:	linux-mips@vger.kernel.org
>  S:	Supported
>  F:	Documentation/devicetree/bindings/mips/mscc.txt
>  F:	Documentation/devicetree/bindings/power/reset/ocelot-reset.txt
> +F:	Documentation/devicetree/bindings/spi/mscc,ocelot-spi.yaml
>  F:	arch/mips/boot/dts/mscc/
>  F:	arch/mips/configs/generic/board-ocelot.config
>  F:	arch/mips/generic/board-ocelot.c
> --
> 2.26.2
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
