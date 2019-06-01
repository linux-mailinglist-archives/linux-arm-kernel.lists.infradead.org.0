Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 993A1320CE
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Jun 2019 23:42:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5RLZfGtqhhvLEBW7HJnG+IT8rz/J5r7gRGSG5fAZL1Y=; b=ZC+lavTRly26PG
	w0yQ0s3Wp9dhH4SbTwfl7Q/FZfeqkI77W1QZqoSvNXWN2mTaonorJfFSHj/RT0EYEkbP99UKyCtRs
	hzKsxZzxsQ03gx1AmrBwRv5yz7mpuVs4wUyPQYLp38dgkapjoOAE2iKHkRDD1DW8Alb8GuzgWmTln
	hH+830/NWceJtGl9GohPOQafcpxwnTClHJxPYCAe6zhZVdiSJ3iIlgvxtaUjtdTkeB34tAVKPm85T
	mG0mtftPdY+JMMhxDGkQ8Va02hg4E0oOEMQVNRYszcBfrN2NJmVkP0/a+SbUSQusbzSKarOZXevl3
	xGoS9IdLjk7s75d07Xmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXBlA-0003mF-DG; Sat, 01 Jun 2019 21:41:52 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXBl5-0003m6-Dj
 for linux-arm-kernel@bombadil.infradead.org; Sat, 01 Jun 2019 21:41:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YhpQALD+W9dMIpvDQaP9A/y7eWFHRHyVevd207mG7hg=; b=vTfMw7c+hCWkL+mGf4UeAqk2l
 Pi4lG8DIsHaL2gna/iqP1nJIM+rTQ8uxj481ocm4rzFkVjizwQ0lmevGjH+UUaV5WaqFkuvzy6LRq
 p4/O0InzISveLAPX+bF3RO/pWDICQsgifz4Sej3IbgfkDXdGfUsmrQJoWFcb87lEYPHR4yqVapJjY
 cpd+TG7Bwtp0Xr9Zq975Np8XPN6bsL/ZBty6tBSibISOP/DuqKfYK4yr7wHJ2Pg3EGodCc2jCPQEG
 XselJsXwz/LaSIYNg//WBzW3scsvXC2CvTQ3Iu4ooZcuhe0O/ZhljLHxiKt9Sbd0heGNQYoj8LyuC
 2OWTzoPQA==;
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXBl0-00081t-RQ
 for linux-arm-kernel@lists.infradead.org; Sat, 01 Jun 2019 21:41:44 +0000
X-Originating-IP: 82.246.155.60
Received: from localhost (hy283-1-82-246-155-60.fbx.proxad.net [82.246.155.60])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 23A16C0004;
 Sat,  1 Jun 2019 21:40:51 +0000 (UTC)
Date: Sat, 1 Jun 2019 23:40:50 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3] dt-bindings: arm: Convert Atmel board/soc bindings to
 json-schema
