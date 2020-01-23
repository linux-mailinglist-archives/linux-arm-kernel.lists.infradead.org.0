Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 237951468E6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 14:17:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=622clphEMnHDmB7UExpQAXMyHnMg0A/LuGTwonEsOiE=; b=LmYYYh1lci/s71
	B8ENFunt05sSTPuTg5A3Zlkm4KqPaD2D9WxFiwrMh33NFxRoUw/j4B7W/nQ3iHT3sNcGEQYg+OBvq
	JDTf6Ipzn2D+xtaXy1KlXcNOddtm0Oi5mkZALmERz5CjEllb8MS/pfYrsHXNFaRnc9ecc/1KRplB8
	5+W+Ad+Cmx/jy4hvO9F13lpoM5jKuq1xbOF2jFd66HH8C+GWEYPBbRprL0abyfZuX/sZ7IHROzrfN
	Mneta2qnbbzB0a6aXwzqQAeS9Fu8w+mHb0pMAJCbJ5UITTkddAdCpSq3zIH4O+kjUwoLU3tYeJD77
	c1vZnt5uSfpVtqc1yApw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iucMn-0004Zm-3N; Thu, 23 Jan 2020 13:17:49 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iucMe-0004ZB-I6; Thu, 23 Jan 2020 13:17:40 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 6855E304121;
 Thu, 23 Jan 2020 14:15:57 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 787CD203CF5CE; Thu, 23 Jan 2020 14:17:37 +0100 (CET)
Date: Thu, 23 Jan 2020 14:17:37 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v9 3/5] locking/qspinlock: Introduce CNA into the slow
 path of qspinlock
Message-ID: <20200123131737.GV14914@hirez.programming.kicks-ass.net>
References: <20200115035920.54451-1-alex.kogan@oracle.com>
 <20200115035920.54451-4-alex.kogan@oracle.com>
 <20200123092658.GC14879@hirez.programming.kicks-ass.net>
 <20200123100635.GE14946@hirez.programming.kicks-ass.net>
 <20200123101649.GF14946@hirez.programming.kicks-ass.net>
 <20200123112251.GC18991@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200123112251.GC18991@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: linux-arch@vger.kernel.org, hpa@zytor.com, arnd@arndb.de,
 will.deacon@arm.com, jglauber@marvell.com, x86@kernel.org,
 dave.dice@oracle.com, linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 mingo@redhat.com, steven.sistare@oracle.com, longman@redhat.com,
 guohanjun@huawei.com, Alex Kogan <alex.kogan@oracle.com>, bp@alien8.de,
 tglx@linutronix.de, daniel.m.jordan@oracle.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 23, 2020 at 11:22:51AM +0000, Will Deacon wrote:

> > Argh, make that:
> > 
> > 	tail_2nd->next = NULL;
> > 
> > 	smp_wmb();
> > 
> > > 	if (!atomic_try_cmpxchg_relaxed(&lock, &val, new)) {
> 
> ... or could you drop the smp_wmb() and make this
> atomic_try_cmpxchg_release()?

My current code has the smp_wmb(), because most _releases end up being
an smp_mb() (except for powerpc where it is of equal cost to wmb and
arm64, where I have no idea of the costs).

> To be honest, I've failed to understand the code prior to your changes
> in this area: it appears to reply on a control-dependency from the two
> cmpxchg_relaxed() calls (which isn't sufficient to order the store parts
> afaict) and I also don't get how we deal with a transiently circular primary
> queue.

Ha!, yes, so this little piece took me a while too. Let me attempt an
explanation.

+ *    cna_node
+ *   +----------+     +--------+         +--------+
+ *   |mcs:next  | --> |mcs:next| --> ... |mcs:next| --> NULL  [Primary queue]
+ *   |mcs:locked| -.  +--------+         +--------+
+ *   +----------+  |
+ *                 `----------------------.
+ *                                        v
+ *                 +--------+         +--------+
+ *                 |mcs:next| --> ... |mcs:next|            [Secondary queue]
+ *                 +--------+         +--------+
+ *                     ^                    |
+ *                     `--------------------'

So @node is the current lock holder, node->next == NULL (primary queue
is empty) and we're going to try and splice the secondary queue to the
head of the primary.

+       tail_2nd = decode_tail(node->locked);
+       head_2nd = tail_2nd->next;

this gets the secondary head and tail, so far so simple

+       new = ((struct cna_node *)tail_2nd)->encoded_tail + _Q_LOCKED_VAL;

this encodes the new primary tail (as kept in lock->val), still simple

+       if (atomic_try_cmpxchg_relaxed(&lock->val, &val, new)) {

if this here succeeds, we've got the primary tail pointing at the
secondary tail. This is safe because only the lock holder (us) ever
modifies the secondary queue.

+               /*
+                * Try to reset @next in tail_2nd to NULL, but no need to check
+                * the result - if failed, a new successor has updated it.
+                */
+               cmpxchg_relaxed(&tail_2nd->next, head_2nd, NULL);

This is (broken, as per the prior argument) breaking the circular link
the secondary queue has. The trick here is that since we're the lock
holder, nothing will actually iterate the primary ->next chain, so a
bogus value in there is of no concern.

_However_ a new waiter might at this point do:

	old = xchg_tail(lock, node);
	if (old) {
		prev = decode_tail(old);
		WRITE_ONCE(prev->next, node);
		...
	}

which then results in conflicting stores to the one ->next variable.

The cmpxchg() is attempting to terminate the list, while the new waiter
is extending the list, it is therefore paramount the new waiter always
wins this. To that end they're employing the cmpxchg, but it very much
relies on the @head_2nd load to have happened before we exposed the
secondary tail as primary tail, otherwise it can have loaded the new
->next pointer and overwriten it.

+               arch_mcs_pass_lock(&head_2nd->locked, 1);
+               return true;
+       }
+
+       return false;


Did that help, or just make it worse?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
