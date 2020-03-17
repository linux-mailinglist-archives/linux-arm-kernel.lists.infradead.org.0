Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEDEF187DC9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 11:06:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UN7QFoMV59wdud4EqwpVeQzaue59nLVvI3r81mo36zg=; b=kbGXINMe+MOs9r
	sn03XpvGiJlF3VxUDCwO2MyJAJmR3xfTJvA4yfXf7kojTZ4Gkki1amqA2MAIXjmGQw0pFACFO31MT
	i5LcOytEiTq0dwaduy8EYq1S3BN4E9URcZWRMV9DwRG9CgT7kO/gR6ISfwj5+0JJRCPFEx7gNJUh4
	RS8P/YLPef2/aaRUKl/pnb0TT8bHbU9jY8zFUhxCG9AaYQUUMVxRhkbAnRyyMR48D8UWccr7XBug6
	vkssmRcaQ3TomHsjmCfZ9JxsnPPQiP2hz9AdWPXFYMIATh5mErx6sLAbeK09fWJMkKP7CsW7CGUD6
	VRCW+GorjK30oub6rI3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE97G-0006aG-1v; Tue, 17 Mar 2020 10:06:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE974-0006Yu-0l
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 10:06:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8E4891FB;
 Tue, 17 Mar 2020 03:06:15 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8DD5D3F52E;
 Tue, 17 Mar 2020 03:06:14 -0700 (PDT)
Date: Tue, 17 Mar 2020 10:06:09 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Gavin Shan <gshan@redhat.com>, catalin.marinas@arm.com
Subject: Re: [PATCH] arm64/kernel: Simplify __cpu_up() by bailing out early
Message-ID: <20200317100608.GA8831@lakrids.cambridge.arm.com>
References: <20200302020340.119588-1-gshan@redhat.com>
 <20200302122135.GB56497@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200302122135.GB56497@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_030621_048746_19B9392B 
X-CRM114-Status: GOOD (  24.13  )
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
Cc: maz@kernel.org, shan.gavin@gmail.com, will@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 02, 2020 at 12:21:35PM +0000, Mark Rutland wrote:
> On Mon, Mar 02, 2020 at 01:03:40PM +1100, Gavin Shan wrote:
> > The function __cpu_up() is invoked to bring up the target CPU through
> > the backend, PSCI for example. The nested if statements won't be needed
> > if we bail out early on the following two conditions where the status
> > won't be checked. The code looks simplified in that case.
> > 
> >    * Error returned from the backend (e.g. PSCI)
> >    * The target CPU has been marked as onlined
> > 
> > Signed-off-by: Gavin Shan <gshan@redhat.com>
> 
> FWIW, this looks like a nice cleanup to me:
> 
> Reviewed-by: Mark Rutland <mark.rutland@arm.com>

Catalin, are you happy to pick this up?

Thanks,
Mark.

