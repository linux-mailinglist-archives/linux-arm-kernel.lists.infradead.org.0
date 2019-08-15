Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB678E1A1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 02:03:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bmN5BUq/qypSqRc25xkyAv45DpOy5vThjQ6R+He2Od0=; b=cqXFMUi1fYg5gF
	n6avFnoXfFcQnm3rujRC4sjMQYXb0BLOEopRplHLADmdsRFUbte5ZCvLWpL1twdAPe9mj4DFJmWiq
	Hd10PjM60ku86ypOcysk015DTEe3HZp0GCwY6ZeeQmv3gnQCeKaxKfjuH1k8ZZP3TtDZAvNC3YlPR
	tNDDh4zh1OzfKNssMZ3l2rCqaXYizfhAr8voYfMTJMJFIzOeETt1NPBkXAU+6t/Np1oQ1kd+8arhh
	PhsrY5ZaF4uzfv8SYssQwhZG1DHbjJyRhhkoj6ON5Ura34sb+Ny+uTEjSWTo4ygry5V06BEn2Xn1b
	Gfj3xL9LeVinV/UfYGOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy3EZ-000843-0c; Thu, 15 Aug 2019 00:03:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy3EM-00083c-Jb
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 00:03:04 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3ABAF2086C;
 Thu, 15 Aug 2019 00:03:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565827381;
 bh=RtMAYfIjXbyIwNtKxUn/T57yGlOX78wkZ0yS6geZUQY=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=Gi6hs8MhufhyIXn3oDRGHnWb4PKIOTGT7g3cIUF1p9gUr606juKvhsmvzk1QWdeR3
 TULen+AC/P/9ssDC/6SEiWa676VANHnK6SdDuG0Vxc+8RYqcziRvC5Nv9dDc5x4YL3
 +Sc9H+pDanpJHuW+FrqmQwYKAPUlNAyB2gVaG5Ks=
MIME-Version: 1.0
In-Reply-To: <20190521125114.20357-2-miquel.raynal@bootlin.com>
References: <20190521125114.20357-1-miquel.raynal@bootlin.com>
 <20190521125114.20357-2-miquel.raynal@bootlin.com>
Subject: Re: [PATCH v5 1/4] clk: core: link consumer with clock driver
From: Stephen Boyd <sboyd@kernel.org>
To: Michael Turquette <mturquette@baylibre.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Russell King <linux@armlinux.org.uk>
User-Agent: alot/0.8.1
Date: Wed, 14 Aug 2019 17:03:00 -0700
Message-Id: <20190815000301.3ABAF2086C@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_170302_694570_9ABD74C8 
X-CRM114-Status: GOOD (  27.70  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Antoine Tenart <antoine.tenart@bootlin.com>,
 Gregory Clement <gregory.clement@bootlin.com>, linux-kernel@vger.kernel.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Miquel Raynal (2019-05-21 05:51:10)
> One major concern when, for instance, suspending/resuming a platform
> is to never access registers before the underlying clock has been
> resumed, otherwise most of the time the kernel will just crash. One
> solution is to use syscore operations when registering clock drivers
> suspend/resume callbacks. One problem of using syscore_ops is that the
> suspend/resume scheduling will depend on the order of the
> registrations, which brings (unacceptable) randomness in the process.
> 
> A feature called device links has been introduced to handle such
> situation. It creates dependencies between consumers and providers,
> enforcing e.g. the suspend/resume order when needed. Such feature is
> already in use for regulators.
> 
> Add device links support in the clock subsystem by creating/deleting
> the links at get/put time.
> 
> Example of a boot (ESPRESSObin, A3700 SoC) with devices linked to clocks:
> 
> marvell-armada-3700-tbg-clock d0013200.tbg: Linked as a consumer to d0013800.pinctrl:xtal-clk
> marvell-armada-3700-tbg-clock d0013200.tbg: Dropping the link to d0013800.pinctrl:xtal-clk
> marvell-armada-3700-tbg-clock d0013200.tbg: Linked as a consumer to d0013800.pinctrl:xtal-clk
> marvell-armada-3700-periph-clock d0013000.nb-periph-clk: Linked as a consumer to d0013200.tbg
> marvell-armada-3700-periph-clock d0013000.nb-periph-clk: Linked as a consumer to d0013800.pinctrl:xtal-clk
> marvell-armada-3700-periph-clock d0018000.sb-periph-clk: Linked as a consumer to d0013200.tbg
> mvneta d0030000.ethernet: Linked as a consumer to d0018000.sb-periph-clk
> xhci-hcd d0058000.usb: Linked as a consumer to d0018000.sb-periph-clk
> xenon-sdhci d00d0000.sdhci: Linked as a consumer to d0013000.nb-periph-clk
> xenon-sdhci d00d0000.sdhci: Dropping the link to d0013000.nb-periph-clk
> mvebu-uart d0012000.serial: Linked as a consumer to d0013800.pinctrl:xtal-clk
> advk-pcie d0070000.pcie: Linked as a consumer to d0018000.sb-periph-clk
> xenon-sdhci d00d0000.sdhci: Linked as a consumer to d0013000.nb-periph-clk
> xenon-sdhci d00d0000.sdhci: Linked as a consumer to regulator.1
> cpu cpu0: Linked as a consumer to d0013000.nb-periph-clk
> cpu cpu0: Dropping the link to d0013000.nb-periph-clk
> cpu cpu0: Linked as a consumer to d0013000.nb-periph-clk
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---

This patch doesn't apply. Things have changed upstream.

> 
> diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
> index ec6f04dcf5e6..e6b84ab43f9f 100644
> --- a/drivers/clk/clk.c
> +++ b/drivers/clk/clk.c
> @@ -1676,6 +1710,8 @@ static void clk_reparent(struct clk_core *core, struct clk_core *new_parent)
>  
>                 if (was_orphan != becomes_orphan)
>                         clk_core_update_orphan_status(core, becomes_orphan);
> +
> +               clk_link_hierarchy(core, new_parent);

This isn't going to work.

 BUG: sleeping function called from invalid context at kernel/locking/mutex.c:909
 in_atomic(): 1, irqs_disabled(): 128, pid: 1, name: swapper/0
 3 locks held by swapper/0/1:
  #0: (____ptrval____) (&dev->mutex){....}, at: __device_driver_lock+0x40/0x4c
  #1: (____ptrval____) (prepare_lock){+.+.}, at: clk_prepare_lock+0x18/0x94
  #2: (____ptrval____) (enable_lock){....}, at: clk_enable_lock+0x34/0xdc
 irq event stamp: 311516
 hardirqs last  enabled at (311515): [<ffffff901fce5c90>] _raw_spin_unlock_irqrestore+0x54/0x90
 hardirqs last disabled at (311516): [<ffffff901f73d468>] clk_enable_lock+0x28/0xdc
 softirqs last  enabled at (311348): [<ffffff901f28188c>] __do_softirq+0x4cc/0x514
 softirqs last disabled at (311341): [<ffffff901f2f89ac>] irq_exit+0xd8/0xf8
 CPU: 4 PID: 1 Comm: swapper/0 Tainted: G        W         5.3.0-rc4-00005-g6be06bbec80ef #10
 Hardware name: Google Cheza (rev3+) (DT)
 Call trace:
  dump_backtrace+0x0/0x13c
  show_stack+0x20/0x2c
  dump_stack+0xc4/0x12c
  ___might_sleep+0x1b4/0x1c4
  __might_sleep+0x50/0x88
  __mutex_lock_common+0x5c/0xbfc
  mutex_lock_nested+0x40/0x50
  device_link_add+0x88/0x3ac
  clk_reparent+0xc4/0x114
  __clk_set_parent_before+0x74/0x90
  clk_change_rate+0x98/0x854
  clk_core_set_rate_nolock+0x1b0/0x21c
  clk_set_rate+0x3c/0x6c
  of_clk_set_defaults+0x29c/0x364
  platform_drv_probe+0x28/0xb0
  really_probe+0x130/0x2b4
  driver_probe_device+0x64/0xfc
  device_driver_attach+0x4c/0x6c
  __driver_attach+0xb0/0xc4
  bus_for_each_dev+0x84/0xcc
  driver_attach+0x2c/0x38
  bus_add_driver+0xfc/0x1d0
  driver_register+0x64/0xf0
  __platform_driver_register+0x4c/0x58
  msm_drm_register+0x5c/0x60
  do_one_initcall+0x1e0/0x478
  do_initcall_level+0x21c/0x25c
  do_basic_setup+0x60/0x78
  kernel_init_freeable+0x128/0x1b0
  kernel_init+0x14/0x100
  ret_from_fork+0x10/0x18

>         } else {
>                 hlist_add_head(&core->child_node, &clk_orphan_list);
>                 if (!was_orphan)
> @@ -2402,6 +2438,8 @@ __clk_init_parent(struct clk_core *core, bool update_orphan)
>         if (!parent_hw)
>                 return NULL;
>  
> +       clk_link_hierarchy(core, parent_hw->core);
> +

This is the hunk that doesn't apply anymore.

>         return parent_hw->core;
>  }
>  

