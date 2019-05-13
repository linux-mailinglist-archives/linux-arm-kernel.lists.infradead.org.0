Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 956F01B1F9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 10:37:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RvgFcb4x28XWX5805Uv6U3ix9vm7ZNEvZP172ZOIqp8=; b=HZtRJuRQx8Q0Nx
	o3IBcIwfQKLOBJaasDGazx3RAHYQgwOKqlmYv5QVrwjdOwU+APcvCgrgNcj9MWJxPF7Q4pii+Gm0b
	0qOptunc9i/Z6CjcseVWLsedeE8M4D1UNt66URUOLQpWK88CdmP7ZdoSt7DtFVz4jjfI+wg94knuc
	6fU0741sYOEz5jT0LTpWBpancXfxOfifZkpdR48m2ZnFsf7vU548FJVc7cNSUYABi+GJPqrcSpgEa
	kIiLIwpo5UathJLqC5g8ukF9WvNo3McrWYvLxZUdDIvxK0tkuuUGMhcrypL1HIwDltFrpu+NaDVXY
	BltXGD/W7OqSIZXSl3Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ6Sv-00059B-BF; Mon, 13 May 2019 08:37:45 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ6SQ-0004on-Tu
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 08:37:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F1CBA15AB;
 Mon, 13 May 2019 01:37:11 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 35F063F7B7;
 Mon, 13 May 2019 01:37:10 -0700 (PDT)
Date: Mon, 13 May 2019 09:37:04 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Zenghui Yu <yuzenghui@huawei.com>
Subject: Re: [RFC PATCH] irqchip/gic-v3: Correct the usage of GICD_CTLR's
 RWP field
Message-ID: <20190513093704.0b293de0@donnerap.cambridge.arm.com>
In-Reply-To: <1557720954-6592-1-git-send-email-yuzenghui@huawei.com>
References: <1557720954-6592-1-git-send-email-yuzenghui@huawei.com>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_013715_571956_43AA6D97 
X-CRM114-Status: GOOD (  24.86  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: drjones@redhat.com, jason@lakedaemon.net, marc.zyngier@arm.com,
 linux-kernel@vger.kernel.org, eric.auger@redhat.com,
 wanghaibin.wang@huawei.com, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 13 May 2019 04:15:54 +0000
Zenghui Yu <yuzenghui@huawei.com> wrote:

Hi,

> As per ARM IHI 0069D, GICD_CTLR's RWP field tracks updates to:
> 
> 	GICD_CTLR's Group Enable bits, for transitions from 1 to 0 only
> 	GICD_CTLR's ARE bits, E1NWF bit and DS bit (if we have)
> 	GICD_ICENABLER<n>
> 
> We seemed use this field in an inappropriate way, somewhere in the
> GIC-v3 driver. For some examples:
> 
> In gic_set_affinity(), if the interrupt was not enabled, we only need
> to write GICD_IROUTER<n> with the appropriate mpidr value. Updates to
> GICD_IROUTER will not be tracked by RWP field, and we can remove the
> unnecessary RWP waiting.

I am not sure this is the proper fix, see below inline.

> In gic_dist_init(), we "Enable distributor with ARE, Group1" by writing
> to GICD_CTLR, and we should use gic_dist_wait_for_rwp() here.

That looks reasonable, yes.

> These two are obvious cases, and there are some other cases where we don't
> need to do RWP waiting, such as in gic_configure_irq() and gic_poke_irq().
> But too many modifications makes me not confident. It's hard for me to say
> whether this patch is doing the right thing and how does the RWP waiting
> affect the system, thus RFC.

So did you actually see a problem, and this patch fixes it? Or was this
just discovered by code inspection and comparing to the spec?

> Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
> ---
>  drivers/irqchip/irq-gic-v3.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
> index 15e55d3..8d63950 100644
> --- a/drivers/irqchip/irq-gic-v3.c
> +++ b/drivers/irqchip/irq-gic-v3.c
> @@ -600,6 +600,7 @@ static void __init gic_dist_init(void)
>  	/* Enable distributor with ARE, Group1 */
>  	writel_relaxed(GICD_CTLR_ARE_NS | GICD_CTLR_ENABLE_G1A |
> GICD_CTLR_ENABLE_G1, base + GICD_CTLR);
> +	gic_dist_wait_for_rwp();
>  
>  	/*
>  	 * Set all global interrupts to the boot CPU only. ARE must be
> @@ -986,14 +987,9 @@ static int gic_set_affinity(struct irq_data *d,
> const struct cpumask *mask_val, 
>  	gic_write_irouter(val, reg);
>  
> -	/*
> -	 * If the interrupt was enabled, enabled it again. Otherwise,
> -	 * just wait for the distributor to have digested our changes.
> -	 */
> +	/* If the interrupt was enabled, enabled it again. */
>  	if (enabled)
>  		gic_unmask_irq(d);
> -	else
> -		gic_dist_wait_for_rwp();

I think you are right in this is not needed here.
But I guess this call belongs further up in this function, after the
gic_mask_irq() call, as this one writes to GICD_ICENABLER. So in case this
IRQ was enabled, we should wait for the distributor to have properly
disabled it, before changing its affinity.

Cheers,
Andre.

>  
>  	irq_data_update_effective_affinity(d, cpumask_of(cpu));
>  


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
