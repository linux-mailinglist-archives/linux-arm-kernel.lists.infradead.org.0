Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8651F18FD80
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 20:20:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GxLkvq+AFn8t77D5CZ5BAjNsHDrXoWriHYddMuGFKns=; b=K815pD1Y6Nme4w
	ed0P+8J1FJ668kEW/oGVTcOAqoZ1UY7/xyBFuPb1xqGhmNB5FGTNuEDQU2DTTj0FFneO0oIonjVgX
	Is7cb77ih7GvhDJGh3anmuG4+MAhJx3UX1L6aWB1rEazjQDvChZUh7vQWEt/TGC1APUvpmI4rYmtv
	U5jqbe+r2IxtxDMYoO6UHdx2wX/+kTAHebA1qnfFSceO7hFVYaffr7cuCv3JIEFuqT+4s6xPFn8ee
	GWgr1NAgI4h3DbaZxWKHqY8SUNkxJAm1d4DeaE1PP8dqHC/v7NfZGj6Fs6ql4yw5xSbuMPPC40+Bo
	NDjSo46kWE/Z8bX5X5ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGSc8-00047t-RO; Mon, 23 Mar 2020 19:19:56 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGSc0-00047O-Fi
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 19:19:50 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48mPMg2gv7z1rVw0;
 Mon, 23 Mar 2020 20:19:43 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48mPMg18Ffz1qyDc;
 Mon, 23 Mar 2020 20:19:43 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id Nl_L2P0oJ9M6; Mon, 23 Mar 2020 20:19:40 +0100 (CET)
X-Auth-Info: MMjA740fuZT2ajLKTyDbPMH63PHY+8ynlOErWzqXzRE=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Mon, 23 Mar 2020 20:19:39 +0100 (CET)
Subject: Re: [PATCH v3 2/2] pinctrl: stm32: Add level interrupt support to
 gpio irq chip
From: Marek Vasut <marex@denx.de>
To: Marc Zyngier <maz@kernel.org>, Linus Walleij <linus.walleij@linaro.org>
References: <20200219143229.18084-1-alexandre.torgue@st.com>
 <20200219143229.18084-3-alexandre.torgue@st.com>
 <CACRpkdZ7uq4U6GBQQQh=pTLf4wW3KfH3Zrz9z_3ZQgoaJD9Ynw@mail.gmail.com>
 <c991edca3e8925cf0489c0a5676f77b2@kernel.org>
 <a7fc5e43-34c2-a4e6-e0c5-1584f17fb024@denx.de>
Message-ID: <8d6f6646-56e4-5218-9990-f0c96862dc83@denx.de>
Date: Mon, 23 Mar 2020 20:19:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <a7fc5e43-34c2-a4e6-e0c5-1584f17fb024@denx.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_121948_818160_7C2062B5 
X-CRM114-Status: GOOD (  21.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:a60:0:28:0:1:25:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Jason Cooper <jason@lakedaemon.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/23/20 8:04 PM, Marek Vasut wrote:
> On 2/20/20 10:17 AM, Marc Zyngier wrote:
>> On 2020-02-20 09:04, Linus Walleij wrote:
>>> On Wed, Feb 19, 2020 at 3:32 PM Alexandre Torgue
>>> <alexandre.torgue@st.com> wrote:
>>>
>>>> GPIO hardware block is directly linked to EXTI block but EXTI handles
>>>> external interrupts only on edge. To be able to handle GPIO interrupt on
>>>> level a "hack" is done in gpio irq chip: parent interrupt (exti irq
>>>> chip)
>>>> is retriggered following interrupt type and gpio line value.
>>>>
>>>> Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
>>>> Tested-by: Marek Vasut <marex@denx.de>
>>>
>>> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
>>>
>>> If Marc want to merge it with patch 1/2 go ahead!
>>
>> I'll queue the whole thing for 5.7.
> 
> I have a feeling this doesn't work with threaded interrupts.
> 
> If the interrupt handler runs in a thread context, the EOI will happen
> almost right away (while the IRQ handler runs) and so will the code
> handling the IRQ retriggering. But since the IRQ handler still runs and
> didn't return yet, the retriggering doesn't cause the IRQ handler to be
> called again once it finishes, even if the IRQ line is still asserted.
> And that could result in some of the retriggers now happening I think.
> Or am I doing something wrong ?

The patch below makes my usecase work, but I don't know whether it's
correct. Basically once the threaded IRQ handler finishes and unmasks
the IRQ, check whether the line is asserted and retrigger if so.

diff --git a/drivers/pinctrl/stm32/pinctrl-stm32.c
b/drivers/pinctrl/stm32/pinctrl-stm32.c
index 9ac9ecfc2f34..060dbcb7ae72 100644
--- a/drivers/pinctrl/stm32/pinctrl-stm32.c
+++ b/drivers/pinctrl/stm32/pinctrl-stm32.c
@@ -371,12 +371,26 @@ static void
stm32_gpio_irq_release_resources(struct irq_data *irq_data)
        gpiochip_unlock_as_irq(&bank->gpio_chip, irq_data->hwirq);
 }

+static void stm32_gpio_irq_unmask(struct irq_data *d)
+{
+       struct stm32_gpio_bank *bank = d->domain->host_data;
+       int level;
+
+       irq_chip_unmask_parent(d);
+
+       /* If level interrupt type then retrig */
+       level = stm32_gpio_get(&bank->gpio_chip, d->hwirq);
+       if ((level == 0 && bank->irq_type[d->hwirq] ==
IRQ_TYPE_LEVEL_LOW) ||
+           (level == 1 && bank->irq_type[d->hwirq] == IRQ_TYPE_LEVEL_HIGH))
+               irq_chip_retrigger_hierarchy(d);
+}
+
 static struct irq_chip stm32_gpio_irq_chip = {
        .name           = "stm32gpio",
        .irq_eoi        = stm32_gpio_irq_eoi,
        .irq_ack        = irq_chip_ack_parent,
        .irq_mask       = irq_chip_mask_parent,
-       .irq_unmask     = irq_chip_unmask_parent,
+       .irq_unmask     = stm32_gpio_irq_unmask,
        .irq_set_type   = stm32_gpio_set_type,
        .irq_set_wake   = irq_chip_set_wake_parent,
        .irq_request_resources = stm32_gpio_irq_request_resources,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
