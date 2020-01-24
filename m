Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B3E1490D4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 23:24:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rFLAZeH13wG+tc1RkcZWVJnKO9zwaIL+IrQtguGl838=; b=BCCrDAc2GN4yAU
	rIdAPlzJ4pBukGbeitLjx7/o+tVMPRk2I83FIsnC+wwbieOe6h3+9Vf9eMnxioFcGPreFY2otIhVK
	ER5CWZLTgZPuQ4dun4gjwzORvmW/ZmLI9ERLJKMTcv+K4WoOH1OhTqqLt816QiAN4wIqde6R1uFcr
	22N81TLX2Ds4xs7LLfY151qAUnOmN398bNusyZQvWPKnhKDKGj0Ut0TdzXR0UCPUB1Ksn1y+lZZhy
	ZzLxmdvDpjbPLuNa679BLqirFIz/buZvg69V+YOa57ZowmPkVZ/lc5OsSGeclHPrMEYTYkJ7f28Dp
	ll0pqYW9Nv6BTmmABDtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv7Nj-0007zK-KL; Fri, 24 Jan 2020 22:24:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv7NU-0007yU-1A
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 22:24:37 +0000
Received: from paulmck-ThinkPad-P72.home (50-39-105-78.bvtn.or.frontiernet.net
 [50.39.105.78])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5D8F02072C;
 Fri, 24 Jan 2020 22:24:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579904674;
 bh=Oe7D/0Ma9E203syafbOh1AE4KVOA3DquK8BbIGhy2cg=;
 h=Date:From:To:Cc:Subject:Reply-To:References:In-Reply-To:From;
 b=Nanq6mYrplGJShLpGK5Y2cvbr0vLA/7tyqYIn7nl61YXjhyFJoDe4kWOJRIXXY297
 nZ6TdrxKB54xcbkWRX4HWs5hDYtJKFsAlYJ5U42s9U3IeeLN+ks9ZkA6YaxegEIhHO
 hMmy/CC2a5BI1TQ/k9TzTMGYs/qvn9wn2R8z5c1Y=
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
 id 34321352018E; Fri, 24 Jan 2020 14:24:34 -0800 (PST)
