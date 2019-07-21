Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D5A6F4FA
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 21 Jul 2019 21:29:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:
	MIME-Version:References:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aiOH1UuGoz3qUcraC9LlO9+xRA0KXzW3wmyHxtrH4Qc=; b=MqD/qfgZmEmr2D
	seuLQkfmPKzyD1exSKcmtnsIk5s89b0GUTCjQ/nf7xcoyX2oRtjhkcDuYIxfsbXgjHC34WPSP3d2M
	56/pyqTkHIv1pMhCgZ3e36+3Rqnme5F/c+FOl4OMCMiWykKNbBsJ5NlelAoKzgV3Wbs0YaNZBjXuI
	asuFrJUH8KCZl0ipguFeS76D9E3WsjblJqFBeofcat/wSB/2EGccfzOOTdTh4MDozbZjQJYMx5V9f
	S9ytdCpdzSgP3vOx0vR4cJp/oaL5vuqRX/TyRQbIDcXh0zP9TMjjlEpGMajlzmzvCH5LzplWdKbA5
	7ZYuIfYelp+xYUnoFR5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpHW9-000270-3e; Sun, 21 Jul 2019 19:29:09 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpHVu-0001zG-U7
 for linux-arm-kernel@lists.infradead.org; Sun, 21 Jul 2019 19:28:56 +0000
Received: from pps.filterd (m0098409.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6LJR8Aj042826
 for <linux-arm-kernel@lists.infradead.org>; Sun, 21 Jul 2019 15:28:52 -0400
Received: from e12.ny.us.ibm.com (e12.ny.us.ibm.com [129.33.205.202])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2tvwv8rjrq-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Sun, 21 Jul 2019 15:28:51 -0400
Received: from localhost
 by e12.ny.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <paulmck@linux.vnet.ibm.com>; 
 Sun, 21 Jul 2019 20:28:50 +0100
Received: from b01cxnp22033.gho.pok.ibm.com (9.57.198.23)
 by e12.ny.us.ibm.com (146.89.104.199) with IBM ESMTP SMTP Gateway: Authorized
 Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Sun, 21 Jul 2019 20:28:42 +0100
Received: from b01ledav003.gho.pok.ibm.com (b01ledav003.gho.pok.ibm.com
 [9.57.199.108])
 by b01cxnp22033.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x6LJSfuk38863276
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sun, 21 Jul 2019 19:28:41 GMT
Received: from b01ledav003.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 9C33FB2064;
 Sun, 21 Jul 2019 19:28:41 +0000 (GMT)
Received: from b01ledav003.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 4A158B205F;
 Sun, 21 Jul 2019 19:28:41 +0000 (GMT)
Received: from paulmck-ThinkPad-W541 (unknown [9.85.189.166])
 by b01ledav003.gho.pok.ibm.com (Postfix) with ESMTP;
 Sun, 21 Jul 2019 19:28:41 +0000 (GMT)
Received: by paulmck-ThinkPad-W541 (Postfix, from userid 1000)
 id 7E68716C2E3A; Sun, 21 Jul 2019 12:28:41 -0700 (PDT)
Date: Sun, 21 Jul 2019 12:28:41 -0700
From: "Paul E. McKenney" <paulmck@linux.ibm.com>
To: "Michael S. Tsirkin" <mst@redhat.com>
Subject: Re: RFC: call_rcu_outstanding (was Re: WARNING in __mmdrop)
References: <0000000000008dd6bb058e006938@google.com>
 <000000000000964b0d058e1a0483@google.com>
 <20190721044615-mutt-send-email-mst@kernel.org>
 <20190721081933-mutt-send-email-mst@kernel.org>
 <20190721131725.GR14271@linux.ibm.com>
 <20190721134614-mutt-send-email-mst@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190721134614-mutt-send-email-mst@kernel.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-TM-AS-GCONF: 00
x-cbid: 19072119-0060-0000-0000-00000363A912
X-IBM-SpamModules-Scores: 
X-IBM-SpamModules-Versions: BY=3.00011470; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000287; SDB=6.01235486; UDB=6.00651094; IPR=6.01016824; 
 MB=3.00027831; MTD=3.00000008; XFM=3.00000015; UTC=2019-07-21 19:28:48
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19072119-0061-0000-0000-00004A3D2E25
Message-Id: <20190721192841.GT14271@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-21_13:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1907210226
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_122854_980831_3EB056ED 
X-CRM114-Status: GOOD (  43.84  )
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

On Sun, Jul 21, 2019 at 01:53:23PM -0400, Michael S. Tsirkin wrote:
> On Sun, Jul 21, 2019 at 06:17:25AM -0700, Paul E. McKenney wrote:
> > On Sun, Jul 21, 2019 at 08:28:05AM -0400, Michael S. Tsirkin wrote:
> > > Hi Paul, others,
> > > 
> > > So it seems that vhost needs to call kfree_rcu from an ioctl. My worry
> > > is what happens if userspace starts cycling through lots of these
> > > ioctls.  Given we actually use rcu as an optimization, we could just
> > > disable the optimization temporarily - but the question would be how to
> > > detect an excessive rate without working too hard :) .
> > > 
> > > I guess we could define as excessive any rate where callback is
> > > outstanding at the time when new structure is allocated.  I have very
> > > little understanding of rcu internals - so I wanted to check that the
> > > following more or less implements this heuristic before I spend time
> > > actually testing it.
> > > 
> > > Could others pls take a look and let me know?
> > 
> > These look good as a way of seeing if there are any outstanding callbacks,
> > but in the case of Tree RCU, call_rcu_outstanding() would almost never
> > return false on a busy system.
> 
> Hmm, ok. Maybe I could rename this to e.g. call_rcu_busy
> and change the tree one to do rcu_segcblist_n_lazy_cbs > 1000?

