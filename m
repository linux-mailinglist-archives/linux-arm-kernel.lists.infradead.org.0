Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E06818E1B5
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Mar 2020 15:05:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bnWl5FUgn3TZPa+LxJXRTuu4AKABTXwY66u/2UGJ8oo=; b=L7c0eD9b+opnczvyJANEYLcwC
	35HizRDbu6ESI0qKbcWFc8fc7q0ELcHY4yWydyupqdvldwdPg6hIGhAnglFL8zK4WT29merVigi9E
	EfSjUnommQc8lR3nIoCqvM8nm5QzctgFNjvepCnMLsiAjt8NSug7iG1J9m8aJ/4A1ZYjuzvPjS6oT
	R7brh8a1IcEiIznhevM65FUZanxB3pVqYtUq60j4HS9TYfCl7u1kztMj4s3vEIL10xQxjp320CnVB
	yAHNjjXmFOKqu14SYDSW4aWaAAiVl6PS82Ne8Jp1RGqjlOVjSaEy0tKCevGriYcu/TEOTPmVLmAv2
	pSHo8iojg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFekW-0003w6-7b; Sat, 21 Mar 2020 14:05:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFekK-0003Pc-EU
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Mar 2020 14:05:05 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 916B320757;
 Sat, 21 Mar 2020 14:05:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584799503;
 bh=2LYqxlJLALkKFlpvVEGc+tjKLuBtfj/ozo9eACQKvaw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Viee7yhYqu5DhM3KRxgC7BOYKsHKq2eVJ3mZWlwBmROgY//CXPk6aiRd+kdVMPlfl
 bQWwtGOskyltOReYv3sK1c/ZZ+aZUm6WpLLUcOluQJk0uRVtwhvRmNZh9V71h0QrpB
 8bzoBozpXhJ/VbzRA7/M2wjTBafP9GpHyylNWXUw=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jFekH-00EVV7-Sn; Sat, 21 Mar 2020 14:05:02 +0000
MIME-Version: 1.0
Date: Sat, 21 Mar 2020 14:05:01 +0000
From: Marc Zyngier <maz@kernel.org>
To: Sungbo Eo <mans0n@gorani.run>
Subject: Re: [PATCH] irqchip/versatile-fpga: Apply clear-mask earlier
In-Reply-To: <20200321133842.2408823-1-mans0n@gorani.run>
References: <20200321133842.2408823-1-mans0n@gorani.run>
Message-ID: <4c8b67a7912b2863db99ff4e765fdb8b@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: mans0n@gorani.run, linux-oxnas@groups.io,
 linus.walleij@linaro.org, tglx@linutronix.de, jason@lakedaemon.net,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 narmstrong@baylibre.com, daniel@makrotopia.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200321_070504_539986_FC774621 
X-CRM114-Status: GOOD (  18.72  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Daniel Golle <daniel@makrotopia.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-oxnas@groups.io, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-03-21 13:38, Sungbo Eo wrote:
> Clear its own IRQs before the parent IRQ get enabled, so that the
> remaining IRQs do not accidentally interrupt the parent IRQ controller.
> 
> This patch also fixes a reboot bug on OX820 SoC, where the remaining
> rps-timer IRQ raises a GIC interrupt that is left pending. After that,
> the rps-timer IRQ is cleared during driver initialization, and there's
> no IRQ left in rps-irq when local_irq_enable() is called, which evokes
> an error message "unexpected IRQ trap".
> 
> Fixes: bdd272cbb97a ("irqchip: versatile FPGA: support cascaded
> interrupts from DT")
> Signed-off-by: Sungbo Eo <mans0n@gorani.run>
> Cc: Neil Armstrong <narmstrong@baylibre.com>
> Cc: Daniel Golle <daniel@makrotopia.org>
> ---
>  drivers/irqchip/irq-versatile-fpga.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/irqchip/irq-versatile-fpga.c
> b/drivers/irqchip/irq-versatile-fpga.c
> index 70e2cfff8175..f1386733d3bc 100644
> --- a/drivers/irqchip/irq-versatile-fpga.c
> +++ b/drivers/irqchip/irq-versatile-fpga.c
> @@ -212,6 +212,9 @@ int __init fpga_irq_of_init(struct device_node 
> *node,
>  	if (of_property_read_u32(node, "valid-mask", &valid_mask))
>  		valid_mask = 0;
> 
> +	writel(clear_mask, base + IRQ_ENABLE_CLEAR);
> +	writel(clear_mask, base + FIQ_ENABLE_CLEAR);
> +
>  	/* Some chips are cascaded from a parent IRQ */
>  	parent_irq = irq_of_parse_and_map(node, 0);
>  	if (!parent_irq) {
> @@ -221,9 +224,6 @@ int __init fpga_irq_of_init(struct device_node 
> *node,
> 
>  	fpga_irq_init(base, node->name, 0, parent_irq, valid_mask, node);
> 
> -	writel(clear_mask, base + IRQ_ENABLE_CLEAR);
> -	writel(clear_mask, base + FIQ_ENABLE_CLEAR);
> -
>  	/*
>  	 * On Versatile AB/PB, some secondary interrupts have a direct
>  	 * pass-thru to the primary controller for IRQs 20 and 22-31 which 
> need

You're on a roll! ;-) Queued for 5.7.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
