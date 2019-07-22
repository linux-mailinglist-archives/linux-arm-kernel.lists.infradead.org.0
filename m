Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 460DB6FF1B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 13:58:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:
	MIME-Version:References:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oMnBLFaAeWViHha/ZSLoz32PySkCHNVKDHTp6LETqB0=; b=SjGRMPHgQQCL2F
	LnfKXGMI8AjBbhsUs+ttobAZMPeAGdsv2S/HIZJxoB8zbct2gFyHpJAgwwe5hG4MNQI3uNpuEi2Pl
	4mgTYEEG0XAL1dqxL9hNY+WSkaaZbIA9PJpr3cPWoQqqR+3kovMgN1zk2OpbhIlSE63VlRGkM31r/
	0Qsv+tXOu24eYwClMm/1dJ4quOPU6cOkwF+p97YU0hUNgRtqxBNMaIyBR2H+E/VwBRcC2nB6UsIcC
	VKcbAhxRbi2BfednkFQQKa4Ih2Y3yz9rreEHUJ+ttTOdFvkMskzt/wSxMIx1icQ3hQzBjB8/zY8jM
	xfpvStt1kYDiQmuTQ0Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpWxd-0003y2-CC; Mon, 22 Jul 2019 11:58:33 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpWx0-0003wt-Ju
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 11:57:56 +0000
Received: from pps.filterd (m0098396.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6MBv8el009127
 for <linux-arm-kernel@lists.infradead.org>; Mon, 22 Jul 2019 07:57:53 -0400
Received: from e16.ny.us.ibm.com (e16.ny.us.ibm.com [129.33.205.206])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2twc9qs81s-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Mon, 22 Jul 2019 07:57:53 -0400
Received: from localhost
 by e16.ny.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <paulmck@linux.vnet.ibm.com>; 
 Mon, 22 Jul 2019 12:57:52 +0100
Received: from b01cxnp23034.gho.pok.ibm.com (9.57.198.29)
 by e16.ny.us.ibm.com (146.89.104.203) with IBM ESMTP SMTP Gateway: Authorized
 Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Mon, 22 Jul 2019 12:57:45 +0100
Received: from b01ledav003.gho.pok.ibm.com (b01ledav003.gho.pok.ibm.com
 [9.57.199.108])
 by b01cxnp23034.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x6MBvi2649021204
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 22 Jul 2019 11:57:44 GMT
Received: from b01ledav003.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 69C32B205F;
 Mon, 22 Jul 2019 11:57:44 +0000 (GMT)
Received: from b01ledav003.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 17EC0B2064;
 Mon, 22 Jul 2019 11:57:44 +0000 (GMT)
Received: from paulmck-ThinkPad-W541 (unknown [9.85.189.166])
 by b01ledav003.gho.pok.ibm.com (Postfix) with ESMTP;
 Mon, 22 Jul 2019 11:57:44 +0000 (GMT)
Received: by paulmck-ThinkPad-W541 (Postfix, from userid 1000)
 id 5A71716C0EDF; Mon, 22 Jul 2019 04:57:45 -0700 (PDT)
Date: Mon, 22 Jul 2019 04:57:45 -0700
From: "Paul E. McKenney" <paulmck@linux.ibm.com>
To: "Michael S. Tsirkin" <mst@redhat.com>
Subject: Re: RFC: call_rcu_outstanding (was Re: WARNING in __mmdrop)
References: <0000000000008dd6bb058e006938@google.com>
 <000000000000964b0d058e1a0483@google.com>
 <20190721044615-mutt-send-email-mst@kernel.org>
 <20190721081933-mutt-send-email-mst@kernel.org>
 <20190721131725.GR14271@linux.ibm.com>
 <20190721134614-mutt-send-email-mst@kernel.org>
 <20190721192841.GT14271@linux.ibm.com>
 <20190722035236-mutt-send-email-mst@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190722035236-mutt-send-email-mst@kernel.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-TM-AS-GCONF: 00
x-cbid: 19072211-0072-0000-0000-0000044BDA8E
X-IBM-SpamModules-Scores: 
X-IBM-SpamModules-Versions: BY=3.00011474; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000287; SDB=6.01235800; UDB=6.00651289; IPR=6.01017150; 
 MB=3.00027836; MTD=3.00000008; XFM=3.00000015; UTC=2019-07-22 11:57:51
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19072211-0073-0000-0000-00004CBC34F7
Message-Id: <20190722115745.GZ14271@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-22_09:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1907220143
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_045754_724962_0B69DD67 
X-CRM114-Status: GOOD (  48.54  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Reply-To: paulmck@linux.ibm.com
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

On Mon, Jul 22, 2019 at 03:56:22AM -0400, Michael S. Tsirkin wrote:
> On Sun, Jul 21, 2019 at 12:28:41PM -0700, Paul E. McKenney wrote:
> > On Sun, Jul 21, 2019 at 01:53:23PM -0400, Michael S. Tsirkin wrote:
> > > On Sun, Jul 21, 2019 at 06:17:25AM -0700, Paul E. McKenney wrote:
> > > > On Sun, Jul 21, 2019 at 08:28:05AM -0400, Michael S. Tsirkin wrote:
> > > > > Hi Paul, others,
> > > > > 
> > > > > So it seems that vhost needs to call kfree_rcu from an ioctl. My worry
> > > > > is what happens if userspace starts cycling through lots of these
> > > > > ioctls.  Given we actually use rcu as an optimization, we could just
> > > > > disable the optimization temporarily - but the question would be how to
> > > > > detect an excessive rate without working too hard :) .
> > > > > 
> > > > > I guess we could define as excessive any rate where callback is
> > > > > outstanding at the time when new structure is allocated.  I have very
> > > > > little understanding of rcu internals - so I wanted to check that the
> > > > > following more or less implements this heuristic before I spend time
> > > > > actually testing it.
> > > > > 
> > > > > Could others pls take a look and let me know?
> > > > 
> > > > These look good as a way of seeing if there are any outstanding callbacks,
> > > > but in the case of Tree RCU, call_rcu_outstanding() would almost never
> > > > return false on a busy system.
> > > 
> > > Hmm, ok. Maybe I could rename this to e.g. call_rcu_busy
> > > and change the tree one to do rcu_segcblist_n_lazy_cbs > 1000?
> > 
> > Or the function could simply return the number of callbacks queued
> > on the current CPU, and let the caller decide how many is too many.
> > 
> > > > Here are some alternatives:
> > > > 
> > > > o	RCU uses some pieces of Rao Shoaib kfree_rcu() patches.
> > > > 	The idea is to make kfree_rcu() locally buffer requests into
> > > > 	batches of (say) 1,000, but processing smaller batches when RCU
> > > > 	is idle, or when some smallish amout of time has passed with
> > > > 	no more kfree_rcu() request from that CPU.  RCU than takes in
> > > > 	the batch using not call_rcu(), but rather queue_rcu_work().
> > > > 	The resulting batch of kfree() calls would therefore execute in
> > > > 	workqueue context rather than in softirq context, which should
> > > > 	be much easier on the system.
> > > > 
> > > > 	In theory, this would allow people to use kfree_rcu() without
> > > > 	worrying quite so much about overload.  It would also not be
> > > > 	that hard to implement.
> > > > 
> > > > o	Subsystems vulnerable to user-induced kfree_rcu() flooding use
> > > > 	call_rcu() instead of kfree_rcu().  Keep a count of the number
> > > > 	of things waiting for a grace period, and when this gets too
> > > > 	large, disable the optimization.  It will then drain down, at
> > > > 	which point the optimization can be re-enabled.
> > > > 
> > > > 	But please note that callbacks are -not- guaranteed to run on
> > > > 	the CPU that queued them.  So yes, you would need a per-CPU
> > > > 	counter, but you would need to periodically sum it up to check
> > > > 	against the global state.  Or keep track of the CPU that
> > > > 	did the call_rcu() so that you can atomically decrement in
> > > > 	the callback the same counter that was atomically incremented
> > > > 	just before the call_rcu().  Or any number of other approaches.
> > > 
> > > I'm really looking for something we can do this merge window
> > > and without adding too much code, and kfree_rcu is intended to
> > > fix a bug.
> > > Adding call_rcu and careful accounting is something that I'm not
> > > happy adding with merge window already open.
> > 
> > OK, then I suggest having the interface return you the number of
> > callbacks.  That allows you to experiment with the cutoff.
> > 
> > Give or take the ioctl overhead...
> 
> OK - and for tiny just assume 1 is too much?

I bet that for tiny you won't need to rate-limit at all.  The reason
is that grace periods are quite short.

In fact, for TINY (that is, !SMP && !PREEMPT), synchronize_rcu() is a
no-op.  So in TINY, given that your ioctl is executing at process level,
you could just invoke synchronize_rcu() and then kfree():

#ifdef CONFIG_TINY_RCU
	synchronize_rcu();  /* No other CPUs, so a QS is a GP! */
	kfree(whatever);
	return; /* Or whatever control flow is appropriate. */
#endif
	/* More complicated stuff for !TINY. */

							Thanx, Paul

> > > > Also, the overhead is important.  For example, as far as I know,
> > > > current RCU gracefully handles close(open(...)) in a tight userspace
> > > > loop.  But there might be trouble due to tight userspace loops around
> > > > lighter-weight operations.
> > > > 
> > > > So an important question is "Just how fast is your ioctl?"  If it takes
> > > > (say) 100 microseconds to execute, there should be absolutely no problem.
> > > > On the other hand, if it can execute in 50 nanoseconds, this very likely
> > > > does need serious attention.
> > > > 
> > > > Other thoughts?
> > > > 
> > > > 							Thanx, Paul
> > > 
> > > Hmm the answer to this would be I'm not sure.
> > > It's setup time stuff we never tested it.
> > 
> > Is it possible to measure it easily?
> > 
> > 							Thanx, Paul
> > 
> > > > > Thanks!
> > > > > 
> > > > > Signed-off-by: Michael S. Tsirkin <mst@redhat.com>
> > > > > 
> > > > > 
> > > > > diff --git a/kernel/rcu/tiny.c b/kernel/rcu/tiny.c
> > > > > index 477b4eb44af5..067909521d72 100644
> > > > > --- a/kernel/rcu/tiny.c
> > > > > +++ b/kernel/rcu/tiny.c
> > > > > @@ -125,6 +125,25 @@ void synchronize_rcu(void)
> > > > >  }
> > > > >  EXPORT_SYMBOL_GPL(synchronize_rcu);
> > > > > 
> > > > > +/*
> > > > > + * Helpful for rate-limiting kfree_rcu/call_rcu callbacks.
> > > > > + */
> > > > > +bool call_rcu_outstanding(void)
> > > > > +{
> > > > > +	unsigned long flags;
> > > > > +	struct rcu_data *rdp;
> > > > > +	bool outstanding;
> > > > > +
> > > > > +	local_irq_save(flags);
> > > > > +	rdp = this_cpu_ptr(&rcu_data);
> > > > > +	outstanding = rcu_segcblist_empty(&rdp->cblist);
> > > > > +	outstanding = rcu_ctrlblk.donetail != rcu_ctrlblk.curtail;
> > > > > +	local_irq_restore(flags);
> > > > > +
> > > > > +	return outstanding;
> > > > > +}
> > > > > +EXPORT_SYMBOL_GPL(call_rcu_outstanding);
> > > > > +
> > > > >  /*
> > > > >   * Post an RCU callback to be invoked after the end of an RCU grace
> > > > >   * period.  But since we have but one CPU, that would be after any
> > > > > diff --git a/kernel/rcu/tree.c b/kernel/rcu/tree.c
> > > > > index a14e5fbbea46..d4b9d61e637d 100644
> > > > > --- a/kernel/rcu/tree.c
> > > > > +++ b/kernel/rcu/tree.c
> > > > > @@ -2482,6 +2482,24 @@ static void rcu_leak_callback(struct rcu_head *rhp)
> > > > >  {
> > > > >  }
> > > > > 
> > > > > +/*
> > > > > + * Helpful for rate-limiting kfree_rcu/call_rcu callbacks.
> > > > > + */
> > > > > +bool call_rcu_outstanding(void)
> > > > > +{
> > > > > +	unsigned long flags;
> > > > > +	struct rcu_data *rdp;
> > > > > +	bool outstanding;
> > > > > +
> > > > > +	local_irq_save(flags);
> > > > > +	rdp = this_cpu_ptr(&rcu_data);
> > > > > +	outstanding = rcu_segcblist_empty(&rdp->cblist);
> > > > > +	local_irq_restore(flags);
> > > > > +
> > > > > +	return outstanding;
> > > > > +}
> > > > > +EXPORT_SYMBOL_GPL(call_rcu_outstanding);
> > > > > +
> > > > >  /*
> > > > >   * Helper function for call_rcu() and friends.  The cpu argument will
> > > > >   * normally be -1, indicating "currently running CPU".  It may specify
> > > 
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
