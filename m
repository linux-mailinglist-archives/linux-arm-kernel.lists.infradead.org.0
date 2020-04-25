Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6756F1B85B2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Apr 2020 12:30:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UG6wxpc+c4TR7sPDlokkpRCFl5dNN+VWcb6P/I9FJzE=; b=dzZ8A+ozWwNU+x
	yXFPd6A7V/2nuMlEy+op4pGjezuD5U9nXnPzpHR/g9DqF1eEIyNarV0VfJrGIs88UXanNB1CxSC9V
	H71bauK2412DmEz2O4di16aR08hlOdVL0F75gUpDaslKJZdt11nLRXZtqZRImBn3T7WxkcBDS6Hcz
	w5EtKQg9mfgGuxiTAGrD0yaroycARPXH8ejNF0doqFN/GMfnoQoj/okrhZEH4CwwOYSHISWCs8CLq
	1H68Y0jdTDp1J+qRGDRKfJ2lJ6G1gqqUk+FwxUd2mKA2fmZvxO+4m7H4gjjyY941OIFON2i9J3HHW
	8x1QPUhO/CXJPaxtdKRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSI4d-0000Tg-GG; Sat, 25 Apr 2020 10:30:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSI4I-0000Sj-03
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Apr 2020 10:29:58 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6E0D4206ED;
 Sat, 25 Apr 2020 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587810593;
 bh=OnIlYiQte8vLjVIxAMAdY+TpiPpcVzuY5O1fmTyq7+Y=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=bv0ALoEnQatFldA7tqW0d52kgR5KLG0rtNDWuoE/MoLoUmFYrh7hOVz0gO+WAxuvI
 256JDSv6GV/cKQUauCGL5kLz252R3HMn063bNpPBw0CE0vDVASgTpDGJXbnpULI9jS
 MyTz8uzhhm6IeMdtJcKZ25Y0nhhCasKapE3X8KP8=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jSI4F-006HcM-RZ; Sat, 25 Apr 2020 11:29:51 +0100
Date: Sat, 25 Apr 2020 11:29:50 +0100
From: Marc Zyngier <maz@kernel.org>
To: Sumit Garg <sumit.garg@linaro.org>
Subject: Re: [RFC Patch v1 2/4] irqchip/gic-v3: Add support to handle SGI as
 pseudo NMI
Message-ID: <20200425112950.3a4815b6@why>
In-Reply-To: <1587726554-32018-3-git-send-email-sumit.garg@linaro.org>
References: <1587726554-32018-1-git-send-email-sumit.garg@linaro.org>
 <1587726554-32018-3-git-send-email-sumit.garg@linaro.org>
Organization: Approximate
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: sumit.garg@linaro.org, linux-arm-kernel@lists.infradead.org,
 catalin.marinas@arm.com, will@kernel.org, tglx@linutronix.de,
 jason@lakedaemon.net, julien.thierry.kdev@gmail.com, dianders@chromium.org,
 daniel.thompson@linaro.org, jason.wessel@windriver.com,
 kgdb-bugreport@lists.sourceforge.net, linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_032957_522474_2DDA20F3 
X-CRM114-Status: GOOD (  19.65  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: daniel.thompson@linaro.org, jason@lakedaemon.net, catalin.marinas@arm.com,
 dianders@chromium.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, jason.wessel@windriver.com,
 kgdb-bugreport@lists.sourceforge.net, tglx@linutronix.de, will@kernel.org,
 julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 24 Apr 2020 16:39:12 +0530
Sumit Garg <sumit.garg@linaro.org> wrote:

Hi Sumit,

> With pseudo NMIs enabled, interrupt controller can be configured to
> deliver SGI as a pseudo NMI. So add corresponding handling for SGIs.
> 
> Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
> ---
>  drivers/irqchip/irq-gic-v3.c | 22 +++++++++++++++++-----
>  1 file changed, 17 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
> index d7006ef..be361bf 100644
> --- a/drivers/irqchip/irq-gic-v3.c
> +++ b/drivers/irqchip/irq-gic-v3.c
> @@ -609,17 +609,29 @@ static inline void gic_handle_nmi(u32 irqnr, struct pt_regs *regs)
>  	if (irqs_enabled)
>  		nmi_enter();
>  
> -	if (static_branch_likely(&supports_deactivate_key))
> -		gic_write_eoir(irqnr);
>  	/*
>  	 * Leave the PSR.I bit set to prevent other NMIs to be
>  	 * received while handling this one.
>  	 * PSR.I will be restored when we ERET to the
>  	 * interrupted context.
>  	 */
> -	err = handle_domain_nmi(gic_data.domain, irqnr, regs);
> -	if (err)
> -		gic_deactivate_unhandled(irqnr);
> +	if (likely(irqnr > 15)) {
> +		if (static_branch_likely(&supports_deactivate_key))
> +			gic_write_eoir(irqnr);
> +
> +		err = handle_domain_nmi(gic_data.domain, irqnr, regs);
> +		if (err)
> +			gic_deactivate_unhandled(irqnr);
> +	} else {
> +		gic_write_eoir(irqnr);
> +		if (static_branch_likely(&supports_deactivate_key))
> +			gic_write_dir(irqnr);
> +#ifdef CONFIG_SMP
> +		handle_IPI(irqnr, regs);
> +#else
> +		WARN_ONCE(true, "Unexpected SGI received!\n");
> +#endif
> +	}
>  
>  	if (irqs_enabled)
>  		nmi_exit();

If there is one thing I would like to avoid, it is to add more ugly
hacks to the way we handle SGIs. There is very little reason why SGIs
should be handled differently from all other interrupts. They have the
same properties, and it is only because of the 32bit legacy that we deal
with them in such a cumbersome way. Nothing that we cannot fix though.

What I would really like to see is first a conversion of the SGIs to
normal, full fat interrupts. These interrupts can then be configured as
NMI using the normal API.

I think Julien had something along these lines (or was that limited to
the PMU?). Otherwise, I'll happily help you with that.

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
