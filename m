Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51EF4144E21
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 09:58:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W4KipqGG4ZhRnKk9qC9W5Poi8jw9Tagkuy0b+kih2/A=; b=CV5vgbqs8t3zcz
	rKQEmURaGCsr8INTVeUIbw0wgGYfjaDZ55T7iM5bETkabzwkU+h5sBHMT/iBoYTn2VcRyippk7YQ0
	WkxkXnrUXdbHLjKrrI25tNF/ECgm+wOxvafjGIMKrpjr69KROZ7dZLeAJ8dhr+7DudETU7vNHapwU
	H+0hlopNze71KWVtbJigLZXFNfsX5RxKLeoT/tMPesiQopj4cMO5TgLlkoogXpePLMc5vcWEdcsNl
	RPEloS4TN9wFGSR1tiBA4rlDxgjwVChkYxEIOO3JG7JrhLuRRNhVLBCYMnCn71FOY0kGSI9UzETXL
	1DiAsKvM0jjTf1gJv30A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuBqK-0003QO-3J; Wed, 22 Jan 2020 08:58:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuBqC-0003Pv-1f
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 08:58:25 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8A0542253D;
 Wed, 22 Jan 2020 08:58:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579683503;
 bh=wYfcRaLJtEbKOeSJp7ItR4eKrQug0zW9UUl6qHernP4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oKakU8GByrZCSyz/lp4L7EWEwgj4wGOJ0MiaU0u/6ItkamUgJaDGJIa3LpGcFOQAz
 7iV8+yNHR0KUR9v7iY5R0Fyt3hKLJBcbbz6cuqFNugxPBUcgcyEJHPzizZSpcwa19R
 R7FB7VvMAUYdGy6k/fp4nO2uE8tC5IPlsDo/+ER4=
Date: Wed, 22 Jan 2020 08:58:17 +0000
From: Will Deacon <will@kernel.org>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH v7 3/5] locking/qspinlock: Introduce CNA into the slow
 path of qspinlock
Message-ID: <20200122085816.GB15537@willie-the-truck>
References: <20191125210709.10293-1-alex.kogan@oracle.com>
 <20191125210709.10293-4-alex.kogan@oracle.com>
 <20200121202919.GM11457@worktop.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200121202919.GM11457@worktop.programming.kicks-ass.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_005824_127993_03B4AE97 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 rahul.x.yadav@oracle.com, mingo@redhat.com, steven.sistare@oracle.com,
 longman@redhat.com, guohanjun@huawei.com, Alex Kogan <alex.kogan@oracle.com>,
 bp@alien8.de, tglx@linutronix.de, daniel.m.jordan@oracle.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 21, 2020 at 09:29:19PM +0100, Peter Zijlstra wrote:
> 
> various notes and changes in the below.
> 
> ---
> 
> Index: linux-2.6/kernel/locking/qspinlock.c
> ===================================================================
> --- linux-2.6.orig/kernel/locking/qspinlock.c
> +++ linux-2.6/kernel/locking/qspinlock.c
> @@ -598,10 +598,10 @@ EXPORT_SYMBOL(queued_spin_lock_slowpath)
>  #define _GEN_CNA_LOCK_SLOWPATH
>  
>  #undef pv_wait_head_or_lock
> -#define pv_wait_head_or_lock		cna_pre_scan
> +#define pv_wait_head_or_lock		cna_wait_head_or_lock
>  
>  #undef try_clear_tail
> -#define try_clear_tail			cna_try_change_tail
> +#define try_clear_tail			cna_try_clear_tail
>  
>  #undef mcs_pass_lock
>  #define mcs_pass_lock			cna_pass_lock
> Index: linux-2.6/kernel/locking/qspinlock_cna.h
> ===================================================================
> --- linux-2.6.orig/kernel/locking/qspinlock_cna.h
> +++ linux-2.6/kernel/locking/qspinlock_cna.h
> @@ -8,37 +8,37 @@
>  /*
>   * Implement a NUMA-aware version of MCS (aka CNA, or compact NUMA-aware lock).
>   *
> - * In CNA, spinning threads are organized in two queues, a main queue for
> + * In CNA, spinning threads are organized in two queues, a primary queue for
>   * threads running on the same NUMA node as the current lock holder, and a
> - * secondary queue for threads running on other nodes. Schematically, it
> - * looks like this:
> + * secondary queue for threads running on other nodes. Schematically, it looks
> + * like this:
>   *
>   *    cna_node
> - *   +----------+    +--------+        +--------+
> - *   |mcs:next  | -> |mcs:next| -> ... |mcs:next| -> NULL      [Main queue]
> - *   |mcs:locked| -+ +--------+        +--------+
> + *   +----------+     +--------+         +--------+
> + *   |mcs:next  | --> |mcs:next| --> ... |mcs:next| --> NULL  [Primary queue]
> + *   |mcs:locked| -.  +--------+         +--------+
>   *   +----------+  |
> - *                 +----------------------+
> - *                                        \/
> + *                 `----------------------.
> + *                                        v
>   *                 +--------+         +--------+
> - *                 |mcs:next| -> ...  |mcs:next|          [Secondary queue]
> + *                 |mcs:next| --> ... |mcs:next|            [Secondary queue]
>   *                 +--------+         +--------+
>   *                     ^                    |
> - *                     +--------------------+
> + *                     `--------------------'
>   *
> - * N.B. locked = 1 if secondary queue is absent. Othewrise, it contains the
> + * N.B. locked := 1 if secondary queue is absent. Othewrise, it contains the

If we're redoing the comment, please can you s/Othewrise/Otherwise/ at the
same time? It catches me every time I read it!

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
