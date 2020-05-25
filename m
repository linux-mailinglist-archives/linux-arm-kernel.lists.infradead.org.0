Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B4AF1E0B1A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 11:56:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XaMt83F/5+fNK6gnDLoUQwvMAU/hUHzpa9gKGU3pNpY=; b=oADO5cy/+5e8nc
	EWostwHKpV2CcQRgtoL8Y5UmxhfFV/ibIOKlHGoWCjs+gje5B1RYtqrRzWqQynYja6Sv2ZtT/0Sxw
	SER2f4/ZqgZ275dTPDutDrvIrhwA+z4b0F99Zd1HkDYDQ3dQmdlmFy9o5Wb+FNE5ZlTkbTBR2TS0i
	pzC23aa667yKl36qItucrs3UIfJDme4pIhQaXR8TKB54K0P+oMFf+M4XiHJaJAGcXCs9VLQmMqwM0
	ptjEPsQ6VFU5i43VyUakmoYMwIq0MPK1uyTgu2KfNT+dgNBC+9edFADzw/VY0ItJzy4qhvoeaWzP4
	ikxcvSHQFFyl3rMdz83Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd9qj-00043h-OC; Mon, 25 May 2020 09:56:49 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd9qW-00041m-89
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 09:56:37 +0000
Received: by mail-qt1-x841.google.com with SMTP id l1so13403937qtp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 May 2020 02:56:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CMPkAnqOp+8OxXk8fKVTR6aNVdBXjbmCqODMZoYVJi4=;
 b=Cxm5wBQUK+9K0WKUEwdMY+ksokGj99NAuDXog1rwVcwqJOl7BKXquOXvqBPW7F8q2d
 MLt9c1u1ySBcbWYOUEP56mH2TYL+8Gb7TNQj6CfRHHq24XPHLgqUm/YbNgJyAdpMlyg+
 w0NN0hh7u5bqw3Q+g0RVnJBmWhJUcrukhKxFPgh/2z2EWcW/klnOWiz5qwVAUI67utL2
 KiYfOMsZkDxJNVLdD2vXckdXAgi+DNlNRSdNutfgIA+aDgcHtGVVrxh9IIvtsfzT/l5C
 9hYItws2TLsVsMtfj2bbMWJVFBvTc/r2fo7YhZByt2JnUqkk+i1/WLJZPIYKu2nerv61
 /Zqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CMPkAnqOp+8OxXk8fKVTR6aNVdBXjbmCqODMZoYVJi4=;
 b=Ia4FAIgVijSdtBCjssEguiIHdh1gh1eVAtzuhTsc/elHSJoDoi4aKCwFeWMR3SfsIs
 5KrYmJu5uAAkzeFKCBZ3fwhLQi97hLehcPTIePQhTmXvJy4GXaeAkkjoiREC5GoHocGD
 N8/ihFmQInMlaOdRupjikypCMrG6+cvHTL2KwlqRtMyPQj7BB2z1DJHjzNpv1yOdikzV
 pz0r6Qs6pp5yOHaOGxes2L5sCwwooknwTj3YYmEQtSvyyaiG3XGu5W4XcBn+lFA0HSo/
 HGZrFB66LfOeTpBRzopQo3yeIzF7nfp0QNB38P9eUnV2L+YgNCDjDLOvfvrGhkl+iofx
 Rq8Q==
X-Gm-Message-State: AOAM530PTyCEzYD2nL7geqvnUpjZkz9Ke8Kt26XTUycCg5F3Dg2dIdc6
 QYocG4djznPTy2mVLXXnvtsyR+/L0k8QpwyV8i7awQ==
X-Google-Smtp-Source: ABdhPJzopLNYaPFRPT/ZN7w3dm20D9KZZRQBDwrtFfG3rAAJu8VxTj8O2V5wel6Keo/JWmkE6CjK/4Y0sMQctdjBOqg=
X-Received: by 2002:ac8:74d9:: with SMTP id j25mr1708889qtr.257.1590400591745; 
 Mon, 25 May 2020 02:56:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200522020059.22332-1-walter-zh.wu@mediatek.com>
