Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2026FACF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 09:56:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WrQPrRbnHPwcAk0J3R/BNgaZMl+ioTTdWmxc/jmm9+k=; b=BYuDYslbaXguCD
	uZHeczjDY4z4eKBhFGFJo8yHqX+qATPbzkyRypqLKu4GjilFJ93v0Ttn4J92F3OoqrcuCRfoAdf1e
	KIPaU6SZp7G/OctUACTSrmQyqXmhPH++yKAp7VVCcc+6yu+17SonHsQ/tvpkYfHkaKZaRn69kN/pA
	KJPQq4QHK7npMmHFxrSHP4fCTaWckgJ/IwlfNgAiLghB41l1X7HOPsB5Bq03BnZspqk9lFcjyrj1I
	vfIfAOUa5nmokhfuNhpxT5LP0cDrxfO4CXOp+BKnsovO93Uq6a6sokziSF1nbNksEfWAJ5255BquQ
	sSU1FruvhAphuLDFy7ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpTBd-0005dZ-Hv; Mon, 22 Jul 2019 07:56:45 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpTBQ-0005cX-BH
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 07:56:33 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C52CD3083363;
 Mon, 22 Jul 2019 07:56:31 +0000 (UTC)
Received: from redhat.com (ovpn-120-233.rdu2.redhat.com [10.10.120.233])
 by smtp.corp.redhat.com (Postfix) with SMTP id 9E2225D704;
 Mon, 22 Jul 2019 07:56:23 +0000 (UTC)
Date: Mon, 22 Jul 2019 03:56:22 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: "Paul E. McKenney" <paulmck@linux.ibm.com>
Subject: Re: RFC: call_rcu_outstanding (was Re: WARNING in __mmdrop)
Message-ID: <20190722035236-mutt-send-email-mst@kernel.org>
References: <0000000000008dd6bb058e006938@google.com>
 <000000000000964b0d058e1a0483@google.com>
 <20190721044615-mutt-send-email-mst@kernel.org>
 <20190721081933-mutt-send-email-mst@kernel.org>
 <20190721131725.GR14271@linux.ibm.com>
 <20190721134614-mutt-send-email-mst@kernel.org>
 <20190721192841.GT14271@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190721192841.GT14271@linux.ibm.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Mon, 22 Jul 2019 07:56:32 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_005632_426538_312824A6 
X-CRM114-Status: GOOD (  38.83  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mhocko@suse.com, peterz@infradead.org, jasowang@redhat.com,
 ldv@altlinux.org, james.bottomley@hansenpartnership.com, linux-mm@kvack.org,
 namit@vmware.com, mingo@kernel.org, elena.reshetova@intel.com,
 aarcange@redhat.com, davem@davemloft.net, hch@infradead.org,
 christian@brauner.io, keescook@chromium.org, syzkaller-bugs@googlegroups.com,
 jglisse@redhat.com, viro@zeniv.linux.org.uk,
 linux-arm-kernel@lists.infradead.org, wad@chromium.org,
 linux-parisc@vger.kernel.org, linux-kernel@vger.kernel.org,
 luto@amacapital.net, ebiederm@xmission.com, akpm@linux-foundation.org,
 guro@fb.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jul 21, 2019 at 12:28:41PM -0700, Paul E. McKenney wrote:
> On Sun, Jul 21, 2019 at 01:53:23PM -0400, Michael S. Tsirkin wrote:
> > On Sun, Jul 21, 2019 at 06:17:25AM -0700, Paul E. McKenney wrote:
> > > On Sun, Jul 21, 2019 at 08:28:05AM -0400, Michael S. Tsirkin wrote:
> > > > Hi Paul, others,
> > > > 
> > > > So it seems that vhost needs to call kfree_rcu from an ioctl. My worry
> > > > is what happens if userspace starts cycling through lots of these
> > > > ioctls.  Given we actually use rcu as an optimization, we could just
> > > > disable the optimization temporarily - but the question would be how to
> > > > detect an excessive rate without working too hard :) .
> > > > 
> > > > I guess we could define as excessive any rate where callback is
> > > > outstanding at the time when new structure is allocated.  I have very
> > > > little understanding of rcu internals - so I wanted to check that the
> > > > following more or less implements this heuristic before I spend time
> > > > actually testing it.
> > > > 
> > > > Could others pls take a look and let me know?
> > > 
> > > These look good as a way of seeing if there are any outstanding callbacks,
> > > but in the case of Tree RCU, call_rcu_outstanding() would almost never
> > > return false on a busy system.
> > 
> > Hmm, ok. Maybe I could rename this to e.g. call_rcu_busy
> > and change the tree one to do rcu_segcblist_n_lazy_cbs > 1000?
> 
> Or the function could simply return the number of callbacks queued
> on the current CPU, and let the caller decide how many is too many.
> 
> > > Here are some alternatives:
> > > 
> > > o	RCU uses some pieces of Rao Shoaib kfree_rcu() patches.
> > > 	The idea is to make kfree_rcu() locally buffer requests into
> > > 	batches of (say) 1,000, but processing smaller batches when RCU
> > > 	is idle, or when some smallish amout of time has passed with
> > > 	no more kfree_rcu() request from that CPU.  RCU than takes in
> > > 	the batch using not call_rcu(), but rather queue_rcu_work().
> > > 	The resulting batch of kfree() calls would therefore execute in
> > > 	workqueue context rather than in softirq context, which should
> > > 	be much easier on the system.
> > > 
> > > 	In theory, this would allow people to use kfree_rcu() without
> > > 	worrying quite so much about overload.  It would also not be
> > > 	that hard to implement.
> > > 
> > > o	Subsystems vulnerable to user-induced kfree_rcu() flooding use
> > > 	call_rcu() instead of kfree_rcu().  Keep a count of the number
> > > 	of things waiting for a grace period, and when this gets too
> > > 	large, disable the optimization.  It will then drain down, at
> > > 	which point the optimization can be re-enabled.
> > > 
> > > 	But please note that callbacks are -not- guaranteed to run on
> > > 	the CPU that queued them.  So yes, you would need a per-CPU
> > > 	counter, but you would need to periodically sum it up to check
> > > 	against the global state.  Or keep track of the CPU that
> > > 	did the call_rcu() so that you can atomically decrement in
> > > 	the callback the same counter that was atomically incremented
> > > 	just before the call_rcu().  Or any number of other approaches.
> > 
> > I'm really looking for something we can do this merge window
> > and without adding too much code, and kfree_rcu is intended to
> > fix a bug.
> > Adding call_rcu and careful accounting is something that I'm not
> > happy adding with merge window already open.
> 
> OK, then I suggest having the interface return you the number of
> callbacks.  That allows you to experiment with the cutoff.
> 
> Give or take the ioctl overhead...

