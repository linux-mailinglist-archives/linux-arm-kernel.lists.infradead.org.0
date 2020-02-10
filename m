Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C7D1582C4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 19:39:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I0Jqncl7ZCxwn1jh/lWa6ooKAOrvNbvZeCvwZnjjq4k=; b=pSqtIc8CezLAOn
	S//+/uWn5Cng/d9hVZfJO3Fc9fT2VRbLVuE1RkCuCmJb3NLqpLt3w7Do2NWEKwgLVw1omZErFVdVp
	/PY/Y35L1WI3QF5yIFsBn/97oLxdmryoxo+uCQ7wflfwhiS639MVzIn2SSmTTXyOxrSSW+jST908z
	U98cLCf8npSQozwCvrBYzprAvZv5WQ6qILl/+zGcq+XToJ2q4u6cw253ovX+GkmltNWuV+S6l3FYw
	Q0VXQlKmF1wEkiy0dWPXAAo2qXiuNt0iKI1v578SSN6eIZE5RACAD7PSUrM9XioW/LsF+e+U2vWqP
	7yLhedxKZdrdIp2sYv1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Dxk-0000QY-S8; Mon, 10 Feb 2020 18:39:16 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Dxd-0000P9-Kr
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 18:39:11 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48GZS912Y8z1rXQ7;
 Mon, 10 Feb 2020 19:39:05 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48GZS86txzz1qxyd;
 Mon, 10 Feb 2020 19:39:04 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id WpRmuv2sT68o; Mon, 10 Feb 2020 19:39:03 +0100 (CET)
X-Auth-Info: jtnBlJieYpM91jZUoaaeoKQHkpCutPCsTMqRuKLLFD8=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Mon, 10 Feb 2020 19:39:03 +0100 (CET)
Subject: Re: [PATCH 2/2] pinctrl: stm32: Add level interrupt support to gpio
 irq chip
To: Alexandre Torgue <alexandre.torgue@st.com>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <marc.zyngier@arm.com>, Linus Walleij <linus.walleij@linaro.org>
References: <20200210134901.1939-1-alexandre.torgue@st.com>
 <20200210134901.1939-3-alexandre.torgue@st.com>
From: Marek Vasut <marex@denx.de>
Message-ID: <377b0895-aaeb-b12e-cad7-469332787b4e@denx.de>
Date: Mon, 10 Feb 2020 19:39:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200210134901.1939-3-alexandre.torgue@st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_103909_983620_60D69ECB 
X-CRM114-Status: GOOD (  17.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:a60:0:28:0:1:25:1 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/10/20 2:49 PM, Alexandre Torgue wrote:
> This patch adds level interrupt support to gpio irq chip.
> 
> GPIO hardware block is directly linked to EXTI block but EXTI handles
> external interrupts only on edge. To be able to handle GPIO interrupt on
> level a "hack" is done in gpio irq chip: parent interrupt (exti irq chip)
> is retriggered following interrupt type and gpio line value.
> 
> Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
> 
> diff --git a/drivers/pinctrl/stm32/pinctrl-stm32.c b/drivers/pinctrl/stm32/pinctrl-stm32.c
> index 2d5e0435af0a..04e1b062c20e 100644
> --- a/drivers/pinctrl/stm32/pinctrl-stm32.c
> +++ b/drivers/pinctrl/stm32/pinctrl-stm32.c
> @@ -89,6 +89,7 @@ struct stm32_gpio_bank {
>  	struct pinctrl_gpio_range range;
>  	struct fwnode_handle *fwnode;
>  	struct irq_domain *domain;
> +	u32 irq_type[STM32_GPIO_PINS_PER_BANK];

You might want reverse xmas tree order here.

>  	u32 bank_nr;
>  	u32 bank_ioport_nr;
>  	u32 pin_backup[STM32_GPIO_PINS_PER_BANK];
> @@ -303,6 +304,48 @@ static const struct gpio_chip stm32_gpio_template = {
>  	.get_direction		= stm32_gpio_get_direction,
>  };
>  
> +void stm32_gpio_irq_eoi(struct irq_data *d)
> +{
> +	struct stm32_gpio_bank *bank = d->domain->host_data;
> +	int line;
> +
> +	irq_chip_eoi_parent(d);
> +
> +	/* If level interrupt type then retrig */
> +	line = stm32_gpio_get(&bank->gpio_chip, d->hwirq);
> +	if ((line == 0 && bank->irq_type[d->hwirq] == IRQ_TYPE_LEVEL_LOW) ||
> +	    (line == 1 && bank->irq_type[d->hwirq] == IRQ_TYPE_LEVEL_HIGH))
> +		irq_chip_retrigger_hierarchy(d);
> +};
> +
> +static int stm32_gpio_set_type(struct irq_data *d, unsigned int type)
> +{
> +	struct stm32_gpio_bank *bank = d->domain->host_data;
> +	u32 parent_type;
> +
> +	bank->irq_type[d->hwirq] = type;
> +
> +	switch (type) {
> +	case IRQ_TYPE_EDGE_RISING:
> +	case IRQ_TYPE_EDGE_FALLING:
> +	case IRQ_TYPE_EDGE_BOTH:
> +		parent_type = type;
> +		break;
> +	case IRQ_TYPE_LEVEL_HIGH:
> +		parent_type = IRQ_TYPE_EDGE_RISING;
> +		break;
> +	case IRQ_TYPE_LEVEL_LOW:
> +		parent_type = IRQ_TYPE_EDGE_FALLING;
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	irq_chip_set_type_parent(d, parent_type);

irq_chip_set_type_parent() returns error code, shouldn't that be handled?

Otherwise, tested on STM32MP1 with KSZ8851-16MLL NIC.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
