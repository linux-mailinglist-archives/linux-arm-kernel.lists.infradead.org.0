Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 458A61A7DCD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 15:25:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w7rwhRKycB5vUJyRD/EzDiYnss5z2Mz2rzQaowecXkg=; b=pNIzFjmoXa55Sv
	/ang6QkWUAvHtBYSDcKW5IwbJJmvzPgLcOS1cQbKRjVC/aLpq/ArY0fAE0syw06f5A5FiegMNMxqv
	0jmqy4y8jPKg56t9j41oYa0tTF6e5LViavDv+fl0fFD8rG2XY3AmEtU5joE7lyUO/bEwGXEZuzEO8
	ZJrRcynryj7RcPrJeaV1V6QTxOasbB7l+BffTQ/68+KtVcf6IrRF45bv35nGLgPV3c1CM6qMvrFBU
	Qx+7KneQ9DKElQu2HPdsFy2zU+cnqZJlXOKM98gc4b1MTWAUnVr7A4Y+JnPHD8mnHc11n8/CPA1i0
	e5RdErkzzmQNOhO/kpNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOLZM-0000lg-1V; Tue, 14 Apr 2020 13:25:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLUE-0000sh-8N
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 13:20:24 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2AB282075E;
 Tue, 14 Apr 2020 13:20:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586870421;
 bh=UpxxYfMQiPsStRBk2vSRrNmutVvInJSvPdMUZH13yMc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=LLnblHt6MLccFn5zAeLwboh9LyZ5CVGfTwofL8QWEMrv0rCDOpvm0ymMexeZYvaWx
 COY3VPn+iOPcTK7ulvc5KT9nmMikRIpnp9hXgHQm03ggEcRW7XRf40C5P4D04Fkf96
 uI+uNGJHcAMB78gOwhRnxStZyeTvZWHQtBYxrrWs=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jOLUB-003A4M-GJ; Tue, 14 Apr 2020 14:20:19 +0100
Date: Tue, 14 Apr 2020 14:20:18 +0100
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] irqchip/meson-gpio: Fix HARDIRQ-safe -> HARDIRQ-unsafe
 lock order
Message-ID: <20200414142018.6e7e5ec3@why>
In-Reply-To: <20200407144658.829246-1-maz@kernel.org>
References: <20200407144658.829246-1-maz@kernel.org>
Organization: Approximate
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, tglx@linutronix.de, jason@lakedaemon.net,
 khilman@baylibre.com, jbrunet@baylibre.com, martin.blumenstingl@googlemail.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_062022_370098_0D4EB244 
X-CRM114-Status: GOOD (  24.02  )
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, Thomas Gleixner <tglx@linutronix.de>,
 Jason Cooper <jason@lakedaemon.net>, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue,  7 Apr 2020 15:46:58 +0100
Marc Zyngier <maz@kernel.org> wrote:

+Jerome, Martin,

