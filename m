Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFCF21466A8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 12:23:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2UFoXJWL7tYNGaQt2ho3+mallVX8hMbYm/ReOl/FT0c=; b=b/9YKmfWutI6U4
	OOprrYB+gqH3Pw5kMnwjTgeA2KEj4eDqmiMn/lOCTWcSURh+SVDofr5DVOVcUArTJnH/T/HBAlPYs
	DMBbsiBTx7o6qBv7+qZFQdwa8TQCeFfUNVEOTwgPI7ILCuWS1S8qtzaFq+ByI2e2ZTZsd68xXB+Nd
	hkG7uy8i36Rug/dVDyFVDjsdA+ygTi2I6yix3b0bOnh/2M1BwlMKVmmhbzEeeGjbLKAFggnnerEdk
	+vxCHNW0OpATJ/H92wTD/rVa9f5zwqPBlX7pBoozC9wHehFe4R6adbATVEzmaND8PEtQ9UJgEsyDO
	T49108cmkPJdcQLnobUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuaZs-0000Nn-Jy; Thu, 23 Jan 2020 11:23:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuaZe-0000NR-AO
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 11:22:59 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 08E1A24125;
 Thu, 23 Jan 2020 11:22:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579778578;
 bh=LgKFx4P5ScxA81AGbhPO/gALIBjOXsGoed8zoyS3Rjs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=upMqE3/OImgO279sANVZ36MBMt8DKsuTiatp5+5AUVIg+ANe3LuJGpBT+JD3oWGPs
 Ys4oYxg810eKeuk0MHapCHsn83c8BXqeBreMaF23wqytnAak5rWFgLupnIl/i+RNcb
 BrnuFNunk+GQ4S9r1hmOsNE5isiH2yY5oWgZmPx8=
Date: Thu, 23 Jan 2020 11:22:51 +0000
From: Will Deacon <will@kernel.org>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH v9 3/5] locking/qspinlock: Introduce CNA into the slow
 path of qspinlock
Message-ID: <20200123112251.GC18991@willie-the-truck>
References: <20200115035920.54451-1-alex.kogan@oracle.com>
 <20200115035920.54451-4-alex.kogan@oracle.com>
 <20200123092658.GC14879@hirez.programming.kicks-ass.net>
 <20200123100635.GE14946@hirez.programming.kicks-ass.net>
 <20200123101649.GF14946@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200123101649.GF14946@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_032258_399115_EB18DE5B 
X-CRM114-Status: GOOD (  19.96  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Thu, Jan 23, 2020 at 11:16:49AM +0100, Peter Zijlstra wrote:
> On Thu, Jan 23, 2020 at 11:06:35AM +0100, Peter Zijlstra wrote:
> > On Thu, Jan 23, 2020 at 10:26:58AM +0100, Peter Zijlstra wrote:
> > > On Tue, Jan 14, 2020 at 10:59:18PM -0500, Alex Kogan wrote:
> > > > +/* this function is called only when the primary queue is empty */
> > > > +static inline bool cna_try_change_tail(struct qspinlock *lock, u32 val,
> > > > +				       struct mcs_spinlock *node)
> > > > +{
> > > > +	struct mcs_spinlock *head_2nd, *tail_2nd;
> > > > +	u32 new;
> > > > +
> > > > +	/* If the secondary queue is empty, do what MCS does. */
> > > > +	if (node->locked <= 1)
> > > > +		return __try_clear_tail(lock, val, node);
> > > > +
> > > > +	/*
> > > > +	 * Try to update the tail value to the last node in the secondary queue.
> > > > +	 * If successful, pass the lock to the first thread in the secondary
> > > > +	 * queue. Doing those two actions effectively moves all nodes from the
> > > > +	 * secondary queue into the main one.
> > > > +	 */
> > > > +	tail_2nd = decode_tail(node->locked);
> > > > +	head_2nd = tail_2nd->next;
> > > > +	new = ((struct cna_node *)tail_2nd)->encoded_tail + _Q_LOCKED_VAL;
> > > > +
> > > > +	if (atomic_try_cmpxchg_relaxed(&lock->val, &val, new)) {
> > > > +		/*
> > > > +		 * Try to reset @next in tail_2nd to NULL, but no need to check
> > > > +		 * the result - if failed, a new successor has updated it.
> > > > +		 */
> > > 
> > > I think you actually have an ordering bug here; the load of head_2nd
> > > *must* happen before the atomic_try_cmpxchg(), otherwise it might
> > > observe the new next and clear a valid next pointer.
> > > 
> > > What would be the best fix for that; I'm thinking:
> > > 
> > > 	head_2nd = smp_load_acquire(&tail_2nd->next);
> > > 
> > > Will?
> > 
> > Hmm, given we've not passed the lock around yet; why wouldn't something
> > like this work:
> > 
> > 	smp_store_release(&tail_2nd->next, NULL);
> 
> Argh, make that:
> 
> 	tail_2nd->next = NULL;
> 
> 	smp_wmb();
> 
> > 	if (!atomic_try_cmpxchg_relaxed(&lock, &val, new)) {

... or could you drop the smp_wmb() and make this
atomic_try_cmpxchg_release()?

To be honest, I've failed to understand the code prior to your changes
in this area: it appears to reply on a control-dependency from the two
cmpxchg_relaxed() calls (which isn't sufficient to order the store parts
afaict) and I also don't get how we deal with a transiently circular primary
queue.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
