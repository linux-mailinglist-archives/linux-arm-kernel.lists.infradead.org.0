Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93026190C0E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 12:11:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gjw64qNrFBzEcEyfZttGuvfPaN2C6xwhmai9YMO3K7w=; b=aIzL/399hk9EZI
	hY7rNjVmG0GEyYN2p9PYbLWy393w+9xueaiSUBpNoCVeDyOiwhknTBpvmJge6iEv1gU/jQLve2wHE
	yrepl1IcEkSgJH/kUprBheJXGYfOVCT7jmQ8bjMDdoTDjZoWLXprelQsxNy5bhdjCoEF3XjUoSP2L
	KgWjKKvdwJ0cJ1K7mcNabvdUNUHImIfQXPvHGKAm6DxSyU5DC9ybZf8V2Mi5oRLrtHsJSV7dMmLeb
	TZABwYAJSCqoKH1yM6lLMk9aAKgr3zDVZMOP3bBK1Z2tOWNsuNDbKZ1GHdxVGWURtKbS4qfRYppsQ
	hMVSh2BrmDNITwdF2b3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGhSG-0006Er-31; Tue, 24 Mar 2020 11:10:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGhS1-0006CK-2Y
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 11:10:31 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A062720786;
 Tue, 24 Mar 2020 11:10:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585048228;
 bh=q+fr1XUysR+uZyKlppncJA/Y74Ewsk6+aW8I0yI5Bfw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=knQxveLIDh1KN9R/D4L2x/3sei3oJLnCRMmN9K8rmfSZY17PHfWmXQqS6tIM+Sxv0
 FFQvSOcy3NHhg9WNFs4JehAdqKopz5xqshoxBg5WP1yZmMcjRJrw1mgME3EJKuJvPD
 nvLPO8u9fje2VZ47/tEPTr95BX6e9QVdFwaB1baQ=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jGhRy-00FErF-OK; Tue, 24 Mar 2020 11:10:27 +0000
Date: Tue, 24 Mar 2020 11:10:25 +0000
From: Marc Zyngier <maz@kernel.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH] irqchip/stm32: Retrigger both in eoi and unmask callbacks
Message-ID: <20200324111025.0523605a@why>
In-Reply-To: <20200323235132.530550-1-marex@denx.de>
References: <20200323235132.530550-1-marex@denx.de>
Organization: Approximate
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: marex@denx.de, linux-arm-kernel@lists.infradead.org,
 alexandre.torgue@st.com, jason@lakedaemon.net, linus.walleij@linaro.org,
 tglx@linutronix.de, linux-gpio@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_041029_442843_4FB90E8F 
X-CRM114-Status: GOOD (  17.78  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-gpio@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Jason Cooper <jason@lakedaemon.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 24 Mar 2020 00:51:32 +0100
Marek Vasut <marex@denx.de> wrote:

> Sampling the IRQ line state in EOI and retriggering the interrupt to
> work around missing level-triggered interrupt support only works for
> non-threaded interrupts. Threaded interrupts must be retriggered the
> same way in unmask callback.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Jason Cooper <jason@lakedaemon.net>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Marc Zyngier <maz@kernel.org>,
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: linux-gpio@vger.kernel.org
> To: linux-arm-kernel@lists.infradead.org
> ---
>  drivers/pinctrl/stm32/pinctrl-stm32.c | 18 ++++++++++++++----
>  1 file changed, 14 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/pinctrl/stm32/pinctrl-stm32.c b/drivers/pinctrl/stm32/pinctrl-stm32.c
> index 9ac9ecfc2f34..2dd4a4dd944c 100644
> --- a/drivers/pinctrl/stm32/pinctrl-stm32.c
> +++ b/drivers/pinctrl/stm32/pinctrl-stm32.c
> @@ -304,18 +304,22 @@ static const struct gpio_chip stm32_gpio_template = {
>  	.get_direction		= stm32_gpio_get_direction,
>  };
>  
> -void stm32_gpio_irq_eoi(struct irq_data *d)
> +static void stm32_gpio_irq_trigger(struct irq_data *d)
>  {
>  	struct stm32_gpio_bank *bank = d->domain->host_data;
>  	int level;
>  
> -	irq_chip_eoi_parent(d);
> -
>  	/* If level interrupt type then retrig */
>  	level = stm32_gpio_get(&bank->gpio_chip, d->hwirq);
>  	if ((level == 0 && bank->irq_type[d->hwirq] == IRQ_TYPE_LEVEL_LOW) ||
>  	    (level == 1 && bank->irq_type[d->hwirq] == IRQ_TYPE_LEVEL_HIGH))
>  		irq_chip_retrigger_hierarchy(d);
> +}
> +
> +void stm32_gpio_irq_eoi(struct irq_data *d)

This should obviously be static. I'll amend it locally.

> +{
> +	irq_chip_eoi_parent(d);
> +	stm32_gpio_irq_trigger(d);
>  };
>  
>  static int stm32_gpio_set_type(struct irq_data *d, unsigned int type)
> @@ -371,12 +375,18 @@ static void stm32_gpio_irq_release_resources(struct irq_data *irq_data)
>  	gpiochip_unlock_as_irq(&bank->gpio_chip, irq_data->hwirq);
>  }
>  
> +static void stm32_gpio_irq_unmask(struct irq_data *d)
> +{
> +	irq_chip_unmask_parent(d);
> +	stm32_gpio_irq_trigger(d);
> +}
> +
>  static struct irq_chip stm32_gpio_irq_chip = {
>  	.name		= "stm32gpio",
>  	.irq_eoi	= stm32_gpio_irq_eoi,
>  	.irq_ack	= irq_chip_ack_parent,
>  	.irq_mask	= irq_chip_mask_parent,
> -	.irq_unmask	= irq_chip_unmask_parent,
> +	.irq_unmask	= stm32_gpio_irq_unmask,
>  	.irq_set_type	= stm32_gpio_set_type,
>  	.irq_set_wake	= irq_chip_set_wake_parent,
>  	.irq_request_resources = stm32_gpio_irq_request_resources,

I'll queue this for 5.7.

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
