Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D75190248
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 00:53:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ahUWxlagBBfEMPpwTtVcTQk+IboUmNzKB7MpVGtwqw4=; b=YbSYjY+rL2rgwm
	FOK8gAfMhCwM0+f0uYLhW5VKL2XihpajQ3tVJxOxMrDV0k8DuqGHmyMOU5FiZjsxYrHTl7U6b9J6Z
	nNdprmkAY4akQNg1YrFzrntM+4RgoA2h+vUA/EuKJ5WEwWZgtomYEPIiKunIHoe0gnHeORzOagXcC
	r4vRchQMtIS7gzmFfw46Ng6bveW0m7u90HMG68W+uexGfFG9HGjlCqB6+G4a2SBkw5daN4v5sAmLj
	F1ZmBfoWsCowv1sDyXEJbI+tQUfzdjte3nyxglrXyOMfgeSrQO8/piVatFbJ0xYayb9jxoEdc+VOn
	E7/ZoFgd1flMYuzCH3rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGWsE-0005qQ-Km; Mon, 23 Mar 2020 23:52:50 +0000
Received: from mail-out.m-online.net ([212.18.0.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGWs5-0005pn-Bg
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 23:52:43 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48mWQZ2fJFz1rwtx;
 Tue, 24 Mar 2020 00:52:38 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48mWQZ1mkbz1qyDv;
 Tue, 24 Mar 2020 00:52:38 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id dsdc2cmNuP8z; Tue, 24 Mar 2020 00:52:36 +0100 (CET)
X-Auth-Info: 3FxyK811rrHcEf1hkb6YOMRfQXbYfd56Aqzjqx9BVm8=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Tue, 24 Mar 2020 00:52:36 +0100 (CET)
Subject: Re: [PATCH v3 2/2] pinctrl: stm32: Add level interrupt support to
 gpio irq chip
To: Marc Zyngier <maz@kernel.org>
References: <20200219143229.18084-1-alexandre.torgue@st.com>
 <20200219143229.18084-3-alexandre.torgue@st.com>
 <CACRpkdZ7uq4U6GBQQQh=pTLf4wW3KfH3Zrz9z_3ZQgoaJD9Ynw@mail.gmail.com>
 <c991edca3e8925cf0489c0a5676f77b2@kernel.org>
 <a7fc5e43-34c2-a4e6-e0c5-1584f17fb024@denx.de>
 <8d6f6646-56e4-5218-9990-f0c96862dc83@denx.de> <20200323193157.038f36f9@why>
 <8e2795d8-4a8b-35a7-7d3f-e24d011878f6@denx.de> <20200323194946.26bdd003@why>
From: Marek Vasut <marex@denx.de>
Message-ID: <3f032003-c847-ccd7-931a-16acc58c8342@denx.de>
Date: Tue, 24 Mar 2020 00:52:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200323194946.26bdd003@why>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_165241_716979_F255548D 
X-CRM114-Status: GOOD (  22.74  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.10 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.10 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Jason Cooper <jason@lakedaemon.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/23/20 8:49 PM, Marc Zyngier wrote:
> On Mon, 23 Mar 2020 20:37:54 +0100
> Marek Vasut <marex@denx.de> wrote:
> 
>> On 3/23/20 8:31 PM, Marc Zyngier wrote:
>>> On Mon, 23 Mar 2020 20:19:39 +0100
>>> Marek Vasut <marex@denx.de> wrote:
>>>
>>>> On 3/23/20 8:04 PM, Marek Vasut wrote:
>>>>> On 2/20/20 10:17 AM, Marc Zyngier wrote:
>>>>>> On 2020-02-20 09:04, Linus Walleij wrote:
>>>>>>> On Wed, Feb 19, 2020 at 3:32 PM Alexandre Torgue
>>>>>>> <alexandre.torgue@st.com> wrote:
>>>>>>>
>>>>>>>> GPIO hardware block is directly linked to EXTI block but EXTI handles
>>>>>>>> external interrupts only on edge. To be able to handle GPIO interrupt on
>>>>>>>> level a "hack" is done in gpio irq chip: parent interrupt (exti irq
>>>>>>>> chip)
>>>>>>>> is retriggered following interrupt type and gpio line value.
>>>>>>>>
>>>>>>>> Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
>>>>>>>> Tested-by: Marek Vasut <marex@denx.de>
>>>>>>>
>>>>>>> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
>>>>>>>
>>>>>>> If Marc want to merge it with patch 1/2 go ahead!
>>>>>>
>>>>>> I'll queue the whole thing for 5.7.
>>>>>
>>>>> I have a feeling this doesn't work with threaded interrupts.
>>>>>
>>>>> If the interrupt handler runs in a thread context, the EOI will happen
>>>>> almost right away (while the IRQ handler runs) and so will the code
>>>>> handling the IRQ retriggering. But since the IRQ handler still runs and
>>>>> didn't return yet, the retriggering doesn't cause the IRQ handler to be
>>>>> called again once it finishes, even if the IRQ line is still asserted.
>>>>> And that could result in some of the retriggers now happening I think.
>>>>> Or am I doing something wrong ?
>>>>
>>>> The patch below makes my usecase work, but I don't know whether it's
>>>> correct. Basically once the threaded IRQ handler finishes and unmasks
>>>> the IRQ, check whether the line is asserted and retrigger if so.
>>>>
>>>> diff --git a/drivers/pinctrl/stm32/pinctrl-stm32.c
>>>> b/drivers/pinctrl/stm32/pinctrl-stm32.c
>>>> index 9ac9ecfc2f34..060dbcb7ae72 100644
>>>> --- a/drivers/pinctrl/stm32/pinctrl-stm32.c
>>>> +++ b/drivers/pinctrl/stm32/pinctrl-stm32.c
>>>> @@ -371,12 +371,26 @@ static void
>>>> stm32_gpio_irq_release_resources(struct irq_data *irq_data)
>>>>         gpiochip_unlock_as_irq(&bank->gpio_chip, irq_data->hwirq);
>>>>  }
>>>>
>>>> +static void stm32_gpio_irq_unmask(struct irq_data *d)
>>>> +{
>>>> +       struct stm32_gpio_bank *bank = d->domain->host_data;
>>>> +       int level;
>>>> +
>>>> +       irq_chip_unmask_parent(d);
>>>> +
>>>> +       /* If level interrupt type then retrig */
>>>> +       level = stm32_gpio_get(&bank->gpio_chip, d->hwirq);
>>>> +       if ((level == 0 && bank->irq_type[d->hwirq] ==
>>>> IRQ_TYPE_LEVEL_LOW) ||
>>>> +           (level == 1 && bank->irq_type[d->hwirq] == IRQ_TYPE_LEVEL_HIGH))
>>>> +               irq_chip_retrigger_hierarchy(d);
>>>> +}
>>>> +
>>>>  static struct irq_chip stm32_gpio_irq_chip = {
>>>>         .name           = "stm32gpio",
>>>>         .irq_eoi        = stm32_gpio_irq_eoi,
>>>>         .irq_ack        = irq_chip_ack_parent,
>>>>         .irq_mask       = irq_chip_mask_parent,
>>>> -       .irq_unmask     = irq_chip_unmask_parent,
>>>> +       .irq_unmask     = stm32_gpio_irq_unmask,
>>>>         .irq_set_type   = stm32_gpio_set_type,
>>>>         .irq_set_wake   = irq_chip_set_wake_parent,
>>>>         .irq_request_resources = stm32_gpio_irq_request_resources,
>>>>
>>>
>>> OK, I see your problem now.
>>>
>>> The usual flow is along the line of Ack+Eoi, and that's what the
>>> current code guarantees.
>>>
>>> Threaded interrupts do Ack+Mask+Eoi, followed by an Unmask once the
>>> thread finishes. This unmask needs to do the retrigger as well, as you
>>> found out.
>>>
>>> Can you please refactor the above so that we have the common code
>>> between unmask and eoi in a separate function, send a proper patch, and
>>> I'll apply it on top of the current irq/irqchip-5.7 branch.
>>
>> Sure, I can. Do we still need this retriggering in the irq_eoi too ?
> 
> Absolutely, because that's what matters for the non-threaded case
> (there is no mask/unmask on that path). It is also never wrong to
> over-resample (it just slows things down).
> 
>> Also, are there any other hidden details I might've missed ?
> 
> Probably. But let's fix one bug at a time, shall we? ;-) And let's hope
> that ST doesn't take this as a excuse not to clean up their act in
> their next SoC!

Indeed.

Patch is out, thanks for the feedback :)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
