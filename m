Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A949167C70
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 12:47:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zTSd6nL7jrWMHPWcoauEIOWaKmzsvyAHSOqQXEKOglE=; b=daM/yYep93t3BkDhoAOnaBMP9
	HQp6z6g0hqLIfTz8Z0ot8v1w74YdmaUyp/8/mlULNd4OSB9+L7+0SSmpS5HZ1k6bq/dInGDJ2sgIG
	DVl19nYSylMQhXCDA9k2RatG1vljcaXmVJpb/dDw45AHNVoXDSVIX6mLTv5h+P5DU+lSxjy3KOmoT
	8vIfjwl/vu4KmswkC5jvHWJz1qRD8KVCrwPwTl1rtoIxEAe6kltv0hLqdNnQCgWLEiTU1JaCImBvd
	K5UKKE/x1gqjEaDP8mGJQcTIK9yYSBvJ+GDB8VmkQ+5RBwfbJlyB8g1AUhxAxrUe35thouz2AFTsd
	mo7dymTxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j56lr-0001R2-3Y; Fri, 21 Feb 2020 11:47:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j56lh-0001Qe-QF
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 11:46:55 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6054B222C4;
 Fri, 21 Feb 2020 11:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582285613;
 bh=MmIVHTIib5XbmYmKegaqzUGhvG/1JpO2JkcKz1UU/iU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=XZxYbPIGj/8mA6Nfr1J3xw+Zvf3fhEmi1joXpCEUhS5YqujDjjv+PYVcZ9gRRfdb1
 1khysq58jXEigsFBPLX/Oin/BNF8m2o7gvoIx3t9mPJZwy2rgApci7LNJrFAzWB2jf
 4zmhqz+egyzJhjVZ5LTI0qNac+kJ4mS4QIV/ySkQ=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j56lf-0071gb-Ns; Fri, 21 Feb 2020 11:46:51 +0000
MIME-Version: 1.0
Date: Fri, 21 Feb 2020 11:46:51 +0000
From: Marc Zyngier <maz@kernel.org>
To: Michal Simek <michal.simek@xilinx.com>
Subject: Re: [PATCH 3/3] irqchip: xilinx: Use handle_domain_irq()
In-Reply-To: <49c5a093d7ba1f20930c7433ed632e7c9bc7a2cb.1581496793.git.michal.simek@xilinx.com>
References: <cover.1581496793.git.michal.simek@xilinx.com>
 <49c5a093d7ba1f20930c7433ed632e7c9bc7a2cb.1581496793.git.michal.simek@xilinx.com>
Message-ID: <f028666cf1b1af428ad0564c4f93688b@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: michal.simek@xilinx.com, linux-kernel@vger.kernel.org,
 monstr@monstr.eu, git@xilinx.com, stefan.asserhall@xilinx.com,
 jason@lakedaemon.net, tglx@linutronix.de, linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_034653_891958_4CAAD6C5 
X-CRM114-Status: GOOD (  18.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stefan Asserhall <stefan.asserhall@xilinx.com>, monstr@monstr.eu,
 Jason Cooper <jason@lakedaemon.net>, linux-kernel@vger.kernel.org,
 git@xilinx.com, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-12 08:39, Michal Simek wrote:
> Call generic domain specific irq handler which does the most of things
> self. Also get rid of concurrent_irq counting which hasn't been 
> exported
> anywhere.
> Based on this loop was also optimized by using do/while loop instead of
> goto loop.
> 
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> Reviewed-by: Stefan Asserhall <stefan.asserhall@xilinx.com>
> ---
> 
>  arch/microblaze/Kconfig           |  1 +
>  arch/microblaze/kernel/irq.c      |  5 ----
>  drivers/irqchip/irq-xilinx-intc.c | 44 +++++++++++--------------------
>  3 files changed, 16 insertions(+), 34 deletions(-)
> 
> diff --git a/arch/microblaze/Kconfig b/arch/microblaze/Kconfig
> index 3a314aa2efa1..242f58ec086b 100644
> --- a/arch/microblaze/Kconfig
> +++ b/arch/microblaze/Kconfig
> @@ -48,6 +48,7 @@ config MICROBLAZE
>  	select MMU_GATHER_NO_RANGE if MMU
>  	select SPARSE_IRQ
>  	select GENERIC_IRQ_MULTI_HANDLER
> +	select HANDLE_DOMAIN_IRQ
> 
>  # Endianness selection
>  choice
> diff --git a/arch/microblaze/kernel/irq.c 
> b/arch/microblaze/kernel/irq.c
> index 1f8cb4c4f74f..0b37dde60a1e 100644
> --- a/arch/microblaze/kernel/irq.c
> +++ b/arch/microblaze/kernel/irq.c
> @@ -22,13 +22,8 @@
> 
>  void __irq_entry do_IRQ(struct pt_regs *regs)
>  {
> -	struct pt_regs *old_regs = set_irq_regs(regs);
>  	trace_hardirqs_off();
> -
> -	irq_enter();
>  	handle_arch_irq(regs);
> -	irq_exit();
> -	set_irq_regs(old_regs);
>  	trace_hardirqs_on();
>  }
> 
> diff --git a/drivers/irqchip/irq-xilinx-intc.c
> b/drivers/irqchip/irq-xilinx-intc.c
> index ad9e678c24ac..fa468e618762 100644
> --- a/drivers/irqchip/irq-xilinx-intc.c
> +++ b/drivers/irqchip/irq-xilinx-intc.c
> @@ -125,20 +125,6 @@ static unsigned int xintc_get_irq_local(struct
> xintc_irq_chip *irqc)
>  	return irq;
>  }
> 
> -static unsigned int xintc_get_irq(void)
> -{
> -	u32 hwirq;
> -	unsigned int irq = -1;
> -
> -	hwirq = xintc_read(primary_intc, IVR);
> -	if (hwirq != -1U)
> -		irq = irq_find_mapping(primary_intc->root_domain, hwirq);
> -
> -	pr_debug("irq-xilinx: hwirq=%d, irq=%d\n", hwirq, irq);
> -
> -	return irq;
> -}
> -
>  static int xintc_map(struct irq_domain *d, unsigned int irq,
> irq_hw_number_t hw)
>  {
>  	struct xintc_irq_chip *irqc = d->host_data;
> @@ -178,23 +164,23 @@ static void xil_intc_irq_handler(struct irq_desc 
> *desc)
>  	chained_irq_exit(chip, desc);
>  }
> 
> -static u32 concurrent_irq;
> -
>  static void xil_intc_handle_irq(struct pt_regs *regs)
>  {
> -	unsigned int irq;
> -
> -	irq = xintc_get_irq();
> -next_irq:
> -	BUG_ON(!irq);
> -	generic_handle_irq(irq);
> -
> -	irq = xintc_get_irq();
> -	if (irq != -1U) {
> -		pr_debug("next irq: %d\n", irq);
> -		++concurrent_irq;
> -		goto next_irq;
> -	}
> +	u32 hwirq;
> +	struct xintc_irq_chip *irqc = primary_intc;
> +
> +	do {
> +		hwirq = xintc_read(irqc, IVR);
> +		if (hwirq != -1U) {
> +			int ret;
> +
> +			ret = handle_domain_irq(irqc->root_domain, hwirq, regs);
> +			WARN_ONCE(ret, "Unhandled HWIRQ %d\n", hwirq);
> +			continue;
> +		}
> +
> +		break;
> +	} while (1);

OK, so this what I suggested already. Just squash the two patches
in one, there is no point in keeping them separate.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
