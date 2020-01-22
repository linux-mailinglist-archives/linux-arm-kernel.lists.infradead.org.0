Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C976E1452AC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 11:33:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3EMagKun7YSrSNP9NGad4jae5prdwN+ZhOCNgjgaao4=; b=cU+/2iUHrkY6Ne
	UzxmF+oESo9mFZd1lEvH7OaxdztBzc2EH0+xkf4aJNYtBePyqqjXF5+zFgFWWIogToZVuy4N+XHpO
	LRxVFZLTOfLkemPsnVRSh5AoThIeN25+45T3glRxwps/POfXEdJBIunbpATcWeizIUpDguCcS1cR2
	NKyA1LGzPqr+6WkWGVAJvkWrDJAoWtlLrNS/SYKCQJqHJPYkgXuf87yp7BPXLgS2L2vP1JQvSoJnB
	6r3zrX58TR0eZy2eUucBKgWN98c4b8/FfOAfbbeIWiMfXUQaeeUj16QHdNn2Mxwo0gWtLjsol0kl9
	zbfDGWt+R7ReKMflMHCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuDJq-0007P5-Hu; Wed, 22 Jan 2020 10:33:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuDJh-0007OK-Lc
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 10:32:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3942A1FB;
 Wed, 22 Jan 2020 02:32:56 -0800 (PST)
Received: from e107158-lin.cambridge.arm.com (e107158-lin.cambridge.arm.com
 [10.1.195.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C72CD3F68E;
 Wed, 22 Jan 2020 02:32:53 -0800 (PST)
Date: Wed, 22 Jan 2020 10:32:51 +0000
From: Qais Yousef <qais.yousef@arm.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH v2 01/14] smp: Create a new function to shutdown nonboot
 cpus
Message-ID: <20200122103250.jdssttb7veevfttz@e107158-lin.cambridge.arm.com>
References: <20191125112754.25223-1-qais.yousef@arm.com>
 <20191125112754.25223-2-qais.yousef@arm.com>
 <20200121170350.GC18808@shell.armlinux.org.uk>
 <20200121174751.5opyyjwxfnwdgcev@e107158-lin.cambridge.arm.com>
 <20200121180930.GJ25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200121180930.GJ25745@shell.armlinux.org.uk>
User-Agent: NeoMutt/20171215
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_023257_793390_C3EF2197 
X-CRM114-Status: GOOD (  20.69  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Fenghua Yu <fenghua.yu@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Tony Luck <tony.luck@intel.com>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Josh Poimboeuf <jpoimboe@redhat.com>,
 Zhenzhong Duan <zhenzhong.duan@oracle.com>,
 Nicholas Piggin <npiggin@gmail.com>, linux-kernel@vger.kernel.org,
 Eiichi Tsukata <devel@etsukata.com>, Nadav Amit <namit@vmware.com>,
 Jiri Kosina <jkosina@suse.cz>, linux-ia64@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 01/21/20 18:09, Russell King - ARM Linux admin wrote:
> On Tue, Jan 21, 2020 at 05:47:52PM +0000, Qais Yousef wrote:
> > On 01/21/20 17:03, Russell King - ARM Linux admin wrote:
> > > On Mon, Nov 25, 2019 at 11:27:41AM +0000, Qais Yousef wrote:
> > > > +void smp_shutdown_nonboot_cpus(unsigned int primary_cpu)
> > > > +{
> > > > +	unsigned int cpu;
> > > > +
> > > > +	if (!cpu_online(primary_cpu)) {
> > > > +		pr_info("Attempting to shutdodwn nonboot cpus while boot cpu is offline!\n");
> > > > +		cpu_online(primary_cpu);
> > 
> > Eh, that should be cpu_up(primary_cpu)!
> > 
> > Which I have to say I'm not if is the right thing to do.
> > migrate_to_reboot_cpu() picks the first online cpu if reboot_cpu (assumed 0) is
> > offline
> > 
> > migrate_to_reboot_cpu():
> >  225         /* Make certain the cpu I'm about to reboot on is online */
> >  226         if (!cpu_online(cpu))
> >  227                 cpu = cpumask_first(cpu_online_mask);
> > 
> > > > +	}
> > > > +
> > > > +	for_each_present_cpu(cpu) {
> > > > +		if (cpu == primary_cpu)
> > > > +			continue;
> > > > +		if (cpu_online(cpu))
> > > > +			cpu_down(cpu);
> > > > +	}
> > > 
> > > How does this avoid racing with userspace attempting to restart CPUs
> > > that have already been taken down by this function?
> > 
> > This is meant to be called from machine_shutdown() only.
> > 
> > But you've got a point.
> > 
> > The previous logic that used disable_nonboot_cpus(), which in turn called
> > freeze_secondary_cpus() didn't hold hotplug lock. So I assumed the higher level
> > logic of machine_shutdown() ensures that hotplug lock is held to synchronize
> > with potential other hotplug operations.
> 
> freeze_secondary_cpus() takes the CPU maps lock while it takes CPUs
> down, and then disables cpu hotplug by incrementing
> cpu_hotplug_disabled.  Incrementing that prevents cpu_up() and
> cpu_down() being used, thereby preventing userspace from changing the
> online state of any CPU in the system.

I see. Sorry I missed the CPU maps lock.

Yes this makes sense and should work here too.

Thanks for the help.

Thomas, I'll wait for your comment on this and potentially other patches before
sending v3.

Thanks

--
Qais Yousef

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
