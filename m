Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6461D1EC575
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 01:08:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VzDDgayMHWcwkh2iSPqiKQ0UtJxOq25lyXZ9KJtxObQ=; b=rQyrPy1Ou9uCP1
	OsRB8qb4kWNExp67XKmNmgdlC4IDb3CiSUMTKaVPyTyN+DSELEK0KDgiA6nu3Xz3mFsmuK1rMsen7
	F6rsLbhdJ5FksAQ97Ra9mLMzsLhW+AXZrKzdmCRQGpkrZVjPwc0ldKucTKair3uahOnSgRjdYGF/C
	YmZDqSBO9jflBzsC38YBXm1Ku9TLy7dSs3DgexeGHDYieQwStT7wHCvs5FkLyJhKfsQbbwRBkd14v
	9rtEMvbuh0z7bDLD8o2uephbW1cXSuGK/Bl5V6QhNVUNFnes++xJHnU+kNN++CLp3anOs0JJir3wc
	w3T/twPj3Vlozfzzp5pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgG0i-0001rj-30; Tue, 02 Jun 2020 23:07:56 +0000
Received: from ns2.chip.baikal.ru ([94.125.187.42]
 helo=mail.baikalelectronics.ru)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgG0b-0001qn-AA
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 23:07:51 +0000
Received: from localhost (unknown [127.0.0.1])
 by mail.baikalelectronics.ru (Postfix) with ESMTP id C898F803083B;
 Tue,  2 Jun 2020 23:07:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at baikalelectronics.ru
Received: from mail.baikalelectronics.ru ([127.0.0.1])
 by localhost (mail.baikalelectronics.ru [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 36FlyoStlb5r; Wed,  3 Jun 2020 02:07:40 +0300 (MSK)
Date: Wed, 3 Jun 2020 02:07:38 +0300
From: Serge Semin <Sergey.Semin@baikalelectronics.ru>
To: Lars Povlsen <lars.povlsen@microchip.com>
Subject: Re: [PATCH 06/10] dt-bindings: spi: spi-dw-mchp: Add Sparx5 support
Message-ID: <20200602230738.mz2y6i2kjagyt7tk@mobilestation>
References: <20200513140031.25633-1-lars.povlsen@microchip.com>
 <20200513140031.25633-7-lars.povlsen@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513140031.25633-7-lars.povlsen@microchip.com>
X-ClientProxiedBy: MAIL.baikal.int (192.168.51.25) To mail (192.168.51.25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_160749_704504_53B7ED15 
X-CRM114-Status: GOOD (  19.35  )
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

On Wed, May 13, 2020 at 04:00:27PM +0200, Lars Povlsen wrote:
> This add DT bindings for the Sparx5 SPI driver.

This whole file can be easily merged in to the generic DW APB SSI DT
binding file. Just use "if: properties: compatible: const: ..." construction
to distinguish ocelot, jaguar, sparx5 and non-sparx5 nodes.

> 
> Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
> ---
>  .../bindings/spi/mscc,ocelot-spi.yaml         | 49 +++++++++++++++----
>  1 file changed, 39 insertions(+), 10 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/spi/mscc,ocelot-spi.yaml b/Documentation/devicetree/bindings/spi/mscc,ocelot-spi.yaml
> index a3ac0fa576553..8beecde4b0880 100644
> --- a/Documentation/devicetree/bindings/spi/mscc,ocelot-spi.yaml
> +++ b/Documentation/devicetree/bindings/spi/mscc,ocelot-spi.yaml
> @@ -23,15 +23,23 @@ properties:
>      enum:
>        - mscc,ocelot-spi
>        - mscc,jaguar2-spi
> +      - microchip,sparx5-spi
> 
>    interrupts:
>      maxItems: 1
> 
>    reg:
>      minItems: 2
> -    items:
> -      - description: Designware SPI registers
> -      - description: CS override registers
> +    maxItems: 3
> +    oneOf:
> +      - items:
> +          - description: Designware SPI registers
> +          - description: CS override registers (Not sparx5).
> +      - items:
> +          - description: Designware SPI registers
> +          - description: CS override registers (Not sparx5).
> +          - description: Direct mapped SPI read area. If provided, the
> +              driver will register spi_mem_op's to take advantage of it.
> 
>    clocks:
>      maxItems: 1
> @@ -43,6 +51,23 @@ properties:
>         enum: [ 2, 4 ]
>      maxItems: 1
> 

> +  spi-rx-delay-us:
> +    description: |
> +      The delay (in usec) of the RX signal sample position. This can
> +      be used to tne the RX timing in order to acheive higher
> +      speeds. This is used for all devices on the bus.
> +    default: 0
> +    maxItems: 1

spi-rx-delay-us is defined for a particular SPI-slave. Please see the
DT binding file: Documentation/devicetree/bindings/spi/spi-controller.yaml .
Although as I suggested before this delay isn't what the Dw APB SSI RX sample
delay functionality does. Probably a vendor-specific property would be better
here. But I'd also define it on a SPI-slave basis, not for all devices on the
bus.

> +
> +  interface-mapping-mask:
> +    description: |
> +      On the Sparx5 variant, two different busses are connected to the
> +      controller. This property is a mask per chip-select, indicating
> +      whether the CS should go to one or the other interface.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    default: 0
> +    maxItems: 1

As Mark rightfully suggested this seems like an SPI-slave related property, then
most likely it should be defined on the SPI-slave basis (probably as a bool
property). Additionally it's vendor-specific, so the property name should be
accordingly prefixed.

> +
>  required:
>    - compatible
>    - reg
> @@ -50,11 +75,15 @@ required:
> 
>  examples:
>    - |
> -    spi0: spi@101000 {
> -      compatible = "mscc,ocelot-spi";
> -      #address-cells = <1>;
> -      #size-cells = <0>;
> -      reg = <0x101000 0x100>, <0x3c 0x18>;
> -      interrupts = <9>;
> -      clocks = <&ahb_clk>;
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    spi0: spi@600104000 {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        compatible = "microchip,sparx5-spi";

> +        reg = <0x00104000 0x40>, <0 0>, <0x3000000 0x4000000>;

I have a doubt that defining an empty reg region is a good idea, since you can
detect the reg requirements by the node compatible string.

-Sergey

> +        num-cs = <16>;
> +        reg-io-width = <4>;
> +        reg-shift = <2>;
> +        clocks = <&ahb_clk>;
> +        interrupts = <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>;
>      };
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
