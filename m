Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D028E4A8ED
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 19:58:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PAc3Tt3gZCCzgEdOkBbgHCTMFVBdve3VZz3NGEINBsw=; b=XNGi70BIQri5pZ
	J5XgokYo5PraCx5cyyeRN+L6LgW9905oOvMDYpNWJD8X68WdUvaUydFDFb/qg8Si7oA5jJpd9McEi
	0n8vzx75CBmHP3SPjezCby6ihXXJDwNYBoo4RcRNBVVMCTpIomZ72wbWSkc4lj1GI61IdX8M4Pc5L
	e0A3BF5XVULNOCwrJjAlsSEPGXqDfbYAbUGAIUc4R6Xy4Cos1uK7ifCuarz7hpyhFVbaXO1/UdDMt
	KnNSQCV81Pft0wQrx7GCDWTVPuDCx0+S+eluYlJonwq34TlWl9r2fe93gQ2FD+RfySgKJUbLN8lS1
	K31vt8w+ZfKf5fKZ91kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdINW-0007HQ-8U; Tue, 18 Jun 2019 17:58:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdINI-0007Gs-40
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 17:58:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D2026344;
 Tue, 18 Jun 2019 10:58:26 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2BD9B3F738;
 Tue, 18 Jun 2019 10:58:25 -0700 (PDT)
Date: Tue, 18 Jun 2019 18:58:23 +0100
From: Will Deacon <will.deacon@arm.com>
To: Zhi Li <lznuaa@gmail.com>
Subject: Re: [PATCH V12 2/4] drivers/perf: imx_ddr: Add ddr performance
 counter support
Message-ID: <20190618175823.GJ4270@fuggles.cambridge.arm.com>
References: <1556736193-29411-1-git-send-email-Frank.Li@nxp.com>
 <1556736193-29411-2-git-send-email-Frank.Li@nxp.com>
 <20190613112320.GA18966@fuggles.cambridge.arm.com>
 <CAHrpEqRZ0YL9SFk6o7iebJ+diJVMTtyba_9GtujL7H7e4G8qQA@mail.gmail.com>
 <20190613174436.GG18966@fuggles.cambridge.arm.com>
 <CAHrpEqS9GEC9Shf-6xLL0_+WJNuwYOdKe=5jtUogLajfcWYMew@mail.gmail.com>
 <20190614102302.GD10659@fuggles.cambridge.arm.com>
 <CAHrpEqR+3LETyDosyRq=SBDC=g3tkm72vg-f=550H+TTVLbmcQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHrpEqR+3LETyDosyRq=SBDC=g3tkm72vg-f=550H+TTVLbmcQ@mail.gmail.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_105828_250048_3B126F27 
X-CRM114-Status: GOOD (  21.32  )
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, Frank Li <frank.li@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 12:24:19PM -0500, Zhi Li wrote:
> On Fri, Jun 14, 2019 at 5:23 AM Will Deacon <will.deacon@arm.com> wrote:
> >
> > On Thu, Jun 13, 2019 at 02:13:20PM -0500, Zhi Li wrote:
> > > On Thu, Jun 13, 2019 at 12:44 PM Will Deacon <will.deacon@arm.com> wrote:
> > > >
> > > > On Thu, Jun 13, 2019 at 12:04:37PM -0500, Zhi Li wrote:
> > > > > On Thu, Jun 13, 2019 at 6:23 AM Will Deacon <will.deacon@arm.com> wrote:
> > > > > >
> > > > > > On Wed, May 01, 2019 at 06:43:29PM +0000, Frank Li wrote:
> > > > > > > Add ddr performance monitor support for iMX8QXP
> > > > > > >
> > > > > > > There are 4 counters for ddr perfomance events.
> > > > > > > counter 0 is dedicated for cycles.
> > > > > > > you choose any up to 3 no cycles events.
> > > > > > >
> > > > > > > for example:
> > > > > > >
> > > > > > > perf stat -a -e imx8_ddr0/read-cycles/,imx8_ddr0/write-cycles/,imx8_ddr0/precharge/ ls
> > > > > > > perf stat -a -e imx8_ddr0/cycles/,imx8_ddr0/read-access/,imx8_ddr0/write-access/ ls
> > > > > >
> > > > > > I've pushed patches 1, 2 and 4 out with some minor tweaks to:
> > > > > >
> > > > > > https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/log/?h=for-next/perf
> > > > > >
> > > > > > I'll leave the actual .dts change to go via the soc tree, since last time
> > > > > > I took one of those it just resulted in conflicts.
> > > > > >
> > > > > > Frank, Andrey: Please could you try to run the perf fuzzer on this before
> > > > > > it lands in mainline? It has a good track record of finding nasty PMU driver
> > > > > > bugs, but it obviously requires access to hardware which implements the PMU:
> > > > > >
> > > > > > http://web.eece.maine.edu/~vweaver/projects/perf_events/fuzzer/
> > > > >
> > > > > Okay, how long should be run generally?
> > > > > I need make sure it can pass without my patches at our platform.
> > > >
> > > > As you long as you can really, but if it survives a few hours that's usually
> > > > a good sign. Overnight is even better.
> > >
> > > Base on commit f2c7c76c5d0a443053e94adb9f0918fa2fb85c3a
> > > Author: Linus Torvalds <torvalds@linux-foundation.org>
> > > Date:   Sun Jun 2 13:55:33 2019 -0700
> > >
> > >     Linux 5.2-rc3
> > >
> > > RCU report problem:
> > >
> > > [ 6048.741784] rcu: INFO: rcu_preempt self-detected stall on CPU
> > > [ 6048.747550] rcu:     1-....: (5249 ticks this GP)
> > > idle=c5a/1/0x4000000000000004 softirq=503121/503121 fqs=2425
> > > [ 6048.757384]  (t=5253 jiffies g=1416105 q=117)
> > > [ 6048.761745] Task dump for CPU 1:
> > > [ 6048.764977] perf_fuzzer     R  running task        0 32520    426 0x00000202
> > > [ 6048.772030] Call trace:
> > > [ 6048.774493]  dump_backtrace+0x0/0x130
> > > [ 6048.778159]  show_stack+0x14/0x20
> > > [ 6048.781477]  sched_show_task+0x108/0x138
> > > [ 6048.785401]  dump_cpu_task+0x40/0x4c
> > > [ 6048.788983]  rcu_dump_cpu_stacks+0x94/0xd0
> > > [ 6048.793082]  rcu_sched_clock_irq+0x5e0/0x918
> > > [ 6048.797357]  update_process_times+0x2c/0x70
> > > [ 6048.801545]  tick_sched_handle.isra.6+0x3c/0x50
> > > [ 6048.806076]  tick_sched_timer+0x48/0x98
> > > [ 6048.809918]  __hrtimer_run_queues+0x118/0x1a8
> > > [ 6048.814277]  hrtimer_interrupt+0xe4/0x238
> > > [ 6048.818296]  arch_timer_handler_phys+0x2c/0x38
> > > [ 6048.822743]  handle_percpu_devid_irq+0x80/0x140
> > > [ 6048.827277]  generic_handle_irq+0x24/0x38
> >
> > This is the timer interrupt which prompts the RCU splat. Do you have
> > information about where the CPU was when the interrupt occurred?
> >
> > In the meantime, it's still worth leaving the fuzzer running to see what
> > else it finds.
> 
> Overnight test done, only above rcu problem happen at both with and
> without ddr perf patches.

Great, thanks for giving it a go.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
