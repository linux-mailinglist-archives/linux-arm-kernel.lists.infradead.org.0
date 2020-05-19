Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C9901D9B9F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 17:48:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xLbhYqiCCwR4HqBjhP+LvworcwZZWa+kc7Ttaa5omD0=; b=IU2z2khMhwGUOv
	BqokJelyHSDs9D1iAtz+yLphrFdf4YkliPSIPGfpqRyXMfbvPxtczejJ7sdM0vA/eaoIbYbNrfVFw
	8Rqtlt1ytA7oIoZEiLCHCGExxaGQPebmQ/mS84e9z4KSfYB1RooDb5GPivXcP9ehjBsdFgJdjh0Db
	XKTk9yVzdwvYKDGRv/95R5mp6HIAbfwLZk+IvDi9xESIfdEoEmQyYJzeDGiWeLu1UnK/6e32UZcHs
	LXv2y/w07c1yMV5gMaqQoZ0WIAtZycqHVLmTyu2JdrJionQOro+xJrCJkb5qOMIDFUeI5dW7PYlyo
	rflIYIDpJAFt4HJtW49Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb4Tr-000730-5R; Tue, 19 May 2020 15:48:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb4Tc-00072P-1S; Tue, 19 May 2020 15:48:21 +0000
Received: from paulmck-ThinkPad-P72.home (50-39-105-78.bvtn.or.frontiernet.net
 [50.39.105.78])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7C5C920709;
 Tue, 19 May 2020 15:48:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589903299;
 bh=7sGpmOemTKou1SkDOKuXUD9OFaVHO0iNug1vnMIT5to=;
 h=Date:From:To:Cc:Subject:Reply-To:References:In-Reply-To:From;
 b=bn/NLnfD8LOiAz71tCS0RtryozPQl84Nu0NRP0BGsk1fO1GXShtAuOLDKIgFn1vdY
 tOeY+ce5lZc0xezqWV/1dnupSBYngrB+um0EVwD1wwEhotgZPeP2+GO8QagrhBzB3F
 ZkV591g7MAtER5EKyCFrBfL6VTpYNZXN58AfrNbM=
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
 id 649EE3523462; Tue, 19 May 2020 08:48:19 -0700 (PDT)
