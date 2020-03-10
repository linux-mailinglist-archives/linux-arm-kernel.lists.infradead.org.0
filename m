Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1ED318007D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 15:45:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pYzX9zkQKCieY7OIIot+L9Nb9lN7ipW773P2FPy1PtU=; b=Zt0CrMJwNL3UbG
	JuFQBqqQEUoXZpVq0RL8dYpbm6WahHP+NoPbPJHs2s+AtuYistqLzQowZqc99xwUvbA77lOHjt/t6
	km+lNnMVBhyLkY7we4WiYnoCvNREcwtUfZaCozCmpAGZaaQtY7QopIqmwLdJC35KEIEvgmLAzL9qD
	Drz0ij6pdt4RcTSMRdqE06NWq6xebuTqrsxKxYfqCpEHo2PmdRXK1+CMPHGVgf5/hZueQMlH/pyJt
	0dA9lTYtvqHN6SpHJFtSIeVD8j0dVy6s7D+hFejRYemrIOHbCaMRAOOUxEBl44SFLRghZUG3M0Qlm
	OnMiaIS9obONxg4nwVgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBg7r-0001eS-CB; Tue, 10 Mar 2020 14:44:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBg7i-0001dw-56
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 14:44:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3BC5630E;
 Tue, 10 Mar 2020 07:44:44 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 712463F6CF;
 Tue, 10 Mar 2020 07:44:43 -0700 (PDT)
Date: Tue, 10 Mar 2020 14:44:41 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH 1/2] arm64: smp: fix smp_send_stop() behaviour
Message-ID: <20200310144441.GC54660@lakrids.cambridge.arm.com>
References: <20200306185739.3227-1-cristian.marussi@arm.com>
 <20200306185739.3227-2-cristian.marussi@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200306185739.3227-2-cristian.marussi@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_074447_936907_22F5C0BD 
X-CRM114-Status: GOOD (  25.07  )
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

