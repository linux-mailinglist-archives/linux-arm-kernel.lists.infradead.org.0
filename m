Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BFAF1DBAC8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 19:09:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kwcdp5Koqg0aPtKlHylHDyNmGGOjaBjNRfsqvuwg4ig=; b=fCWL9biq+Fj8eC
	fkb3gjHAjzfue0Oyywk59jgdlO/hmn7xMmyLgW4yUMFLQGQF9+TCUbhU0g4vvkkW3APsJJn/+GllW
	yJ8WfZh8KajOv9ZqmIHgKdk54eTWubf09jtdoO5MNLGVJd61dGt5vfVxGnfXUV504Eyk7F4HFqIuf
	C0DOhlG62HXuOQyPrtC3YnUTdX4Xh0zydCE/rTKF5mjNoiiFc8fsCSgtUuKpyXwIeP+RUaqwF/LCv
	/2pcag6zr9uBfwFJWPmwG59VrwWqpsf+NGHL4SM+GUzxKoEqZUAzP0sn/8cEkQhr7I7710Ks0o2WC
	4OsK4yZBTBXC8bUb7O8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbSDH-0003ve-Bj; Wed, 20 May 2020 17:09:03 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbSD5-0003sv-9h
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 17:08:53 +0000
Received: by mail-pl1-x644.google.com with SMTP id m7so1591202plt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 10:08:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Qv8ZHds2eTWQ0EUWvVRBqR2tiVx11jw6rlo5/Ez4dVU=;
 b=ekEr6ftzVAUjjcsBED4SnDlqh9A4pHKPU+xFnRxYBzmTT21fgJmCYvrpZ1IAaFkfzf
 pLjfT7sRtGLVd3urJCmlFiOKYirE8S0ZWGEPWb70W975pj8242keMrKUw3krxh9ghg7o
 o65AOnXNsIwTE9sonu1p0DKFwJo6+Kk9Zcm8vTrkYz0iaDiBzwGsB+DMuHFmArLQRc4D
 7q4QQfD+VNNF9kAtD7n7fYLHHFBKMZaQ1AOWQ7DbGYl6ZHIgY7BtQpdp3c6aCwtvDEuZ
 Gi0Hl5loTwhjUHqBYb4dZRbGmm9gRCnBqb+YfFQjbuGuiWiouCdVvYs6NR5U22c019tC
 sEnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Qv8ZHds2eTWQ0EUWvVRBqR2tiVx11jw6rlo5/Ez4dVU=;
 b=XPS0dtkdsuf/qq87ncTQOLid3TYrEPAop7bKIMugCd0mwZqg+5FK7AFi/4upTJijhO
 j6BKB23NkvPNeYxDyZS5S4Q72V1OLv+wutInP3H9EQ1wZi+rJUbJVVBopAM+X9FM7Et1
 t9AoJ2uWTT6dvnVUHK03qTwv7sB5vApepw04MoWWW47zFdBNC0slA8ayJ4jhw3vYI4m8
 2NJdfFdIH0510RQrcKquX2f4jtmrtFGkZjae69k5YcY8JRK5lSrhsGzRZWYS3Mwtk76k
 93CeqwXQrpr5qFq5v1qYE8Orz0u0YIXWQxFCZHGklA+0L+DJ/tMbhNxachLirMeRI0Yn
 pSVA==
X-Gm-Message-State: AOAM532b26w0u3iuRY7XBAlViy0Y9x4YLUGzh4jGFcT9xMgJ7osxXjkb
 bIvue/H+VyEpqhVjW6gfGW/2dY39IH9SWeCeI89p3Q==
X-Google-Smtp-Source: ABdhPJz2ZpVnmDEZyM4E0JTPDWQkZs6uVzqUClQrk8M8zqVJ6ns6xNNf7qfbFZJeoGis9LRvfSPJWHluwE8/KJBuEN4=
X-Received: by 2002:a17:90a:21c9:: with SMTP id
 q67mr6204249pjc.166.1589994527943; 
 Wed, 20 May 2020 10:08:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200520123434.3888-1-walter-zh.wu@mediatek.com>
In-Reply-To: <20200520123434.3888-1-walter-zh.wu@mediatek.com>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Wed, 20 May 2020 19:08:36 +0200
Message-ID: <CAAeHK+wyg90Tw_Fp+A1vkW3rK+WKwPi_oS4T4SVL-fEYYaU0Lw@mail.gmail.com>
Subject: Re: [PATCH v5 1/4] rcu/kasan: record and print call_rcu() call stack
To: Walter Wu <walter-zh.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_100851_355578_96D68889 
X-CRM114-Status: GOOD (  27.64  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "Paul E . McKenney" <paulmck@kernel.org>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Lai Jiangshan <jiangshanlai@gmail.com>, Josh Triplett <josh@joshtriplett.org>,
 kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>,
 Joel Fernandes <joel@joelfernandes.org>, linux-mediatek@lists.infradead.org,
 Alexander Potapenko <glider@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Andrew Morton <akpm@linux-foundation.org>, Dmitry Vyukov <dvyukov@google.com>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 2:34 PM Walter Wu <walter-zh.wu@mediatek.com> wrote:
>
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
>  mm/kasan/report.c     | 24 ++++++++++++++++++++++++
>  6 files changed, 61 insertions(+), 2 deletions(-)
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
> index 80f23c9da6b0..29a801d5cd74 100644
> --- a/mm/kasan/report.c
> +++ b/mm/kasan/report.c
> @@ -105,6 +105,17 @@ static void end_report(unsigned long *flags)
>         kasan_enable_current();
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

The idea of moving it here was to reuse print_stack() in print_track() :)

> +
>  static void print_track(struct kasan_track *track, const char *prefix)
>  {
>         pr_err("%s by task %u:\n", prefix, track->pid);
> @@ -192,6 +203,19 @@ static void describe_object(struct kmem_cache *cache, void *object,
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/kasan-dev/20200520123434.3888-1-walter-zh.wu%40mediatek.com.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
