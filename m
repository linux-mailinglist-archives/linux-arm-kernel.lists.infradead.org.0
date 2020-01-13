Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF51D139078
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 12:57:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Dry7qAVq6Cc2GNz2yDPXEx5qQfFL5KRG7jLgfBcKDU=; b=TWcQwZDnFUb83Q
	/bb4802JmAa0ctliizgVmVphcs0E+n7bfI8uwBqXmhaJuVEulM1SqqudASwC2Sv7MPvtmGDqTGwMV
	pMH8ebcg2OV0eworTrybPhxQvo7XBYHrQG/i9sUq1pWeIaUeyDkIBQKTgxppeC5RqgLaER8Qc/v5Y
	6xaQQjBZ9kZn/RHRl4SiGpclUeHxIU4umsDsvYOZSKxcArB9q9sdq9mOw9BXvHXJ64s6c8ti98Ir8
	mpoaFuIgnqRHrVPJsv7nD2rbCkao2Oz/pfB/ysK0+EeCPeX95fsn4rOC+pedtXlULuRaOSAak1zzO
	njli8Bk5LGiIUGa+C7vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqyLZ-0005vv-QB; Mon, 13 Jan 2020 11:57:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqyLR-0005vD-T4
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 11:57:23 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 82A11207FF;
 Mon, 13 Jan 2020 11:57:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578916640;
 bh=31ZC9hOEd1GVT60jOXVaks6wlFMfup6HMBgm19H4nA8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wLH+4axl9PTu7p9XYgup//bPK+FN/vyS361YfojRzLdLOv1TvF0a+OL9GXXVUuzoJ
 +YQpyE7B4sdcdImWltV7WU9/0ymlojNqoViQCxnqMwA1zX69utc7qSPKuXeIklb6D9
 ZIznY+WdadHnYCqcOosiCL3EsJUBfFevK610dhsQ=
Date: Mon, 13 Jan 2020 11:57:16 +0000
From: Will Deacon <will@kernel.org>
To: Waiman Long <longman@redhat.com>
Subject: Re: [PATCH v2] locking/osq: Use optimized spinning loop for arm64
Message-ID: <20200113115715.GA3260@willie-the-truck>
References: <20200112235854.32089-1-longman@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200112235854.32089-1-longman@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_035721_995541_D401AD70 
X-CRM114-Status: GOOD (  24.61  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Ingo Molnar <mingo@redhat.com>, maz@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[+Marc]

On Sun, Jan 12, 2020 at 06:58:54PM -0500, Waiman Long wrote:
> Arm64 has a more optimized spinning loop (atomic_cond_read_acquire)
> for spinlock that can boost performance of sibling threads by putting
> the current cpu to a shallow sleep state that is woken up only when
> the monitored variable changes or an external event happens.
> 
> OSQ has a more complicated spinning loop. Besides the lock value, it
> also checks for need_resched() and vcpu_is_preempted(). The check for
> need_resched() is not a problem as it is only set by the tick interrupt
> handler. That will be detected by the spinning cpu right after iret.
> 
> The vcpu_is_preempted() check, however, is a problem as changes to the
> preempt state of of previous node will not affect the sleep state. For
> ARM64, vcpu_is_preempted is not defined and so is a no-op. To guard
> against future addition of vcpu_is_preempted() to arm64, code is added
> to cause build error when vcpu_is_preempted becomes defined in arm64
> without the corresponding changes in the OSQ spinning code.
> 
> On a 2-socket 56-core 224-thread ARM64 system, a kernel mutex locking
> microbenchmark was run for 10s with and without the patch. The
> performance numbers before patch were:
> 
> Running locktest with mutex [runtime = 10s, load = 1]
> Threads = 224, Min/Mean/Max = 316/123,143/2,121,269
> Threads = 224, Total Rate = 2,757 kop/s; Percpu Rate = 12 kop/s
> 
> After patch, the numbers were:
> 
> Running locktest with mutex [runtime = 10s, load = 1]
> Threads = 224, Min/Mean/Max = 334/147,836/1,304,787
> Threads = 224, Total Rate = 3,311 kop/s; Percpu Rate = 15 kop/s
> 
> So there was about 20% performance improvement.
> 
> Signed-off-by: Waiman Long <longman@redhat.com>
> ---
>  arch/arm64/include/asm/barrier.h | 10 ++++++++++
>  kernel/locking/osq_lock.c        | 25 ++++++++++++-------------
>  2 files changed, 22 insertions(+), 13 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/barrier.h b/arch/arm64/include/asm/barrier.h
> index 7d9cc5ec4971..8eb5f1239885 100644
> --- a/arch/arm64/include/asm/barrier.h
> +++ b/arch/arm64/include/asm/barrier.h
> @@ -152,6 +152,16 @@ do {									\
>  	VAL;								\
>  })
>  
> +/*
> + * In osq_lock(), smp_cond_load_relaxed() is called with a condition
> + * that includes vcpu_is_preempted(). For arm64, vcpu_is_preempted is not
> + * currently defined. So it is a no-op. If vcpu_is_preempted is defined in
> + * the future, smp_cond_load_relaxed() will not response to changes in the
> + * preempt state in a timely manner. So code changes will have to be made
> + * to address this deficiency.
> + */
> +#define vcpu_is_preempted_not_used
> +
>  #define smp_cond_load_acquire(ptr, cond_expr)				\
>  ({									\
>  	typeof(ptr) __PTR = (ptr);					\
> diff --git a/kernel/locking/osq_lock.c b/kernel/locking/osq_lock.c
> index 6ef600aa0f47..69ec5161c3cc 100644
> --- a/kernel/locking/osq_lock.c
> +++ b/kernel/locking/osq_lock.c
> @@ -13,6 +13,14 @@
>   */
>  static DEFINE_PER_CPU_SHARED_ALIGNED(struct optimistic_spin_node, osq_node);
>  
> +/*
> + * The optimized smp_cond_load_relaxed() spin loop should not be used with
> + * vcpu_is_preempted defined.
> + */
> +#if defined(vcpu_is_preempted) && defined(vcpu_is_preempted_not_used)
> +#error "vcpu_is_preempted() inside smp_cond_load_relaxed() may not work!"
> +#endif

Although I appreciate you going the extra mile for arm64 (thanks!), I think
this is probably a bit overkill given that I don't plan to merge the series
from Zengruan any time soon. Instead, how about just defining
vcpu_is_preempted in arch/arm64/include/asm/spinlock.h with a comment:


	/*
	 * Changing this will break osq_lock() thanks to the call inside
	 * smp_cond_load_relaxed().
	 *
	 * See:
	 * https://lore.kernel.org/lkml/20200110100612.GC2827@hirez.programming.kicks-ass.net
	 */
	#define vcpu_is_preempted(cpu)	false


So we'll notice that when somebody tries to change it.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
