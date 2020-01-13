Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43683138CF1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 09:33:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yzCoA05zwknohk566b9jmlD9jC0nQakKQttjSFNGXdE=; b=ngoLtNlAc6dfAW
	oU2ZqmOOc8OnPocSSrWtU5IqjfhS+JL5lHS4j6kTkScKqgWaF1LM5tG7kxy4jtKo8oUDelRO2Tzlr
	Iqn9RpU9cPttwfmRst8+0y6s80P1ki8tq4lEn+1cvJdqAGiHtq8RPRazyEW+db4nSJreLGpdYjwkm
	DxmvAQo+u3UYJCNMC3Llyj238GvjMwE3GLe4OKVXRkhw7rlnPw5/y9ad91OhFgrSuQHlPdumNg3GV
	fLnMj1obnGBqUanolQ1MUJbUqkj89szU59PndT74yy9UuNin6wkBNtLhXesj2fpDnxpgJ086Z0X3O
	7m4tfw+EQbhbsLpId6EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqv9m-0008N5-Uc; Mon, 13 Jan 2020 08:33:06 +0000
Received: from szxga03-in.huawei.com ([45.249.212.189] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqv98-0007vz-Ft
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 08:32:29 +0000
Received: from DGGEMM402-HUB.china.huawei.com (unknown [172.30.72.56])
 by Forcepoint Email with ESMTP id 7FED0671E1313F80D63B;
 Mon, 13 Jan 2020 16:32:17 +0800 (CST)
Received: from dggeme755-chm.china.huawei.com (10.3.19.101) by
 DGGEMM402-HUB.china.huawei.com (10.3.20.210) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 13 Jan 2020 16:32:17 +0800
Received: from [127.0.0.1] (10.173.221.248) by dggeme755-chm.china.huawei.com
 (10.3.19.101) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 13
 Jan 2020 16:32:16 +0800
Subject: Re: [PATCH v2] locking/osq: Use optimized spinning loop for arm64
To: Waiman Long <longman@redhat.com>, Peter Zijlstra <peterz@infradead.org>,
 Ingo Molnar <mingo@redhat.com>, Will Deacon <will.deacon@arm.com>, "Catalin
 Marinas" <catalin.marinas@arm.com>
References: <20200112235854.32089-1-longman@redhat.com>
From: yezengruan <yezengruan@huawei.com>
Message-ID: <108e58d2-56f8-5ee2-23a8-f1260e428195@huawei.com>
Date: Mon, 13 Jan 2020 16:32:14 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200112235854.32089-1-longman@redhat.com>
Content-Language: en-US
X-Originating-IP: [10.173.221.248]
X-ClientProxiedBy: dggeme710-chm.china.huawei.com (10.1.199.106) To
 dggeme755-chm.china.huawei.com (10.3.19.101)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_003227_178249_4FF8A2D2 
X-CRM114-Status: GOOD (  27.92  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.189 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Waiman,

On 2020/1/13 7:58, Waiman Long wrote:
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

Recently, I am supporting vcpu_is_preempted() for arm64. There is a patch set which do this[1].

[1] https://lore.kernel.org/linux-arm-kernel/20191226135833.1052-1-yezengruan@huawei.com/

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
> +
>  /*
>   * We use the value 0 to represent "no CPU", thus the encoded value
>   * will be the CPU number incremented by 1.
> @@ -134,20 +142,11 @@ bool osq_lock(struct optimistic_spin_queue *lock)
>  	 * cmpxchg in an attempt to undo our queueing.
>  	 */
>  
> -	while (!READ_ONCE(node->locked)) {
> -		/*
> -		 * If we need to reschedule bail... so we can block.
> -		 * Use vcpu_is_preempted() to avoid waiting for a preempted
> -		 * lock holder:
> -		 */
> -		if (need_resched() || vcpu_is_preempted(node_cpu(node->prev)))
> -			goto unqueue;
> -
> -		cpu_relax();
> -	}
> -	return true;
> +	if (smp_cond_load_relaxed(&node->locked, VAL || need_resched() ||
> +				  vcpu_is_preempted(node_cpu(node->prev))))
> +		return true;
>  
> -unqueue:
> +	/* unqueue */
>  	/*
>  	 * Step - A  -- stabilize @prev
>  	 *
> 

Thanks,

Zengruan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