> Running a lockedp-enabled kernel on a vim3l board (Amlogic SM1)
> leads to the following splat:
> 
> [   13.557138] WARNING: HARDIRQ-safe -> HARDIRQ-unsafe lock order detected
> [   13.587485] ip/456 [HC0[0]:SC0[0]:HE0:SE1] is trying to acquire:
> [   13.625922] ffff000059908cf0 (&irq_desc_lock_class){-.-.}-{2:2}, at: __setup_irq+0xf8/0x8d8
> [   13.632273] which would create a new lock dependency:
> [   13.637272]  (&irq_desc_lock_class){-.-.}-{2:2} -> (&ctl->lock){+.+.}-{2:2}
> [   13.644209]
> [   13.644209] but this new dependency connects a HARDIRQ-irq-safe lock:
> [   13.654122]  (&irq_desc_lock_class){-.-.}-{2:2}
> [   13.654125]
> [   13.654125] ... which became HARDIRQ-irq-safe at:
> [   13.664759]   lock_acquire+0xec/0x368
> [   13.666926]   _raw_spin_lock+0x60/0x88
> [   13.669979]   handle_fasteoi_irq+0x30/0x178
> [   13.674082]   generic_handle_irq+0x38/0x50
> [   13.678098]   __handle_domain_irq+0x6c/0xc8
> [   13.682209]   gic_handle_irq+0x5c/0xb0
> [   13.685872]   el1_irq+0xd0/0x180
> [   13.689010]   arch_cpu_idle+0x40/0x220
> [   13.692732]   default_idle_call+0x54/0x60
> [   13.696677]   do_idle+0x23c/0x2e8
> [   13.699903]   cpu_startup_entry+0x30/0x50
> [   13.703852]   rest_init+0x1e0/0x2b4
> [   13.707301]   arch_call_rest_init+0x18/0x24
> [   13.711449]   start_kernel+0x4ec/0x51c
> [   13.715167]
> [   13.715167] to a HARDIRQ-irq-unsafe lock:
> [   13.722426]  (&ctl->lock){+.+.}-{2:2}
> [   13.722430]
> [   13.722430] ... which became HARDIRQ-irq-unsafe at:
> [   13.732319] ...
> [   13.732324]   lock_acquire+0xec/0x368
> [   13.735985]   _raw_spin_lock+0x60/0x88
> [   13.739452]   meson_gpio_irq_domain_alloc+0xcc/0x290
> [   13.744392]   irq_domain_alloc_irqs_hierarchy+0x24/0x60
> [   13.749586]   __irq_domain_alloc_irqs+0x160/0x2f0
> [   13.754254]   irq_create_fwspec_mapping+0x118/0x320
> [   13.759073]   irq_create_of_mapping+0x78/0xa0
> [   13.763360]   of_irq_get+0x6c/0x80
> [   13.766701]   of_mdiobus_register_phy+0x10c/0x238 [of_mdio]
> [   13.772227]   of_mdiobus_register+0x158/0x380 [of_mdio]
> [   13.777388]   mdio_mux_init+0x180/0x2e8 [mdio_mux]
> [   13.782128]   g12a_mdio_mux_probe+0x290/0x398 [mdio_mux_meson_g12a]
> [   13.788349]   platform_drv_probe+0x5c/0xb0
> [   13.792379]   really_probe+0xe4/0x448
> [   13.795979]   driver_probe_device+0xe8/0x140
> [   13.800189]   __device_attach_driver+0x94/0x120
> [   13.804639]   bus_for_each_drv+0x84/0xd8
> [   13.808474]   __device_attach+0xe4/0x168
> [   13.812361]   device_initial_probe+0x1c/0x28
> [   13.816592]   bus_probe_device+0xa4/0xb0
> [   13.820430]   deferred_probe_work_func+0xa8/0x100
> [   13.825064]   process_one_work+0x264/0x688
> [   13.829088]   worker_thread+0x4c/0x458
> [   13.832768]   kthread+0x154/0x158
> [   13.836018]   ret_from_fork+0x10/0x18
> [   13.839612]
> [   13.839612] other info that might help us debug this:
> [   13.839612]
> [   13.850354]  Possible interrupt unsafe locking scenario:
> [   13.850354]
> [   13.855720]        CPU0                    CPU1
> [   13.858774]        ----                    ----
> [   13.863242]   lock(&ctl->lock);
> [   13.866330]                                local_irq_disable();
> [   13.872233]                                lock(&irq_desc_lock_class);
> [   13.878705]                                lock(&ctl->lock);
> [   13.884297]   <Interrupt>
> [   13.886857]     lock(&irq_desc_lock_class);
> [   13.891014]
> [   13.891014]  *** DEADLOCK ***
> 
> The issue can occur when CPU1 is doing something like irq_set_type()
> and CPU0 performing an interrupt allocation, for example. Taking
> an interrupt (like the one being reconfigured) would lead to a deadlock.
> 
> A solution to this is:
> 
> - Reorder the locking so that meson_gpio_irq_update_bits takes the lock
>   itself at all times, instead of relying on the caller to lock or not,
>   hence making the RMW sequence atomic,
> 
> - Rework the critical section in meson_gpio_irq_request_channel to only
>   cover the allocation itself, and let the gpio_irq_sel_pin callback
>   deal with its own locking if required,
> 
> - Take the private spin-lock with interrupts disabled at all times
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  drivers/irqchip/irq-meson-gpio.c | 18 ++++++++++--------
>  1 file changed, 10 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/irqchip/irq-meson-gpio.c b/drivers/irqchip/irq-meson-gpio.c
> index ccc7f823911b..bc7aebcc96e9 100644
> --- a/drivers/irqchip/irq-meson-gpio.c
> +++ b/drivers/irqchip/irq-meson-gpio.c
> @@ -144,12 +144,17 @@ struct meson_gpio_irq_controller {
>  static void meson_gpio_irq_update_bits(struct meson_gpio_irq_controller *ctl,
>  				       unsigned int reg, u32 mask, u32 val)
>  {
> +	unsigned long flags;
>  	u32 tmp;
>  
> +	spin_lock_irqsave(&ctl->lock, flags);
> +
>  	tmp = readl_relaxed(ctl->base + reg);
>  	tmp &= ~mask;
>  	tmp |= val;
>  	writel_relaxed(tmp, ctl->base + reg);
> +
> +	spin_unlock_irqrestore(&ctl->lock, flags);
>  }
>  
>  static void meson_gpio_irq_init_dummy(struct meson_gpio_irq_controller *ctl)
> @@ -196,14 +201,15 @@ meson_gpio_irq_request_channel(struct meson_gpio_irq_controller *ctl,
>  			       unsigned long  hwirq,
>  			       u32 **channel_hwirq)
>  {
> +	unsigned long flags;
>  	unsigned int idx;
>  
> -	spin_lock(&ctl->lock);
> +	spin_lock_irqsave(&ctl->lock, flags);
>  
>  	/* Find a free channel */
>  	idx = find_first_zero_bit(ctl->channel_map, NUM_CHANNEL);
>  	if (idx >= NUM_CHANNEL) {
> -		spin_unlock(&ctl->lock);
> +		spin_unlock_irqrestore(&ctl->lock, flags);
>  		pr_err("No channel available\n");
>  		return -ENOSPC;
>  	}
> @@ -211,6 +217,8 @@ meson_gpio_irq_request_channel(struct meson_gpio_irq_controller *ctl,
>  	/* Mark the channel as used */
>  	set_bit(idx, ctl->channel_map);
>  
> +	spin_unlock_irqrestore(&ctl->lock, flags);
> +
>  	/*
>  	 * Setup the mux of the channel to route the signal of the pad
>  	 * to the appropriate input of the GIC
> @@ -225,8 +233,6 @@ meson_gpio_irq_request_channel(struct meson_gpio_irq_controller *ctl,
>  	 */
>  	*channel_hwirq = &(ctl->channel_irqs[idx]);
>  
> -	spin_unlock(&ctl->lock);
> -
>  	pr_debug("hwirq %lu assigned to channel %d - irq %u\n",
>  		 hwirq, idx, **channel_hwirq);
>  
> @@ -287,13 +293,9 @@ static int meson_gpio_irq_type_setup(struct meson_gpio_irq_controller *ctl,
>  			val |= REG_EDGE_POL_LOW(params, idx);
>  	}
>  
> -	spin_lock(&ctl->lock);
> -
>  	meson_gpio_irq_update_bits(ctl, REG_EDGE_POL,
>  				   REG_EDGE_POL_MASK(params, idx), val);
>  
> -	spin_unlock(&ctl->lock);
> -
>  	return 0;
>  }
>  



-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
