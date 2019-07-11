Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4830660C5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 22:41:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KLL6gl3bkKU4apPUfnWVqKrN7D1IG4MscJ0IZCMTRVM=; b=AKBKh8K/ussfB6gR/SFGA6caf
	9DJC0q4lo1oM9vzUvsGKGYea7B8q/++dSUTCbBDS2a4OoeqvBJtF/UYNlny70lrRP44wmazOqy21G
	V5aC30Gi2lCpHC3ad8Qlb3I2Wqz7zVo70e5tZaswOO9dyu11fsEiD+DdJNo+M/TojvSMTKt6hy0p8
	3GOUUzgL/rTxwzYNSB4oMiOtzqlqufWoppZHSvFu3Ri1/wgaR+pjjafpzM+CjBV2PqKLW51yAXivP
	Nq0v6buGdGq6q58yMGrJPOIXjNbZQM+P99nJytaNWGR0T392tTOUnXO/hDyyI/ATjCmTYo4Lh144f
	BWV2q8vRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlfsY-0006DY-QI; Thu, 11 Jul 2019 20:41:22 +0000
Received: from vern.gendns.com ([98.142.107.122])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlfsL-0006Ag-Dy
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 20:41:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lechnology.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xvThRjH3X1TUzxAtTyWv1hFEkruW/blvpY6bT/bSK9Q=; b=ooWeI1qO4BAdXV3DI7FZd6Y60X
 5OT2yCa5stfUIYc8lfWRFqw3RbGl+nu/96D7q2kOUKvVTE3jtQzohMVzSYrbU1uOmuctOCiquEJym
 hvStBGW/uQBo3oCYoXA87WVp3mnU5ROITWqGMhnZxBLa3aI0tgfoKbIuncs+hZ8UhIfVVQPU9FKmb
 ZnRXszBoAwOsxS+d1BioxjB1/IdGczkE20RRxtpZ6zaH3gqeiG3VzuPpUlEX/6QTshmyncOlshWKq
 7HcxlXZBwlngRvM7lpqJQFqyW4AIUEpFfUayjmKzjY8VI/GXIxB1njiwKs6C5Y3iN7IX9PEz1wa+m
 LMVboQNA==;
Received: from 108-198-5-147.lightspeed.okcbok.sbcglobal.net
 ([108.198.5.147]:60730 helo=[192.168.0.134])
 by vern.gendns.com with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <david@lechnology.com>)
 id 1hlfra-004iz1-AV; Thu, 11 Jul 2019 16:40:22 -0400
Subject: Re: [PATCH 5/6] irqchip/irq-pruss-intc: Add API to trigger a PRU
 sysevent
To: Suman Anna <s-anna@ti.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Jason Cooper <jason@lakedaemon.net>
References: <20190708035243.12170-1-s-anna@ti.com>
 <20190708035243.12170-6-s-anna@ti.com>
From: David Lechner <david@lechnology.com>
Message-ID: <49628f74-1081-894a-14a2-adc58b2051e8@lechnology.com>
Date: Thu, 11 Jul 2019 15:40:20 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190708035243.12170-6-s-anna@ti.com>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - vern.gendns.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lechnology.com
X-Get-Message-Sender-Via: vern.gendns.com: authenticated_id:
 davidmain+lechnology.com/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: vern.gendns.com: davidmain@lechnology.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_134109_555988_2ADEA3D7 
