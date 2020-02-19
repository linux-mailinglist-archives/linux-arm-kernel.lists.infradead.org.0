Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66CA4164398
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 12:43:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KyiPz55uhkDh4axSOGvZclOXHOYSWzgd2aJev9JrNIA=; b=T6ix3ie0mWchAq5EYUy+x2vir
	CLmxA/TAA/owDrZ65o+mkvpMxjOperHvjlOC2k7xujN/8Pfo8f7pAx2vomvV/XhKLd2sL5BrPQG7E
	L99KZU+4sYrNlwnLPp8zGIVq39Ot8ytG2HUlSBIVfD94vYHfV8h24Ak4M64K9vk5VHa2yGP45+qRC
	oRc2WlM9DwCl9RUWQ0KgR4/Jfu4Nm3NFJuyAYkWASmM04XjoPRkJynXvB1fIFJmoPwuI++veIbmCl
	cHh2qltIajleQg7Y4oXi6oOo9IGUFZaphKvyIelOZFiini+qHhMp4fQbZTxrU5k/RszVCfFALHTKa
	wXTPZ+AQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4NlB-0000QN-8h; Wed, 19 Feb 2020 11:43:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Nl3-0000Pl-T4
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 11:43:15 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7542524654;
 Wed, 19 Feb 2020 11:43:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582112593;
 bh=cMEgzzVGtoiAaBQbg6W/JzWI5xmZ34oYwgybQc4cGV0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=LuTL44v0bbP2jnnoPOJQmUAw3xcYT0FnwLbsv5i51y1ywelaSOqjYVIO0+g5jbV5j
 RBhT2CdyTMiKsv7W3SkiN+r11Swuqm4M4RK4VXgTUj3C3YGOOIJ0QXkcpFTjjjQVwy
 dGNYJduxvrw9bNiMwNJEWLQXDfUIQnKiVLA5AAxw=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j4Nl1-006Ugr-Nw; Wed, 19 Feb 2020 11:43:11 +0000
MIME-Version: 1.0
Date: Wed, 19 Feb 2020 11:43:11 +0000
From: Marc Zyngier <maz@kernel.org>
To: Alexandre Torgue <alexandre.torgue@st.com>
Subject: Re: [PATCH v2 1/2] irqchip/stm32: Add irq retrigger support
In-Reply-To: <16d27f75-8157-7a92-ae61-b5b3ab05bdd9@st.com>
References: <20200218131218.10789-1-alexandre.torgue@st.com>
 <20200218131218.10789-2-alexandre.torgue@st.com>
 <16d27f75-8157-7a92-ae61-b5b3ab05bdd9@st.com>
Message-ID: <608d9c84813323ee3839f6ac21aa8f4e@kernel.org>
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
X-CRM114-CacheID: sfid-20200219_034313_959036_591B0191 
X-CRM114-Status: GOOD (  10.82  )
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

On 2020-02-19 11:33, Alexandre Torgue wrote:
> Fix Marc email address
> 
> On 2/18/20 2:12 PM, Alexandre Torgue wrote:
>> This commit introduces retrigger support for stm32_ext_h chip.
>> It consists to rise the GIC interrupt mapped to an EXTI line.
>> 
>> Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
>> 
>> diff --git a/drivers/irqchip/irq-stm32-exti.c 
>> b/drivers/irqchip/irq-stm32-exti.c
>> index e00f2fa27f00..c971d115edb4 100644
>> --- a/drivers/irqchip/irq-stm32-exti.c
>> +++ b/drivers/irqchip/irq-stm32-exti.c
>> @@ -604,12 +604,24 @@ static void stm32_exti_h_syscore_deinit(void)
>>   	unregister_syscore_ops(&stm32_exti_h_syscore_ops);
>>   }
>>   +static int stm32_exti_h_retrigger(struct irq_data *d)
>> +{
>> +	struct stm32_exti_chip_data *chip_data = 
>> irq_data_get_irq_chip_data(d);
>> +	const struct stm32_exti_bank *stm32_bank = chip_data->reg_bank;
>> +	void __iomem *base = chip_data->host_data->base;
>> +	u32 mask = BIT(d->hwirq % IRQS_PER_BANK);
>> +
>> +	writel_relaxed(mask, base + stm32_bank->swier_ofst);
>> +
>> +	return irq_chip_retrigger_hierarchy(d);

Calling irq_chip_retrigger_hierarchy here is really odd. If the write
above has the effect of making the interrupt pending again, why do you
need to force the retrigger any further?

             M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
