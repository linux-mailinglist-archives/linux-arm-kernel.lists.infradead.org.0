Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 415F318506C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 21:39:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cry3MYQcWuFZZdMPOST+npJ6GnIdLzcDpQuUhB2N1KU=; b=sadKJ126GLYvwg
	t9iPZzLNsPSZMuuj1zoGWvQiOfN0AgAvxG9YzOO9eMFA+2v1pafUOhd5GgHGCQUqI7wVCQRqUMGcO
	GRhmOIGCicZkPYBnsfyusVgdH6GBhOEz1/NoSy5bKVQwha9tMDceQiSYrwjt0tzcl/wwg9UXIS5EN
	d1JghUu5+LPEbnX1MevkE8SKgdhbazX5sN2+BeZv3eeViYXEYCYAp8pz/3guQXAn38BCtWYCwKpqz
	9YPXqxadkqHHxx/8KQHE0w2Azvh8mqTkq5BHjq8RvNgkaXYUg885UFprFNg3xluA/Y6iOuWtulzUB
	31nYvxd4rDuT1fPVglqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCr5f-0001Tm-UN; Fri, 13 Mar 2020 20:39:31 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCr5X-0001Sn-LQ
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 20:39:25 +0000
X-Originating-IP: 87.231.134.186
Received: from localhost (87-231-134-186.rev.numericable.fr [87.231.134.186])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 744E420007;
 Fri, 13 Mar 2020 20:39:15 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: afzal mohammed <afzal.mohd.ma@gmail.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Jason Cooper <jason@lakedaemon.net>,
 Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] ARM: orion: replace setup_irq() by request_irq()
In-Reply-To: <20200301122330.4296-1-afzal.mohd.ma@gmail.com>
References: <20200301122330.4296-1-afzal.mohd.ma@gmail.com>
Date: Fri, 13 Mar 2020 21:39:15 +0100
Message-ID: <87sgicxa4s.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_133923_839248_69794E69 
X-CRM114-Status: GOOD (  14.68  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: afzal mohammed <afzal.mohd.ma@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi afzal,

> request_irq() is preferred over setup_irq(). Invocations of setup_irq()
> occur after memory allocators are ready.
>
> Per tglx[1], setup_irq() existed in olden days when allocators were not
> ready by the time early interrupts were initialized.
>
> Hence replace setup_irq() by request_irq().
>
> [1] https://lkml.kernel.org/r/alpine.DEB.2.20.1710191609480.1971@nanos
>
> Signed-off-by: afzal mohammed <afzal.mohd.ma@gmail.com>

Applied on mvebu/arm

Thanks,

Gregory

> ---
> Hi sub-arch maintainers,
>
> If the patch is okay, please take it thr' your tree.
>
> Regards
> afzal
>
> v3:
>  * Split out from series, also split out from ARM patch to subarch level
> 	as Thomas suggested to take it thr' respective maintainers
>  * Modify string displayed in case of error as suggested by Thomas
>  * Re-arrange code as required to improve readability
>  * Remove irrelevant parts from commit message & improve
>  
> v2:
>  * Replace pr_err("request_irq() on %s failed" by
>            pr_err("%s: request_irq() failed"
>  * Commit message massage
>
>  arch/arm/plat-orion/time.c | 10 +++-------
>  1 file changed, 3 insertions(+), 7 deletions(-)
>
> diff --git a/arch/arm/plat-orion/time.c b/arch/arm/plat-orion/time.c
> index ffb93db68e9c..509d4824dc1c 100644
> --- a/arch/arm/plat-orion/time.c
> +++ b/arch/arm/plat-orion/time.c
> @@ -177,12 +177,6 @@ static irqreturn_t orion_timer_interrupt(int irq, void *dev_id)
>  	return IRQ_HANDLED;
>  }
>  
> -static struct irqaction orion_timer_irq = {
> -	.name		= "orion_tick",
> -	.flags		= IRQF_TIMER,
> -	.handler	= orion_timer_interrupt
> -};
> -
>  void __init
>  orion_time_set_base(void __iomem *_timer_base)
>  {
> @@ -236,7 +230,9 @@ orion_time_init(void __iomem *_bridge_base, u32 _bridge_timer1_clr_mask,
>  	/*
>  	 * Setup clockevent timer (interrupt-driven).
>  	 */
> -	setup_irq(irq, &orion_timer_irq);
> +	if (request_irq(irq, orion_timer_interrupt, IRQF_TIMER, "orion_tick",
> +			NULL))
> +		pr_err("Failed to request irq %u (orion_tick)\n", irq);
>  	orion_clkevt.cpumask = cpumask_of(0);
>  	clockevents_config_and_register(&orion_clkevt, tclk, 1, 0xfffffffe);
>  }
> -- 
> 2.25.1
>

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
