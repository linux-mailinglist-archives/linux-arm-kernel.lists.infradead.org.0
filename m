Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 066A2164378
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 12:34:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ElfAdwuI0sXoQD3fHpWNT0hkhEUoUIco+Hzl/xkM5w0=; b=NscPqWd0bORC3q1nZWgBtZAQX
	wCl0ekJQPmw0PdnRufd6umQJBZTQPgADHavSv9Hf7Yqr2G6CkcMseOteEdgXNhtNJ0ZUZDlutyhNa
	VcJGLqUyg4DtIgg53GoFCcl4LuI/9el5JDccH+bZRuIH8U8q4jsmk9wiaRkf8cj2h9OL9Rc7WCnj1
	ictcMYrQDaeEZWevqaQVyYJGn935aZVvZr77N1Ayj26GpSubyIKcbhfcX0TENk6aC6vpr7xv2YJLh
	SSKPHQPvCXusc7huMqkJmJm7PBk877+wjBhJZR4UYlqOSw84Z3HAU9eD8GwvU19b67SSYmYQQtJee
	5oXxCiWxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Ncl-0005EY-Jd; Wed, 19 Feb 2020 11:34:39 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4NcZ-0005CN-9i
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 11:34:29 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01JBYIaF018375; Wed, 19 Feb 2020 12:34:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : from : to : cc
 : references : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=sYV+fXFkNE49b3PkSLY5bKUtbpxLPJfmmOZx2ifgHCY=;
 b=bmHIpqpu4wcMqOaGmCyiVnCqOjBS1mi8K/1TPdBbSaeHA61FRTkuvdV6XKnQKw/jK0Vq
 YQV+b7qnSRB70GmxlkcYN4jooKhfoLk+Xv++L7aPESeNBNWtmlpuPBUYdvux6DCeuESd
 1gfjr+mDRqdeHnhFq0n3fZk++s9JV7aOmaHcqtqi0yC3DmgYQaPWCORUh8yJC/Qm0d+h
 ImJmNsGInRGMX0dSa83DEEt/kWkJynbW8oyrXccbH7cquLtmFPAm79ycGcKFF3l1/4UD
 zm4FlBlvwYeLhOTbawrmUjWmMbgG5fNWIEzG2Jd7x1+4ipyVHcV1SALj4b5k240rqGNR GQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2y8ub5jrfk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 19 Feb 2020 12:34:18 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 28B27100034;
 Wed, 19 Feb 2020 12:34:14 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 15D232B2DE7;
 Wed, 19 Feb 2020 12:34:14 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.45) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 19 Feb
 2020 12:34:13 +0100
Subject: Re: [PATCH v2 2/2] pinctrl: stm32: Add level interrupt support to
 gpio irq chip
From: Alexandre Torgue <alexandre.torgue@st.com>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>, 
 Marc Zyngier <maz@kernel.org>, Linus Walleij <linus.walleij@linaro.org>
References: <20200218131218.10789-1-alexandre.torgue@st.com>
 <20200218131218.10789-3-alexandre.torgue@st.com>
Message-ID: <f82caf02-5a47-ce3e-ec85-313712ef6de0@st.com>
Date: Wed, 19 Feb 2020 12:34:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200218131218.10789-3-alexandre.torgue@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG6NODE2.st.com (10.75.127.17) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-19_03:2020-02-19,
 2020-02-19 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_033427_635729_AED9C835 
X-CRM114-Status: GOOD (  19.32  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: marex@denx.de, linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix Marc email address.

On 2/18/20 2:12 PM, Alexandre Torgue wrote:
> This patch adds level interrupt support to gpio irq chip.
> 
> GPIO hardware block is directly linked to EXTI block but EXTI handles
> external interrupts only on edge. To be able to handle GPIO interrupt on
> level a "hack" is done in gpio irq chip: parent interrupt (exti irq chip)
> is retriggered following interrupt type and gpio line value.
> 
> Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
> Tested-by: Marek Vasut <marex@denx.de>
> 
> diff --git a/drivers/pinctrl/stm32/pinctrl-stm32.c b/drivers/pinctrl/stm32/pinctrl-stm32.c
> index 2d5e0435af0a..dae236562543 100644
> --- a/drivers/pinctrl/stm32/pinctrl-stm32.c
> +++ b/drivers/pinctrl/stm32/pinctrl-stm32.c
> @@ -92,6 +92,7 @@ struct stm32_gpio_bank {
>   	u32 bank_nr;
>   	u32 bank_ioport_nr;
>   	u32 pin_backup[STM32_GPIO_PINS_PER_BANK];
> +	u32 irq_type[STM32_GPIO_PINS_PER_BANK];
>   };
>   
>   struct stm32_pinctrl {
> @@ -303,6 +304,46 @@ static const struct gpio_chip stm32_gpio_template = {
>   	.get_direction		= stm32_gpio_get_direction,
>   };
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
> +	return irq_chip_set_type_parent(d, parent_type);
> +};
> +
>   static int stm32_gpio_irq_request_resources(struct irq_data *irq_data)
>   {
>   	struct stm32_gpio_bank *bank = irq_data->domain->host_data;
> @@ -332,11 +373,11 @@ static void stm32_gpio_irq_release_resources(struct irq_data *irq_data)
>   
>   static struct irq_chip stm32_gpio_irq_chip = {
>   	.name		= "stm32gpio",
> -	.irq_eoi	= irq_chip_eoi_parent,
> +	.irq_eoi	= stm32_gpio_irq_eoi,
>   	.irq_ack	= irq_chip_ack_parent,
>   	.irq_mask	= irq_chip_mask_parent,
>   	.irq_unmask	= irq_chip_unmask_parent,
> -	.irq_set_type	= irq_chip_set_type_parent,
> +	.irq_set_type	= stm32_gpio_set_type,
>   	.irq_set_wake	= irq_chip_set_wake_parent,
>   	.irq_request_resources = stm32_gpio_irq_request_resources,
>   	.irq_release_resources = stm32_gpio_irq_release_resources,
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