Date: Tue, 19 May 2020 08:48:19 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: Walter Wu <walter-zh.wu@mediatek.com>
Subject: Re: [PATCH v4 1/4] rcu/kasan: record and print call_rcu() call stack
Message-ID: <20200519154819.GJ2869@paulmck-ThinkPad-P72>
References: <20200519022359.24115-1-walter-zh.wu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519022359.24115-1-walter-zh.wu@mediatek.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_084820_126399_724F768B 
X-CRM114-Status: GOOD (  22.89  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: wsd_upstream <wsd_upstream@mediatek.com>, linux-mm@kvack.org,
 Lai Jiangshan <jiangshanlai@gmail.com>, Josh Triplett <josh@joshtriplett.org>,
 kasan-dev@googlegroups.com, linux-kernel@vger.kernel.org,
 Joel Fernandes <joel@joelfernandes.org>, linux-mediatek@lists.infradead.org,
 Alexander Potapenko <glider@google.com>, linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Andrew Morton <akpm@linux-foundation.org>, Dmitry Vyukov <dvyukov@google.com>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 10:23:59AM +0800, Walter Wu wrote:
> This feature will record the last two call_rcu() call stacks and
> prints up to 2 call_rcu() call stacks in KASAN report.
> 
> When call_rcu() is called, we store the call_rcu() call stack into
> slub alloc meta-data, so that the KASAN report can print rcu stack.
> 
> [1]https://bugzilla.kernel.org/show_bug.cgi?id=198437
> [2]https://groups.google.com/forum/#!searchin/kasan-dev/better$20stack$20traces$20for$20rcu%7Csort:date/kasan-dev/KQsjT_88hDE/7rNUZprRBgAJ
> 
> Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
> Suggested-by: Dmitry Vyukov <dvyukov@google.com>
> Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
> Cc: Dmitry Vyukov <dvyukov@google.com>
> Cc: Alexander Potapenko <glider@google.com>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Paul E. McKenney <paulmck@kernel.org>
> Cc: Josh Triplett <josh@joshtriplett.org>
> Cc: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
> Cc: Lai Jiangshan <jiangshanlai@gmail.com>
> Cc: Joel Fernandes <joel@joelfernandes.org>

From an RCU perspective:

Acked-by: Paul E. McKenney <paulmck@kernel.org>

> ---
>  include/linux/kasan.h |  2 ++
>  kernel/rcu/tree.c     |  2 ++
>  lib/Kconfig.kasan     |  2 ++
>  mm/kasan/common.c     |  4 ++--
>  mm/kasan/generic.c    | 19 +++++++++++++++++++
>  mm/kasan/kasan.h      | 10 ++++++++++
>  mm/kasan/report.c     | 24 ++++++++++++++++++++++++
>  7 files changed, 61 insertions(+), 2 deletions(-)
> 
> diff --git a/include/linux/kasan.h b/include/linux/kasan.h
> index 31314ca7c635..23b7ee00572d 100644
> --- a/include/linux/kasan.h
> +++ b/include/linux/kasan.h
> @@ -174,11 +174,13 @@ static inline size_t kasan_metadata_size(struct kmem_cache *cache) { return 0; }
>  
>  void kasan_cache_shrink(struct kmem_cache *cache);
>  void kasan_cache_shutdown(struct kmem_cache *cache);
> +void kasan_record_aux_stack(void *ptr);
>  
>  #else /* CONFIG_KASAN_GENERIC */
>  
>  static inline void kasan_cache_shrink(struct kmem_cache *cache) {}
>  static inline void kasan_cache_shutdown(struct kmem_cache *cache) {}
> +static inline void kasan_record_aux_stack(void *ptr) {}
>  
>  #endif /* CONFIG_KASAN_GENERIC */
>  
> diff --git a/kernel/rcu/tree.c b/kernel/rcu/tree.c
> index 06548e2ebb72..36a4ff7f320b 100644
> --- a/kernel/rcu/tree.c
> +++ b/kernel/rcu/tree.c
> @@ -57,6 +57,7 @@
>  #include <linux/slab.h>
>  #include <linux/sched/isolation.h>
>  #include <linux/sched/clock.h>
> +#include <linux/kasan.h>
>  #include "../time/tick-internal.h"
>  
>  #include "tree.h"
> @@ -2668,6 +2669,7 @@ __call_rcu(struct rcu_head *head, rcu_callback_t func)
>  	head->func = func;
>  	head->next = NULL;
>  	local_irq_save(flags);
> +	kasan_record_aux_stack(head);
>  	rdp = this_cpu_ptr(&rcu_data);
>  
>  	/* Add the callback to our list. */
> diff --git a/lib/Kconfig.kasan b/lib/Kconfig.kasan
> index 81f5464ea9e1..4e83cf6e3caa 100644
> --- a/lib/Kconfig.kasan
> +++ b/lib/Kconfig.kasan
> @@ -58,6 +58,8 @@ config KASAN_GENERIC
>  	  For better error detection enable CONFIG_STACKTRACE.
>  	  Currently CONFIG_KASAN_GENERIC doesn't work with CONFIG_DEBUG_SLAB
>  	  (the resulting kernel does not boot).
> +	  In generic mode KASAN prints the last two call_rcu() call stacks in
> +	  reports.
>  
>  config KASAN_SW_TAGS
>  	bool "Software tag-based mode"
> diff --git a/mm/kasan/common.c b/mm/kasan/common.c
> index 2906358e42f0..8bc618289bb1 100644
> --- a/mm/kasan/common.c
> +++ b/mm/kasan/common.c
> @@ -41,7 +41,7 @@
>  #include "kasan.h"
>  #include "../slab.h"
>  
> -static inline depot_stack_handle_t save_stack(gfp_t flags)
> +depot_stack_handle_t kasan_save_stack(gfp_t flags)
>  {
>  	unsigned long entries[KASAN_STACK_DEPTH];
>  	unsigned int nr_entries;
> @@ -54,7 +54,7 @@ static inline depot_stack_handle_t save_stack(gfp_t flags)
>  static inline void set_track(struct kasan_track *track, gfp_t flags)
>  {
>  	track->pid = current->pid;
> -	track->stack = save_stack(flags);
> +	track->stack = kasan_save_stack(flags);
>  }
>  
>  void kasan_enable_current(void)
> diff --git a/mm/kasan/generic.c b/mm/kasan/generic.c
> index 56ff8885fe2e..3372bdcaf92a 100644
> --- a/mm/kasan/generic.c
> +++ b/mm/kasan/generic.c
> @@ -325,3 +325,22 @@ DEFINE_ASAN_SET_SHADOW(f2);
>  DEFINE_ASAN_SET_SHADOW(f3);
>  DEFINE_ASAN_SET_SHADOW(f5);
>  DEFINE_ASAN_SET_SHADOW(f8);
> +
> +void kasan_record_aux_stack(void *addr)
> +{
> +	struct page *page = kasan_addr_to_page(addr);
> +	struct kmem_cache *cache;
> +	struct kasan_alloc_meta *alloc_info;
> +	void *object;
> +
> +	if (!(page && PageSlab(page)))
> +		return;
> +
> +	cache = page->slab_cache;
> +	object = nearest_obj(cache, page, addr);
> +	alloc_info = get_alloc_info(cache, object);
> +
> +	/* record the last two call_rcu() call stacks */
> +	alloc_info->aux_stack[1] = alloc_info->aux_stack[0];
> +	alloc_info->aux_stack[0] = kasan_save_stack(GFP_NOWAIT);
> +}
> diff --git a/mm/kasan/kasan.h b/mm/kasan/kasan.h
> index e8f37199d885..a7391bc83070 100644
> --- a/mm/kasan/kasan.h
> +++ b/mm/kasan/kasan.h
> @@ -104,7 +104,15 @@ struct kasan_track {
>  
>  struct kasan_alloc_meta {
>  	struct kasan_track alloc_track;
> +#ifdef CONFIG_KASAN_GENERIC
> +	/*
> +	 * call_rcu() call stack is stored into struct kasan_alloc_meta.
> +	 * The free stack is stored into struct kasan_free_meta.
> +	 */
> +	depot_stack_handle_t aux_stack[2];
> +#else
>  	struct kasan_track free_track[KASAN_NR_FREE_STACKS];
> +#endif
>  #ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
>  	u8 free_pointer_tag[KASAN_NR_FREE_STACKS];
>  	u8 free_track_idx;
> @@ -159,6 +167,8 @@ void kasan_report_invalid_free(void *object, unsigned long ip);
>  
>  struct page *kasan_addr_to_page(const void *addr);
>  
> +depot_stack_handle_t kasan_save_stack(gfp_t flags);
> +
>  #if defined(CONFIG_KASAN_GENERIC) && \
>  	(defined(CONFIG_SLAB) || defined(CONFIG_SLUB))
>  void quarantine_put(struct kasan_free_meta *info, struct kmem_cache *cache);
> diff --git a/mm/kasan/report.c b/mm/kasan/report.c
> index 80f23c9da6b0..6f8f2bf8f53b 100644
> --- a/mm/kasan/report.c
> +++ b/mm/kasan/report.c
> @@ -179,6 +179,17 @@ static struct kasan_track *kasan_get_free_track(struct kmem_cache *cache,
>  	return &alloc_meta->free_track[i];
>  }
>  
> +#ifdef CONFIG_KASAN_GENERIC
> +static void print_stack(depot_stack_handle_t stack)
> +{
> +	unsigned long *entries;
> +	unsigned int nr_entries;
> +
> +	nr_entries = stack_depot_fetch(stack, &entries);
> +	stack_trace_print(entries, nr_entries, 0);
> +}
> +#endif
> +
>  static void describe_object(struct kmem_cache *cache, void *object,
>  				const void *addr, u8 tag)
>  {
> @@ -192,6 +203,19 @@ static void describe_object(struct kmem_cache *cache, void *object,
>  		free_track = kasan_get_free_track(cache, object, tag);
>  		print_track(free_track, "Freed");
>  		pr_err("\n");
> +
> +#ifdef CONFIG_KASAN_GENERIC
> +		if (alloc_info->aux_stack[0]) {
> +			pr_err("Last one call_rcu() call stack:\n");
> +			print_stack(alloc_info->aux_stack[0]);
> +			pr_err("\n");
> +		}
> +		if (alloc_info->aux_stack[1]) {
> +			pr_err("Second to last call_rcu() call stack:\n");
> +			print_stack(alloc_info->aux_stack[1]);
> +			pr_err("\n");
> +		}
> +#endif
>  	}
>  
>  	describe_object_addr(cache, object, addr);
> -- 
> 2.18.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
