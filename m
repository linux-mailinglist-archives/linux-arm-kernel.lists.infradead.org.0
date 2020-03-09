Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E3917D820
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 03:28:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eDyrbrIBiQVng3OZ/Chj7aLebbAcvHCJuA5T2s6+n1g=; b=j0ErwLAqEq0gZH
	A5Gpn5zTzF8Vf9PBf6eB740eeKLuXsNm30SX1uKJq3ncFpbF+XpoJtP8bpnzGnNhwME+x9gZIXeut
	Np+dikYuLzVeru0m6sxCy2cLKJvnmYfQnIDa04iw69rUhe5SHzLShfkVbCS8nUMULhy8ZutvhD3S5
	KhNlwC6j1uOTD3r1JJtqb4m8vGGyecxsLZCyLbNQF671F6pRLl03YJfPljfNXJLuz4zh95W4BOJU/
	UwSlLG3T3x4p0hzzJvAbVAzbwwsYzHqFIKuzAcj8mVt0GlakI+TTfsvIMU/yrGBrrysBNyJeSZSRD
	s+UI+92mHW7/LLRdYXpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jB89p-0004Ly-Rd; Mon, 09 Mar 2020 02:28:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jB89i-0004LH-07
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 02:28:35 +0000
Received: from localhost (lfbn-ncy-1-985-231.w90-101.abo.wanadoo.fr
 [90.101.63.231])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CD74B20637;
 Mon,  9 Mar 2020 02:28:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583720912;
 bh=5Klv9i0gcwrEZVuZa+BIxD+FYTa6nxm4aw60GyHS0xI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hNSdzBDok5iJiJMWz5xJCqDSs2Kiw1Njm5O8MpOv68dsn0lXzL9Ly20CTyKNErqdj
 ire7Go761k+v5N+w7FDOgFMhXBJtxuKpw9trPEUy8Lq3o7H7uYTnOFSuJiYhlpLkhu
 zER5t9sviw+3mq1MeCu+MgQmxwblkqzSxeEpCk8E=
Date: Mon, 9 Mar 2020 03:28:30 +0100
From: Frederic Weisbecker <frederic@kernel.org>
To: Alex Belits <abelits@marvell.com>
Subject: Re: [EXT] Re: [PATCH 11/12] task_isolation: kick_all_cpus_sync:
 don't kick isolated cpus
Message-ID: <20200309022829.GB9615@lenoir>
References: <4473787e1b6bc3cc226067e8d122092a678b63de.camel@marvell.com>
 <dfa5e0e9f34e6ff0ef048c81bc70496354f31300.camel@marvell.com>
 <20200306153446.GC8590@lenoir>
 <7e0ce8988f4811e7453859e22654d2618557d9ab.camel@marvell.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7e0ce8988f4811e7453859e22654d2618557d9ab.camel@marvell.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_192834_085471_9473E670 
X-CRM114-Status: GOOD (  30.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "peterz@infradead.org" <peterz@infradead.org>,
 Prasun Kapoor <pkapoor@marvell.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rostedt@goodmis.org" <rostedt@goodmis.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-api@vger.kernel.org" <linux-api@vger.kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "will@kernel.org" <will@kernel.org>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Mar 08, 2020 at 06:48:43AM +0000, Alex Belits wrote:
> On Fri, 2020-03-06 at 16:34 +0100, Frederic Weisbecker wrote:
> > On Wed, Mar 04, 2020 at 04:15:24PM +0000, Alex Belits wrote:
> > > From: Yuri Norov <ynorov@marvell.com>
> > > 
> > > Make sure that kick_all_cpus_sync() does not call CPUs that are
> > > running
> > > isolated tasks.
> > > 
> > > Signed-off-by: Alex Belits <abelits@marvell.com>
> > > ---
> > >  kernel/smp.c | 14 +++++++++++++-
> > >  1 file changed, 13 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/kernel/smp.c b/kernel/smp.c
> > > index 3a8bcbdd4ce6..d9b4b2fedfed 100644
> > > --- a/kernel/smp.c
> > > +++ b/kernel/smp.c
> > > @@ -731,9 +731,21 @@ static void do_nothing(void *unused)
> > >   */
> > >  void kick_all_cpus_sync(void)
> > >  {
> > > +	struct cpumask mask;
> > > +
> > >  	/* Make sure the change is visible before we kick the cpus */
> > >  	smp_mb();
> > > -	smp_call_function(do_nothing, NULL, 1);
> > > +
> > > +	preempt_disable();
> > > +#ifdef CONFIG_TASK_ISOLATION
> > > +	cpumask_clear(&mask);
> > > +	task_isolation_cpumask(&mask);
> > > +	cpumask_complement(&mask, &mask);
> > > +#else
> > > +	cpumask_setall(&mask);
> > > +#endif
> > > +	smp_call_function_many(&mask, do_nothing, NULL, 1);
> > > +	preempt_enable();
> > >  }
> > 
> > That looks very dangerous, the callers of kick_all_cpus_sync() want
> > to
> > sync all CPUs for a reason. You will rather need to fix the callers.
> 
> All callers of this use this function to synchronize IPIs and icache,
> and they have no idea if there is anything special about the state of
> CPUs. If a task is isolated, this call would not be necessary because
> the task is in userspace, and it would have to enter kernel for any of
> that to become relevant but then it will have to switch from userspace
> to kernel. At worst it is returning to userspace after entering
> isolation or back in kernel running cleanup after isolation is broken
> but before tsk_thread_flags_cache is updated. There will be nothing to
> run on the same CPU because we have just left isolation, so task will
> either exit or go back to userspace.
> 
> Is there any reason for a race at that point?


I can imagine several races:

1) The isolated task has set the cpumask but hasn't exited the kernel
yet. If it still runs kernel code while kick_all_cpus_sync() has completed,
we fail.

2) The isolated task is running do_exit() but the caller of kick_all_cpus_sync()
still sees the target as part of the isolated mask.

3) The isolated task has just set the isolated cpumask and entered userspace
but the caller still don't see the new value in the isolated cpumask, so it sends
the IPI to the isolated CPU.

Besides, any caller of kick_all_cpus_sync() is in its right to expect that
everything preceding the call to that function is visible to all CPUs
after that call. If you spare that IPI to an isolated CPU, what ensures
it will see what it is supposed to once it calls do_exit() or prctl()?

Is there a way we could fix the callers instead? For example synchronize_rcu()
could be a replacement (it handles very well nohz_full CPUs), provided the
callsites can sleep. It seems to be the case for __do_tune_cpucache() at least.

flush_icache_range() is scarier I have to admit, doesn't look like it can
sleep.


> > Thanks.
> > 
> > >  EXPORT_SYMBOL_GPL(kick_all_cpus_sync);
> > >  
> > > -- 
> > > 2.20.1
> > > 
> 
> -- 
> Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
