Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21DD83C952
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 12:48:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zb3XM0w49dExA1J2uWYepg06465Ws/tIxtjLzLk773E=; b=mZRdYrpXbgoeZU
	Bp3fNKo9bw+RGSYk/AOvv2AUxSTaZdrJ1JZ5SSrc2XeC6QLa1wXQ+MtGQz8tN+xJThrYsnjJ7QA03
	0AkS9ccQQ2jzcW+dkddWoDMpO5YM6tc18bHe2/cA9O/KXsUm4OQqiiaISMpujpUoq5IrJ+s4gRlv8
	94TAPjZ9xHkQX31TGVxvByfDmfKZew5ZgTo2Egve90riJ8EEvTE9Hlvz5x/UXYxbMK2B2KSCMb4iD
	JTi5WbV4hXoeeuAYqXwCTblm6N809Tsphjj6tStL+lRzOxO4dTZG3cIIy5862nbNm7u0XsNbImiI9
	Ao30QyJLJLfkVGAOVg+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haeKZ-00077Z-9Z; Tue, 11 Jun 2019 10:48:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haeKO-00077C-Uf
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 10:48:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6088D337;
 Tue, 11 Jun 2019 03:48:30 -0700 (PDT)
Received: from redmoon (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B26D33F557;
 Tue, 11 Jun 2019 03:50:11 -0700 (PDT)
Date: Tue, 11 Jun 2019 11:48:23 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>, arm@kernel.org,
 arnd@arndb.de, olof@lixom.net
Subject: Re: [PATCH v2] firmware/psci: psci_checker: Park kthreads before
 stopping them
Message-ID: <20190611104823.GA32504@redmoon>
References: <20190610173829.4741-1-jean-philippe.brucker@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190610173829.4741-1-jean-philippe.brucker@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_034833_033343_69A1A1D4 
X-CRM114-Status: GOOD (  18.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, linux-arm-kernel@lists.infradead.org,
 sudeep.holla@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd, Olof,

Can you pick this up please (with my ACK below) or you prefer me
resending it ?

On Mon, Jun 10, 2019 at 06:38:29PM +0100, Jean-Philippe Brucker wrote:
> Since commit 85f1abe0019f ("kthread, sched/wait: Fix kthread_parkme()
> completion issue"), kthreads that are bound to a CPU must be parked
> before being stopped. At the moment the PSCI checker calls
> kthread_stop() directly on the suspend kthread, which triggers the
> following warning:
> 
> [    6.068288] WARNING: CPU: 1 PID: 1 at kernel/kthread.c:398 __kthread_bind_mask+0x20/0x78
>                ...
> [    6.190151] Call trace:
> [    6.192566]  __kthread_bind_mask+0x20/0x78
> [    6.196615]  kthread_unpark+0x74/0x80
> [    6.200235]  kthread_stop+0x44/0x1d8
> [    6.203769]  psci_checker+0x3bc/0x484
> [    6.207389]  do_one_initcall+0x48/0x260
> [    6.211180]  kernel_init_freeable+0x2c8/0x368
> [    6.215488]  kernel_init+0x10/0x100
> [    6.218935]  ret_from_fork+0x10/0x1c
> [    6.222467] ---[ end trace e05e22863d043cd3 ]---
> 
> kthread_unpark() tries to bind the thread to its CPU and aborts with a
> WARN() if the thread wasn't in TASK_PARKED state. Park the kthreads
> before stopping them.
> 
> Fixes: 85f1abe0019f ("kthread, sched/wait: Fix kthread_parkme() completion issue")
> Signed-off-by: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
> ---
> Since v1: rebased onto v5.2-rc4
> ---
>  drivers/firmware/psci/psci_checker.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)

Acked-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>

> diff --git a/drivers/firmware/psci/psci_checker.c b/drivers/firmware/psci/psci_checker.c
> index 08c85099d4d0..f3659443f8c2 100644
> --- a/drivers/firmware/psci/psci_checker.c
> +++ b/drivers/firmware/psci/psci_checker.c
> @@ -359,16 +359,16 @@ static int suspend_test_thread(void *arg)
>  	for (;;) {
>  		/* Needs to be set first to avoid missing a wakeup. */
>  		set_current_state(TASK_INTERRUPTIBLE);
> -		if (kthread_should_stop()) {
> -			__set_current_state(TASK_RUNNING);
> +		if (kthread_should_park())
>  			break;
> -		}
>  		schedule();
>  	}
>  
>  	pr_info("CPU %d suspend test results: success %d, shallow states %d, errors %d\n",
>  		cpu, nb_suspend, nb_shallow_sleep, nb_err);
>  
> +	kthread_parkme();
> +
>  	return nb_err;
>  }
>  
> @@ -433,8 +433,10 @@ static int suspend_tests(void)
>  
>  
>  	/* Stop and destroy all threads, get return status. */
> -	for (i = 0; i < nb_threads; ++i)
> +	for (i = 0; i < nb_threads; ++i) {
> +		err += kthread_park(threads[i]);
>  		err += kthread_stop(threads[i]);
> +	}
>   out:
>  	cpuidle_resume_and_unlock();
>  	kfree(threads);
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