Message-ID: <20190601214050.GG3558@piout.net>
References: <20190517153911.19545-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190517153911.19545-1-robh@kernel.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_174143_185818_683B912E 
X-CRM114-Status: GOOD (  16.13  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17/05/2019 10:39:11-0500, Rob Herring wrote:
> Convert Atmel SoC bindings to DT schema format using json-schema.
> 
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
> Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Cc: devicetree@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Signed-off-by: Rob Herring <robh@kernel.org>
Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

> ---
> v3:
> - correct maintainers
> 
>  .../devicetree/bindings/arm/atmel-at91.txt    |  72 ----------
>  .../devicetree/bindings/arm/atmel-at91.yaml   | 133 ++++++++++++++++++
>  2 files changed, 133 insertions(+), 72 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/atmel-at91.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/atmel-at91.yaml
> 
> diff --git a/Documentation/devicetree/bindings/arm/atmel-at91.txt b/Documentation/devicetree/bindings/arm/atmel-at91.txt
> deleted file mode 100644
> index 4bf1b4da7659..000000000000
> --- a/Documentation/devicetree/bindings/arm/atmel-at91.txt
> +++ /dev/null
> @@ -1,72 +0,0 @@
> -Atmel AT91 device tree bindings.
> -================================
> -
> -Boards with a SoC of the Atmel AT91 or SMART family shall have the following
> -properties:
> -
> -Required root node properties:
> -compatible: must be one of:
> - * "atmel,at91rm9200"
> -
> - * "atmel,at91sam9" for SoCs using an ARM926EJ-S core, shall be extended with
> -   the specific SoC family or compatible:
> -    o "atmel,at91sam9260"
> -    o "atmel,at91sam9261"
> -    o "atmel,at91sam9263"
> -    o "atmel,at91sam9x5" for the 5 series, shall be extended with the specific
> -      SoC compatible:
> -       - "atmel,at91sam9g15"
> -       - "atmel,at91sam9g25"
> -       - "atmel,at91sam9g35"
> -       - "atmel,at91sam9x25"
> -       - "atmel,at91sam9x35"
> -    o "atmel,at91sam9g20"
> -    o "atmel,at91sam9g45"
> -    o "atmel,at91sam9n12"
> -    o "atmel,at91sam9rl"
> -    o "atmel,at91sam9xe"
> - * "atmel,sama5" for SoCs using a Cortex-A5, shall be extended with the specific
> -   SoC family:
> -    o "atmel,sama5d2" shall be extended with the specific SoC compatible:
> -       - "atmel,sama5d27"
> -    o "atmel,sama5d3" shall be extended with the specific SoC compatible:
> -       - "atmel,sama5d31"
> -       - "atmel,sama5d33"
> -       - "atmel,sama5d34"
> -       - "atmel,sama5d35"
> -       - "atmel,sama5d36"
> -    o "atmel,sama5d4" shall be extended with the specific SoC compatible:
> -       - "atmel,sama5d41"
> -       - "atmel,sama5d42"
> -       - "atmel,sama5d43"
> -       - "atmel,sama5d44"
> -
> - * "atmel,samv7" for MCUs using a Cortex-M7, shall be extended with the specific
> -   SoC family:
> -    o "atmel,sams70" shall be extended with the specific MCU compatible:
> -       - "atmel,sams70j19"
> -       - "atmel,sams70j20"
> -       - "atmel,sams70j21"
> -       - "atmel,sams70n19"
> -       - "atmel,sams70n20"
> -       - "atmel,sams70n21"
> -       - "atmel,sams70q19"
> -       - "atmel,sams70q20"
> -       - "atmel,sams70q21"
> -    o "atmel,samv70" shall be extended with the specific MCU compatible:
> -       - "atmel,samv70j19"
> -       - "atmel,samv70j20"
> -       - "atmel,samv70n19"
> -       - "atmel,samv70n20"
> -       - "atmel,samv70q19"
> -       - "atmel,samv70q20"
> -    o "atmel,samv71" shall be extended with the specific MCU compatible:
> -       - "atmel,samv71j19"
> -       - "atmel,samv71j20"
> -       - "atmel,samv71j21"
> -       - "atmel,samv71n19"
> -       - "atmel,samv71n20"
> -       - "atmel,samv71n21"
> -       - "atmel,samv71q19"
> -       - "atmel,samv71q20"
> -       - "atmel,samv71q21"
> diff --git a/Documentation/devicetree/bindings/arm/atmel-at91.yaml b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
> new file mode 100644
> index 000000000000..7cc1d6c7af55
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
> @@ -0,0 +1,133 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/atmel-at91.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Atmel AT91 device tree bindings.
> +
> +maintainers:
> +  - Alexandre Belloni <alexandre.belloni@bootlin.com>
> +  - Ludovic Desroches <ludovic.desroches@microchip.com>
> +
> +description: |
> +  Boards with a SoC of the Atmel AT91 or SMART family shall have the following
> +
> +properties:
> +  $nodename:
> +    const: '/'
> +  compatible:
> +    oneOf:
> +      - items:
> +          - const: atmel,at91rm9200
> +      - items:
> +          - enum:
> +              - olimex,sam9-l9260
> +          - enum:
> +              - atmel,at91sam9260
> +              - atmel,at91sam9261
> +              - atmel,at91sam9263
> +              - atmel,at91sam9g20
> +              - atmel,at91sam9g45
> +              - atmel,at91sam9n12
> +              - atmel,at91sam9rl
> +              - atmel,at91sam9xe
> +          - const: atmel,at91sam9
> +
> +      - items:
> +          - enum:
> +              - atmel,at91sam9g15
> +              - atmel,at91sam9g25
> +              - atmel,at91sam9g35
> +              - atmel,at91sam9x25
> +              - atmel,at91sam9x35
> +          - const: atmel,at91sam9x5
> +          - const: atmel,at91sam9
> +
> +      - items:
> +          - const: atmel,sama5d27
> +          - const: atmel,sama5d2
> +          - const: atmel,sama5
> +
> +      - description: Nattis v2 board with Natte v2 power board
> +        items:
> +          - const: axentia,nattis-2
> +          - const: axentia,natte-2
> +          - const: axentia,linea
> +          - const: atmel,sama5d31
> +          - const: atmel,sama5d3
> +          - const: atmel,sama5
> +
> +      - description: TSE-850 v3 board
> +        items:
> +          - const: axentia,tse850v3
> +          - const: axentia,linea
> +          - const: atmel,sama5d31
> +          - const: atmel,sama5d3
> +          - const: atmel,sama5
> +
> +      - items:
> +          - const: axentia,linea
> +          - const: atmel,sama5d31
> +          - const: atmel,sama5d3
> +          - const: atmel,sama5
> +
> +      - items:
> +          - enum:
> +              - atmel,sama5d31
> +              - atmel,sama5d33
> +              - atmel,sama5d34
> +              - atmel,sama5d35
> +              - atmel,sama5d36
> +          - const: atmel,sama5d3
> +          - const: atmel,sama5
> +
> +      - items:
> +          - enum:
> +              - atmel,sama5d41
> +              - atmel,sama5d42
> +              - atmel,sama5d43
> +              - atmel,sama5d44
> +          - const: atmel,sama5d4
> +          - const: atmel,sama5
> +
> +      - items:
> +          - enum:
> +              - atmel,sams70j19
> +              - atmel,sams70j20
> +              - atmel,sams70j21
> +              - atmel,sams70n19
> +              - atmel,sams70n20
> +              - atmel,sams70n21
> +              - atmel,sams70q19
> +              - atmel,sams70q20
> +              - atmel,sams70q21
> +          - const: atmel,sams70
> +          - const: atmel,samv7
> +
> +      - items:
> +          - enum:
> +              - atmel,samv70j19
> +              - atmel,samv70j20
> +              - atmel,samv70n19
> +              - atmel,samv70n20
> +              - atmel,samv70q19
> +              - atmel,samv70q20
> +          - const: atmel,samv70
> +          - const: atmel,samv7
> +
> +      - items:
> +          - enum:
> +              - atmel,samv71j19
> +              - atmel,samv71j20
> +              - atmel,samv71j21
> +              - atmel,samv71n19
> +              - atmel,samv71n20
> +              - atmel,samv71n21
> +              - atmel,samv71q19
> +              - atmel,samv71q20
> +              - atmel,samv71q21
> +          - const: atmel,samv71
> +          - const: atmel,samv7
> +
> +...
> -- 
> 2.20.1
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