OK - and for tiny just assume 1 is too much?


> > > Also, the overhead is important.  For example, as far as I know,
> > > current RCU gracefully handles close(open(...)) in a tight userspace
> > > loop.  But there might be trouble due to tight userspace loops around
> > > lighter-weight operations.
> > > 
> > > So an important question is "Just how fast is your ioctl?"  If it takes
> > > (say) 100 microseconds to execute, there should be absolutely no problem.
> > > On the other hand, if it can execute in 50 nanoseconds, this very likely
> > > does need serious attention.
> > > 
> > > Other thoughts?
> > > 
> > > 							Thanx, Paul
> > 
> > Hmm the answer to this would be I'm not sure.
> > It's setup time stuff we never tested it.
> 
> Is it possible to measure it easily?
> 
> 							Thanx, Paul
> 
> > > > Thanks!
> > > > 
> > > > Signed-off-by: Michael S. Tsirkin <mst@redhat.com>
> > > > 
> > > > 
> > > > diff --git a/kernel/rcu/tiny.c b/kernel/rcu/tiny.c
> > > > index 477b4eb44af5..067909521d72 100644
> > > > --- a/kernel/rcu/tiny.c
> > > > +++ b/kernel/rcu/tiny.c
> > > > @@ -125,6 +125,25 @@ void synchronize_rcu(void)
> > > >  }
> > > >  EXPORT_SYMBOL_GPL(synchronize_rcu);
> > > > 
> > > > +/*
> > > > + * Helpful for rate-limiting kfree_rcu/call_rcu callbacks.
> > > > + */
> > > > +bool call_rcu_outstanding(void)
> > > > +{
> > > > +	unsigned long flags;
> > > > +	struct rcu_data *rdp;
> > > > +	bool outstanding;
> > > > +
> > > > +	local_irq_save(flags);
> > > > +	rdp = this_cpu_ptr(&rcu_data);
> > > > +	outstanding = rcu_segcblist_empty(&rdp->cblist);
> > > > +	outstanding = rcu_ctrlblk.donetail != rcu_ctrlblk.curtail;
> > > > +	local_irq_restore(flags);
> > > > +
> > > > +	return outstanding;
> > > > +}
> > > > +EXPORT_SYMBOL_GPL(call_rcu_outstanding);
> > > > +
> > > >  /*
> > > >   * Post an RCU callback to be invoked after the end of an RCU grace
> > > >   * period.  But since we have but one CPU, that would be after any
> > > > diff --git a/kernel/rcu/tree.c b/kernel/rcu/tree.c
> > > > index a14e5fbbea46..d4b9d61e637d 100644
> > > > --- a/kernel/rcu/tree.c
> > > > +++ b/kernel/rcu/tree.c
> > > > @@ -2482,6 +2482,24 @@ static void rcu_leak_callback(struct rcu_head *rhp)
> > > >  {
> > > >  }
> > > > 
> > > > +/*
> > > > + * Helpful for rate-limiting kfree_rcu/call_rcu callbacks.
> > > > + */
> > > > +bool call_rcu_outstanding(void)
> > > > +{
> > > > +	unsigned long flags;
> > > > +	struct rcu_data *rdp;
> > > > +	bool outstanding;
> > > > +
> > > > +	local_irq_save(flags);
> > > > +	rdp = this_cpu_ptr(&rcu_data);
> > > > +	outstanding = rcu_segcblist_empty(&rdp->cblist);
> > > > +	local_irq_restore(flags);
> > > > +
> > > > +	return outstanding;
> > > > +}
> > > > +EXPORT_SYMBOL_GPL(call_rcu_outstanding);
> > > > +
> > > >  /*
> > > >   * Helper function for call_rcu() and friends.  The cpu argument will
> > > >   * normally be -1, indicating "currently running CPU".  It may specify
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
