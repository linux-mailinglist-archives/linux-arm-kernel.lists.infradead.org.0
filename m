Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABAD1175C8E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 15:07:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xRYLi/IxYop58AlCFMQWmlyF6sk5gcc1RifIV+fyJqw=; b=aL9Pi4Xwmp0JOG
	51PNKgOYBPQYRg61w4sV3ewoe4rvFcx8l0LelYvHcQqGduP0/rVF5oDEizQl/r4lH9eOMhWQImlWM
	nXg6YscibmrPtJGrSH+lOBmivAqIIFobwhxYA7cpRAl8aAfUO6QYv470odi3Qmd0qVLNR8xU++Tur
	m0/Z+30UYSGGp0Ea5Qn4NPdOqpowrKJ3SnHTy4eJkFKCwvjQ/2QGGVHVWGllQORPJvq0rT4yzAzPB
	9gniqJJc3zITKB0JTff6xgUR01V5Ry90WZzh1mFRbBylGIcpg/kzH/UQjQMbEJOr50MzXt/QBi/tb
	tfhJvTGqt5htYTSjm12A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8lif-0005V2-9u; Mon, 02 Mar 2020 14:06:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8liX-0005Tt-Qh
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 14:06:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AF8BE2F;
 Mon,  2 Mar 2020 06:06:43 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AEEDF3F534;
 Mon,  2 Mar 2020 06:06:42 -0800 (PST)
Date: Mon, 2 Mar 2020 14:06:40 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Gavin Shan <gshan@redhat.com>
Subject: Re: [PATCH] arm64/kernel: Simplify __cpu_up() by bailing out early
Message-ID: <20200302140640.GC56497@lakrids.cambridge.arm.com>
References: <20200302020340.119588-1-gshan@redhat.com>
 <20200302122135.GB56497@lakrids.cambridge.arm.com>
 <ddbb5cb2-e8b6-ab1c-d283-fb0f402d2a4f@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ddbb5cb2-e8b6-ab1c-d283-fb0f402d2a4f@redhat.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_060645_955226_71489C4A 
X-CRM114-Status: GOOD (  33.64  )
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

On Tue, Mar 03, 2020 at 12:38:48AM +1100, Gavin Shan wrote:
> On 3/2/20 11:21 PM, Mark Rutland wrote:
> > On Mon, Mar 02, 2020 at 01:03:40PM +1100, Gavin Shan wrote:
> > > The function __cpu_up() is invoked to bring up the target CPU through
> > > the backend, PSCI for example. The nested if statements won't be needed
> > > if we bail out early on the following two conditions where the status
> > > won't be checked. The code looks simplified in that case.
> > > 
> > >     * Error returned from the backend (e.g. PSCI)
> > >     * The target CPU has been marked as onlined
> > > 
> > > Signed-off-by: Gavin Shan <gshan@redhat.com>
> > 
> > FWIW, this looks like a nice cleanup to me:
> > 
> > Reviewed-by: Mark Rutland <mark.rutland@arm.com>
> > 
> > While this patch leaves secondary_data.{task,stack} stale on a
> > successful onlining, that was already the case for a timeout, and should
> > be fine (since the next attempt at onlining will configure those before
> > poking the CPU).
> > 
> > Thanks,
> > Mark.
> > 
> 
> Thanks, Mark. Yeah, it should be fine as you said. There are something else,
> which might be not relevant. @secondary_data could be accessed by multiple CPUs
> in parallel. For example, the master CPU boots CPU#1 and timeouts to wait it
> to be online in 5 seconds. CPU#1 isn't necessarily stuck in somewhere. After
> that, CPU#2 is brought up and might be accessing @secondary_data. At this point,
> CPU#1 can come back to access it either. However, @secondary_data isn't valid
> for CPU#1 anymore.

Sure; I'm aware of improvements that could be made here, but I don't
think they need to block this patch.

> I was thinking of something to improve the situation, but not sure if it makes
> any sense to do so. There are several options: (1) Make @secondary_data per-cpu
> variable, which looks a nature way to go. (2) To shutdown the CPU on timeout.
> The shutdown request can be failed to be served in theory, but it seems still
> an improvement.

I think #2 is a bad idea, since if the CPU gets into the kernel at all,
it may have done stuff (e.g. acquiring locks), and ripping it out is
liable to cause more problems.

I think doing #1 might be nice, but some caveats apply.

I'd like to clean up the secondary stack/task hand-over to use an atomic
cmpxchg pair, so that we can detect when the secondary has possibly
tried to use the stack/task. That requires splitting that from the
MMU-off bits from the MMU-on bits, and I'm not sure how well that
interacts with #1. It might mean that the per-cpu part isn't that
worthwhile.

Thanks,
Mark.