Date: Fri, 24 Jan 2020 14:24:34 -0800
From: "Paul E. McKenney" <paulmck@kernel.org>
To: Alex Kogan <alex.kogan@oracle.com>
Subject: Re: [PATCH v9 0/5] Add NUMA-awareness to qspinlock
Message-ID: <20200124222434.GA7196@paulmck-ThinkPad-P72>
References: <20200115035920.54451-1-alex.kogan@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200115035920.54451-1-alex.kogan@oracle.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_142436_117763_00BDE922 
X-CRM114-Status: GOOD (  24.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Reply-To: paulmck@kernel.org
Cc: linux-arch@vger.kernel.org, guohanjun@huawei.com, arnd@arndb.de,
 peterz@infradead.org, dave.dice@oracle.com, jglauber@marvell.com,
 x86@kernel.org, will.deacon@arm.com, linux@armlinux.org.uk,
 steven.sistare@oracle.com, linux-kernel@vger.kernel.org, mingo@redhat.com,
 bp@alien8.de, hpa@zytor.com, longman@redhat.com, tglx@linutronix.de,
 daniel.m.jordan@oracle.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 14, 2020 at 10:59:15PM -0500, Alex Kogan wrote:
> Minor changes from v8 based on feedback from Longman:
> -----------------------------------------------------
> 
> - Add __init to cna_configure_spin_lock_slowpath().
> 
> - Fix the comment for cna_scan_main_queue().
> 
> - Change the type of intra_node_handoff_threshold to unsigned int.
> 
> 
> Summary
> -------
> 
> Lock throughput can be increased by handing a lock to a waiter on the
> same NUMA node as the lock holder, provided care is taken to avoid
> starvation of waiters on other NUMA nodes. This patch introduces CNA
> (compact NUMA-aware lock) as the slow path for qspinlock. It is
> enabled through a configuration option (NUMA_AWARE_SPINLOCKS).
> 
> CNA is a NUMA-aware version of the MCS lock. Spinning threads are
> organized in two queues, a main queue for threads running on the same
> node as the current lock holder, and a secondary queue for threads
> running on other nodes. Threads store the ID of the node on which
> they are running in their queue nodes. After acquiring the MCS lock and
> before acquiring the spinlock, the lock holder scans the main queue
> looking for a thread running on the same node (pre-scan). If found (call
> it thread T), all threads in the main queue between the current lock
> holder and T are moved to the end of the secondary queue.  If such T
> is not found, we make another scan of the main queue after acquiring 
> the spinlock when unlocking the MCS lock (post-scan), starting at the
> node where pre-scan stopped. If both scans fail to find such T, the
> MCS lock is passed to the first thread in the secondary queue. If the
> secondary queue is empty, the MCS lock is passed to the next thread in the
> main queue. To avoid starvation of threads in the secondary queue, those
> threads are moved back to the head of the main queue after a certain
> number of intra-node lock hand-offs.
> 
> More details are available at https://arxiv.org/abs/1810.05600.
> 
> The series applies on top of v5.5.0-rc6, commit b3a987b026.
> Performance numbers are available in previous revisions
> of the series.
> 
> Further comments are welcome and appreciated.

I ran this on a large system with a version of locktorture that was
modified to print out the maximum and minimum per-CPU lock-acquisition
counts, and with CPU hotplug disabled.  I also modified the LOCK01 and
LOCK04 scenarios to use 220 hardware threads.

Here is what the test ended up with at the end of a one-hour run:

LOCK01 (exclusive):
Writes:  Total: 1241107333  Max/Min: 9206962/60902 ???  Fail: 0

LOCK04 (rwlock):
Writes:  Total: 232991963  Max/Min: 2631574/74582 ???  Fail: 0
Reads :  Total: 216935386  Max/Min: 2735939/28665 ???  Fail: 0

The "???" strings are printed because the ratio of maximum to minimum exceeds
a factor of two.

I also ran 30-minute runs on my laptop, which has 12 hardware threads:

LOCK01 (exclusive):
Writes:  Total: 3992072782  Max/Min: 259368782/97231961 ???  Fail: 0

LOCK04 (rwlock):
Writes:  Total: 131063892  Max/Min: 13136206/5876157 ???  Fail: 0
Reads :  Total: 144876801  Max/Min: 19999535/4873442 ???  Fail: 0

These also exceed the factor-of-two cutoff, but not as dramatically.
The readers for the reader-writer lock fared worst, with a 4-to-1 ratio.

These tests did run within guest OSes.  Is that configuration out of
scope for this locking algorithm?  In addition (as might well also have
been the case for the locktorture runs in your paper), these tests run
a pair of stress-test tasks for each hardware thread.

Is this expected behavior?

							Thanx, Paul

> Alex Kogan (5):
>   locking/qspinlock: Rename mcs lock/unlock macros and make them more
>     generic
>   locking/qspinlock: Refactor the qspinlock slow path
>   locking/qspinlock: Introduce CNA into the slow path of qspinlock
>   locking/qspinlock: Introduce starvation avoidance into CNA
>   locking/qspinlock: Introduce the shuffle reduction optimization into
>     CNA
> 
>  .../admin-guide/kernel-parameters.txt         |  18 +
>  arch/arm/include/asm/mcs_spinlock.h           |   6 +-
>  arch/x86/Kconfig                              |  20 +
>  arch/x86/include/asm/qspinlock.h              |   4 +
>  arch/x86/kernel/alternative.c                 |   4 +
>  include/asm-generic/mcs_spinlock.h            |   4 +-
>  kernel/locking/mcs_spinlock.h                 |  20 +-
>  kernel/locking/qspinlock.c                    |  82 +++-
>  kernel/locking/qspinlock_cna.h                | 399 ++++++++++++++++++
>  kernel/locking/qspinlock_paravirt.h           |   2 +-
>  10 files changed, 536 insertions(+), 23 deletions(-)
>  create mode 100644 kernel/locking/qspinlock_cna.h
> 
> -- 
> 2.21.0 (Apple Git-122.2)
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
