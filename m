Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D631C17D830
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 03:39:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cfUqfR1aVC9aUcvy2m58u1vG5Ghj3GbIcYQRBi3EElg=; b=l+GCotHHATG1+h
	mHqGDf539P6V/d/h68AGbJPunz69f0yVNOdJzbT7f84U0qjlus/qxHSlTutDoIaO0GPSsaCn95w0W
	3VMXWnaugkBFqaieBRX9QaOpiIG10Rad4Rq6LHs1sq52XpLbSpHRPTE0J+hion8fl7br+HHUefF6Q
	0MAHzYOiR9OqGh2Ddt+T2cLLPQMNAAFw0i+zgDLGoPrNF6TnHEwUN9V8ELTpP7wbUtfI418KVOl3s
	3t0OAjVWu3k/Gth6ouV3A/veJBB3A38lvYc/50gJX/y7IHKBL037CFTqnRYfm9MbD490UdBbie/4i
	1M93L4TdZJxxB0ZjZ7hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jB8Jh-0007gx-7n; Mon, 09 Mar 2020 02:38:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jB8JZ-0007gN-As
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 02:38:46 +0000
Received: from localhost (lfbn-ncy-1-985-231.w90-101.abo.wanadoo.fr
 [90.101.63.231])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1967920675;
 Mon,  9 Mar 2020 02:38:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583721524;
 bh=NYBnKnoFGHiKr8KFP5sPc644yQ3JlTxiVZ/OVEyT5kM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZoL5T7WMQ1L5KDgXAkmHsFCSmrpvYGWHDYhIsPfh2SNqKbDbBJXqmI6gsl5tz1+dm
 rw33KSreeT0C31iozs1WGnkwVbboEvSWzW+nxTJD+plXMvbYqDnFHtbF+7B3dMOJhA
 79dptiGbAhG3DT5Ia1hzMdbu9qL/+NGDRkGikkIk=
Date: Mon, 9 Mar 2020 03:38:42 +0100
From: Frederic Weisbecker <frederic@kernel.org>
To: Alex Belits <abelits@marvell.com>
Subject: Re: [EXT] Re: [PATCH 08/12] task_isolation: don't interrupt CPUs
 with tick_nohz_full_kick_cpu()
Message-ID: <20200309023841.GC9615@lenoir>
References: <4473787e1b6bc3cc226067e8d122092a678b63de.camel@marvell.com>
 <d7ce01e57d4a35b126e1cb96a63109eaa9781cb6.camel@marvell.com>
 <20200306160341.GE8590@lenoir>
 <646a22fd24e8dfeb1eb3101ae7be2b88e91dbfa3.camel@marvell.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <646a22fd24e8dfeb1eb3101ae7be2b88e91dbfa3.camel@marvell.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_193845_417621_E4710102 
X-CRM114-Status: GOOD (  22.13  )
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
 "peterz@infradead.org" <peterz@infradead.org>,
 "linux-api@vger.kernel.org" <linux-api@vger.kernel.org>,
 "rostedt@goodmis.org" <rostedt@goodmis.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "will@kernel.org" <will@kernel.org>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Mar 08, 2020 at 07:28:22AM +0000, Alex Belits wrote:
> On Fri, 2020-03-06 at 17:03 +0100, Frederic Weisbecker wrote:
> > On Wed, Mar 04, 2020 at 04:12:40PM +0000, Alex Belits wrote:
> > > From: Yuri Norov <ynorov@marvell.com>
> > > 
> > > For nohz_full CPUs the desirable behavior is to receive interrupts
> > > generated by tick_nohz_full_kick_cpu(). But for hard isolation it's
> > > obviously not desirable because it breaks isolation.
> > > 
> > > This patch adds check for it.
> > > 
> > > Signed-off-by: Alex Belits <abelits@marvell.com>
> > > ---
> > >  kernel/time/tick-sched.c | 3 ++-
> > >  1 file changed, 2 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/kernel/time/tick-sched.c b/kernel/time/tick-sched.c
> > > index 1d4dec9d3ee7..fe4503ba1316 100644
> > > --- a/kernel/time/tick-sched.c
> > > +++ b/kernel/time/tick-sched.c
> > > @@ -20,6 +20,7 @@
> > >  #include <linux/sched/clock.h>
> > >  #include <linux/sched/stat.h>
> > >  #include <linux/sched/nohz.h>
> > > +#include <linux/isolation.h>
> > >  #include <linux/module.h>
> > >  #include <linux/irq_work.h>
> > >  #include <linux/posix-timers.h>
> > > @@ -262,7 +263,7 @@ static void tick_nohz_full_kick(void)
> > >   */
> > >  void tick_nohz_full_kick_cpu(int cpu)
> > >  {
> > > -	if (!tick_nohz_full_cpu(cpu))
> > > +	if (!tick_nohz_full_cpu(cpu) || task_isolation_on_cpu(cpu))
> > >  		return;
> > 
> > I fear you can't do that. A nohz full CPU is kicked for a reason.
> > As for the other cases, you need to fix the callers.
> > 
> > In the general case, randomly ignoring an interrupt is a correctness
> > issue.
> 
> Not ignoring, just delaying until we are back from userspace. We know
> that everything was done on this CPU when we successfully entered
> userspace in isolated mode -- otherwise we would be kicked out. We
> restart timers when we are back in kernel again on cleanup, so things
> will be back to normal at that point. Between those moments we can just
> as well remain in userspace and forget about the timers until we are
> back in kernel.

Well, if another CPU requests the tick on our isolated CPU, we can't ignore
it. This can be a posix cpu timer belonging to our process, a timer bound
to our CPU or tasks added to our CPU that require the scheduler tick.
Denying any of that can crash the kernel randomly.

The only thing we can do is to simply avoid these situations. But those
are requirements anyway if you want to run a task undisturbed.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
