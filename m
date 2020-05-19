Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 908151DA484
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 00:26:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gZ1g7/QcwKA6MxA98Yxg7Q3m5V14aw7zm8FfiyIx8q0=; b=Yesc5K1NBw+0A92DsVjvqNohU2
	E0OLXmy+BFqCrrWNOtWFlat6CkpGGUMxhYDaxKx1fO6ypTg3ZYLtnmcnzBtWYoghDs+7A/7kS7VfN
	v2dv5oHbAP//LGAS/V4hqxYOTk0a+cp8Ps8CUBU7YB50CqDtc0TgtDWbheobtVx2bqPu/raGNh3dR
	Xd/rXrFjU9T8djL7xQ7nnH3Ll7tcdHwrg4BDa8w/Q2SAAIpWPnT0q0DzFsrmEJqjixAMcJETo99qt
	+XMDRAsk4H4ssIh/T+AEuHI+bYmnaiR27mN81ZRDjyOp3uABTp9DsruIhWUTPV2IF1TfmrDnlXKqT
	fWIUlehw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbAgV-0000fF-5b; Tue, 19 May 2020 22:26:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbAgG-0000ca-2a
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 22:25:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6491830E;
 Tue, 19 May 2020 15:25:47 -0700 (PDT)
Received: from e113632-lin (e113632-lin.cambridge.arm.com [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 13FE93F52E;
 Tue, 19 May 2020 15:25:45 -0700 (PDT)
References: <20200519161755.209565-1-maz@kernel.org>
 <20200519161755.209565-2-maz@kernel.org>
User-agent: mu4e 0.9.17; emacs 26.3
From: Valentin Schneider <valentin.schneider@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 01/11] genirq: Add fasteoi IPI flow
In-reply-to: <20200519161755.209565-2-maz@kernel.org>
Date: Tue, 19 May 2020 23:25:43 +0100
Message-ID: <jhj8shnr28o.mognet@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_152548_165446_E7F86881 
X-CRM114-Status: GOOD (  17.70  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Sumit Garg <sumit.garg@linaro.org>, kernel-team@android.com,
 Russell King <linux@arm.linux.org.uk>, Jason Cooper <jason@lakedaemon.net>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 19/05/20 17:17, Marc Zyngier wrote:
> For irqchips using the fasteoi flow, IPIs are a bit special.
>
> They need to be EOId early (before calling the handler), as
> funny things may happen in the handler (they do not necessarily
> behave like a normal interrupt), and that the arch code is
> already handling the stats.
>
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  include/linux/irq.h |  1 +
>  kernel/irq/chip.c   | 26 ++++++++++++++++++++++++++
>  2 files changed, 27 insertions(+)
>
> diff --git a/include/linux/irq.h b/include/linux/irq.h
> index 8d5bc2c237d7..726f94d8b8cc 100644
> --- a/include/linux/irq.h
> +++ b/include/linux/irq.h
> @@ -621,6 +621,7 @@ static inline int irq_set_parent(int irq, int parent_irq)
>   */
>  extern void handle_level_irq(struct irq_desc *desc);
>  extern void handle_fasteoi_irq(struct irq_desc *desc);
> +extern void handle_percpu_devid_fasteoi_ipi(struct irq_desc *desc);
>  extern void handle_edge_irq(struct irq_desc *desc);
>  extern void handle_edge_eoi_irq(struct irq_desc *desc);
>  extern void handle_simple_irq(struct irq_desc *desc);
> diff --git a/kernel/irq/chip.c b/kernel/irq/chip.c
> index 41e7e37a0928..7b0b789cfed4 100644
> --- a/kernel/irq/chip.c
> +++ b/kernel/irq/chip.c
> @@ -955,6 +955,32 @@ void handle_percpu_devid_irq(struct irq_desc *desc)
>               chip->irq_eoi(&desc->irq_data);
>  }
>
> +/**
> + * handle_percpu_devid_fasteoi_ipi - Per CPU local IPI handler with per cpu
> + *				     dev ids
> + * @desc:	the interrupt description structure for this irq
> + *
> + * The biggest differences with the IRQ version are that:
> + * - the interrupt is EOIed early, as the IPI could result in a context
> + *   switch, and we need to make sure the IPI can fire again
> + * - Stats are usually handled at the architecture level, so we ignore them
> + *   here
> + */
> +void handle_percpu_devid_fasteoi_ipi(struct irq_desc *desc)
> +{
> +	struct irq_chip *chip = irq_desc_get_chip(desc);
> +	struct irqaction *action = desc->action;
> +	unsigned int irq = irq_desc_get_irq(desc);
> +	irqreturn_t res;
> +

Tied to the following patch, does that want something like

+	if (!irq_settings_is_no_accounting(desc))
+		__kstat_incr_irqs_this_cpu(desc);
+

While I'm at it, now that we would have IPIs as 'normal' interrupts, what
prevents us from getting rid of the arch-side accounting? Is it just that
we are keeping it as long as handle_IPI() lives, or are there more hurdles
hidden around?

> +	if (chip->irq_eoi)
> +		chip->irq_eoi(&desc->irq_data);
> +
> +	trace_irq_handler_entry(irq, action);
> +	res = action->handler(irq, raw_cpu_ptr(action->percpu_dev_id));
> +	trace_irq_handler_exit(irq, action, res);
> +}
> +
>  /**
>   * handle_percpu_devid_fasteoi_nmi - Per CPU local NMI handler with per cpu
>   *				     dev ids

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