Or the function could simply return the number of callbacks queued
on the current CPU, and let the caller decide how many is too many.

> > Here are some alternatives:
> > 
> > o	RCU uses some pieces of Rao Shoaib kfree_rcu() patches.
> > 	The idea is to make kfree_rcu() locally buffer requests into
> > 	batches of (say) 1,000, but processing smaller batches when RCU
> > 	is idle, or when some smallish amout of time has passed with
> > 	no more kfree_rcu() request from that CPU.  RCU than takes in
> > 	the batch using not call_rcu(), but rather queue_rcu_work().
> > 	The resulting batch of kfree() calls would therefore execute in
> > 	workqueue context rather than in softirq context, which should
> > 	be much easier on the system.
> > 
> > 	In theory, this would allow people to use kfree_rcu() without
> > 	worrying quite so much about overload.  It would also not be
> > 	that hard to implement.
> > 
> > o	Subsystems vulnerable to user-induced kfree_rcu() flooding use
> > 	call_rcu() instead of kfree_rcu().  Keep a count of the number
> > 	of things waiting for a grace period, and when this gets too
> > 	large, disable the optimization.  It will then drain down, at
> > 	which point the optimization can be re-enabled.
> > 
> > 	But please note that callbacks are -not- guaranteed to run on
> > 	the CPU that queued them.  So yes, you would need a per-CPU
> > 	counter, but you would need to periodically sum it up to check
> > 	against the global state.  Or keep track of the CPU that
> > 	did the call_rcu() so that you can atomically decrement in
> > 	the callback the same counter that was atomically incremented
> > 	just before the call_rcu().  Or any number of other approaches.
> 
> I'm really looking for something we can do this merge window
> and without adding too much code, and kfree_rcu is intended to
> fix a bug.
> Adding call_rcu and careful accounting is something that I'm not
> happy adding with merge window already open.

OK, then I suggest having the interface return you the number of
callbacks.  That allows you to experiment with the cutoff.

Give or take the ioctl overhead...

> > Also, the overhead is important.  For example, as far as I know,
> > current RCU gracefully handles close(open(...)) in a tight userspace
> > loop.  But there might be trouble due to tight userspace loops around
> > lighter-weight operations.
> > 
> > So an important question is "Just how fast is your ioctl?"  If it takes
> > (say) 100 microseconds to execute, there should be absolutely no problem.
> > On the other hand, if it can execute in 50 nanoseconds, this very likely
> > does need serious attention.
> > 
> > Other thoughts?
> > 
> > 							Thanx, Paul
> 
> Hmm the answer to this would be I'm not sure.
> It's setup time stuff we never tested it.

Is it possible to measure it easily?

							Thanx, Paul

> > > Thanks!
> > > 
> > > Signed-off-by: Michael S. Tsirkin <mst@redhat.com>
> > > 
> > > 
> > > diff --git a/kernel/rcu/tiny.c b/kernel/rcu/tiny.c
> > > index 477b4eb44af5..067909521d72 100644
> > > --- a/kernel/rcu/tiny.c
> > > +++ b/kernel/rcu/tiny.c
> > > @@ -125,6 +125,25 @@ void synchronize_rcu(void)
> > >  }
> > >  EXPORT_SYMBOL_GPL(synchronize_rcu);
> > > 
> > > +/*
> > > + * Helpful for rate-limiting kfree_rcu/call_rcu callbacks.
> > > + */
> > > +bool call_rcu_outstanding(void)
> > > +{
> > > +	unsigned long flags;
> > > +	struct rcu_data *rdp;
> > > +	bool outstanding;
> > > +
> > > +	local_irq_save(flags);
> > > +	rdp = this_cpu_ptr(&rcu_data);
> > > +	outstanding = rcu_segcblist_empty(&rdp->cblist);
> > > +	outstanding = rcu_ctrlblk.donetail != rcu_ctrlblk.curtail;
> > > +	local_irq_restore(flags);
> > > +
> > > +	return outstanding;
> > > +}
> > > +EXPORT_SYMBOL_GPL(call_rcu_outstanding);
> > > +
> > >  /*
> > >   * Post an RCU callback to be invoked after the end of an RCU grace
> > >   * period.  But since we have but one CPU, that would be after any
> > > diff --git a/kernel/rcu/tree.c b/kernel/rcu/tree.c
> > > index a14e5fbbea46..d4b9d61e637d 100644
> > > --- a/kernel/rcu/tree.c
> > > +++ b/kernel/rcu/tree.c
> > > @@ -2482,6 +2482,24 @@ static void rcu_leak_callback(struct rcu_head *rhp)
> > >  {
> > >  }
> > > 
> > > +/*
> > > + * Helpful for rate-limiting kfree_rcu/call_rcu callbacks.
> > > + */
> > > +bool call_rcu_outstanding(void)
> > > +{
> > > +	unsigned long flags;
> > > +	struct rcu_data *rdp;
> > > +	bool outstanding;
> > > +
> > > +	local_irq_save(flags);
> > > +	rdp = this_cpu_ptr(&rcu_data);
> > > +	outstanding = rcu_segcblist_empty(&rdp->cblist);
> > > +	local_irq_restore(flags);
> > > +
> > > +	return outstanding;
> > > +}
> > > +EXPORT_SYMBOL_GPL(call_rcu_outstanding);
> > > +
> > >  /*
> > >   * Helper function for call_rcu() and friends.  The cpu argument will
> > >   * normally be -1, indicating "currently running CPU".  It may specify
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
