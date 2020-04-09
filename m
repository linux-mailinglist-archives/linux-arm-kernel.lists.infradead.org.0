Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 863481A31C7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 11:32:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8n2CPQ2/BMvo5slOFxw+jaVOqJUN6w9y68GPqTnLu94=; b=qThLQHyx9TAMiz
	kMHvIdHGBHfXoMfJkIb7nlDJbf1IJvS6sMl7UsAFbLvfDc52JPqoGHp1CY2Ch9nyG724Dmb3UJf0Q
	rbtZ+4qY0JXKhChrbrckFq6nEd0q9qnw7L0RXlTRtkyT+fEoEBDshm26lGjGxhpMYDwAPMjvX1F4T
	OuBTGTRo3Z3K3YtLMStRbSDNZFRgbj0lTpSKpr51nmQBIa3gIi/ufSklg3Hw703rPcmvzH2CHZcwp
	KYdpILvczpRF8OLgVC+905e3IXQJGphmyiYiqWnHQaKPJ5lYz6V2a696Cy2HPS5ZAP877mJrbwEl9
	x7d9ld++yf+Vq41ufI7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMTXV-0003Qk-KX; Thu, 09 Apr 2020 09:32:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMTXP-0003Q4-Fk
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 09:31:56 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5518220730;
 Thu,  9 Apr 2020 09:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586424713;
 bh=yu1DxhA5goDLvRx/GPY7agiWxznEHMQNlRX0ba5w0Mk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=gSUHo4+B6MWf9VBolg2AvbN+t9D926yHPJkK5bSTa93ofzCplHB/Tgjl/uBT29NPL
 FShJubWHD3/RVb6Eersg/7hprxFTloZioz9EWSAD75N2SEGcmCaF5QKHyCi0+mJsJ6
 IeNija7yfMYeS2fVSiSWK2GSiQuRTHgDh6yUCyPE=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jMTXG-001rlN-39; Thu, 09 Apr 2020 10:31:46 +0100
Date: Thu, 9 Apr 2020 10:31:44 +0100
From: Marc Zyngier <maz@kernel.org>
To: Grygorii Strashko <grygorii.strashko@ti.com>
Subject: Re: [PATCH] irqchip/ti-sci-inta: fix processing of masked irqs
Message-ID: <20200409103144.3b2169bf@why>
In-Reply-To: <20200408191532.31252-1-grygorii.strashko@ti.com>
References: <20200408191532.31252-1-grygorii.strashko@ti.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: grygorii.strashko@ti.com, nm@ti.com, t-kristo@ti.com,
 ssantosh@kernel.org, tglx@linutronix.de, jason@lakedaemon.net,
 lokeshvutla@ti.com, peter.ujfalusi@ti.com, nsekhar@ti.com,
 linux-kernel@vger.kernel.org, vigneshr@ti.com,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_023155_560949_76DACE82 
X-CRM114-Status: GOOD (  17.50  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Nishanth Menon <nm@ti.com>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Jason Cooper <jason@lakedaemon.net>, Lokesh Vutla <lokeshvutla@ti.com>,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 Tero Kristo <t-kristo@ti.com>, Santosh Shilimkar <ssantosh@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Vignesh Raghavendra <vigneshr@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 8 Apr 2020 22:15:32 +0300
Grygorii Strashko <grygorii.strashko@ti.com> wrote:

> The ti_sci_inta_irq_handler() does not take into account INTA IRQs state
> (masked/unmasked) as it uses INTA_STATUS_CLEAR_j register to get INTA IRQs
> status, which provides raw status value.
> This causes hard IRQ handlers to be called or threaded handlers to be
> scheduled many times even if corresponding INTA IRQ is masked.
> Above, first of all, affects the LEVEL interrupts processing and causes
> unexpected behavior up the system stack or crash.
> 
> Fix it by using the Interrupt Masked Status INTA_STATUSM_j register which
> provides masked INTA IRQs status.
> 
> Fixes: 9f1463b86c13 ("irqchip/ti-sci-inta: Add support for Interrupt Aggregator driver")
> Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>

Given the failure mode, doesn't this deserve a Cc stable?

> ---
>  drivers/irqchip/irq-ti-sci-inta.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/irqchip/irq-ti-sci-inta.c b/drivers/irqchip/irq-ti-sci-inta.c
> index 8f6e6b08eadf..7e3ebf6ed2cd 100644
> --- a/drivers/irqchip/irq-ti-sci-inta.c
> +++ b/drivers/irqchip/irq-ti-sci-inta.c
> @@ -37,6 +37,7 @@
>  #define VINT_ENABLE_SET_OFFSET	0x0
>  #define VINT_ENABLE_CLR_OFFSET	0x8
>  #define VINT_STATUS_OFFSET	0x18
> +#define VINT_STATUS_MASKED_OFFSET	0x20
>  
>  /**
>   * struct ti_sci_inta_event_desc - Description of an event coming to
> @@ -116,7 +117,7 @@ static void ti_sci_inta_irq_handler(struct irq_desc *desc)
>  	chained_irq_enter(irq_desc_get_chip(desc), desc);
>  
>  	val = readq_relaxed(inta->base + vint_desc->vint_id * 0x1000 +
> -			    VINT_STATUS_OFFSET);
> +			    VINT_STATUS_MASKED_OFFSET);
>  
>  	for_each_set_bit(bit, &val, MAX_EVENTS_PER_VINT) {
>  		virq = irq_find_mapping(domain, vint_desc->events[bit].hwirq);


Otherwise queued for post -rc1.

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
