Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A7A6FABE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 09:52:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Va4S5qtpeWmP3CgaNczFxStOpkA8cO642h0/dQY7ItU=; b=kcXeBwOGftFi3/
	lwE6Rotcq8XwEkTGThQ6/LuNM/trnE5VT5LNIIInwdeZnoM/nKD8glGLKKZ1O+OUcYrhY8ZtJAB/e
	8wsVWPAsftrEJ9HUYzL5zSfARSoNEFccatrFEdEesTQLfsONZAbFe8qfyHk7R1UHbwDwRDdTUQEP7
	uTDusDZgOn1qnWfV4qyr9PRiBw6b4lzT/UfLg8PYmmlC74LEGd/woz8MrZYmiWwLvtOS56nyHXvqJ
	0RusSjzDR2BfbyqjMLNwUoxV6HDRj5WfohIGylyE4XiLEkGl48pEjGiDrZfmbIC8GdKF9Vy4G3+DQ
	j0HIRL6SlXI45hkOerog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpT7Z-0003FN-SZ; Mon, 22 Jul 2019 07:52:34 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpT7I-0003Ev-8I
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 07:52:17 +0000
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1176F86668;
 Mon, 22 Jul 2019 07:52:15 +0000 (UTC)
Received: from redhat.com (ovpn-120-233.rdu2.redhat.com [10.10.120.233])
 by smtp.corp.redhat.com (Postfix) with SMTP id 5B9085C221;
 Mon, 22 Jul 2019 07:52:06 +0000 (UTC)
Date: Mon, 22 Jul 2019 03:52:05 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: "Paul E. McKenney" <paulmck@linux.ibm.com>
Subject: Re: RFC: call_rcu_outstanding (was Re: WARNING in __mmdrop)
Message-ID: <20190722035042-mutt-send-email-mst@kernel.org>
References: <0000000000008dd6bb058e006938@google.com>
 <000000000000964b0d058e1a0483@google.com>
 <20190721044615-mutt-send-email-mst@kernel.org>
 <20190721081933-mutt-send-email-mst@kernel.org>
 <20190721131725.GR14271@linux.ibm.com>
 <20190721210837.GC363@bombadil.infradead.org>
 <20190721233113.GV14271@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190721233113.GV14271@linux.ibm.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Mon, 22 Jul 2019 07:52:15 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_005216_337070_C1BAA4FA 
X-CRM114-Status: GOOD (  20.28  )
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
 aarcange@redhat.com, davem@davemloft.net, Matthew Wilcox <willy@infradead.org>,
 hch@infradead.org, linux-arm-kernel@lists.infradead.org, keescook@chromium.org,
 syzkaller-bugs@googlegroups.com, jglisse@redhat.com, viro@zeniv.linux.org.uk,
 christian@brauner.io, wad@chromium.org, linux-parisc@vger.kernel.org,
 linux-kernel@vger.kernel.org, luto@amacapital.net, ebiederm@xmission.com,
 akpm@linux-foundation.org, guro@fb.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jul 21, 2019 at 04:31:13PM -0700, Paul E. McKenney wrote:
> On Sun, Jul 21, 2019 at 02:08:37PM -0700, Matthew Wilcox wrote:
> > On Sun, Jul 21, 2019 at 06:17:25AM -0700, Paul E. McKenney wrote:
> > > Also, the overhead is important.  For example, as far as I know,
> > > current RCU gracefully handles close(open(...)) in a tight userspace
> > > loop.  But there might be trouble due to tight userspace loops around
> > > lighter-weight operations.
> > 
> > I thought you believed that RCU was antifragile, in that it would scale
> > better as it was used more heavily?
> 
> You are referring to this?  https://paulmck.livejournal.com/47933.html
> 
> If so, the last few paragraphs might be worth re-reading.   ;-)
> 
> And in this case, the heuristics RCU uses to decide when to schedule
> invocation of the callbacks needs some help.  One component of that help
> is a time-based limit to the number of consecutive callback invocations
> (see my crude prototype and Eric Dumazet's more polished patch).  Another
> component is an overload warning.
> 
> Why would an overload warning be needed if RCU's callback-invocation
> scheduling heurisitics were upgraded?  Because someone could boot a
> 100-CPU system with the rcu_nocbs=0-99, bind all of the resulting
> rcuo kthreads to (say) CPU 0, and then run a callback-heavy workload
> on all of the CPUs.  Given the constraints, CPU 0 cannot keep up.
> 
> So warnings are required as well.
> 
> > Would it make sense to have call_rcu() check to see if there are many
> > outstanding requests on this CPU and if so process them before returning?
> > That would ensure that frequent callers usually ended up doing their
> > own processing.
> 
> Unfortunately, no.  Here is a code fragment illustrating why:
> 
> 	void my_cb(struct rcu_head *rhp)
> 	{
> 		unsigned long flags;
> 
> 		spin_lock_irqsave(&my_lock, flags);
> 		handle_cb(rhp);
> 		spin_unlock_irqrestore(&my_lock, flags);
> 	}
> 
> 	. . .
> 
> 	spin_lock_irqsave(&my_lock, flags);
> 	p = look_something_up();
> 	remove_that_something(p);
> 	call_rcu(p, my_cb);
> 	spin_unlock_irqrestore(&my_lock, flags);
> 
> Invoking the extra callbacks directly from call_rcu() would thus result
> in self-deadlock.  Documentation/RCU/UP.txt contains a few more examples
> along these lines.

We could add an option that simply fails if overloaded, right?
Have caller recover...

-- 
MST

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
