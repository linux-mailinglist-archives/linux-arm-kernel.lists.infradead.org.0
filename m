Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46BDC65070
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 05:10:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EoHRLND3pz48/+blsf2jEOsdrRUsh4aV3S/kGEKy2j4=; b=NimN6W8DXirwYjc0XFbG93Gh9
	WJMfc7lC0Fbj7l4Tiawk4qDLgLCfgVvZhN9h+XgDOK/KdRBsAHvibqjQxBZIGZWusk3H9tPVdu97a
	fxKrLPblcmYW7p5hSXnqzzjutJu8QesqlS0eWzFZ4PiR6op+3rlSiGEhzmoaMLhKvvmknwpTOF16Z
	G12A+Lts/iiNnDLKF0UaiYHzx8Sq5Pyv4T+KLIdIjnu+6RbmAWleuj/GxyuALoJUSwm6SwJM6O/Df
	VAX2xgmcQb8DtuDVnDMzfOMJdvh7NYtyzXEuvdk/kmhsGTjN7alHfOP0hBnm/xNgdIe0wK7ybSLG6
	TGSsfa92A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlPTx-0001VZ-La; Thu, 11 Jul 2019 03:10:53 +0000
Received: from vern.gendns.com ([98.142.107.122])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlPTj-0001Uk-3S
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 03:10:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lechnology.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Gb2Gjm7IVyvj8gswyKlmlRFz4xnZnHckCQx6Q5GZVBs=; b=JPryZWYSH66UQ6Ttfk6zAmZ1rN
 0hYa/vX7vmpZpj5xFZbwPBoRO7ivPU6itWQ6o5HwMQDZeMaXNmxwfpGkEfFJCroiEpQX6KPeEkfpO
 azSpzsC5/a19PplBv8At0ghQ/PbcuJw0lE5Fyx3cETQeiAVoqfF4NUPbb4N3FH4cENNF9B1IzBoiV
 edzAO34s7D5a0QqE9RJxjzT6q5u3MAqX6Zey0iJr6JPowr7Kxu0JubzZfOwmxrh6rXZH84fRWJPxB
 S1QTyy6+Sp57br1O1w5lmOqEraK741PZKBJbmX/J3YHdKGNSzUDAoYr/UULXCz/JAtm94pk0yR72s
 rhZElLFw==;
Received: from 108-198-5-147.lightspeed.okcbok.sbcglobal.net
 ([108.198.5.147]:35218 helo=[192.168.0.134])
 by vern.gendns.com with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <david@lechnology.com>)
 id 1hlPTe-002REK-1f; Wed, 10 Jul 2019 23:10:34 -0400
Subject: Re: [PATCH 4/6] irqchip/irq-pruss-intc: Add helper functions to
 configure internal mapping
To: Suman Anna <s-anna@ti.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Jason Cooper <jason@lakedaemon.net>
References: <20190708035243.12170-1-s-anna@ti.com>
 <20190708035243.12170-5-s-anna@ti.com>
