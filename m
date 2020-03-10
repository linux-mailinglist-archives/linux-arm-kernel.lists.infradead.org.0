Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6722180090
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 15:48:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eJkNJKzz6mIosRzWceOaRpgo81uwwzHQtJYhBOw4nyI=; b=LG9Sy5MgcbC4Bi
	1qJP0/I+UfyJXrCo80pWmJzqWhD1VsLRo+acbDdGYNCrf0kl+Od+TJNxNFOJhi2tQukQ5YgLGcYZx
	8uzaeaFAWV4D0Zh4hapqFhDDZqB4ZQ9BqUIk6Dile9BYnoimUb+5XCMK52k8m5QqIURq3Ru0cZFXy
	qrdqKwfZsiUTb0DJ+KamKtYX5ecAjH/Zz7vzlEhtznWLrQF6KrOc2XPvXjqWDIjDLzKPanJqeo3jv
	crzoGBTL0y4/fDZfJtuSXdCJ37NoJw4gK82BopiV2nRX4x7q7LAjyqkzO6OqgAzK3Jezak+aofNVB
	gb5NCypHBu1j7t1vOyeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBgB3-0003fx-0O; Tue, 10 Mar 2020 14:48:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBgAu-0003dF-4V
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 14:48:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9574030E;
 Tue, 10 Mar 2020 07:48:01 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CA8863F6CF;
 Tue, 10 Mar 2020 07:48:00 -0700 (PDT)
Date: Tue, 10 Mar 2020 14:47:58 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH 2/2] arm64: smp: fix crash_smp_send_stop() behaviour
Message-ID: <20200310144758.GD54660@lakrids.cambridge.arm.com>
References: <20200306185739.3227-1-cristian.marussi@arm.com>
 <20200306185739.3227-3-cristian.marussi@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200306185739.3227-3-cristian.marussi@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_074804_271942_A81F50D2 