> While this patch leaves secondary_data.{task,stack} stale on a
> successful onlining, that was already the case for a timeout, and should
> be fine (since the next attempt at onlining will configure those before
> poking the CPU).
> 
> Thanks,
> Mark.
> 
> > ---
> >  arch/arm64/kernel/smp.c | 79 +++++++++++++++++++----------------------
> >  1 file changed, 37 insertions(+), 42 deletions(-)
> > 
> > diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
> > index d4ed9a19d8fe..2a9d8f39dc58 100644
> > --- a/arch/arm64/kernel/smp.c
> > +++ b/arch/arm64/kernel/smp.c
> > @@ -115,60 +115,55 @@ int __cpu_up(unsigned int cpu, struct task_struct *idle)
> >  	update_cpu_boot_status(CPU_MMU_OFF);
> >  	__flush_dcache_area(&secondary_data, sizeof(secondary_data));
> >  
> > -	/*
> > -	 * Now bring the CPU into our world.
> > -	 */
> > +	/* Now bring the CPU into our world */
> >  	ret = boot_secondary(cpu, idle);
> > -	if (ret == 0) {
> > -		/*
> > -		 * CPU was successfully started, wait for it to come online or
> > -		 * time out.
> > -		 */
> > -		wait_for_completion_timeout(&cpu_running,
> > -					    msecs_to_jiffies(5000));
> > -
> > -		if (!cpu_online(cpu)) {
> > -			pr_crit("CPU%u: failed to come online\n", cpu);
> > -			ret = -EIO;
> > -		}
> > -	} else {
> > +	if (ret) {
> >  		pr_err("CPU%u: failed to boot: %d\n", cpu, ret);
> >  		return ret;
> >  	}
> >  
> > +	/*
> > +	 * CPU was successfully started, wait for it to come online or
> > +	 * time out.
> > +	 */
> > +	wait_for_completion_timeout(&cpu_running,
> > +				    msecs_to_jiffies(5000));
> > +	if (cpu_online(cpu))
> > +		return 0;
> > +
> > +	pr_crit("CPU%u: failed to come online\n", cpu);
> >  	secondary_data.task = NULL;
> >  	secondary_data.stack = NULL;
> >  	__flush_dcache_area(&secondary_data, sizeof(secondary_data));
> >  	status = READ_ONCE(secondary_data.status);
> > -	if (ret && status) {
> > -
> > -		if (status == CPU_MMU_OFF)
> > -			status = READ_ONCE(__early_cpu_boot_status);
> > +	if (status == CPU_MMU_OFF)
> > +		status = READ_ONCE(__early_cpu_boot_status);
> >  
> > -		switch (status & CPU_BOOT_STATUS_MASK) {
> > -		default:
> > -			pr_err("CPU%u: failed in unknown state : 0x%lx\n",
> > -					cpu, status);
> > -			cpus_stuck_in_kernel++;
> > -			break;
> > -		case CPU_KILL_ME:
> > -			if (!op_cpu_kill(cpu)) {
> > -				pr_crit("CPU%u: died during early boot\n", cpu);
> > -				break;
> > -			}
> > -			pr_crit("CPU%u: may not have shut down cleanly\n", cpu);
> > -			/* Fall through */
> > -		case CPU_STUCK_IN_KERNEL:
> > -			pr_crit("CPU%u: is stuck in kernel\n", cpu);
> > -			if (status & CPU_STUCK_REASON_52_BIT_VA)
> > -				pr_crit("CPU%u: does not support 52-bit VAs\n", cpu);
> > -			if (status & CPU_STUCK_REASON_NO_GRAN)
> > -				pr_crit("CPU%u: does not support %luK granule \n", cpu, PAGE_SIZE / SZ_1K);
> > -			cpus_stuck_in_kernel++;
> > +	switch (status & CPU_BOOT_STATUS_MASK) {
> > +	default:
> > +		pr_err("CPU%u: failed in unknown state : 0x%lx\n",
> > +		       cpu, status);
> > +		cpus_stuck_in_kernel++;
> > +		break;
> > +	case CPU_KILL_ME:
> > +		if (!op_cpu_kill(cpu)) {
> > +			pr_crit("CPU%u: died during early boot\n", cpu);
> >  			break;
> > -		case CPU_PANIC_KERNEL:
> > -			panic("CPU%u detected unsupported configuration\n", cpu);
> >  		}
> > +		pr_crit("CPU%u: may not have shut down cleanly\n", cpu);
> > +		/* Fall through */
> > +	case CPU_STUCK_IN_KERNEL:
> > +		pr_crit("CPU%u: is stuck in kernel\n", cpu);
> > +		if (status & CPU_STUCK_REASON_52_BIT_VA)
> > +			pr_crit("CPU%u: does not support 52-bit VAs\n", cpu);
> > +		if (status & CPU_STUCK_REASON_NO_GRAN) {
> > +			pr_crit("CPU%u: does not support %luK granule\n",
> > +				cpu, PAGE_SIZE / SZ_1K);
> > +		}
> > +		cpus_stuck_in_kernel++;
> > +		break;
> > +	case CPU_PANIC_KERNEL:
> > +		panic("CPU%u detected unsupported configuration\n", cpu);
> >  	}
> >  
> >  	return ret;
> > -- 
> > 2.23.0
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
