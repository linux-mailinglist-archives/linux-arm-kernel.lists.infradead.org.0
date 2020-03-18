Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A79418A1F0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 18:48:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=98KA+AoecELS2aLtcBB6Oam4FPx9hiwASUl+GsABsXE=; b=EjEJjpAsJnAZ6xNNXOIbHqp4G
	w0lxmjCcWC2PuoJpLjlfx86WucySeY3t9Sj+6SggWSWJe/ky4kI3xtNRUpEwQHsh03jfj9eaAJKhF
	lvdr5A70Ycaot23l6Aek3ccnnIkpKXUt2r9+W3XJ7ZzksS+j51gGG4NgyXYnJbsi9YrHznzO2rfrB
	IgHdJronIOfoIf+W7ZJj+2HU0FmEMabSwHm816Pt2YsMcTL2XMwsuQXnoPq9W1Jw6W3Iglyrgs8Ek
	aapn/65tiMgVPIsgCZPN2a5kINRgx5iR2b9XQK5sXBAanNBzPeGLJgQnLJrNXEhvXRyF138AQQ5Vr
	BGTS5vm+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEcnh-0008Md-OP; Wed, 18 Mar 2020 17:48:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEcnZ-0008MH-79
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 17:48:10 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ACB6B20752;
 Wed, 18 Mar 2020 17:48:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584553688;
 bh=nIRM+WY3P5vmQLvcggYZkzjwW+uq3nchuZAFnsr2gLY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=z2hysmjLTxToxZUAsYP5vyO0cdtXwbm0WB6Hl6cgzLv3k8l0WarkYNMKFynv6FLGk
 JUru6IgeSJOZhqP5ir8e9kZrVXlgz3wG07V/yYMI9KmgtYxAS+ECM9O2a8WdhAMCC/
 UKcnQM2rCMOf9pYvpZsAEEwZkxfPZ+vNxBtFaDOI=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jEcnX-00Dhie-06; Wed, 18 Mar 2020 17:48:07 +0000
MIME-Version: 1.0
Date: Wed, 18 Mar 2020 17:48:06 +0000
From: Marc Zyngier <maz@kernel.org>
To: Sungbo Eo <mans0n@gorani.run>
Subject: Re: [PATCH] irqchip/versatile-fpga: Handle chained IRQs properly
In-Reply-To: <20200318170904.1461278-1-mans0n@gorani.run>
References: <20200318170904.1461278-1-mans0n@gorani.run>
Message-ID: <112cdab389aa9cc30189c7aec0baded2@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: mans0n@gorani.run, linux-oxnas@groups.io,
 linus.walleij@linaro.org, tglx@linutronix.de, jason@lakedaemon.net,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 narmstrong@baylibre.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_104809_303045_F67E6F06 
X-CRM114-Status: GOOD (  19.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jason Cooper <jason@lakedaemon.net>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-oxnas@groups.io,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sungbo,

On 2020-03-18 17:09, Sungbo Eo wrote:
> Enclose the chained handler with chained_irq_{enter,exit}(), so that 
> the
> muxed interrupts get properly acked.
> 
> This patch also fixes a reboot bug on OX820 SoC, where the jiffies 
> timer
> interrupt is never acked. The kernel waits a clock tick forever in
> calibrate_delay_converge(), which leads to a boot hang.

Nice catch.

> 
> Signed-off-by: Sungbo Eo <mans0n@gorani.run>
> Cc: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  drivers/irqchip/irq-versatile-fpga.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/irqchip/irq-versatile-fpga.c
> b/drivers/irqchip/irq-versatile-fpga.c
> index 928858dada75..08faab2fec3e 100644
> --- a/drivers/irqchip/irq-versatile-fpga.c
> +++ b/drivers/irqchip/irq-versatile-fpga.c
> @@ -6,6 +6,7 @@
>  #include <linux/irq.h>
>  #include <linux/io.h>
>  #include <linux/irqchip.h>
> +#include <linux/irqchip/chained_irq.h>
>  #include <linux/irqchip/versatile-fpga.h>
>  #include <linux/irqdomain.h>
>  #include <linux/module.h>
> @@ -68,12 +69,15 @@ static void fpga_irq_unmask(struct irq_data *d)
> 
>  static void fpga_irq_handle(struct irq_desc *desc)
>  {
> +	struct irq_chip *chip = irq_desc_get_chip(desc);
>  	struct fpga_irq_data *f = irq_desc_get_handler_data(desc);
>  	u32 status = readl(f->base + IRQ_STATUS);
> 
> +	chained_irq_enter(chip, desc);
> +

It's probably not a big deal, but I'm not fond of starting talking to
the muxing irqchip before having done the chained_irq_enter() call.

Moving that read here would probably be safer.

>  	if (status == 0) {
>  		do_bad_IRQ(desc);
> -		return;
> +		goto out;
>  	}
> 
>  	do {
> @@ -82,6 +86,9 @@ static void fpga_irq_handle(struct irq_desc *desc)
>  		status &= ~(1 << irq);
>  		generic_handle_irq(irq_find_mapping(f->domain, irq));
>  	} while (status);
> +
> +out:
> +	chained_irq_exit(chip, desc);
>  }
> 
>  /*

Otherwise looks good. If you send it again with the above fixed
and a Fixes: tag, I'll queue it.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