The general thought is that it would be good to _not_ call the device
link APIs from deep within the clk parent changing code or even parent
initialization code. It would be better to make device links based on
the possible parents of a clk controller when the clk is registered and
after the clk prepare lock (i.e. the registration lock) is dropped. Is
this possible? The problem is that we're deeply nested in locks that are
already hard to reason about and get out from underneath. I don't want
to get into some sort of ABBA deadlock scenario with the PM core. The
usage of runtime PM in the clk framework is probably busted right now
because it is used under the prepare lock. Ugh.

Is it necessary to add the device links between different clk
controllers either? I mean, is it necessary to create links between clks
and their parents right now?  Maybe we can take the easy way out and
just make links between devices that call clk_get() and the devices that
provide those clks (the consumer side). I suppose you may want to order
suspend/resume of a device with the parent clks of some clk that is
acquired from clk_get(). I hope it isn't required though, because this
is a problem to do with ordering suspend/resume of the clk tree itself,
which isn't really solved at all.

We probably need to solve that by doing something clk provider specific
in the clk framework to figure out a way for device drivers that provide
clks to get callbacks to suspend/resume clks in the clk tree in some
sort of topo-sorted order. That way we can traverse the clk tree and
call down into provider drivers for each clk it registered to do things
like restore the clk frequency or clk enable/prepare state, etc. It
needs to be done in a certain order and it's not possible to flatten
that order into a sequential list of providers (that correspond 1:1 with
devices) given that there are loops between providers.

But from the perspective of a consumer driver like PCI, I don't see why
it needs to care about the clk tree suspend/resume ordering details. It
really only cares that the clk it's consuming, at the edge of the tree,
is resumed before the consumer itself, PCI, is resumed. However the
dependencies of that clk it's consuming is managed, be it with device
links or something clk framework specific, doesn't matter to the PCI
driver. And other clks that are parents or grandparents of the clk
consumed by PCI could have device link dependencies themselves, on
something like an i2c controller or such. Even then, we don't need to
use device links in the clk tree to describe ordering between clks. We
can do it without device links and break the device link chain when it
crosses the clk tree.

  PCI -[device link]-> PCI leaf clk provider -[clk framework ordering black box]-> parent of leaf clk -[device link]-> i2c controller 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
