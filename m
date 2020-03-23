Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66BEA18FDB4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 20:32:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fdrE9Iw3++Dwq2KIiYR/z9uYNv8Yc+zcsDnvJTL55zg=; b=jWV91cZrKicWt/
	0iHz9b55qP3Vwfenk9KEbMV7PpkZdrAzW07oA1pkSt0hiioJXsfd2sGnDD6lCQW475r65wJ5L/Jy4
	Ry4objCFm7YpBaoy/aJYuxg0/K2DxyfkRVyZMx1bt0xtp0Ea1OzDDr55+1y2hUoq6frsbzlfbf4Ni
	aPuGwC/4HjEMCLQXCWiAp4xz8UfT09mpETM8qIzWbbCkntgWHGNv5tVy87QfkCqmtrJzoByZszb2w
	mOQWSX0L3pDGL8ahNLhsBYPo+FZUNgPMuXqeAmAOu5QRgMkQsFwjp14klWBs6ouh9cdSp0zeO8XvK
	315zMPL0etxgNpep28Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGSnw-0000yn-R0; Mon, 23 Mar 2020 19:32:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGSno-0000yS-KH
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 19:32:01 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 32A6F2051A;
 Mon, 23 Mar 2020 19:32:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584991920;
 bh=tqC1JS7ZrM/m4+Ivy+e2i9I0On0JTNdip9emOuR1HfU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=zGS5DhD5tZhj/Rc1mgJ03LhIyE2HTO33X63rTRau4yxrBWHu1wMyoj2kVh5TMhBkk
 GLlCcJx2fjA9DxIc+sLoSoSkENWIhVx4Ihq+qvPP5fJswmDS3ENjvGn5fSqATDNSwt
 J9KbmiQJb/xAYwyeyFAe3fxYntNBGCGxzP+qc+A4=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jGSnm-00F3NR-FR; Mon, 23 Mar 2020 19:31:58 +0000
Date: Mon, 23 Mar 2020 19:31:57 +0000
From: Marc Zyngier <maz@kernel.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH v3 2/2] pinctrl: stm32: Add level interrupt support to
 gpio irq chip
Message-ID: <20200323193157.038f36f9@why>
In-Reply-To: <8d6f6646-56e4-5218-9990-f0c96862dc83@denx.de>
References: <20200219143229.18084-1-alexandre.torgue@st.com>
 <20200219143229.18084-3-alexandre.torgue@st.com>
 <CACRpkdZ7uq4U6GBQQQh=pTLf4wW3KfH3Zrz9z_3ZQgoaJD9Ynw@mail.gmail.com>
 <c991edca3e8925cf0489c0a5676f77b2@kernel.org>
 <a7fc5e43-34c2-a4e6-e0c5-1584f17fb024@denx.de>
 <8d6f6646-56e4-5218-9990-f0c96862dc83@denx.de>
Organization: Approximate
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: marex@denx.de, linus.walleij@linaro.org,
 alexandre.torgue@st.com, tglx@linutronix.de, jason@lakedaemon.net,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_123200_710988_5A629895 
X-CRM114-Status: GOOD (  25.49  )
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
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org, "open
 list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Jason Cooper <jason@lakedaemon.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 23 Mar 2020 20:19:39 +0100
Marek Vasut <marex@denx.de> wrote:

> On 3/23/20 8:04 PM, Marek Vasut wrote:
> > On 2/20/20 10:17 AM, Marc Zyngier wrote:
> >> On 2020-02-20 09:04, Linus Walleij wrote:
> >>> On Wed, Feb 19, 2020 at 3:32 PM Alexandre Torgue
> >>> <alexandre.torgue@st.com> wrote:
> >>>
> >>>> GPIO hardware block is directly linked to EXTI block but EXTI handles
> >>>> external interrupts only on edge. To be able to handle GPIO interrupt on
> >>>> level a "hack" is done in gpio irq chip: parent interrupt (exti irq
> >>>> chip)
> >>>> is retriggered following interrupt type and gpio line value.
> >>>>
> >>>> Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
> >>>> Tested-by: Marek Vasut <marex@denx.de>
> >>>
> >>> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> >>>
> >>> If Marc want to merge it with patch 1/2 go ahead!
> >>
> >> I'll queue the whole thing for 5.7.
> > 
> > I have a feeling this doesn't work with threaded interrupts.
> > 
> > If the interrupt handler runs in a thread context, the EOI will happen
> > almost right away (while the IRQ handler runs) and so will the code
> > handling the IRQ retriggering. But since the IRQ handler still runs and
> > didn't return yet, the retriggering doesn't cause the IRQ handler to be
> > called again once it finishes, even if the IRQ line is still asserted.
> > And that could result in some of the retriggers now happening I think.
> > Or am I doing something wrong ?
> 
> The patch below makes my usecase work, but I don't know whether it's
> correct. Basically once the threaded IRQ handler finishes and unmasks
> the IRQ, check whether the line is asserted and retrigger if so.
> 
> diff --git a/drivers/pinctrl/stm32/pinctrl-stm32.c
> b/drivers/pinctrl/stm32/pinctrl-stm32.c
> index 9ac9ecfc2f34..060dbcb7ae72 100644
> --- a/drivers/pinctrl/stm32/pinctrl-stm32.c
> +++ b/drivers/pinctrl/stm32/pinctrl-stm32.c
> @@ -371,12 +371,26 @@ static void
> stm32_gpio_irq_release_resources(struct irq_data *irq_data)
>         gpiochip_unlock_as_irq(&bank->gpio_chip, irq_data->hwirq);
>  }
> 
> +static void stm32_gpio_irq_unmask(struct irq_data *d)
> +{
> +       struct stm32_gpio_bank *bank = d->domain->host_data;
> +       int level;
> +
> +       irq_chip_unmask_parent(d);
> +
> +       /* If level interrupt type then retrig */
> +       level = stm32_gpio_get(&bank->gpio_chip, d->hwirq);
> +       if ((level == 0 && bank->irq_type[d->hwirq] ==
> IRQ_TYPE_LEVEL_LOW) ||
> +           (level == 1 && bank->irq_type[d->hwirq] == IRQ_TYPE_LEVEL_HIGH))
> +               irq_chip_retrigger_hierarchy(d);
> +}
> +
>  static struct irq_chip stm32_gpio_irq_chip = {
>         .name           = "stm32gpio",
>         .irq_eoi        = stm32_gpio_irq_eoi,
>         .irq_ack        = irq_chip_ack_parent,
>         .irq_mask       = irq_chip_mask_parent,
> -       .irq_unmask     = irq_chip_unmask_parent,
> +       .irq_unmask     = stm32_gpio_irq_unmask,
>         .irq_set_type   = stm32_gpio_set_type,
>         .irq_set_wake   = irq_chip_set_wake_parent,
>         .irq_request_resources = stm32_gpio_irq_request_resources,
> 

OK, I see your problem now.

The usual flow is along the line of Ack+Eoi, and that's what the
current code guarantees.

Threaded interrupts do Ack+Mask+Eoi, followed by an Unmask once the
thread finishes. This unmask needs to do the retrigger as well, as you
found out.

Can you please refactor the above so that we have the common code
between unmask and eoi in a separate function, send a proper patch, and
I'll apply it on top of the current irq/irqchip-5.7 branch.

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
