Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 057AB1E7877
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 10:33:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=J8+De8duvLYA12W1dtMpdfeXJZ9KFdtTx8C4SKEChUA=; b=ScPzohGBmbiZqn9YWHpL26qfI
	8YJNX+F6JYo5i8tXPkv6sruVJivPIG4dS6bJPhd9lNQ3/iQd3ucuUVe4fOb42euw3EHWI7QL286er
	L1RYqNvHw900EB6bBtHbmA2HIOupxkJHPESgs9HY6dxtN5zdDqJT2foqTf3HPfEQThlQKz/h3QLRk
	Jh1yD02V43OZ+haHSySs8S04Gmz382XC3YW9ZCYgwKw5xNs9DrdUniDplk8T/nPameYVtf63RrT0e
	moKzGhOXL/rXOhtMIv1xZ4PIxaPJtqKhSDDnaw+/SEydrzrmosxmAH35RODcOa2/msReMvYTiaPdv
	rs6HNd9uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeaSK-0006Gy-4X; Fri, 29 May 2020 08:33:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeaRQ-0005nD-5L
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 08:32:37 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 95CD2207F5;
 Fri, 29 May 2020 08:32:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590741155;
 bh=c6Aa5ByuhdG16T+5Vu74GnNb0ZM+kd3oe7ecqFSIjgY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=joysJ+Nph1O6ii0Q3g0E5dyYkW2jwQEFd1pZ0jexWpDcDdZDw/XCRQlYlZ20PpBoV
 0f5TU88TMJzW4ub8J2EfxgBtv1ynUdMN48EFzdgrohcbJLLvER467XxLdtOH0hPIUD
 IquyZ2Wcsof87ce7gBTifswM/74D6c7vWMUhM2Lk=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jeaRN-00GDax-PL; Fri, 29 May 2020 09:32:33 +0100
MIME-Version: 1.0
Date: Fri, 29 May 2020 09:32:33 +0100
From: Marc Zyngier <maz@kernel.org>
To: Ali Saidi <alisaidi@amazon.com>
Subject: Re: [PATCH] irqchip/gic-v3-its: Don't try to move a disabled irq
In-Reply-To: <20200529015501.15771-1-alisaidi@amazon.com>
References: <20200529015501.15771-1-alisaidi@amazon.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <8c3be990888ecfb7cca9503853dc4aac@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: alisaidi@amazon.com, tglx@linutronix.de,
 jason@lakedaemon.net, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, benh@amazon.com, dwmw@amazon.com,
 zeev@amazon.com, zorik@amazon.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_013236_314102_C05AE887 
X-CRM114-Status: GOOD (  23.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: benh@amazon.com, Jason Cooper <jason@lakedaemon.net>, zorik@amazon.com,
 linux-kernel@vger.kernel.org, zeev@amazon.com,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 dwmw@amazon.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ali,

On 2020-05-29 02:55, Ali Saidi wrote:
> If an interrupt is disabled the ITS driver has sent a discard removing
> the DeviceID and EventID from the ITT. After this occurs it can't be
> moved to another collection with a MOVI and a command error occurs if
> attempted. Before issuing the MOVI command make sure that the IRQ isn't
> disabled and change the activate code to try and use the previous
> affinity.
> 
> Signed-off-by: Ali Saidi <alisaidi@amazon.com>
> ---
>  drivers/irqchip/irq-gic-v3-its.c | 18 +++++++++++++++---
>  1 file changed, 15 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/irqchip/irq-gic-v3-its.c 
> b/drivers/irqchip/irq-gic-v3-its.c
> index 124251b0ccba..1235dd9a2fb2 100644
> --- a/drivers/irqchip/irq-gic-v3-its.c
> +++ b/drivers/irqchip/irq-gic-v3-its.c
> @@ -1540,7 +1540,11 @@ static int its_set_affinity(struct irq_data *d,
> const struct cpumask *mask_val,
>  	/* don't set the affinity when the target cpu is same as current one 
> */
>  	if (cpu != its_dev->event_map.col_map[id]) {
>  		target_col = &its_dev->its->collections[cpu];
> -		its_send_movi(its_dev, target_col, id);
> +
> +		/* If the IRQ is disabled a discard was sent so don't move */
> +		if (!irqd_irq_disabled(d))
> +			its_send_movi(its_dev, target_col, id);
> +

This looks wrong. What you are testing here is whether the interrupt
is masked, not that there isn't a valid translation.

In the commit message, you're saying that we've issued a discard. This
hints at doing a set_affinity on an interrupt that has been deactivated
(mapping removed). Is that actually the case? If so, why was it 
deactivated
the first place?

>  		its_dev->event_map.col_map[id] = cpu;
>  		irq_data_update_effective_affinity(d, cpumask_of(cpu));
>  	}
> @@ -3439,8 +3443,16 @@ static int its_irq_domain_activate(struct
> irq_domain *domain,
>  	if (its_dev->its->numa_node >= 0)
>  		cpu_mask = cpumask_of_node(its_dev->its->numa_node);
> 
> -	/* Bind the LPI to the first possible CPU */
> -	cpu = cpumask_first_and(cpu_mask, cpu_online_mask);
> +	/* If the cpu set to a different CPU that is still online use it */
> +	cpu = its_dev->event_map.col_map[event];
> +
> +	cpumask_and(cpu_mask, cpu_mask, cpu_online_mask);
> +
> +	if (!cpumask_test_cpu(cpu, cpu_mask)) {
> +		/* Bind the LPI to the first possible CPU */
> +		cpu = cpumask_first(cpu_mask);
> +	}
> +
>  	if (cpu >= nr_cpu_ids) {
>  		if (its_dev->its->flags & ITS_FLAGS_WORKAROUND_CAVIUM_23144)
>  			return -EINVAL;

So you deactivate an interrupt, do a set_affinity that doesn't issue
a MOVI but preserves the affinity, then reactivate it and hope that
the new mapping will target the "right" CPU.

That seems a bit mad, but I presume this isn't the whole story...

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
