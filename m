Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC904E35B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 15:12:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=52FbmW368dPJIHU6GEW/AkdY1TI+e8f+wmB8pz6J+AY=; b=u6XBaojpPYKbOk
	78WOA23oDCSzkWf98pqdkfcLnVNevhIClk/i1KYFFabyOMt/ebQ5Ykz0iWMWbtPmW+0q9+KmmiFd5
	i1z7p9xLKHpIQw4aicszg3MNVyQJBPtpDBve9ucJr+La/Ja6M0nHuEYCp9JCzmsn9xs93UDjJ1sOZ
	tNoj7fg6PnP6HtCrrAEdte47xwgYJPsio09Zmxo/oGfs8KK8gp/CgCbnRLqk//aYtfT8Fde6vOQm7
	3ukvwTIog/rKK7BKSKoS403SnJK0hvP06Ssca5186WWhl+4dsDJerSQXCzpLyd8sOJkZUH6OqGBfm
	Y8ojZ3ZFEewqxCaXFM9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL64V-0003lH-Sy; Mon, 29 Apr 2019 13:11:51 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL64O-0003ko-Jb
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 13:11:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D313EA78;
 Mon, 29 Apr 2019 06:11:43 -0700 (PDT)
Received: from [10.1.196.92] (usa-sjc-imap-foss1.foss.arm.com [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 5E1063F71A; Mon, 29 Apr 2019 06:11:41 -0700 (PDT)
Subject: Re: [PATCH v7 11/14] irqchip: ti-sci-inta: Add support for Interrupt
 Aggregator driver
To: Lokesh Vutla <lokeshvutla@ti.com>, Santosh Shilimkar
 <ssantosh@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Nishanth Menon <nm@ti.com>, tglx@linutronix.de, jason@lakedaemon.net
References: <20190420100950.7997-1-lokeshvutla@ti.com>
 <20190420100950.7997-12-lokeshvutla@ti.com>
From: Marc Zyngier <marc.zyngier@arm.com>
Openpgp: preference=signencrypt
Autocrypt: addr=marc.zyngier@arm.com; prefer-encrypt=mutual; keydata=
 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
Organization: ARM Ltd
Message-ID: <36b8bc62-fff2-c015-8140-cda625efdabc@arm.com>
Date: Mon, 29 Apr 2019 14:11:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190420100950.7997-12-lokeshvutla@ti.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_061144_655661_95B65861 
X-CRM114-Status: GOOD (  24.95  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Tony Lindgren <tony@atomide.com>, linus.walleij@linaro.org,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 Tero Kristo <t-kristo@ti.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20/04/2019 11:09, Lokesh Vutla wrote:
> Texas Instruments' K3 generation SoCs has an IP Interrupt Aggregator
> which is an interrupt controller that does the following:
> - Converts events to interrupts that can be understood by
>   an interrupt router.
> - Allows for multiplexing of events to interrupts.
> 
> Configuration of the interrupt aggregator registers can only be done by
> a system co-processor and the driver needs to send a message to this
> co processor over TISCI protocol. This patch adds support for Interrupt
> Aggregator irqdomain.
> 
> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
> ---
> Changes since v6:
> - Updated commit message.
> - Arranged header files in alphabetical order
> - Included vint_bit in struct ti_sci_inta_event_desc
> - With the above change now the chip_data is event_desc instead of vint_desc
> - No loops are used in atomic contexts.
> - Fixed locking issue while freeing parent virq
> - Fixed few other cosmetic changes.
> 
>  MAINTAINERS                       |   1 +
>  drivers/irqchip/Kconfig           |  11 +
>  drivers/irqchip/Makefile          |   1 +
>  drivers/irqchip/irq-ti-sci-inta.c | 589 ++++++++++++++++++++++++++++++
>  4 files changed, 602 insertions(+)
>  create mode 100644 drivers/irqchip/irq-ti-sci-inta.c
> 

[...]

> +/**
> + * ti_sci_inta_alloc_irq() -  Allocate an irq within INTA domain
> + * @domain:	irq_domain pointer corresponding to INTA
> + * @hwirq:	hwirq of the input event
> + *
> + * Note: Allocation happens in the following manner:
> + *	- Find a free bit available in any of the vints available in the list.
> + *	- If not found, allocate a vint from the vint pool
> + *	- Attach the free bit to input hwirq.
> + * Return event_desc if all went ok else appropriate error value.
> + */
> +static struct ti_sci_inta_event_desc *ti_sci_inta_alloc_irq(struct irq_domain *domain,
> +							    u32 hwirq)
> +{
> +	struct ti_sci_inta_irq_domain *inta = domain->host_data;
> +	struct ti_sci_inta_vint_desc *vint_desc = NULL;
> +	u16 free_bit;
> +
> +	mutex_lock(&inta->vint_mutex);
> +	list_for_each_entry(vint_desc, &inta->vint_list, list) {
> +		mutex_lock(&vint_desc->event_mutex);
> +		free_bit = find_first_zero_bit(vint_desc->event_map,
> +					       MAX_EVENTS_PER_VINT);
> +		if (free_bit != MAX_EVENTS_PER_VINT) {
> +			set_bit(free_bit, vint_desc->event_map);
> +			mutex_unlock(&vint_desc->event_mutex);
> +			mutex_unlock(&inta->vint_mutex);
> +			goto alloc_event;
> +		}
> +		mutex_unlock(&vint_desc->event_mutex);
> +	}
> +	mutex_unlock(&inta->vint_mutex);
> +
> +	/* No free bits available. Allocate a new vint */
> +	vint_desc = ti_sci_inta_alloc_parent_irq(domain);
> +	if (IS_ERR(vint_desc))
> +		return ERR_PTR(PTR_ERR(vint_desc));
> +
> +	mutex_lock(&vint_desc->event_mutex);
> +	free_bit = find_first_zero_bit(vint_desc->event_map,
> +				       MAX_EVENTS_PER_VINT);
> +	set_bit(free_bit, vint_desc->event_map);
> +	mutex_unlock(&vint_desc->event_mutex);

This code is still quite racy: you can have two parallel allocations
failing to get a free bit in any of the already allocated vint_desc, and
then both allocating a new vint_desc. If there was only one left, one of
the allocation will fail despite having at least 63 free interrupts.

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
