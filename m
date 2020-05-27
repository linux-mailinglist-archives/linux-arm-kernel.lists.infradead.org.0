Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1761E4B10
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:54:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=E0CxreHxbZ9tlCM9qECyls3Ha8alRHtlRCjN3Cil0jQ=; b=bjFZDGO6KKGw/eqXwOZoZ7Wlh
	1SQ03hNVXyIxMabMi1pW8h7ZrkmUxO+t8bVZvQYBTsaqiee4RoEF452huzDLxk542J0LDNKNQ9Rjg
	1LWzeZFX50BH/dzKk6pVZHwT20a8a5gS5hbUXzcEU0r1vm04Jv6SNONceY/xyMrIzd0x+Wmm23E85
	+Uc4WA9jTOsCKNFCL20hWZsq1eGOw3jlHYOFuAaTQh9nwebWGni7R55GBuqY9a524rVracY5hVajD
	5p88p2Kuv8AGEaAW+Rn3lXZLcCSZCXdEbPi8AuOMUYInNjurmn0LWhL2gThknxMlAB4dz+KGWdhWc
	cD3CJCIHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdzJa-0004sf-3g; Wed, 27 May 2020 16:54:02 +0000
Received: from merlin.infradead.org ([205.233.59.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdzJP-0004cH-6L; Wed, 27 May 2020 16:53:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Message-ID:References:In-Reply-To:
 Subject:Cc:To:From:Date:Content-Transfer-Encoding:Content-Type:MIME-Version:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=xy+PfdK7YcU+GoHJR/8613zlxNxsTfUuJJMNWDIOEsU=; b=1pg7ZmKY6IuO4JL4XQ/oq57prU
 MVQHCbZw3k1NwX8fg+29SagPs6z2vnnIF7GfnQofB9aTUIwkzNC3/3LFNL9w6AsT7d5EyR2Wp+xQa
 Y38IY/aO8V6XhduSMA2dukhF+ZRekfYqdD1Cg+S7eMlMDnJ2dwvaRnZ1VnPifAhmJ5a/979zATFJR
 GE13bZKshpyIGerNzUUdFyRRV8Esxfz5J6Ocl6Bh5Nj2JEZxrL/AssIuwkuxkNMcohcIs1yczstUf
 VRHgern67rkNOgSX3AR3BXABrnZ2JJj2mUy9QeOx3VunqxdABLSQVYe62X6Ze2rZDLxdB/KK+e1l4
 WWCOBCXA==;
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdz4y-0002us-8t; Wed, 27 May 2020 16:38:57 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6249F2084C;
 Wed, 27 May 2020 16:38:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590597534;
 bh=HImJ4+KBT1EItcn7tHo4ZDvj8h7g5bsCnSP3idyTnU8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ziHCJc/BkN4BvcBfyp/vV678CKeJooERoRC/JHPfVI9uPFNE7ChPPE7R71siTdQ6T
 eDlmgsW+zRblIqKUT6Sz2ocsAh5noae3yuV9twRi95GCuRjNeeItJF7oczZwe2nJfv
 +yOmrJLGSpSBagyJ0EJQpyFCk/SP5A24OdyZK8s0=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jdz4u-00FlZB-JU; Wed, 27 May 2020 17:38:52 +0100
MIME-Version: 1.0
Date: Wed, 27 May 2020 17:38:52 +0100
From: Marc Zyngier <maz@kernel.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Subject: Re: [PATCH] irqchip/irq-mtk-sysirq: drop unnecessary spinlock
In-Reply-To: <20200527161743.15972-1-brgl@bgdev.pl>
References: <20200527161743.15972-1-brgl@bgdev.pl>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <58fca7418c8d18392562aaad2c3a6634@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: brgl@bgdev.pl, tglx@linutronix.de, jason@lakedaemon.net,
 matthias.bgg@gmail.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 fparent@baylibre.com, stephane.leprovost@mediatek.com, pedro.tsai@mediatek.com,
 andrew.perepech@mediatek.com, bgolaszewski@baylibre.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-kernel@vger.kernel.org,
 Fabien Parent <fparent@baylibre.com>, linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-27 17:17, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> 
> This driver takes a regular spinlock when a raw spinlock is already
> taken which results in the following lockdep splat:
> 
> =============================
> [ BUG: Invalid wait context ]
> 5.7.0-rc6-02446-gb9827c0a9fe7-dirty #1 Not tainted
> -----------------------------
> swapper/0/0 is trying to lock:
> ffffff800303b798 (&chip_data->lock){....}-{3:3}, at:
> mtk_sysirq_set_type+0x48/0xc0
> other info that might help us debug this:
> context-{5:5}
> 2 locks held by swapper/0/0:
>  #0: ffffff800302ee68 (&desc->request_mutex){....}-{4:4}, at:
> __setup_irq+0xc4/0x8a0
>  #1: ffffff800302ecf0 (&irq_desc_lock_class){....}-{2:2}, at:
> __setup_irq+0xe4/0x8a0
> stack backtrace:
> CPU: 0 PID: 0 Comm: swapper/0 Not tainted 
> 5.7.0-rc6-02446-gb9827c0a9fe7-dirty #1
> Hardware name: Pumpkin MT8516 (DT)
> Call trace:
>  dump_backtrace+0x0/0x180
>  show_stack+0x14/0x20
>  dump_stack+0xd0/0x118
>  __lock_acquire+0x8c8/0x2270
>  lock_acquire+0xf8/0x470
>  _raw_spin_lock_irqsave+0x50/0x78
>  mtk_sysirq_set_type+0x48/0xc0
>  __irq_set_trigger+0x58/0x170
>  __setup_irq+0x420/0x8a0
>  request_threaded_irq+0xd8/0x190
>  timer_of_init+0x1e8/0x2c4
>  mtk_gpt_init+0x5c/0x1dc
>  timer_probe+0x74/0xf4
>  time_init+0x14/0x44
>  start_kernel+0x394/0x4f0
> 
> We don't need the spinlock here - the irq_set_type() callback is always
> called with the irq_desc->lock taken. This removes the spinlock 
> entirely.

It looks really great. Not.

> 
> Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> ---
>  drivers/irqchip/irq-mtk-sysirq.c | 6 ------
>  1 file changed, 6 deletions(-)
> 
> diff --git a/drivers/irqchip/irq-mtk-sysirq.c 
> b/drivers/irqchip/irq-mtk-sysirq.c
> index 73eae5966a40..da2fc4809222 100644
> --- a/drivers/irqchip/irq-mtk-sysirq.c
> +++ b/drivers/irqchip/irq-mtk-sysirq.c
> @@ -12,10 +12,8 @@
>  #include <linux/of_address.h>
>  #include <linux/io.h>
>  #include <linux/slab.h>
> -#include <linux/spinlock.h>
> 
>  struct mtk_sysirq_chip_data {
> -	spinlock_t lock;
>  	u32 nr_intpol_bases;
>  	void __iomem **intpol_bases;
>  	u32 *intpol_words;
> @@ -30,14 +28,12 @@ static int mtk_sysirq_set_type(struct irq_data
> *data, unsigned int type)
>  	u8 intpol_idx = chip_data->intpol_idx[hwirq];
>  	void __iomem *base;
>  	u32 offset, reg_index, value;
> -	unsigned long flags;
>  	int ret;
> 
>  	base = chip_data->intpol_bases[intpol_idx];
>  	reg_index = chip_data->which_word[hwirq];
>  	offset = hwirq & 0x1f;
> 
> -	spin_lock_irqsave(&chip_data->lock, flags);
>  	value = readl_relaxed(base + reg_index * 4);
>  	if (type == IRQ_TYPE_LEVEL_LOW || type == IRQ_TYPE_EDGE_FALLING) {
>  		if (type == IRQ_TYPE_LEVEL_LOW)
> @@ -53,7 +49,6 @@ static int mtk_sysirq_set_type(struct irq_data
> *data, unsigned int type)
> 
>  	data = data->parent_data;
>  	ret = data->chip->irq_set_type(data, type);
> -	spin_unlock_irqrestore(&chip_data->lock, flags);
>  	return ret;
>  }
> 
> @@ -212,7 +207,6 @@ static int __init mtk_sysirq_of_init(struct
> device_node *node,
>  		ret = -ENOMEM;
>  		goto out_free_which_word;
>  	}
> -	spin_lock_init(&chip_data->lock);
> 
>  	return 0;

Sight... Do you realize that these two locks do not protect the same
thing at all? One protects the interrupt data, and the other protects
the MMIO register which is shared between multiple interrupts, and
on which the driver performs a RMW.

Thanks to the removal of this spinlock, two irq_set_type() can execute
in parallel and silently corrupt the register. Not exactly an 
improvement.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
