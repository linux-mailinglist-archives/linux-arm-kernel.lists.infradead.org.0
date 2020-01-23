Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA83F146490
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 10:27:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f+jmMrR/MTjUQiWlQv4BnYPe935EEeuFZiK3FSQM3iQ=; b=DR+vmfkYwjURe8
	WkYR1cbEBV7XuKE9SXMKT5KEtdmW4oxyMZjGmHZsas5yNJHIYkBbTLCUkt6814HyZFUxkRRv4BGn+
	5QHrT5jbaEaZ9rrIfSWeB4u2sCmmbyY/8bYdukO/SW7leTihGs/HmXI6FMIhD16/Cb9v+4sG8Z7HH
	x8GyCv27gnPDAgdEvH0qmDLwOJ2dBm0lPuiukukTpTw8/CEWs2VmZO20p6ZMEVavqVO7BlGXnzhKe
	LzVv5OMg0zdNT1wv0uVHxVZXtS5uSLt/R65zGImccneBST70w75tUVc8/W914oCVTNRywVoDlHjU0
	Na3hwAhHd44sqKJyLLIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuYlb-0007pc-AY; Thu, 23 Jan 2020 09:27:11 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuYlR-0007ow-GR; Thu, 23 Jan 2020 09:27:01 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 482F7304121;
 Thu, 23 Jan 2020 10:25:18 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 1A8E82B6FD00E; Thu, 23 Jan 2020 10:26:58 +0100 (CET)
Date: Thu, 23 Jan 2020 10:26:58 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Alex Kogan <alex.kogan@oracle.com>
Subject: Re: [PATCH v9 3/5] locking/qspinlock: Introduce CNA into the slow
 path of qspinlock
Message-ID: <20200123092658.GC14879@hirez.programming.kicks-ass.net>
References: <20200115035920.54451-1-alex.kogan@oracle.com>
 <20200115035920.54451-4-alex.kogan@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200115035920.54451-4-alex.kogan@oracle.com>
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
Cc: linux-arch@vger.kernel.org, guohanjun@huawei.com, arnd@arndb.de,
 dave.dice@oracle.com, jglauber@marvell.com, x86@kernel.org,
 will.deacon@arm.com, linux@armlinux.org.uk, steven.sistare@oracle.com,
 linux-kernel@vger.kernel.org, mingo@redhat.com, bp@alien8.de, hpa@zytor.com,
 longman@redhat.com, tglx@linutronix.de, daniel.m.jordan@oracle.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 14, 2020 at 10:59:18PM -0500, Alex Kogan wrote:
> +/* this function is called only when the primary queue is empty */
> +static inline bool cna_try_change_tail(struct qspinlock *lock, u32 val,
> +				       struct mcs_spinlock *node)
> +{
> +	struct mcs_spinlock *head_2nd, *tail_2nd;
> +	u32 new;
> +
> +	/* If the secondary queue is empty, do what MCS does. */
> +	if (node->locked <= 1)
> +		return __try_clear_tail(lock, val, node);
> +
> +	/*
> +	 * Try to update the tail value to the last node in the secondary queue.
> +	 * If successful, pass the lock to the first thread in the secondary
> +	 * queue. Doing those two actions effectively moves all nodes from the
> +	 * secondary queue into the main one.
> +	 */
> +	tail_2nd = decode_tail(node->locked);
> +	head_2nd = tail_2nd->next;
> +	new = ((struct cna_node *)tail_2nd)->encoded_tail + _Q_LOCKED_VAL;
> +
> +	if (atomic_try_cmpxchg_relaxed(&lock->val, &val, new)) {
> +		/*
> +		 * Try to reset @next in tail_2nd to NULL, but no need to check
> +		 * the result - if failed, a new successor has updated it.
> +		 */

I think you actually have an ordering bug here; the load of head_2nd
*must* happen before the atomic_try_cmpxchg(), otherwise it might
observe the new next and clear a valid next pointer.

What would be the best fix for that; I'm thinking:

	head_2nd = smp_load_acquire(&tail_2nd->next);

Will?

> +		cmpxchg_relaxed(&tail_2nd->next, head_2nd, NULL);
> +		arch_mcs_pass_lock(&head_2nd->locked, 1);
> +		return true;
> +	}
> +
> +	return false;
> +}

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