> 
> Thanks,
> Gavin
> 
> > > ---
> > >   arch/arm64/kernel/smp.c | 79 +++++++++++++++++++----------------------
> > >   1 file changed, 37 insertions(+), 42 deletions(-)
> > > 
> > > diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
> > > index d4ed9a19d8fe..2a9d8f39dc58 100644
> > > --- a/arch/arm64/kernel/smp.c
> > > +++ b/arch/arm64/kernel/smp.c
> > > @@ -115,60 +115,55 @@ int __cpu_up(unsigned int cpu, struct task_struct *idle)
> > >   	update_cpu_boot_status(CPU_MMU_OFF);
> > >   	__flush_dcache_area(&secondary_data, sizeof(secondary_data));
> > > -	/*
> > > -	 * Now bring the CPU into our world.
> > > -	 */
> > > +	/* Now bring the CPU into our world */
> > >   	ret = boot_secondary(cpu, idle);
> > > -	if (ret == 0) {
> > > -		/*
> > > -		 * CPU was successfully started, wait for it to come online or
> > > -		 * time out.
> > > -		 */
> > > -		wait_for_completion_timeout(&cpu_running,
> > > -					    msecs_to_jiffies(5000));
> > > -
> > > -		if (!cpu_online(cpu)) {
> > > -			pr_crit("CPU%u: failed to come online\n", cpu);
> > > -			ret = -EIO;
> > > -		}
> > > -	} else {
> > > +	if (ret) {
> > >   		pr_err("CPU%u: failed to boot: %d\n", cpu, ret);
> > >   		return ret;
> > >   	}
> > > +	/*
> > > +	 * CPU was successfully started, wait for it to come online or
> > > +	 * time out.
> > > +	 */
> > > +	wait_for_completion_timeout(&cpu_running,
> > > +				    msecs_to_jiffies(5000));
> > > +	if (cpu_online(cpu))
> > > +		return 0;
> > > +
> > > +	pr_crit("CPU%u: failed to come online\n", cpu);
> > >   	secondary_data.task = NULL;
> > >   	secondary_data.stack = NULL;
> > >   	__flush_dcache_area(&secondary_data, sizeof(secondary_data));
> > >   	status = READ_ONCE(secondary_data.status);
> > > -	if (ret && status) {
> > > -
> > > -		if (status == CPU_MMU_OFF)
> > > -			status = READ_ONCE(__early_cpu_boot_status);
> > > +	if (status == CPU_MMU_OFF)
> > > +		status = READ_ONCE(__early_cpu_boot_status);
> > > -		switch (status & CPU_BOOT_STATUS_MASK) {
> > > -		default:
> > > -			pr_err("CPU%u: failed in unknown state : 0x%lx\n",
> > > -					cpu, status);
> > > -			cpus_stuck_in_kernel++;
> > > -			break;
> > > -		case CPU_KILL_ME:
> > > -			if (!op_cpu_kill(cpu)) {
> > > -				pr_crit("CPU%u: died during early boot\n", cpu);
> > > -				break;
> > > -			}
> > > -			pr_crit("CPU%u: may not have shut down cleanly\n", cpu);
> > > -			/* Fall through */
> > > -		case CPU_STUCK_IN_KERNEL:
> > > -			pr_crit("CPU%u: is stuck in kernel\n", cpu);
> > > -			if (status & CPU_STUCK_REASON_52_BIT_VA)
> > > -				pr_crit("CPU%u: does not support 52-bit VAs\n", cpu);
> > > -			if (status & CPU_STUCK_REASON_NO_GRAN)
> > > -				pr_crit("CPU%u: does not support %luK granule \n", cpu, PAGE_SIZE / SZ_1K);
> > > -			cpus_stuck_in_kernel++;
> > > +	switch (status & CPU_BOOT_STATUS_MASK) {
> > > +	default:
> > > +		pr_err("CPU%u: failed in unknown state : 0x%lx\n",
> > > +		       cpu, status);
> > > +		cpus_stuck_in_kernel++;
> > > +		break;
> > > +	case CPU_KILL_ME:
> > > +		if (!op_cpu_kill(cpu)) {
> > > +			pr_crit("CPU%u: died during early boot\n", cpu);
> > >   			break;
> > > -		case CPU_PANIC_KERNEL:
> > > -			panic("CPU%u detected unsupported configuration\n", cpu);
> > >   		}
> > > +		pr_crit("CPU%u: may not have shut down cleanly\n", cpu);
> > > +		/* Fall through */
> > > +	case CPU_STUCK_IN_KERNEL:
> > > +		pr_crit("CPU%u: is stuck in kernel\n", cpu);
> > > +		if (status & CPU_STUCK_REASON_52_BIT_VA)
> > > +			pr_crit("CPU%u: does not support 52-bit VAs\n", cpu);
> > > +		if (status & CPU_STUCK_REASON_NO_GRAN) {
> > > +			pr_crit("CPU%u: does not support %luK granule\n",
> > > +				cpu, PAGE_SIZE / SZ_1K);
> > > +		}
> > > +		cpus_stuck_in_kernel++;
> > > +		break;
> > > +	case CPU_PANIC_KERNEL:
> > > +		panic("CPU%u detected unsupported configuration\n", cpu);
> > >   	}
> > >   	return ret;
> > > -- 
> > > 2.23.0
> > > 
> > 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
