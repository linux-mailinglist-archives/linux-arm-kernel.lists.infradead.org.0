Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F741D750A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 12:21:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4f0q4s3DwEsSL3XHWv0HTYnBxozquvgKjGmXNBO9nrU=; b=DqS0s98cOohXVY
	8MK0fMo2eutLw0yBY2NexznpoFnd2Ie56Crfe8Y2Lk1Zi8HgI/Sp+IIKYBosvkT5bzPITTBQj1bB4
	RfnkL4HJvnV4+qBvck+cirB06Rj4etJuNKBUYb38tWACM/MsR8OuV7UAmqCszjpn/qDnNqXRA93kv
	XuqxT1dLFm2OMXuKm6lQ1xcAk8baI8GwZed/DiVuIrqyb1dJ1ZT5uAUwx92QffqxUERdFuxpKGDVZ
	giDXWn+6/KvWvo5+RfW0Pn04CU85k7KNqtmPLFWB0I9lxATesI4WN3qxkr5v0Mz+u61lePEjbgmml
	4y+Hviobb+hSH57yIw2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jactx-0003hW-VE; Mon, 18 May 2020 10:21:42 +0000
Received: from mail-qv1-xf44.google.com ([2607:f8b0:4864:20::f44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jacto-0003gm-PM
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 10:21:34 +0000
Received: by mail-qv1-xf44.google.com with SMTP id fb16so4373676qvb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 03:21:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4UrcruNgjCGo7KZXCgHiav/SoRCLnqO+sVxO468jQxk=;
 b=XrEl9sHFgivtGiowFoKRu5yIVdUWcaZJdjFIXahTi0v6zxZopJjqS+otsRjUQ0uzI0
 UaQVSNdIw3+kjD3YpjRPmBQ3TqveF6YF10CWA1br/+YLHZ4FSfqHDm1qF1SqIYC0IqFI
 ElcZCUsjbZ1RguikKV5X9z2YWiX3+pnPfuj2GvmcKjtUXFaR2VpOseS/LbtDHhpoCAoW
 dbN+WMRk18FgeQfVgc1G/WSgpNq9Tg4rc5pANHZKRGc2Pz80r1PBGmJ1HsTSr4LOd4/M
 vwhHbgQaKqW3bkoFhCqMbZygOJJ28YHvnNkBkja+Lhl+p+4jPBJFFk0kTLQthpdoqHHc
 Ltaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4UrcruNgjCGo7KZXCgHiav/SoRCLnqO+sVxO468jQxk=;
 b=hPkyfbFfB7s7tJGyJTV046rdPiEfRGQxPf74I2HcTDFNRqNGb2jG5+1rYIMFP9jwtR
 0PHZdEq2WAif1mEX+JuUZKMajF7U1/7++c4LVRqe3KOJJVEcAEyLfaKz9uzacgy6JGky
 U7opHYEYqCWy50MJ5Lpa+4XYvx5yYi8zUwOpyd9ZW9XAvbFOHtMkYHZthnwVeY4++GRS
 +CfRmx6I+VJSQnpAP9/CiX9B6LCHLLFiMwePV/fK1iSxwoBTlRfj9es6J85ljq+T6bVU
 BRb93dtDE+3tlHPW+nlIsnBEw8ADRGhXLopdEn6JUe54ZJlaGlZohGQy45yU2yfBGBhh
 1qEw==
X-Gm-Message-State: AOAM532D75QTCLtpt5CTga4CGAeaP66k1w9Bp1rhG2PpxJA4LnXGj8cz
 bZS5jUaOstBor/TgZtQmZM0LPwbArq9OXBMGWg3p2w==
X-Google-Smtp-Source: ABdhPJyNyqADDvdIZsxbu7Busv3cV/81dNCg8TDFn1vl3XaGowalaeZmbhQgFSNC5s7z33HHXZTX/YiuAZGYuQ18zkc=
X-Received: by 2002:a0c:db03:: with SMTP id d3mr15524799qvk.80.1589797291392; 
 Mon, 18 May 2020 03:21:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200518062603.4570-1-walter-zh.wu@mediatek.com>
In-Reply-To: <20200518062603.4570-1-walter-zh.wu@mediatek.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Mon, 18 May 2020 12:21:19 +0200
Message-ID: <CACT4Y+aSmcoSeC7J7RgoVV8CanwCrEz=zNZYG=_8KX3U-57A5Q@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] rcu/kasan: record and print call_rcu() call stack
To: Walter Wu <walter-zh.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_032132_844749_A6CAA1B4 
X-CRM114-Status: GOOD (  30.30  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f44 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: wsd_upstream <wsd_upstream@mediatek.com>,
 "Paul E . McKenney" <paulmck@kernel.org>, Linux-MM <linux-mm@kvack.org>,
 Lai Jiangshan <jiangshanlai@gmail.com>, Josh Triplett <josh@joshtriplett.org>,
 kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>,
 Joel Fernandes <joel@joelfernandes.org>, linux-mediatek@lists.infradead.org,
 Alexander Potapenko <glider@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 8:26 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
>
> This feature will record the last two call_rcu() call stack and
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
> ---
>  include/linux/kasan.h |  2 ++
>  kernel/rcu/tree.c     |  2 ++
>  lib/Kconfig.kasan     |  2 ++
>  mm/kasan/common.c     |  4 ++--
>  mm/kasan/generic.c    | 20 ++++++++++++++++++++
>  mm/kasan/kasan.h      | 10 ++++++++++
>  mm/kasan/report.c     | 24 ++++++++++++++++++++++++
>  7 files changed, 62 insertions(+), 2 deletions(-)
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
>         head->func = func;
>         head->next = NULL;
>         local_irq_save(flags);
> +       kasan_record_aux_stack(head);
>         rdp = this_cpu_ptr(&rcu_data);
>
>         /* Add the callback to our list. */
> diff --git a/lib/Kconfig.kasan b/lib/Kconfig.kasan
> index 81f5464ea9e1..4e83cf6e3caa 100644
> --- a/lib/Kconfig.kasan
> +++ b/lib/Kconfig.kasan
> @@ -58,6 +58,8 @@ config KASAN_GENERIC
>           For better error detection enable CONFIG_STACKTRACE.
>           Currently CONFIG_KASAN_GENERIC doesn't work with CONFIG_DEBUG_SLAB
>           (the resulting kernel does not boot).
> +         In generic mode KASAN prints the last two call_rcu() call stacks in
> +         reports.
>
>  config KASAN_SW_TAGS
>         bool "Software tag-based mode"
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
>         unsigned long entries[KASAN_STACK_DEPTH];
>         unsigned int nr_entries;
> @@ -54,7 +54,7 @@ static inline depot_stack_handle_t save_stack(gfp_t flags)
>  static inline void set_track(struct kasan_track *track, gfp_t flags)
>  {
>         track->pid = current->pid;
> -       track->stack = save_stack(flags);
> +       track->stack = kasan_save_stack(flags);
>  }
>
>  void kasan_enable_current(void)
> diff --git a/mm/kasan/generic.c b/mm/kasan/generic.c
> index 56ff8885fe2e..78d8e0a75a8a 100644
> --- a/mm/kasan/generic.c
> +++ b/mm/kasan/generic.c
> @@ -325,3 +325,23 @@ DEFINE_ASAN_SET_SHADOW(f2);
>  DEFINE_ASAN_SET_SHADOW(f3);
>  DEFINE_ASAN_SET_SHADOW(f5);
>  DEFINE_ASAN_SET_SHADOW(f8);
> +
> +void kasan_record_aux_stack(void *addr)
> +{
> +       struct page *page = kasan_addr_to_page(addr);
> +       struct kmem_cache *cache;
> +       struct kasan_alloc_meta *alloc_info;
> +       void *object;
> +
> +       if (!(page && PageSlab(page)))
> +               return;
> +
> +       cache = page->slab_cache;
> +       object = nearest_obj(cache, page, addr);
> +       alloc_info = get_alloc_info(cache, object);
> +
> +       /* record last two call_rcu() call stacks */
> +       if (alloc_info->rcu_stack[0])

Do we need this if?

If we do "alloc_info->rcu_stack[1] = alloc_info->rcu_stack[0]"
unconditionally, then we will just move 0 from [0] to [1], which
should be 0 at this point anyway.

I think it will be more reasonable to rename rcu_stack to aux_stack,
the function that stores the stacks is kasan_record_aux_stack.

> +               alloc_info->rcu_stack[1] = alloc_info->rcu_stack[0];
> +       alloc_info->rcu_stack[0] = kasan_save_stack(GFP_NOWAIT);
> +}
> diff --git a/mm/kasan/kasan.h b/mm/kasan/kasan.h
> index e8f37199d885..870c5dd07756 100644
> --- a/mm/kasan/kasan.h
> +++ b/mm/kasan/kasan.h
> @@ -104,7 +104,15 @@ struct kasan_track {
>
>  struct kasan_alloc_meta {
>         struct kasan_track alloc_track;
> +#ifdef CONFIG_KASAN_GENERIC
> +       /*
> +        * call_rcu() call stack is stored into struct kasan_alloc_meta.
> +        * The free stack is stored into struct kasan_free_meta.
> +        */
> +       depot_stack_handle_t rcu_stack[2];
> +#else
>         struct kasan_track free_track[KASAN_NR_FREE_STACKS];
> +#endif
>  #ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
>         u8 free_pointer_tag[KASAN_NR_FREE_STACKS];
>         u8 free_track_idx;
> @@ -159,6 +167,8 @@ void kasan_report_invalid_free(void *object, unsigned long ip);
>
>  struct page *kasan_addr_to_page(const void *addr);
>
> +depot_stack_handle_t kasan_save_stack(gfp_t flags);
> +
>  #if defined(CONFIG_KASAN_GENERIC) && \
>         (defined(CONFIG_SLAB) || defined(CONFIG_SLUB))
>  void quarantine_put(struct kasan_free_meta *info, struct kmem_cache *cache);
> diff --git a/mm/kasan/report.c b/mm/kasan/report.c
> index 80f23c9da6b0..5ee66cf7e27c 100644
> --- a/mm/kasan/report.c
> +++ b/mm/kasan/report.c
> @@ -179,6 +179,17 @@ static struct kasan_track *kasan_get_free_track(struct kmem_cache *cache,
>         return &alloc_meta->free_track[i];
>  }
>
> +#ifdef CONFIG_KASAN_GENERIC
> +static void print_stack(depot_stack_handle_t stack)
> +{
> +       unsigned long *entries;
> +       unsigned int nr_entries;
> +
> +       nr_entries = stack_depot_fetch(stack, &entries);
> +       stack_trace_print(entries, nr_entries, 0);
> +}
> +#endif
> +
>  static void describe_object(struct kmem_cache *cache, void *object,
>                                 const void *addr, u8 tag)
>  {
> @@ -192,6 +203,19 @@ static void describe_object(struct kmem_cache *cache, void *object,
>                 free_track = kasan_get_free_track(cache, object, tag);
>                 print_track(free_track, "Freed");
>                 pr_err("\n");
> +
> +#ifdef CONFIG_KASAN_GENERIC
> +               if (alloc_info->rcu_stack[0]) {
> +                       pr_err("Last one call_rcu() call stack:\n");
> +                       print_stack(alloc_info->rcu_stack[0]);
> +                       pr_err("\n");
> +               }
> +               if (alloc_info->rcu_stack[1]) {
> +                       pr_err("Second to last call_rcu() call stack:\n");
> +                       print_stack(alloc_info->rcu_stack[1]);
> +                       pr_err("\n");
> +               }
> +#endif
>         }
>
>         describe_object_addr(cache, object, addr);
> --
> 2.18.0
>
> --
> You received this message because you are subscribed to the Google Groups "kasan-dev" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to kasan-dev+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/kasan-dev/20200518062603.4570-1-walter-zh.wu%40mediatek.com.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