X-CRM114-Status: GOOD (  27.91  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: catalin.marinas@arm.com, will@kernel.org, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 06, 2020 at 06:57:39PM +0000, Cristian Marussi wrote:
> On a system configured to trigger a crash_kexec() reboot, when only one CPU
> is online and another CPU panics while starting-up, crash_smp_send_stop()
> will fail to send any STOP message to the other already online core,
> resulting in fail to freeze and registers not properly saved.
> 
> Moreover even if the proper messages are sent (case CPUs > 2)
> it will similarly fail to account for the booting CPU when executing
> the final stop wait-loop, so potentially resulting in some CPU not
> been waited for shutdown before rebooting.
> 
> A tangible effect of this behaviour can be observed when, after a panic
> with kexec enabled and loaded, on the following reboot triggered by kexec,
> the cpu that could not be successfully stopped fails to come back online:
> 
> [  362.291022] ------------[ cut here ]------------
> [  362.291525] kernel BUG at arch/arm64/kernel/cpufeature.c:886!
> [  362.292023] Internal error: Oops - BUG: 0 [#1] PREEMPT SMP
> [  362.292400] Modules linked in:
> [  362.292970] CPU: 3 PID: 0 Comm: swapper/3 Kdump: loaded Not tainted 5.6.0-rc4-00003-gc780b890948a #105
> [  362.293136] Hardware name: Foundation-v8A (DT)
> [  362.293382] pstate: 200001c5 (nzCv dAIF -PAN -UAO)
> [  362.294063] pc : has_cpuid_feature+0xf0/0x348
> [  362.294177] lr : verify_local_elf_hwcaps+0x84/0xe8
> [  362.294280] sp : ffff800011b1bf60
> [  362.294362] x29: ffff800011b1bf60 x28: 0000000000000000
> [  362.294534] x27: 0000000000000000 x26: 0000000000000000
> [  362.294631] x25: 0000000000000000 x24: ffff80001189a25c
> [  362.294718] x23: 0000000000000000 x22: 0000000000000000
> [  362.294803] x21: ffff8000114aa018 x20: ffff800011156a00
> [  362.294897] x19: ffff800010c944a0 x18: 0000000000000004
> [  362.294987] x17: 0000000000000000 x16: 0000000000000000
> [  362.295073] x15: 00004e53b831ae3c x14: 00004e53b831ae3c
> [  362.295165] x13: 0000000000000384 x12: 0000000000000000
> [  362.295251] x11: 0000000000000000 x10: 00400032b5503510
> [  362.295334] x9 : 0000000000000000 x8 : ffff800010c7e204
> [  362.295426] x7 : 00000000410fd0f0 x6 : 0000000000000001
> [  362.295508] x5 : 00000000410fd0f0 x4 : 0000000000000000
> [  362.295592] x3 : 0000000000000000 x2 : ffff8000100939d8
> [  362.295683] x1 : 0000000000180420 x0 : 0000000000180480
> [  362.296011] Call trace:
> [  362.296257]  has_cpuid_feature+0xf0/0x348
> [  362.296350]  verify_local_elf_hwcaps+0x84/0xe8
> [  362.296424]  check_local_cpu_capabilities+0x44/0x128
> [  362.296497]  secondary_start_kernel+0xf4/0x188
> [  362.296998] Code: 52805001 72a00301 6b01001f 54000ec0 (d4210000)
> [  362.298652] SMP: stopping secondary CPUs
> [  362.300615] Starting crashdump kernel...
> [  362.301168] Bye!
> [    0.000000] Booting Linux on physical CPU 0x0000000003 [0x410fd0f0]
> [    0.000000] Linux version 5.6.0-rc4-00003-gc780b890948a (crimar01@e120937-lin) (gcc version 8.3.0 (GNU Toolchain for the A-profile Architecture 8.3-2019.03 (arm-rel-8.36))) #105 SMP PREEMPT Fri Mar 6 17:00:42 GMT 2020
> [    0.000000] Machine model: Foundation-v8A
> [    0.000000] earlycon: pl11 at MMIO 0x000000001c090000 (options '')
> [    0.000000] printk: bootconsole [pl11] enabled
> .....
> [    0.138024] rcu: Hierarchical SRCU implementation.
> [    0.153472] its@2f020000: unable to locate ITS domain
> [    0.154078] its@2f020000: Unable to locate ITS domain
> [    0.157541] EFI services will not be available.
> [    0.175395] smp: Bringing up secondary CPUs ...
> [    0.209182] psci: failed to boot CPU1 (-22)
> [    0.209377] CPU1: failed to boot: -22
> [    0.274598] Detected PIPT I-cache on CPU2
> [    0.278707] GICv3: CPU2: found redistributor 1 region 0:0x000000002f120000
> [    0.285212] CPU2: Booted secondary processor 0x0000000001 [0x410fd0f0]
> [    0.369053] Detected PIPT I-cache on CPU3
> [    0.372947] GICv3: CPU3: found redistributor 2 region 0:0x000000002f140000
> [    0.378664] CPU3: Booted secondary processor 0x0000000002 [0x410fd0f0]
> [    0.401707] smp: Brought up 1 node, 3 CPUs
> [    0.404057] SMP: Total of 3 processors activated.
> 
> Make crash_smp_send_stop() account also for the online status of the
> calling CPU while evaluating how many CPUs are effectively online: this way
> the right number of STOPs is sent and all other stopped-cores's registers
> are properly saved.
> 
> Fixes: 78fd584cdec05 ("arm64: kdump: implement machine_crash_shutdown()")
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> ---
>  arch/arm64/kernel/smp.c | 17 +++++++++++++++--
>  1 file changed, 15 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
> index 55779218ec56..33466d197b1c 100644
> --- a/arch/arm64/kernel/smp.c
> +++ b/arch/arm64/kernel/smp.c
> @@ -997,6 +997,7 @@ void crash_smp_send_stop(void)
>  	static int cpus_stopped;
>  	cpumask_t mask;
>  	unsigned long timeout;
> +	unsigned int this_cpu_online = cpu_online(smp_processor_id());
>  
>  	/*
>  	 * This function can be called twice in panic path, but obviously
> @@ -1007,7 +1008,11 @@ void crash_smp_send_stop(void)
>  
>  	cpus_stopped = 1;
>  
> -	if (num_online_cpus() == 1) {
> +	/*
> +	 * If this cpu is the only one alive at this point in time, online or
> +	 * not, there are no stop messages to be sent around, so just back out.
> +	 */
> +	if (num_online_cpus() == this_cpu_online) {

If you add num_other_online_cpus(), this can be:


	/*
	 * If no other CPUs are online at this point in time, there are
	 * no stop messages to be sent, so jsut back out.
	 */
	if (num_other_online_cpus() == 0)

>  		sdei_mask_local_cpu();
>  		return;
>  	}
> @@ -1015,7 +1020,15 @@ void crash_smp_send_stop(void)
>  	cpumask_copy(&mask, cpu_online_mask);
>  	cpumask_clear_cpu(smp_processor_id(), &mask);
>  
> -	atomic_set(&waiting_for_crash_ipi, num_online_cpus() - 1);
> +	/*
> +	 * Account for the online status of this cpu when counting for
> +	 * waiting cpus; note that always holds true that:
> +	 *
> +	 *	num_online_cpus() >= this_cpu_online
> +	 *
> +	 * so the following subtraction is safe.
> +	 */
> +	atomic_set(&waiting_for_crash_ipi, num_online_cpus() - this_cpu_online);

... and I don't think we need the comment here with:

	atomic_set(&waiting_for_crash_ipi, num_other_online_cpus());

Otherwise, this looks sound to me.

Thanks,
Mark.

>  
>  	pr_crit("SMP: stopping secondary CPUs\n");
>  	smp_cross_call(&mask, IPI_CPU_CRASH_STOP);
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
