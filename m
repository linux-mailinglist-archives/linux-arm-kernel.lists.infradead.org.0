Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD096E1C5B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 15:23:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/y4fyWN01ATDh/ZYGpq0YcyVnA85qTMzH4jya+5FOdc=; b=SOTlIs8PS2gRia29+mg6Iszjn
	DvIiXb5ebyhNMKXvrAVq2EN3Avw/pi7U1Kg32BoSiffDq5Gnd8E98C24531X4Dk7RPhW99gmvyWJA
	56Him/48a0QQxPLe7yILFqgQZogxuWMCZ5KdPRAfH5Dpo/NAHGbKQFHq9shveneJPhX9GOdZb+7zg
	gfwBf83PCyLUrWYadswMbvQky/rOCk3Nzrh9pjdCQH+85yHh647Fu2nZ5CPc+YYbrf+7BGzPHe19c
	aGaBJ05VvomkJoZexbVGpzamSP4pJd/XFwEI9zW2POi2nneyEXG2vbCO0hWixH9E64/BCQ66lm1ue
	TICpFD9Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNGbJ-0000Ks-DK; Wed, 23 Oct 2019 13:22:57 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNGb6-0000JO-VQ
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 13:22:46 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iNGaz-0002vU-Ap; Wed, 23 Oct 2019 15:22:37 +0200
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH RFC 2/2] irqchip/gic: Allow the use of SGI interrupts
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Wed, 23 Oct 2019 14:22:34 +0100
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <20191023000547.7831-3-f.fainelli@gmail.com>
References: <20191023000547.7831-1-f.fainelli@gmail.com>
 <20191023000547.7831-3-f.fainelli@gmail.com>
Message-ID: <112a725164b7fe321f27357fd4cd772f@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: f.fainelli@gmail.com, linux-kernel@vger.kernel.org,
 tglx@linutronix.de, jason@lakedaemon.net, robh+dt@kernel.org,
 mark.rutland@arm.com, bcm-kernel-feedback-list@broadcom.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 souvik.chakravarty@arm.com, james.quinlan@broadcom.com, sudeep.holla@arm.com,
 thanu.rangarajan@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_062245_159301_41E20991 
X-CRM114-Status: GOOD (  22.09  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Thanu Rangarajan <thanu.rangarajan@arm.com>,
 Souvik Chakravarty <souvik.chakravarty@arm.com>,
 Jason Cooper <jason@lakedaemon.net>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Jim Quinlan <james.quinlan@broadcom.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Florian,

Needless to say, I mostly have questions...

On 2019-10-23 01:05, Florian Fainelli wrote:
> SGI interrupts are a convenient way for trusted firmware to target a
> specific set of CPUs. Update the ARM GIC code to allow the 
> translation
> and mapping of SGI interrupts.
>
> Since the kernel already uses SGIs for various inter-processor 
> interrupt
> activities, we specifically make sure that we do not let users of the
> IRQ API to even try to map those.
>
> Internal IPIs remain dispatched through handle_IPI() while public 
> SGIs
> get promoted to a normal interrupt flow management.
>
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  drivers/irqchip/irq-gic.c | 41 
> +++++++++++++++++++++++++++------------
>  1 file changed, 29 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/irqchip/irq-gic.c b/drivers/irqchip/irq-gic.c
> index 30ab623343d3..dcfdbaacdd64 100644
> --- a/drivers/irqchip/irq-gic.c
> +++ b/drivers/irqchip/irq-gic.c
> @@ -385,7 +385,10 @@ static void __exception_irq_entry
> gic_handle_irq(struct pt_regs *regs)
>  			 * Pairs with the write barrier in gic_raise_softirq
>  			 */
>  			smp_rmb();
> -			handle_IPI(irqnr, regs);
> +			if (irqnr < NR_IPI)
> +				handle_IPI(irqnr, regs);
> +			else
> +				handle_domain_irq(gic->domain, irqnr, regs);

Double EOI, UNPREDICTABLE territory, your state machine is now dead.

>  #endif
>  			continue;
>  		}
> @@ -1005,20 +1008,34 @@ static int gic_irq_domain_translate(struct
> irq_domain *d,
>  		if (fwspec->param_count < 3)
>  			return -EINVAL;
>
> -		/* Get the interrupt number and add 16 to skip over SGIs */
> -		*hwirq = fwspec->param[1] + 16;
> -
> -		/*
> -		 * For SPIs, we need to add 16 more to get the GIC irq
> -		 * ID number
> -		 */
> -		if (!fwspec->param[0])
> +		*hwirq = fwspec->param[1];
> +		switch (fwspec->param[0]) {
> +		case 0:
> +			/*
> +			 * For SPIs, we need to add 16 more to get the GIC irq
> +			 * ID number
> +			 */
> +			*hwirq += 16;
> +			/* fall through */
> +		case 1:
> +			/* Add 16 to skip over SGIs */
>  			*hwirq += 16;
> +			*type = fwspec->param[2] & IRQ_TYPE_SENSE_MASK;
>
> -		*type = fwspec->param[2] & IRQ_TYPE_SENSE_MASK;
> +			/* Make it clear that broken DTs are... broken */
> +			WARN_ON(*type == IRQ_TYPE_NONE);
> +			break;
> +		case 2:
> +			/* Refuse to map internal IPIs */
> +			if (*hwirq < NR_IPI)

So depending on how the kernel uses SGIs, you can or cannot use these 
SGIs.
That looks like a good way to corner ourselves into not being to change 
much.

Also, do you expect this to work for both Group-0 and Group-1 
interrupts
(since you imply that this works as a communication medium with the 
secure
side)? Given that the kernel running in NS has no way to enable/disable
Group-0 interrupts, this looks terminally flawed. Or is that Group-1 
only?

How do we describe which SGIs are guaranteed to be available to Linux?

> +				return -EPERM;
> +
> +			*type = IRQ_TYPE_NONE;

Or not. SGI are edge triggered, by definition.

> +			break;
> +		default:
> +			break;
> +		}
>
> -		/* Make it clear that broken DTs are... broken */
> -		WARN_ON(*type == IRQ_TYPE_NONE);

Really?

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
