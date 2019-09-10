Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A8DAEE4F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 17:15:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=98zf1NSQbiwwUpWCyUgX0U2yjtSOYvB8qeyrv6cQJTQ=; b=GAIsMuEemMmuCY
	TACq8ShFl/Y7X55SL/LN1hWFAqtMEXjS8DPca99WCAThGEIRIOzbi88bFEhQ5xNLFqglzpT1FaYQ6
	VeAk0lYTP2W/oPQJ62oLvByKUVsXVVfFjyTRqkzuGL4l2sfhc+zFaOUB5+UgLj7GEziYTJXJ7+yOl
	dm3m8MJA4Ilwlh1km4gZoA/Ae4DwpCF98PF3Q/45ZeU0OAVH7wF+0enRvf/WiB1gMCutGhmD+LfDZ
	EINTX6j6ThD25Di8trAAYP15g2SQIghSV11Dcc1T8Wlq5ciHKuo0tuP4P6LTf6Uj+h7Ei2hwyxdCx
	BEUxJCS8KqDj+13oO0jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7hrd-0001jm-GI; Tue, 10 Sep 2019 15:15:29 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7hrT-0001is-2Q
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 15:15:21 +0000
Received: from localhost (unknown [148.69.85.38])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id DDB17240006;
 Tue, 10 Sep 2019 15:15:15 +0000 (UTC)
Date: Tue, 10 Sep 2019 17:15:13 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH] irqchip/atmel-aic5: add support for sam9x60 irqchip
Message-ID: <20190910151513.GY21254@piout.net>
References: <1568026835-6646-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1568026835-6646-1-git-send-email-claudiu.beznea@microchip.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_081519_414403_95A51758 
X-CRM114-Status: GOOD (  17.91  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, jason@lakedaemon.net,
 maz@kernel.org,
 Sandeep Sheriker Mallikarjun <sandeepsheriker.mallikarjun@microchip.com>,
 linux-kernel@vger.kernel.org, ludovic.desroches@microchip.com,
 robh+dt@kernel.org, tglx@linutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/09/2019 14:00:35+0300, Claudiu Beznea wrote:
> From: Sandeep Sheriker Mallikarjun <sandeepsheriker.mallikarjun@microchip.com>
> 
> Add support for SAM9X60 irqchip.
> 
> Signed-off-by: Sandeep Sheriker Mallikarjun <sandeepsheriker.mallikarjun@microchip.com>
> [claudiu.beznea@microchip.com: update aic5_irq_fixups[], update
>  documentation]
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

> ---
>  .../devicetree/bindings/interrupt-controller/atmel,aic.txt     |  7 +++++--
>  drivers/irqchip/irq-atmel-aic5.c                               | 10 ++++++++++
>  2 files changed, 15 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/atmel,aic.txt b/Documentation/devicetree/bindings/interrupt-controller/atmel,aic.txt
> index f4c5d34c4111..7079d44bf3ba 100644
> --- a/Documentation/devicetree/bindings/interrupt-controller/atmel,aic.txt
> +++ b/Documentation/devicetree/bindings/interrupt-controller/atmel,aic.txt
> @@ -1,8 +1,11 @@
>  * Advanced Interrupt Controller (AIC)
>  
>  Required properties:
> -- compatible: Should be "atmel,<chip>-aic"
> -  <chip> can be "at91rm9200", "sama5d2", "sama5d3" or "sama5d4"
> +- compatible: Should be:
> +    - "atmel,<chip>-aic" where  <chip> can be "at91rm9200", "sama5d2",
> +      "sama5d3" or "sama5d4"
> +    - "microchip,<chip>-aic" where <chip> can be "sam9x60"
> +
>  - interrupt-controller: Identifies the node as an interrupt controller.
>  - #interrupt-cells: The number of cells to define the interrupts. It should be 3.
>    The first cell is the IRQ number (aka "Peripheral IDentifier" on datasheet).
> diff --git a/drivers/irqchip/irq-atmel-aic5.c b/drivers/irqchip/irq-atmel-aic5.c
> index 6acad2ea0fb3..29333497ba10 100644
> --- a/drivers/irqchip/irq-atmel-aic5.c
> +++ b/drivers/irqchip/irq-atmel-aic5.c
> @@ -313,6 +313,7 @@ static void __init sama5d3_aic_irq_fixup(void)
>  static const struct of_device_id aic5_irq_fixups[] __initconst = {
>  	{ .compatible = "atmel,sama5d3", .data = sama5d3_aic_irq_fixup },
>  	{ .compatible = "atmel,sama5d4", .data = sama5d3_aic_irq_fixup },
> +	{ .compatible = "microchip,sam9x60", .data = sama5d3_aic_irq_fixup },
>  	{ /* sentinel */ },
>  };
>  
> @@ -390,3 +391,12 @@ static int __init sama5d4_aic5_of_init(struct device_node *node,
>  	return aic5_of_init(node, parent, NR_SAMA5D4_IRQS);
>  }
>  IRQCHIP_DECLARE(sama5d4_aic5, "atmel,sama5d4-aic", sama5d4_aic5_of_init);
> +
> +#define NR_SAM9X60_IRQS		50
> +
> +static int __init sam9x60_aic5_of_init(struct device_node *node,
> +				       struct device_node *parent)
> +{
> +	return aic5_of_init(node, parent, NR_SAM9X60_IRQS);
> +}
> +IRQCHIP_DECLARE(sam9x60_aic5, "microchip,sam9x60-aic", sam9x60_aic5_of_init);
> -- 
> 2.7.4
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
