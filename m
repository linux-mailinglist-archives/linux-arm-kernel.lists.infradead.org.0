Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03FE548163
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 13:58:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Z1rrvtGMZPdvQXqUQBTgt4Q9TNxD7BKR9iPLYyWLxs=; b=HYhmQirE/kzS/j
	IS5yR9Kbvy4vuEuw+R8gmXSsvbo/YfwnCqykiWuxtlh7cEQ7oN37RoxfuYrP+g92hUWwIq8cuoPpD
	eZZeNbXdzlixYQPYa4vkDUMK9sWo1RBQzBX6dfPwbz0fAlrOak9k13KlWbA31MANIFCZqw4YB+jdj
	VdvQ5AdeLTM4JegsOk/6a2dfp4GdPjmyKb44kPM5nfOpZjbYPA/CIRZRqbJSVnTVLSOgzQ6Yut85D
	aRVT9Xll6hra3T6I8aTrqfWziiwn2LVXgSbc3VsvLxpo8UIDOwBXlm0W9RnrLTqRs6o6/lr/jY98r
	DQj6+kHNfaonQSI0DvJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcqHc-0000Hj-Dp; Mon, 17 Jun 2019 11:58:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hcqHP-0000EO-NF
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 11:58:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4ADBE344;
 Mon, 17 Jun 2019 04:58:29 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C95093F246;
 Mon, 17 Jun 2019 05:00:13 -0700 (PDT)
Date: Mon, 17 Jun 2019 12:58:19 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: "Paul E. McKenney" <paulmck@linux.ibm.com>
Subject: Re: [PATCH arm] Use common outgoing-CPU-notification code
Message-ID: <20190617115809.GA3767@lakrids.cambridge.arm.com>
References: <20190611192410.GA27930@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190611192410.GA27930@linux.ibm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_045831_845701_AD38026C 
X-CRM114-Status: GOOD (  17.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux@arm.linux.org.uk, dietmar.eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 12:24:10PM -0700, Paul E. McKenney wrote:
> This commit removes the open-coded CPU-offline notification with new
> common code.  In particular, this change avoids calling scheduler code
> using RCU from an offline CPU that RCU is ignoring.  This is a minimal
> change.  A more intrusive change might invoke the cpu_check_up_prepare()
> and cpu_set_state_online() functions at CPU-online time, which would
> allow onlining throw an error if the CPU did not go offline properly.
> 
> Signed-off-by: Paul E. McKenney <paulmck@linux.vnet.ibm.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: Russell King <linux@arm.linux.org.uk>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Tested-by: Dietmar Eggemann <dietmar.eggemann@arm.com>

FWIW:

Acked-by: Mark Rutland <mark.rutland@arm.com>

On the assumption that Russell is ok with this, I think this should be
dropped into the ARM patch system [1].

Paul, are you familiar with that, or would you prefer that someone else
submits the patch there? I can do so if you'd like.

Thanks,
Mark.

[1] https://www.armlinux.org.uk/developer/patches/info.php

> 
> diff --git a/arch/arm/kernel/smp.c b/arch/arm/kernel/smp.c
> index ebc53804d57b..8687d619260f 100644
> --- a/arch/arm/kernel/smp.c
> +++ b/arch/arm/kernel/smp.c
> @@ -267,15 +267,13 @@ int __cpu_disable(void)
>  	return 0;
>  }
>  
> -static DECLARE_COMPLETION(cpu_died);
> -
>  /*
>   * called on the thread which is asking for a CPU to be shutdown -
>   * waits until shutdown has completed, or it is timed out.
>   */
>  void __cpu_die(unsigned int cpu)
>  {
> -	if (!wait_for_completion_timeout(&cpu_died, msecs_to_jiffies(5000))) {
> +	if (!cpu_wait_death(cpu, 5)) {
>  		pr_err("CPU%u: cpu didn't die\n", cpu);
>  		return;
>  	}
> @@ -322,7 +320,7 @@ void arch_cpu_idle_dead(void)
>  	 * this returns, power and/or clocks can be removed at any point
>  	 * from this CPU and its cache by platform_cpu_kill().
>  	 */
> -	complete(&cpu_died);
> +	(void)cpu_report_death();
>  
>  	/*
>  	 * Ensure that the cache lines associated with that completion are
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
