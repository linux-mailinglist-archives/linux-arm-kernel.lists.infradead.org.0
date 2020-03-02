Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 415ED175A5B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 13:21:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uEDKhOBIUmfuLbJUai6MEelGOUC9fr1b7oMBhj3CTho=; b=oi1SRS7dRBzRvA
	BSxKWEZgea/7HpHGYCQdC3JZ0XJsPolcEfi/OyK7qQ24M/6i1eE8pHD+4YprtMMvecqPGUxEt/jhI
	jaeEndy9WltBy/JRVGBmPqeIE0v9MsNK34+z6lZ1Pn0sC0pttmZ2oztPucTdBu+G8AU6MLm0LLKpY
	DkMMqzrKsCHvf/Cl+5eVE8z6dW0/M+Qc+vwttF9BKzfayzw/nAsJ+sX6+0dJ+mHiEubqwxr9G0smX
	wKyaIZxp/ePUv/p4lEIH1LkJ3AHYUynmeCT+6I+Y0899uPM3ui3AWg4J/KJHkdUhlme9qgtor/6Nt
	vLZ8lZ0kgE1RWrseXsfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8k4z-0006Yo-61; Mon, 02 Mar 2020 12:21:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8k4s-0006Xr-0k
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 12:21:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C29C82F;
 Mon,  2 Mar 2020 04:21:38 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C34393F534;
 Mon,  2 Mar 2020 04:21:37 -0800 (PST)
Date: Mon, 2 Mar 2020 12:21:35 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Gavin Shan <gshan@redhat.com>
Subject: Re: [PATCH] arm64/kernel: Simplify __cpu_up() by bailing out early
Message-ID: <20200302122135.GB56497@lakrids.cambridge.arm.com>
References: <20200302020340.119588-1-gshan@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200302020340.119588-1-gshan@redhat.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_042142_154284_B4E9AFBE 
X-CRM114-Status: GOOD (  23.10  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org, shan.gavin@gmail.com,
 maz@kernel.org, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 02, 2020 at 01:03:40PM +1100, Gavin Shan wrote:
> The function __cpu_up() is invoked to bring up the target CPU through
> the backend, PSCI for example. The nested if statements won't be needed
> if we bail out early on the following two conditions where the status
> won't be checked. The code looks simplified in that case.
> 
>    * Error returned from the backend (e.g. PSCI)
>    * The target CPU has been marked as onlined
> 
> Signed-off-by: Gavin Shan <gshan@redhat.com>

FWIW, this looks like a nice cleanup to me:

Reviewed-by: Mark Rutland <mark.rutland@arm.com>

While this patch leaves secondary_data.{task,stack} stale on a
successful onlining, that was already the case for a timeout, and should
be fine (since the next attempt at onlining will configure those before
poking the CPU).

Thanks,
Mark.

> ---
>  arch/arm64/kernel/smp.c | 79 +++++++++++++++++++----------------------
>  1 file changed, 37 insertions(+), 42 deletions(-)
> 
> diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
> index d4ed9a19d8fe..2a9d8f39dc58 100644
> --- a/arch/arm64/kernel/smp.c
> +++ b/arch/arm64/kernel/smp.c
> @@ -115,60 +115,55 @@ int __cpu_up(unsigned int cpu, struct task_struct *idle)
>  	update_cpu_boot_status(CPU_MMU_OFF);
>  	__flush_dcache_area(&secondary_data, sizeof(secondary_data));
>  
> -	/*
> -	 * Now bring the CPU into our world.
> -	 */
> +	/* Now bring the CPU into our world */
>  	ret = boot_secondary(cpu, idle);
> -	if (ret == 0) {
> -		/*
> -		 * CPU was successfully started, wait for it to come online or
> -		 * time out.
> -		 */
> -		wait_for_completion_timeout(&cpu_running,
> -					    msecs_to_jiffies(5000));
> -
> -		if (!cpu_online(cpu)) {
> -			pr_crit("CPU%u: failed to come online\n", cpu);
> -			ret = -EIO;
> -		}
> -	} else {
> +	if (ret) {
>  		pr_err("CPU%u: failed to boot: %d\n", cpu, ret);
>  		return ret;
>  	}
>  
> +	/*
> +	 * CPU was successfully started, wait for it to come online or
> +	 * time out.
> +	 */
> +	wait_for_completion_timeout(&cpu_running,
> +				    msecs_to_jiffies(5000));
> +	if (cpu_online(cpu))
> +		return 0;
> +
> +	pr_crit("CPU%u: failed to come online\n", cpu);
>  	secondary_data.task = NULL;
>  	secondary_data.stack = NULL;
>  	__flush_dcache_area(&secondary_data, sizeof(secondary_data));
>  	status = READ_ONCE(secondary_data.status);
> -	if (ret && status) {
> -
> -		if (status == CPU_MMU_OFF)
> -			status = READ_ONCE(__early_cpu_boot_status);
> +	if (status == CPU_MMU_OFF)
> +		status = READ_ONCE(__early_cpu_boot_status);
>  
> -		switch (status & CPU_BOOT_STATUS_MASK) {
> -		default:
> -			pr_err("CPU%u: failed in unknown state : 0x%lx\n",
> -					cpu, status);
> -			cpus_stuck_in_kernel++;
> -			break;
> -		case CPU_KILL_ME:
> -			if (!op_cpu_kill(cpu)) {
> -				pr_crit("CPU%u: died during early boot\n", cpu);
> -				break;
> -			}
> -			pr_crit("CPU%u: may not have shut down cleanly\n", cpu);
> -			/* Fall through */
> -		case CPU_STUCK_IN_KERNEL:
> -			pr_crit("CPU%u: is stuck in kernel\n", cpu);
> -			if (status & CPU_STUCK_REASON_52_BIT_VA)
> -				pr_crit("CPU%u: does not support 52-bit VAs\n", cpu);
> -			if (status & CPU_STUCK_REASON_NO_GRAN)
> -				pr_crit("CPU%u: does not support %luK granule \n", cpu, PAGE_SIZE / SZ_1K);
> -			cpus_stuck_in_kernel++;
> +	switch (status & CPU_BOOT_STATUS_MASK) {
> +	default:
> +		pr_err("CPU%u: failed in unknown state : 0x%lx\n",
> +		       cpu, status);
> +		cpus_stuck_in_kernel++;
> +		break;
> +	case CPU_KILL_ME:
> +		if (!op_cpu_kill(cpu)) {
> +			pr_crit("CPU%u: died during early boot\n", cpu);
>  			break;
> -		case CPU_PANIC_KERNEL:
> -			panic("CPU%u detected unsupported configuration\n", cpu);
>  		}
> +		pr_crit("CPU%u: may not have shut down cleanly\n", cpu);
> +		/* Fall through */
> +	case CPU_STUCK_IN_KERNEL:
> +		pr_crit("CPU%u: is stuck in kernel\n", cpu);
> +		if (status & CPU_STUCK_REASON_52_BIT_VA)
> +			pr_crit("CPU%u: does not support 52-bit VAs\n", cpu);
> +		if (status & CPU_STUCK_REASON_NO_GRAN) {
> +			pr_crit("CPU%u: does not support %luK granule\n",
> +				cpu, PAGE_SIZE / SZ_1K);
> +		}
> +		cpus_stuck_in_kernel++;
> +		break;
> +	case CPU_PANIC_KERNEL:
> +		panic("CPU%u detected unsupported configuration\n", cpu);
>  	}
>  
>  	return ret;
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