From: David Lechner <david@lechnology.com>
Message-ID: <9aa5acd8-81bf-10dc-5a86-cea2acd1132b@lechnology.com>
Date: Wed, 10 Jul 2019 22:10:32 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190708035243.12170-5-s-anna@ti.com>
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
X-CRM114-CacheID: sfid-20190710_201039_311693_01644559 
X-CRM114-Status: GOOD (  33.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
> The PRUSS INTC receives a number of system input interrupt source events
> and supports individual control configuration and hardware prioritization.
> These input events can be mapped to some output host interrupts through 2
> levels of many-to-one mapping i.e. events to channel mapping and channels
> to host interrupts.
> 
> This mapping information is provided through the PRU firmware that is
> loaded onto a PRU core/s or through the device tree node of the PRU

What will the device tree bindings for this look like?

Looking back at Rob's comment on the initial series [1], I still think
that increasing the #interrupt-cells sounds like a reasonable solution.

[1]: https://patchwork.kernel.org/patch/10697705/#22375155



> application. The mapping is configured by the PRU remoteproc driver, and
> is setup before the PRU core is started and cleaned up after the PRU core
> is stopped. This event mapping configuration logic is optimized to program
> the Channel Map Registers (CMRx) and Host-Interrupt Map Registers (HMRx)
> only when a new program is being loaded/started and simply disables the
> same events and interrupt channels without zeroing out the corresponding
> map registers when stopping a PRU.
> 
> Add two helper functions: pruss_intc_configure() & pruss_intc_unconfigure()
> that the PRU remoteproc driver can use to configure the PRUSS INTC.
> 
> Signed-off-by: Suman Anna <s-anna@ti.com>
> Signed-off-by: Andrew F. Davis <afd@ti.com>
> Signed-off-by: Roger Quadros <rogerq@ti.com>
> ---
>   drivers/irqchip/irq-pruss-intc.c       | 258 ++++++++++++++++++++++++-
>   include/linux/irqchip/irq-pruss-intc.h |  33 ++++
>   2 files changed, 289 insertions(+), 2 deletions(-)
>   create mode 100644 include/linux/irqchip/irq-pruss-intc.h
> 
> diff --git a/drivers/irqchip/irq-pruss-intc.c b/drivers/irqchip/irq-pruss-intc.c
> index 142d01b434e0..8118c2a2ac43 100644
> --- a/drivers/irqchip/irq-pruss-intc.c
> +++ b/drivers/irqchip/irq-pruss-intc.c
> @@ -9,6 +9,7 @@
>   
>   #include <linux/irq.h>
>   #include <linux/irqchip/chained_irq.h>
> +#include <linux/irqchip/irq-pruss-intc.h>
>   #include <linux/irqdomain.h>
>   #include <linux/module.h>
>   #include <linux/of_device.h>
> @@ -24,8 +25,8 @@
>   /* minimum starting host interrupt number for MPU */
>   #define MIN_PRU_HOST_INT	2
>   
> -/* maximum number of system events */
> -#define MAX_PRU_SYS_EVENTS	64
> +/* maximum number of host interrupts */
> +#define MAX_PRU_HOST_INT	10
>   
>   /* PRU_ICSS_INTC registers */
>   #define PRU_INTC_REVID		0x0000
> @@ -57,15 +58,29 @@
>   #define PRU_INTC_HINLR(x)	(0x1100 + (x) * 4)
>   #define PRU_INTC_HIER		0x1500
>   
> +/* CMR register bit-field macros */
> +#define CMR_EVT_MAP_MASK	0xf
> +#define CMR_EVT_MAP_BITS	8
> +#define CMR_EVT_PER_REG		4
> +
> +/* HMR register bit-field macros */
> +#define HMR_CH_MAP_MASK		0xf
> +#define HMR_CH_MAP_BITS		8
> +#define HMR_CH_PER_REG		4
> +
>   /* HIPIR register bit-fields */
>   #define INTC_HIPIR_NONE_HINT	0x80000000
>   
> +/* use -1 to mark unassigned events and channels */
> +#define FREE			-1

It could be helpful to have this macro in the public header.

> +
>   /**
>    * struct pruss_intc - PRUSS interrupt controller structure
>    * @irqs: kernel irq numbers corresponding to PRUSS host interrupts
>    * @base: base virtual address of INTC register space
>    * @irqchip: irq chip for this interrupt controller
>    * @domain: irq domain for this interrupt controller
> + * @config_map: stored INTC configuration mapping data
>    * @lock: mutex to serialize access to INTC
>    * @host_mask: indicate which HOST IRQs are enabled
>    * @shared_intr: bit-map denoting if the MPU host interrupt is shared
> @@ -76,6 +91,7 @@ struct pruss_intc {
>   	void __iomem *base;
>   	struct irq_chip *irqchip;
>   	struct irq_domain *domain;
> +	struct pruss_intc_config config_map;
>   	struct mutex lock; /* PRUSS INTC lock */
>   	u32 host_mask;
>   	u16 shared_intr;
> @@ -107,6 +123,238 @@ static int pruss_intc_check_write(struct pruss_intc *intc, unsigned int reg,
>   	return 0;
>   }
>   
> +static struct pruss_intc *to_pruss_intc(struct device *pru_dev)
> +{
> +	struct device_node *np;
> +	struct platform_device *pdev;
> +	struct device *pruss_dev = pru_dev->parent;
> +	struct pruss_intc *intc = ERR_PTR(-ENODEV);
> +
> +	np = of_get_child_by_name(pruss_dev->of_node, "interrupt-controller");
> +	if (!np) {
> +		dev_err(pruss_dev, "pruss does not have an interrupt-controller node\n");
> +		return intc;
> +	}
> +
> +	pdev = of_find_device_by_node(np);
> +	if (!pdev) {
> +		dev_err(pruss_dev, "no associated platform device\n");
> +		goto out;
> +	}
> +
> +	intc = platform_get_drvdata(pdev);
> +	if (!intc) {
> +		dev_err(pruss_dev, "pruss intc device probe failed?\n");
> +		intc = ERR_PTR(-EINVAL);
> +	}
> +
> +out:
> +	of_node_put(np);
> +	return intc;
> +}
> +
> +/**
> + * pruss_intc_configure() - configure the PRUSS INTC
> + * @dev: pru device pointer
> + * @intc_config: PRU core-specific INTC configuration
> + *
> + * Configures the PRUSS INTC with the provided configuration from
> + * a PRU core. Any existing event to channel mappings or channel to
> + * host interrupt mappings are checked to make sure there are no
> + * conflicting configuration between both the PRU cores. The function
> + * is intended to be used only by the PRU remoteproc driver.
> + *
> + * Returns 0 on success, or a suitable error code otherwise
> + */
> +int pruss_intc_configure(struct device *dev,

It seems like this would be easier to use if it took an IRQ number
or struct irq_data * as a parameter instead of struct device *. My
line of thinking is that callers of this function will already be
calling some variant of request_irq() so they will already have
this info. It would cut out the pointer acrobatics in to_pruss_intc.


> +			 struct pruss_intc_config *intc_config)
> +{
> +	struct pruss_intc *intc;
> +	int i, idx, ret;
> +	s8 ch, host;
> +	u64 sysevt_mask = 0;
> +	u32 ch_mask = 0;
> +	u32 host_mask = 0;
> +	u32 val;
> +
> +	intc = to_pruss_intc(dev);
> +	if (IS_ERR(intc))
> +		return PTR_ERR(intc);
> +
> +	mutex_lock(&intc->lock);
> +
> +	/*
> +	 * configure channel map registers - each register holds map info
> +	 * for 4 events, with each event occupying the lower nibble in
> +	 * a register byte address in little-endian fashion
> +	 */
> +	for (i = 0; i < ARRAY_SIZE(intc_config->sysev_to_ch); i++) {
> +		ch = intc_config->sysev_to_ch[i];
> +		if (ch < 0)
> +			continue;
> +
> +		/* check if sysevent already assigned */
> +		if (intc->config_map.sysev_to_ch[i] != FREE) {
> +			dev_err(dev, "event %d (req. channel %d) already assigned to channel %d\n",
> +				i, ch, intc->config_map.sysev_to_ch[i]);
> +			ret = -EEXIST;
> +			goto unlock;

If we fail here, shouldn't we unwind any previous mappings made?
Otherwise, if we try to map the same event again, it will show as
in use, even though it is not in use.

> +		}
> +
> +		intc->config_map.sysev_to_ch[i] = ch;
> +
> +		idx = i / CMR_EVT_PER_REG;
> +		val = pruss_intc_read_reg(intc, PRU_INTC_CMR(idx));
> +		val &= ~(CMR_EVT_MAP_MASK <<
> +			 ((i % CMR_EVT_PER_REG) * CMR_EVT_MAP_BITS));
> +		val |= ch << ((i % CMR_EVT_PER_REG) * CMR_EVT_MAP_BITS);
> +		pruss_intc_write_reg(intc, PRU_INTC_CMR(idx), val);
> +		sysevt_mask |= BIT_ULL(i);
> +		ch_mask |= BIT(ch);
> +
> +		dev_dbg(dev, "SYSEV%d -> CH%d (CMR%d 0x%08x)\n", i, ch, idx,
> +			pruss_intc_read_reg(intc, PRU_INTC_CMR(idx)));
> +	}
> +
> +	/*
> +	 * set host map registers - each register holds map info for
> +	 * 4 channels, with each channel occupying the lower nibble in
> +	 * a register byte address in little-endian fashion
> +	 */
> +	for (i = 0; i < ARRAY_SIZE(intc_config->ch_to_host); i++) {
> +		host = intc_config->ch_to_host[i];
> +		if (host < 0)
> +			continue;
> +
> +		/* check if channel already assigned */
> +		if (intc->config_map.ch_to_host[i] != FREE) {
> +			dev_err(dev, "channel %d (req. intr_no %d) already assigned to intr_no %d\n",
> +				i, host, intc->config_map.ch_to_host[i]);
> +			ret = -EEXIST;
> +			goto unlock;

Same comment about unwinding here and below.

> +		}
> +
> +		/* check if host intr is already in use by other PRU */

It seems like there would be use cases where someone might want to map
multiple PRU system events, and therefore multiple channels, to a single
host interrupt.

> +		if (intc->host_mask & (1U << host)) {
> +			dev_err(dev, "%s: host intr %d already in use\n",
> +				__func__, host);
> +			ret = -EEXIST;
> +			goto unlock;
> +		}
> +

--snip--

> diff --git a/include/linux/irqchip/irq-pruss-intc.h b/include/linux/irqchip/irq-pruss-intc.h
> new file mode 100644
> index 000000000000..f1f1bb150100
> --- /dev/null
> +++ b/include/linux/irqchip/irq-pruss-intc.h
> @@ -0,0 +1,33 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * PRU-ICSS sub-system private interfaces
> + *
> + * Copyright (C) 2019 Texas Instruments Incorporated - http://www.ti.com/
> + *	Suman Anna <s-anna@ti.com>
> + */
> +
> +#ifndef __LINUX_IRQ_PRUSS_INTC_H
> +#define __LINUX_IRQ_PRUSS_INTC_H
> +
> +/* maximum number of system events */
> +#define MAX_PRU_SYS_EVENTS	64
> +
> +/* maximum number of interrupt channels */
> +#define MAX_PRU_CHANNELS	10
> +
> +/**
> + * struct pruss_intc_config - INTC configuration info
> + * @sysev_to_ch: system events to channel mapping information
> + * @ch_to_host: interrupt channel to host interrupt information
> + */
> +struct pruss_intc_config {
> +	s8 sysev_to_ch[MAX_PRU_SYS_EVENTS];
> +	s8 ch_to_host[MAX_PRU_CHANNELS];
> +};
> +
> +int pruss_intc_configure(struct device *dev,
> +			 struct pruss_intc_config *intc_config);
> +int pruss_intc_unconfigure(struct device *dev,
> +			   struct pruss_intc_config *intc_config);
> +
> +#endif	/* __LINUX_IRQ_PRUSS_INTC_H */
> 

FYI, on AM18xx, events 0 to 31 can be muxed via CFGCHIP3[3].PRUSSEVTSEL
so an additional bit of information will be needed in this struct for
the mux selection. I don't see a probably with adding that later though.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
