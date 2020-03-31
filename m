Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C15D11999EE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 17:38:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M4Vi8vqVNAVQCKOo+wVHhJKGgUPRJV/10Dt8XpPcK6U=; b=cx6jQgTCbcx0MY
	xQErdS0ScehRw8FDjXr/WTS7CtUjDWz2TXlszE9EQPwPtQEPc3Pf9hhPhmF2O0ooD3C6ZPVpv0D+N
	yJ8sdSzcXNAzlT9BSOkUE0ZZdqlvf0fBqB+9BTESFXWOGL7b3cC7ryZxbYHyrHTvyxuTkOn7SJ2XW
	HYJO9JHwO8W48Qd9sK9DqN+W/hDRFuBbo4fJM/Q3vgRBT95O6yFKTqAQsDkilZ1DCLFRPs5xcKasT
	pGLWl2ONLrVFEW65fJlReJgJshtKxaYR7n3OqNZ7VDZI5Pb66qhyWTj5pOX8sWKH6lntKKjkLagZZ
	q96nWPE+Y+ZFnEp2sN3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJIyI-0003fa-KR; Tue, 31 Mar 2020 15:38:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJIxO-0003Gv-TW
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 15:37:42 +0000
Received: from localhost (lfbn-ncy-1-985-231.w90-101.abo.wanadoo.fr
 [90.101.63.231])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5BB6420848;
 Tue, 31 Mar 2020 15:37:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585669057;
 bh=ggMm14KxXbY1mqecFv6pjM06I08zLyhqEuowrT/NApQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mGxhCt07fuJo88YbZTobkEe3mxir9Y88c89S+a3IWrsUceux7kjcXqDx/3NZydT5G
 5vFmczVbdKf8IpGOlX3+Mm/NEAHVaIG0ejNjlPjvue8c4zRqmyOm0Q+d4Jj2hUanFA
 yd7KuK/Vq2D2O7Ll3dGhk4HpgSSLabTT2hKfbZuA=
Date: Tue, 31 Mar 2020 17:37:35 +0200
From: Frederic Weisbecker <frederic@kernel.org>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH 6/9] lockdep: Introduce wait-type checks
Message-ID: <20200331153734.GA6979@lenoir>
References: <20200313174701.148376-1-bigeasy@linutronix.de>
 <20200313174701.148376-7-bigeasy@linutronix.de>
 <CAMuHMdU6s1F=DnaguZXrV4sWzEO-EqTaGQ=N7zyhgGq1M+Q1Ug@mail.gmail.com>
 <20200331145515.GR20730@hirez.programming.kicks-ass.net>
 <20200331152850.GI20760@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331152850.GI20760@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_083739_011875_A2C27D05 
X-CRM114-Status: GOOD (  16.57  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "Paul E . McKenney" <paulmck@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>, Frederic Weisbecker <fweisbec@gmail.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Joel Fernandes <joel@joelfernandes.org>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 05:28:50PM +0200, Peter Zijlstra wrote:
> On Tue, Mar 31, 2020 at 04:55:15PM +0200, Peter Zijlstra wrote:
> > On Tue, Mar 31, 2020 at 03:25:21PM +0200, Geert Uytterhoeven wrote:
> > > On arm64 (e.g. R-Car H3 ES2.0):
> > > 
> > > +=============================
> > > +[ BUG: Invalid wait context ]
> > > +5.6.0-salvator-x-09423-gb29514ba13a9c459-dirty #679 Not tainted
> > > +-----------------------------
> > > +swapper/5/0 is trying to lock:
> > > +ffffff86ff76f398 (&pool->lock){..-.}-{3:3}, at: __queue_work+0x134/0x430
> > > +other info that might help us debug this:
> > > +1 lock held by swapper/5/0:
> > > + #0: ffffffc01103a4a0 (rcu_read_lock){....}-{1:3}, at:
> > > rcu_lock_acquire.constprop.59+0x0/0x38
> > > +stack backtrace:
> > > +CPU: 5 PID: 0 Comm: swapper/5 Not tainted
> > > 5.6.0-salvator-x-09423-gb29514ba13a9c459-dirty #679
> > > +Hardware name: Renesas Salvator-X 2nd version board based on r8a77951 (DT)
> > > +Call trace:
> > > + dump_backtrace+0x0/0x180
> > > + show_stack+0x14/0x1c
> > > + dump_stack+0xdc/0x12c
> > > + __lock_acquire+0x37c/0xf9c
> > > + lock_acquire+0x258/0x288
> > > + _raw_spin_lock+0x34/0x48
> > > + __queue_work+0x134/0x430
> > > + queue_work_on+0x48/0x8c
> > > + timers_update_nohz+0x24/0x2c
> > > + tick_nohz_activate.isra.15.part.16+0x5c/0x80
> > > + tick_setup_sched_timer+0xe0/0xf0
> > > + hrtimer_run_queues+0x88/0xf8
> > 
> > So this is complaining that it cannot take pool->lock, which is
> > WAIT_CONFIG while holding RCU, which presents a WAIT_CONFIG context.
> > 
> > This seems to implicate something is amiss, because that should be
> > allowed. The thing it doesn't print is the context, which in the above
> > case is a (hrtimer) interrupt.
> > 
> > I suspect this really is a hardirq context and the next patch won't cure
> > things. It looks nohz (full?) related.
> > 
> > Frederic, can you untangle this?
> 
> Sebastian is right; I completely forgot the workqueue thing was still
> pending.
> 

Ok good, because I had no better answer :)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
