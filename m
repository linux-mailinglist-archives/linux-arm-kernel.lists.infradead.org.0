Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29E011643E8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 13:07:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8XmiKizKMXKP0Vj6zbt/6nkrStYKvxlMDy7BUSomH0k=; b=FTTkNwJgMcUG1nTQY1dLr7Ams
	rxLAkSb5efOnOYVKI0HqYGv0OW3JgNL4WxtF4MJ5rRKQZI2MKRtP/61lgqRkW8vEdB5JSC0JmGHKW
	jKxTQXhrtu8xZz5/WNGgswxMuw43DqD6z1M04yf3506O68CZO88TYfbev5BX0+tUZMUny7kIHT55Z
	glgQvbJi0b369WP7OjKvhFEfGAKcnrVJZ6ocDBCNP3+sFjfxoC7CNtNamZM+fsoU2mAcvmQO2PH0B
	GzYwYNu0eP0yqgnWc6vCT7ht7XKEB/9Or1PbXu2psWGhxfeZI+3iSlVeGWEd4P6ZTCieLx1wWJbbR
	OPynuFRng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4O8X-0002fV-70; Wed, 19 Feb 2020 12:07:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4O8N-0002eU-IW
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 12:07:21 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9D2E124654;
 Wed, 19 Feb 2020 12:07:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582114037;
 bh=G0d/jtalHOC6e6qLE9M5tzztTcx+kJ1uXsVu0TxH0zo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=nVFTh6cNOma4kRqJuBbNUn2KLIvtLdxO3qDOQXtV8bi5u17SibOCQKEdW/QObO3jd
 Fi6q9XZfOsrEsQuNvN/mtJHCpzswo5a6DTc6YxHRdYZLOZUUeTtyoBi36sHpoD1xQM
 MJ6peMN7fzrYIgiY23VgoKZ1XpUA+CMqCaa8d3Jo=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j4O8J-006Ut1-VU; Wed, 19 Feb 2020 12:07:16 +0000
MIME-Version: 1.0
Date: Wed, 19 Feb 2020 12:07:15 +0000
From: Marc Zyngier <maz@kernel.org>
To: Alexandre Torgue <alexandre.torgue@st.com>
Subject: Re: [PATCH v2 2/2] pinctrl: stm32: Add level interrupt support to
 gpio irq chip
In-Reply-To: <f82caf02-5a47-ce3e-ec85-313712ef6de0@st.com>
References: <20200218131218.10789-1-alexandre.torgue@st.com>
 <20200218131218.10789-3-alexandre.torgue@st.com>
 <f82caf02-5a47-ce3e-ec85-313712ef6de0@st.com>
Message-ID: <53f72a8b241da3032a42b80c86b7c6ab@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: alexandre.torgue@st.com, tglx@linutronix.de,
 jason@lakedaemon.net, linus.walleij@linaro.org, marex@denx.de,
 linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_040719_677632_7D9D4A3C 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: marex@denx.de, Jason Cooper <jason@lakedaemon.net>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-19 11:34, Alexandre Torgue wrote:
> Fix Marc email address.
> 
> On 2/18/20 2:12 PM, Alexandre Torgue wrote:
>> This patch adds level interrupt support to gpio irq chip.

A commit message should not contain "this patch".