In-Reply-To: <20200522020059.22332-1-walter-zh.wu@mediatek.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Mon, 25 May 2020 11:56:20 +0200
Message-ID: <CACT4Y+Zn9eMAPwCMEo710NnsUEoXP+H7xge8a1essu2F9DeFRw@mail.gmail.com>
Subject: Re: [PATCH v6 1/4] rcu/kasan: record and print call_rcu() call stack
To: Walter Wu <walter-zh.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_025636_302800_37AB2027 
X-CRM114-Status: GOOD (  27.40  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Andrey Konovalov <andreyknvl@google.com>,
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

On Fri, May 22, 2020 at 4:01 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
>
> This feature will record the last two call_rcu() call stacks and
> prints up to 2 call_rcu() call stacks in KASAN report.
>
> When call_rcu() is called, we store the call_rcu() call stack into
> slub alloc meta-data, so that the KASAN report can print rcu stack.
>
> [1]https://bugzilla.kernel.org/show_bug.cgi?id=198437
> [2]https://groups.google.com/forum/#!searchin/kasan-dev/better$20stack$20traces$20for$20rcu%7Csort:date/kasan-dev/KQsjT_88hDE/7rNUZprRBgAJ

Hi Walter,

The series look good to me. Thanks for bearing with me. I am eager to
see this in syzbot reports.

Reviewed-and-tested-by: Dmitry Vyukov <dvyukov@google.com>

> Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
> Suggested-by: Dmitry Vyukov <dvyukov@google.com>
> Acked-by: Paul E. McKenney <paulmck@kernel.org>
> Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
> Cc: Dmitry Vyukov <dvyukov@google.com>
> Cc: Alexander Potapenko <glider@google.com>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Josh Triplett <josh@joshtriplett.org>
> Cc: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
> Cc: Lai Jiangshan <jiangshanlai@gmail.com>
> Cc: Joel Fernandes <joel@joelfernandes.org>
> Cc: Andrey Konovalov <andreyknvl@google.com>
> ---
>  include/linux/kasan.h |  2 ++
>  kernel/rcu/tree.c     |  2 ++
>  mm/kasan/common.c     |  4 ++--
>  mm/kasan/generic.c    | 21 +++++++++++++++++++++
>  mm/kasan/kasan.h      | 10 ++++++++++
>  mm/kasan/report.c     | 28 +++++++++++++++++++++++-----
>  6 files changed, 60 insertions(+), 7 deletions(-)
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
> index 56ff8885fe2e..8acf48882ba2 100644
> --- a/mm/kasan/generic.c
> +++ b/mm/kasan/generic.c
> @@ -325,3 +325,24 @@ DEFINE_ASAN_SET_SHADOW(f2);
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
> +       /*
> +        * record the last two call_rcu() call stacks.
> +        */
> +       alloc_info->aux_stack[1] = alloc_info->aux_stack[0];
> +       alloc_info->aux_stack[0] = kasan_save_stack(GFP_NOWAIT);
> +}
> diff --git a/mm/kasan/kasan.h b/mm/kasan/kasan.h
> index e8f37199d885..a7391bc83070 100644
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
> +       depot_stack_handle_t aux_stack[2];
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
> index 80f23c9da6b0..2421a4bd9227 100644
> --- a/mm/kasan/report.c
> +++ b/mm/kasan/report.c
> @@ -105,15 +105,20 @@ static void end_report(unsigned long *flags)
>         kasan_enable_current();
>  }
>
> +static void print_stack(depot_stack_handle_t stack)
> +{
> +       unsigned long *entries;
> +       unsigned int nr_entries;
> +
> +       nr_entries = stack_depot_fetch(stack, &entries);
> +       stack_trace_print(entries, nr_entries, 0);
> +}
> +
>  static void print_track(struct kasan_track *track, const char *prefix)
>  {
>         pr_err("%s by task %u:\n", prefix, track->pid);
>         if (track->stack) {
> -               unsigned long *entries;
> -               unsigned int nr_entries;
> -
> -               nr_entries = stack_depot_fetch(track->stack, &entries);
> -               stack_trace_print(entries, nr_entries, 0);
> +               print_stack(track->stack);
>         } else {
>                 pr_err("(stack is not available)\n");
>         }
> @@ -192,6 +197,19 @@ static void describe_object(struct kmem_cache *cache, void *object,
>                 free_track = kasan_get_free_track(cache, object, tag);
>                 print_track(free_track, "Freed");
>                 pr_err("\n");
> +
> +#ifdef CONFIG_KASAN_GENERIC
> +               if (alloc_info->aux_stack[0]) {
> +                       pr_err("Last call_rcu():\n");
> +                       print_stack(alloc_info->aux_stack[0]);
> +                       pr_err("\n");
> +               }
> +               if (alloc_info->aux_stack[1]) {
> +                       pr_err("Second to last call_rcu():\n");
> +                       print_stack(alloc_info->aux_stack[1]);
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/kasan-dev/20200522020059.22332-1-walter-zh.wu%40mediatek.com.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