On Fri, Mar 06, 2020 at 06:57:38PM +0000, Cristian Marussi wrote:
> On a system with only one CPU online, when another one CPU panics while
> starting-up, smp_send_stop() will fail to send any STOP message to the
> other already online core, resulting in a system still responsive and
> alive at the end of the panic procedure.
> 
> [  186.700083] CPU3: shutdown
> [  187.075462] CPU2: shutdown
> [  187.162869] CPU1: shutdown
> [  188.689998] ------------[ cut here ]------------
> [  188.691645] kernel BUG at arch/arm64/kernel/cpufeature.c:886!
> [  188.692079] Internal error: Oops - BUG: 0 [#1] PREEMPT SMP
> [  188.692444] Modules linked in:
> [  188.693031] CPU: 3 PID: 0 Comm: swapper/3 Not tainted 5.6.0-rc4-00001-g338d25c35a98 #104
> [  188.693175] Hardware name: Foundation-v8A (DT)
> [  188.693492] pstate: 200001c5 (nzCv dAIF -PAN -UAO)
> [  188.694183] pc : has_cpuid_feature+0xf0/0x348
> [  188.694311] lr : verify_local_elf_hwcaps+0x84/0xe8
> [  188.694410] sp : ffff800011b1bf60
> [  188.694536] x29: ffff800011b1bf60 x28: 0000000000000000
> [  188.694707] x27: 0000000000000000 x26: 0000000000000000
> [  188.694801] x25: 0000000000000000 x24: ffff80001189a25c
> [  188.694905] x23: 0000000000000000 x22: 0000000000000000
> [  188.694996] x21: ffff8000114aa018 x20: ffff800011156a38
> [  188.695089] x19: ffff800010c944a0 x18: 0000000000000004
> [  188.695187] x17: 0000000000000000 x16: 0000000000000000
> [  188.695280] x15: 0000249dbde5431e x14: 0262cbe497efa1fa
> [  188.695371] x13: 0000000000000002 x12: 0000000000002592
> [  188.695472] x11: 0000000000000080 x10: 00400032b5503510
> [  188.695572] x9 : 0000000000000000 x8 : ffff800010c80204
> [  188.695659] x7 : 00000000410fd0f0 x6 : 0000000000000001
> [  188.695750] x5 : 00000000410fd0f0 x4 : 0000000000000000
> [  188.695836] x3 : 0000000000000000 x2 : ffff8000100939d8
> [  188.695919] x1 : 0000000000180420 x0 : 0000000000180480
> [  188.696253] Call trace:
> [  188.696410]  has_cpuid_feature+0xf0/0x348
> [  188.696504]  verify_local_elf_hwcaps+0x84/0xe8
> [  188.696591]  check_local_cpu_capabilities+0x44/0x128
> [  188.696666]  secondary_start_kernel+0xf4/0x188
> [  188.697150] Code: 52805001 72a00301 6b01001f 54000ec0 (d4210000)
> [  188.698639] ---[ end trace 3f12ca47652f7b72 ]---
> [  188.699160] Kernel panic - not syncing: Attempted to kill the idle task!
> [  188.699546] Kernel Offset: disabled
> [  188.699828] CPU features: 0x00004,20c02008
> [  188.700012] Memory Limit: none
> [  188.700538] ---[ end Kernel panic - not syncing: Attempted to kill the idle task! ]---
> 
> [root@arch ~]# echo Helo
> Helo
> [root@arch ~]# cat /proc/cpuinfo | grep proce
> processor	: 0
> 
> Make smp_send_stop() account also for the online status of the calling CPU
> while evaluating how many CPUs are effectively online: this way, the right
> number of STOPs is sent, so enforcing a proper freeze of the system at the
> end of panic even under the above conditions.
> 
> Fixes: 08e875c16a16c ("arm64: SMP support")
> Reported-by: Dave Martin <Dave.Martin@arm.com>
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> ---
>  arch/arm64/kernel/smp.c | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
> index d4ed9a19d8fe..55779218ec56 100644
> --- a/arch/arm64/kernel/smp.c
> +++ b/arch/arm64/kernel/smp.c
> @@ -961,8 +961,14 @@ void tick_broadcast(const struct cpumask *mask)
>  void smp_send_stop(void)
>  {
>  	unsigned long timeout;
> +	unsigned int this_cpu_online = cpu_online(smp_processor_id());
>  
> -	if (num_online_cpus() > 1) {
> +	/*
> +	 * If this CPU isn't fully online, it will not be counted in
> +	 * num_online_cpus(): on a 2-CPU system this situation will
> +	 * result in no message being sent to the other already online CPU.
> +	 */
> +	if (num_online_cpus() > this_cpu_online) {
>  		cpumask_t mask;


Given we use this in a few places, and patch 2 has some callers use the
difference value, could we wrap this up into a helper:

/*
 * The number of CPUs online, not counting this CPU (which may not be
 * fully online and counted in num_online_cpus()).
 */
unsigned int num_other_online_cpus()
{
	unsigned int this_cpu_online = cpu_online(smp_processor_id());

	return num_online_cpus() - this_cpu_online;
}

... as that would make the callers a bit clearer, and avoid the need to
duplicate the commentary.

Otherwise, this looks sane to me.

Thanks
Mark.

>  
>  		cpumask_copy(&mask, cpu_online_mask);
> @@ -975,10 +981,10 @@ void smp_send_stop(void)
>  
>  	/* Wait up to one second for other CPUs to stop */
>  	timeout = USEC_PER_SEC;
> -	while (num_online_cpus() > 1 && timeout--)
> +	while (num_online_cpus() > this_cpu_online && timeout--)
>  		udelay(1);
>  
> -	if (num_online_cpus() > 1)
> +	if (num_online_cpus() > this_cpu_online)
>  		pr_warn("SMP: failed to stop secondary CPUs %*pbl\n",
>  			cpumask_pr_args(cpu_online_mask));
>  
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