X-CRM114-Status: GOOD (  26.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Grygorii Strashko <grygorii.strashko@ti.com>,
 Tony Lindgren <tony@atomide.com>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, "Andrew F. Davis" <afd@ti.com>,
 Lokesh Vutla <lokeshvutla@ti.com>, Murali Karicheri <m-karicheri2@ti.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/7/19 10:52 PM, Suman Anna wrote:
> From: "Andrew F. Davis" <afd@ti.com>
> 
> The PRUSS INTC can generate an interrupt to various processor
> subsystems on the SoC through a set of 64 possible PRU system
> events. These system events can be used by PRU client drivers
> or applications for event notifications/signalling between PRUs
> and MPU or other processors. A new API, pruss_intc_trigger() is
> provided to MPU-side PRU client drivers/applications to be able
> to trigger an event/interrupt using IRQ numbers provided by the
> PRUSS-INTC irqdomain chip.
> 
> Signed-off-by: Andrew F. Davis <afd@ti.com>
> Signed-off-by: Suman Anna <s-anna@ti.com>
> Signed-off-by: Roger Quadros <rogerq@ti.com>
> ---
>   drivers/irqchip/irq-pruss-intc.c | 31 +++++++++++++++++++++++++++++++
>   include/linux/pruss_intc.h       | 26 ++++++++++++++++++++++++++
>   2 files changed, 57 insertions(+)
>   create mode 100644 include/linux/pruss_intc.h
> 
> diff --git a/drivers/irqchip/irq-pruss-intc.c b/drivers/irqchip/irq-pruss-intc.c
> index 8118c2a2ac43..a0ad50b95cd5 100644
> --- a/drivers/irqchip/irq-pruss-intc.c
> +++ b/drivers/irqchip/irq-pruss-intc.c
> @@ -421,6 +421,37 @@ static void pruss_intc_irq_relres(struct irq_data *data)
>   	module_put(THIS_MODULE);
>   }
>   
> +/**
> + * pruss_intc_trigger() - trigger a PRU system event
> + * @irq: linux IRQ number associated with a PRU system event
> + *
> + * Trigger an interrupt by signaling a specific PRU system event.
> + * This can be used by PRUSS client users to raise/send an event to
> + * a PRU or any other core that is listening on the host interrupt
> + * mapped to that specific PRU system event. The @irq variable is the
> + * Linux IRQ number associated with a specific PRU system event that
> + * a client user/application uses. The interrupt mappings for this is
> + * provided by the PRUSS INTC irqchip instance.
> + *
> + * Returns 0 on success, or an error value upon failure.
> + */
> +int pruss_intc_trigger(unsigned int irq)
> +{
> +	struct irq_desc *desc;
> +
> +	if (irq <= 0)
> +		return -EINVAL;
> +
> +	desc = irq_to_desc(irq);
> +	if (!desc)
> +		return -EINVAL;
> +
> +	pruss_intc_irq_retrigger(&desc->irq_data);
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(pruss_intc_trigger);

Although it is not quite as obvious, we can do the same thing with:

irq_set_irqchip_state(irq, IRQCHIP_STATE_PENDING, true);

So I don't think a new API is needed. We just need to implement the
irq_set_irqchip_state callback as in the following patch.

---
 From c5991a11a19858d74e2a184b76c3ef5823f09ef6 Mon Sep 17 00:00:00 2001
From: David Lechner <david@lechnology.com>
Date: Thu, 11 Jul 2019 15:33:29 -0500
Subject: [PATCH] irqchip/irq-pruss-intc: implement irq_{get,set}_irqchip_state

This implements the irq_get_irqchip_state and irq_set_irqchip_state
callbacks for the TI PRUSS INTC driver. The set callback can be used
by drivers to "kick" a PRU by enabling a PRU system event.

Example:

     irq_set_irqchip_state(irq, IRQCHIP_STATE_PENDING, true);

Signed-off-by: David Lechner <david@lechnology.com>
---
  drivers/irqchip/irq-pruss-intc.c | 41 ++++++++++++++++++++++++++++++--
  1 file changed, 39 insertions(+), 2 deletions(-)

diff --git a/drivers/irqchip/irq-pruss-intc.c b/drivers/irqchip/irq-pruss-intc.c
index dd14addfd0b4..129dfd52248b 100644
--- a/drivers/irqchip/irq-pruss-intc.c
+++ b/drivers/irqchip/irq-pruss-intc.c
@@ -7,6 +7,7 @@
   *	Suman Anna <s-anna@ti.com>
   */
  
+#include <linux/interrupt.h>
  #include <linux/irq.h>
  #include <linux/irqchip/chained_irq.h>
  #include <linux/irqdomain.h>
@@ -46,8 +47,7 @@
  #define PRU_INTC_HIEISR		0x0034
  #define PRU_INTC_HIDISR		0x0038
  #define PRU_INTC_GPIR		0x0080
-#define PRU_INTC_SRSR0		0x0200
-#define PRU_INTC_SRSR1		0x0204
+#define PRU_INTC_SRSR(x)	(0x0200 + (x) * 4)
  #define PRU_INTC_SECR0		0x0280
  #define PRU_INTC_SECR1		0x0284
  #define PRU_INTC_ESR0		0x0300
@@ -386,6 +386,41 @@ static void pruss_intc_irq_relres(struct irq_data *data)
  	module_put(THIS_MODULE);
  }
  
+static int pruss_intc_irq_get_irqchip_state(struct irq_data *data,
+					    enum irqchip_irq_state which,
+					    bool *state)
+{
+	struct pruss_intc *intc = irq_data_get_irq_chip_data(data);
+	u32 reg, mask, srsr;
+
+	if (which != IRQCHIP_STATE_PENDING)
+		return -EINVAL;
+
+	reg = PRU_INTC_SRSR(data->hwirq / 32);
+	mask = BIT(data->hwirq % 32);
+
+	srsr = pruss_intc_read_reg(intc, reg);
+
+	*state = !!(srsr & mask);
+
+	return 0;
+}
+
+static int pruss_intc_irq_set_irqchip_state(struct irq_data *data,
+					    enum irqchip_irq_state which,
+					    bool state)
+{
+	struct pruss_intc *intc = irq_data_get_irq_chip_data(data);
+
+	if (which != IRQCHIP_STATE_PENDING)
+		return -EINVAL;
+	
+	if (state)
+		return pruss_intc_check_write(intc, PRU_INTC_SISR, data->hwirq);
+
+	return pruss_intc_check_write(intc, PRU_INTC_SICR, data->hwirq);
+}
+
  static int
  pruss_intc_irq_domain_xlate(struct irq_domain *d, struct device_node *node,
  			    const u32 *intspec, unsigned int intsize,
@@ -583,6 +618,8 @@ static int pruss_intc_probe(struct platform_device *pdev)
  	irqchip->irq_retrigger = pruss_intc_irq_retrigger;
  	irqchip->irq_request_resources = pruss_intc_irq_reqres;
  	irqchip->irq_release_resources = pruss_intc_irq_relres;
+	irqchip->irq_get_irqchip_state = pruss_intc_irq_get_irqchip_state;
+	irqchip->irq_set_irqchip_state = pruss_intc_irq_set_irqchip_state;
  	irqchip->parent_device = dev;
  	irqchip->name = dev_name(dev);
  	intc->irqchip = irqchip;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
