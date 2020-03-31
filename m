Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8FEA199B1C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 18:14:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lp8lSjxXxiX37Nxmp4ojvuTlSikQrCsZFJYNWBP4TUU=; b=RcznwWjrayWZuR
	+Lb0160acyNK0ppBnRpckFBdZ0aixYBUhghvBN3gsR1Vj8QR1DvbaWzxxo0tyGdiQkHGbW2z1PCI/
	YKZCUdX1MJvg1El4n+cY6QKfPpikisgdtb8Z493voz26d8yiXszXuon+a+Ydn5d/Nu9YyOrcg7JB4
	qp/dngAmpkRV3dofUbAuv6Bs7eccVrXtNJDAfN815c2O/Hd0CzBLYd/6903Z0KSekOPfajwwQ9E5K
	WmW5qBH6Po7OSCk3ccML/OWRIbXwAOFqCAMy/vHC8ygOibXzd+dck7OwOw4m/gjg1Kc/SwQj5EGPe
	26ia13dzj10w3AHYfupA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJWU-00075G-UQ; Tue, 31 Mar 2020 16:13:54 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJWA-0006ze-Li
 for linux-arm-kernel@bombadil.infradead.org; Tue, 31 Mar 2020 16:13:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=PQpgxNPCWWT+9PGI3Q9YA11D3XT0vA+mnCv838A5DxA=; b=HcYLrswaUl89zNBx5lBrRjvN+j
 zpW+u3tk5G5Pr1JffnfKGxYjX4wnwqtFMjATQ1kymjFCYX6PI7tA+g57S36MLQlVAM04RY+iLbJVM
 KVgqVDs721/1EWvgkZ3W2AYL5WyZo3aGL/n+upnTbqC4AScbLkvAKill1K/wfw2gs7qm9XjBv8v6J
 liOkNG+UrMXFbvOStKP/wtjuKOYx8xZBdNITUuzq8iJvkwtNYA5HCMzORlD91xDN/9gA5ft9atG/l
 DHkO2dkpGyCxWJMlHS/GaKjipvPm3iaFOBNgM+CPe8bF5EFeaUuIfDrUnlIicGs74aRZ8c97WUlge
 uD2wfYxQ==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJIow-0005jf-GM; Tue, 31 Mar 2020 15:28:54 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 6658F3060FD;
 Tue, 31 Mar 2020 17:28:50 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 50D1729D75855; Tue, 31 Mar 2020 17:28:50 +0200 (CEST)
Date: Tue, 31 Mar 2020 17:28:50 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH 6/9] lockdep: Introduce wait-type checks
Message-ID: <20200331152850.GI20760@hirez.programming.kicks-ass.net>
References: <20200313174701.148376-1-bigeasy@linutronix.de>
 <20200313174701.148376-7-bigeasy@linutronix.de>
 <CAMuHMdU6s1F=DnaguZXrV4sWzEO-EqTaGQ=N7zyhgGq1M+Q1Ug@mail.gmail.com>
 <20200331145515.GR20730@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331145515.GR20730@hirez.programming.kicks-ass.net>
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
 Catalin Marinas <catalin.marinas@arm.com>,
 Joel Fernandes <joel@joelfernandes.org>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 04:55:15PM +0200, Peter Zijlstra wrote:
> On Tue, Mar 31, 2020 at 03:25:21PM +0200, Geert Uytterhoeven wrote:
> > On arm64 (e.g. R-Car H3 ES2.0):
> > 
> > +=============================
> > +[ BUG: Invalid wait context ]
> > +5.6.0-salvator-x-09423-gb29514ba13a9c459-dirty #679 Not tainted
> > +-----------------------------
> > +swapper/5/0 is trying to lock:
> > +ffffff86ff76f398 (&pool->lock){..-.}-{3:3}, at: __queue_work+0x134/0x430
> > +other info that might help us debug this:
> > +1 lock held by swapper/5/0:
> > + #0: ffffffc01103a4a0 (rcu_read_lock){....}-{1:3}, at:
> > rcu_lock_acquire.constprop.59+0x0/0x38
> > +stack backtrace:
> > +CPU: 5 PID: 0 Comm: swapper/5 Not tainted
> > 5.6.0-salvator-x-09423-gb29514ba13a9c459-dirty #679
> > +Hardware name: Renesas Salvator-X 2nd version board based on r8a77951 (DT)
> > +Call trace:
> > + dump_backtrace+0x0/0x180
> > + show_stack+0x14/0x1c
> > + dump_stack+0xdc/0x12c
> > + __lock_acquire+0x37c/0xf9c
> > + lock_acquire+0x258/0x288
> > + _raw_spin_lock+0x34/0x48
> > + __queue_work+0x134/0x430
> > + queue_work_on+0x48/0x8c
> > + timers_update_nohz+0x24/0x2c
> > + tick_nohz_activate.isra.15.part.16+0x5c/0x80
> > + tick_setup_sched_timer+0xe0/0xf0
> > + hrtimer_run_queues+0x88/0xf8
> 
> So this is complaining that it cannot take pool->lock, which is
> WAIT_CONFIG while holding RCU, which presents a WAIT_CONFIG context.
> 
> This seems to implicate something is amiss, because that should be
> allowed. The thing it doesn't print is the context, which in the above
> case is a (hrtimer) interrupt.
> 
> I suspect this really is a hardirq context and the next patch won't cure
> things. It looks nohz (full?) related.
> 
> Frederic, can you untangle this?

Sebastian is right; I completely forgot the workqueue thing was still
pending.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