>> 
>> GPIO hardware block is directly linked to EXTI block but EXTI handles
>> external interrupts only on edge. To be able to handle GPIO interrupt 
>> on
>> level a "hack" is done in gpio irq chip: parent interrupt (exti irq 
>> chip)
>> is retriggered following interrupt type and gpio line value.
>> 
>> Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
>> Tested-by: Marek Vasut <marex@denx.de>
>> 
>> diff --git a/drivers/pinctrl/stm32/pinctrl-stm32.c 
>> b/drivers/pinctrl/stm32/pinctrl-stm32.c
>> index 2d5e0435af0a..dae236562543 100644
>> --- a/drivers/pinctrl/stm32/pinctrl-stm32.c
>> +++ b/drivers/pinctrl/stm32/pinctrl-stm32.c
>> @@ -92,6 +92,7 @@ struct stm32_gpio_bank {
>>   	u32 bank_nr;
>>   	u32 bank_ioport_nr;
>>   	u32 pin_backup[STM32_GPIO_PINS_PER_BANK];
>> +	u32 irq_type[STM32_GPIO_PINS_PER_BANK];

Do you really need a u32 here? an array of u8 seems enough. After all,
you only need two bits of information per interrupts (level or not,
low or high).

>>   };
>>     struct stm32_pinctrl {
>> @@ -303,6 +304,46 @@ static const struct gpio_chip stm32_gpio_template 
>> = {
>>   	.get_direction		= stm32_gpio_get_direction,
>>   };
>>   +void stm32_gpio_irq_eoi(struct irq_data *d)
>> +{
>> +	struct stm32_gpio_bank *bank = d->domain->host_data;
>> +	int line;
>> +
>> +	irq_chip_eoi_parent(d);
>> +
>> +	/* If level interrupt type then retrig */
>> +	line = stm32_gpio_get(&bank->gpio_chip, d->hwirq);
>> +	if ((line == 0 && bank->irq_type[d->hwirq] == IRQ_TYPE_LEVEL_LOW) ||
>> +	    (line == 1 && bank->irq_type[d->hwirq] == IRQ_TYPE_LEVEL_HIGH))
>> +		irq_chip_retrigger_hierarchy(d);

s/line/level/

>> +};
>> +
>> +static int stm32_gpio_set_type(struct irq_data *d, unsigned int type)
>> +{
>> +	struct stm32_gpio_bank *bank = d->domain->host_data;
>> +	u32 parent_type;
>> +
>> +	bank->irq_type[d->hwirq] = type;

It would make more sense if this this assignment was done *after*
sanitizing the type value.

>> +
>> +	switch (type) {
>> +	case IRQ_TYPE_EDGE_RISING:
>> +	case IRQ_TYPE_EDGE_FALLING:
>> +	case IRQ_TYPE_EDGE_BOTH:
>> +		parent_type = type;
>> +		break;
>> +	case IRQ_TYPE_LEVEL_HIGH:
>> +		parent_type = IRQ_TYPE_EDGE_RISING;
>> +		break;
>> +	case IRQ_TYPE_LEVEL_LOW:
>> +		parent_type = IRQ_TYPE_EDGE_FALLING;
>> +		break;
>> +	default:
>> +		return -EINVAL;
>> +	}
>> +
>> +	return irq_chip_set_type_parent(d, parent_type);
>> +};
>> +
>>   static int stm32_gpio_irq_request_resources(struct irq_data 
>> *irq_data)
>>   {
>>   	struct stm32_gpio_bank *bank = irq_data->domain->host_data;
>> @@ -332,11 +373,11 @@ static void 
>> stm32_gpio_irq_release_resources(struct irq_data *irq_data)
>>     static struct irq_chip stm32_gpio_irq_chip = {
>>   	.name		= "stm32gpio",
>> -	.irq_eoi	= irq_chip_eoi_parent,
>> +	.irq_eoi	= stm32_gpio_irq_eoi,
>>   	.irq_ack	= irq_chip_ack_parent,
>>   	.irq_mask	= irq_chip_mask_parent,
>>   	.irq_unmask	= irq_chip_unmask_parent,
>> -	.irq_set_type	= irq_chip_set_type_parent,
>> +	.irq_set_type	= stm32_gpio_set_type,
>>   	.irq_set_wake	= irq_chip_set_wake_parent,
>>   	.irq_request_resources = stm32_gpio_irq_request_resources,
>>   	.irq_release_resources = stm32_gpio_irq_release_resources,
>> 

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
