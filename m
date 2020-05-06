Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D22491C6D7D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 11:47:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0FZDLDORx39f6qVaEkdyP/kDey32fx4ahhgAJDapW8U=; b=OPc9pUWT2VNYU4
	lfUjlSyvG+O/EIJs1gl351UltosZO11iCQVXnQ3pNsWUBe4xk8WmFBqEhkiyxa74ldTQ+C9DCl2TJ
	mAglbkukpDk/mSsbH3I5TrFJ9ZM9MtcmnBQSVQwVfwh8tOll5aXiw45a8sBIzO4quUa5i3I+mHxTg
	vFy2+dsebc+7WboEFVhqVPXPwYMORmm7cvH05rSusgWpUE20c+DtNYKJOLElasJlFMY7n2xpGgfMQ
	beaoqXdGahfO94g1Vf9EH4HS1Pk740FlCii24WG9igupSPeY+MetE+bYT6j1d/zk8sS1kLjpIrrN1
	p7A1j6LPeuyflaOy9DmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWGdw-0003T7-Vr; Wed, 06 May 2020 09:47:08 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWGdm-0003Qc-Dy
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 09:47:00 +0000
Received: by mail-qt1-x843.google.com with SMTP id h26so798229qtu.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 02:46:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hQDZDB87ZUXhKCgcvIzYKrqSoBdqgJ7jZ3dXjUfyxD0=;
 b=r2QvspJvLUHvUJfQakhRiXru7zxUcQWBFwhTrpPUvyRi6gwqZIPFd3WeV09iauoC7L
 dP+/mOfO10zyLNKnByZor75Vv08yH7XOsalgzBHpSE80gLq3b7+9K3fR9AaNdAn4GXxT
 fUGIgnAmflws/HHYnJGuIjK7+twqjhDiR9B9e27wLyRo4fsy+ANzgvqPxtUOReOeu0dR
 XQIjiRRNC4l/GR2C42fRlQC8tKdXGSLr1MMmAw88YmTavegLRkvWYc3uVZmYxqkq89vl
 RcYvHYSRHAAszuleEas4Boj86zJeGHfzRwpSSEYIfmY+X4UabuRQNDbiXH8ifsfHvGen
 gpoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hQDZDB87ZUXhKCgcvIzYKrqSoBdqgJ7jZ3dXjUfyxD0=;
 b=ila6ficEKAqwY3/mSvoIx+WWn4aTYzHY12UmQzyiI3iZC+LNZ4abSDjoyI1x3o5ACr
 YUvsy9RHdahVLZVZB1VyOe3pI1k3UZRDrlcR73wbZsVc3HFM6S7hlCRj5wqbXepfkrYl
 XRhX9MHMEQITVBfyLKYyyixilO7bYZNBcw9QoCUNiKoS1mBUtzjCwm8hFuBBwrT4yjGo
 zAHVHJMDCkOLy/Eg86fT+nPq1cq2h3T55DtSKnS/uMfATHicsK0nSJzexwV74gKLvcu2
 AhTn8bw0ZOGKhrNInmAlcVsztRupXCN43+e7DUTiFo1/OjoSp06po2CcclHtN1jRaA6R
 XgSQ==
X-Gm-Message-State: AGi0Pub811njMubC5rNUR2Ta2gHhkxq8bDo8KhsqwC3dbhBQozD6FF9r
 P4Z2X0QBtCiT+/sgaiZnhtoaF3qsr/2Y5JP+efAFkg==
X-Google-Smtp-Source: APiQypLYyNNg47AB9MsR3Z+AOf3qGz6D2kPboq+MDxAun8KMRzabM7rmgZ5AC1J342iaRccS+hb/MKdDdXcxKUQN8rU=
X-Received: by 2002:ac8:5209:: with SMTP id r9mr6854313qtn.57.1588758416707;
 Wed, 06 May 2020 02:46:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200506052046.14451-1-walter-zh.wu@mediatek.com>
In-Reply-To: <20200506052046.14451-1-walter-zh.wu@mediatek.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Wed, 6 May 2020 11:46:45 +0200
Message-ID: <CACT4Y+beyYmoTn8GR_Y_Ca5XypxpRac-9ttu=zTtS-J-BYTfMA@mail.gmail.com>
Subject: Re: [PATCH 1/3] rcu/kasan: record and print call_rcu() call stack
To: Walter Wu <walter-zh.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_024658_498356_BFCBDEAD 
X-CRM114-Status: GOOD (  35.46  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Wed, May 6, 2020 at 7:21 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
>
> When call_rcu() is called, we store the call_rcu() call stack into
> slub alloc meta-data, so that KASAN report prints call_rcu() information.
>
> We add new KASAN_RCU_STACK_RECORD configuration option. It will record
> first and last call_rcu() call stack and KASAN report will print two
> call_rcu() call stack.
>
> This option doesn't increase the cost of memory consumption. Because
> we don't enlarge struct kasan_alloc_meta size.
> - add two call_rcu() call stack into kasan_alloc_meta, size is 8 bytes.
> - remove free track from kasan_alloc_meta, size is 8 bytes.
>
> [1]https://bugzilla.kernel.org/show_bug.cgi?id=198437
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
>  include/linux/kasan.h |  7 +++++++
>  kernel/rcu/tree.c     |  4 ++++
>  lib/Kconfig.kasan     | 11 +++++++++++
>  mm/kasan/common.c     | 23 +++++++++++++++++++++++
>  mm/kasan/kasan.h      | 12 ++++++++++++
>  mm/kasan/report.c     | 33 +++++++++++++++++++++++++++------
>  6 files changed, 84 insertions(+), 6 deletions(-)
>
> diff --git a/include/linux/kasan.h b/include/linux/kasan.h
> index 31314ca7c635..5eeece6893cd 100644
> --- a/include/linux/kasan.h
> +++ b/include/linux/kasan.h
> @@ -96,6 +96,12 @@ size_t kasan_metadata_size(struct kmem_cache *cache);
>  bool kasan_save_enable_multi_shot(void);
>  void kasan_restore_multi_shot(bool enabled);
>
> +#ifdef CONFIG_KASAN_RCU_STACK_RECORD
> +void kasan_record_callrcu(void *ptr);

The issue also mentions workqueue and timer stacks.
Have you considered supporting them as well? What was your motivation
for doing only rcu?

Looking at the first report for "workqueue use-after-free":
https://syzkaller.appspot.com/bug?extid=9cba1e478f91aad39876
This is exactly the same situation as for call_rcu, just a workqueue
is used to invoke a callback that frees the object.

If you don't want to do all at the same time, I would at least
name/branch everything inside of KASAN more generally (I think in the
issue I called it "aux" (auxiliary), or maybe something like
"additional"). But then call this kasan_record_aux_stack() only from
rcu for now. But then later we can separately decide and extend to
other callers.
It just feels wrong to have KASAN over-specialized for rcu only in this way.
And I think if the UAF is really caused by call_rcu callback, then it
sill will be recorded as last stack most of the time because rcu
callbacks are invoked relatively fast and there should not be much
else happening with the object since it's near end of life already.




> +#else
> +static inline void kasan_record_callrcu(void *ptr) {}
> +#endif
> +
>  #else /* CONFIG_KASAN */
>
>  static inline void kasan_unpoison_shadow(const void *address, size_t size) {}
> @@ -165,6 +171,7 @@ static inline void kasan_remove_zero_shadow(void *start,
>
>  static inline void kasan_unpoison_slab(const void *ptr) { }
>  static inline size_t kasan_metadata_size(struct kmem_cache *cache) { return 0; }
> +static inline void kasan_record_callrcu(void *ptr) {}
>
>  #endif /* CONFIG_KASAN */
>
> diff --git a/kernel/rcu/tree.c b/kernel/rcu/tree.c
> index 06548e2ebb72..145c79becf7b 100644
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
> @@ -2694,6 +2695,9 @@ __call_rcu(struct rcu_head *head, rcu_callback_t func)
>                 trace_rcu_callback(rcu_state.name, head,
>                                    rcu_segcblist_n_cbs(&rdp->cblist));
>
> +       if (IS_ENABLED(CONFIG_KASAN_RCU_STACK_RECORD))

The if is not necessary, this function is no-op when not enabled.

> +               kasan_record_callrcu(head);
> +
>         /* Go handle any RCU core processing required. */
>         if (IS_ENABLED(CONFIG_RCU_NOCB_CPU) &&
>             unlikely(rcu_segcblist_is_offloaded(&rdp->cblist))) {
> diff --git a/lib/Kconfig.kasan b/lib/Kconfig.kasan
> index 81f5464ea9e1..022934049cc2 100644
> --- a/lib/Kconfig.kasan
> +++ b/lib/Kconfig.kasan
> @@ -158,6 +158,17 @@ config KASAN_VMALLOC
>           for KASAN to detect more sorts of errors (and to support vmapped
>           stacks), but at the cost of higher memory usage.
>
> +config KASAN_RCU_STACK_RECORD
> +       bool "Record and print call_rcu() call stack"
> +       depends on KASAN_GENERIC
> +       help
> +         By default, the KASAN report doesn't print call_rcu() call stack.
> +         It is very difficult to analyze memory issues(e.g., use-after-free).
> +
> +         Enabling this option will print first and last call_rcu() call stack.
> +         It doesn't enlarge slub alloc meta-data size, so it doesn't increase
> +         the cost of memory consumption.
> +
>  config TEST_KASAN
>         tristate "Module for testing KASAN for bug detection"
>         depends on m && KASAN
> diff --git a/mm/kasan/common.c b/mm/kasan/common.c
> index 2906358e42f0..32d422bdf127 100644
> --- a/mm/kasan/common.c
> +++ b/mm/kasan/common.c
> @@ -299,6 +299,29 @@ struct kasan_free_meta *get_free_info(struct kmem_cache *cache,
>         return (void *)object + cache->kasan_info.free_meta_offset;
>  }
>
> +#ifdef CONFIG_KASAN_RCU_STACK_RECORD
> +void kasan_record_callrcu(void *addr)
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
> +       if (!alloc_info->rcu_free_stack[0])
> +               /* record first call_rcu() call stack */
> +               alloc_info->rcu_free_stack[0] = save_stack(GFP_NOWAIT);
> +       else
> +               /* record last call_rcu() call stack */
> +               alloc_info->rcu_free_stack[1] = save_stack(GFP_NOWAIT);
> +}
> +#endif
>
>  static void kasan_set_free_info(struct kmem_cache *cache,
>                 void *object, u8 tag)
> diff --git a/mm/kasan/kasan.h b/mm/kasan/kasan.h
> index e8f37199d885..adc105b9cd07 100644
> --- a/mm/kasan/kasan.h
> +++ b/mm/kasan/kasan.h
> @@ -96,15 +96,27 @@ struct kasan_track {
>         depot_stack_handle_t stack;
>  };
>
> +#ifdef CONFIG_KASAN_RCU_STACK_RECORD
> +#define BYTES_PER_WORD 4
> +#define KASAN_NR_RCU_FREE_STACKS 2
> +#else /* CONFIG_KASAN_RCU_STACK_RECORD */
>  #ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
>  #define KASAN_NR_FREE_STACKS 5
>  #else
>  #define KASAN_NR_FREE_STACKS 1
>  #endif
> +#endif /* CONFIG_KASAN_RCU_STACK_RECORD */
>
>  struct kasan_alloc_meta {
>         struct kasan_track alloc_track;
> +#ifdef CONFIG_KASAN_RCU_STACK_RECORD
> +       /* call_rcu() call stack is stored into kasan_alloc_meta.
> +        * free stack is stored into freed object.
> +        */
> +       depot_stack_handle_t rcu_free_stack[KASAN_NR_RCU_FREE_STACKS];
> +#else
>         struct kasan_track free_track[KASAN_NR_FREE_STACKS];
> +#endif
>  #ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
>         u8 free_pointer_tag[KASAN_NR_FREE_STACKS];
>         u8 free_track_idx;
> diff --git a/mm/kasan/report.c b/mm/kasan/report.c
> index 80f23c9da6b0..7aaccc70b65b 100644
> --- a/mm/kasan/report.c
> +++ b/mm/kasan/report.c
> @@ -105,9 +105,13 @@ static void end_report(unsigned long *flags)
>         kasan_enable_current();
>  }
>
> -static void print_track(struct kasan_track *track, const char *prefix)
> +static void print_track(struct kasan_track *track, const char *prefix,
> +                                               bool is_callrcu)
>  {
> -       pr_err("%s by task %u:\n", prefix, track->pid);
> +       if (is_callrcu)
> +               pr_err("%s:\n", prefix);
> +       else
> +               pr_err("%s by task %u:\n", prefix, track->pid);
>         if (track->stack) {
>                 unsigned long *entries;
>                 unsigned int nr_entries;
> @@ -159,8 +163,22 @@ static void describe_object_addr(struct kmem_cache *cache, void *object,
>                 (void *)(object_addr + cache->object_size));
>  }
>
> +#ifdef CONFIG_KASAN_RCU_STACK_RECORD
> +static void kasan_print_rcu_free_stack(struct kasan_alloc_meta *alloc_info)
> +{
> +       struct kasan_track free_track;
> +
> +       free_track.stack  = alloc_info->rcu_free_stack[0];
> +       print_track(&free_track, "First call_rcu() call stack", true);
> +       pr_err("\n");
> +       free_track.stack  = alloc_info->rcu_free_stack[1];
> +       print_track(&free_track, "Last call_rcu() call stack", true);
> +       pr_err("\n");
> +}
> +#endif
> +
>  static struct kasan_track *kasan_get_free_track(struct kmem_cache *cache,
> -               void *object, u8 tag)
> +               void *object, u8 tag, const void *addr)
>  {
>         struct kasan_alloc_meta *alloc_meta;
>         int i = 0;
> @@ -187,11 +205,14 @@ static void describe_object(struct kmem_cache *cache, void *object,
>         if (cache->flags & SLAB_KASAN) {
>                 struct kasan_track *free_track;
>
> -               print_track(&alloc_info->alloc_track, "Allocated");
> +               print_track(&alloc_info->alloc_track, "Allocated", false);
>                 pr_err("\n");
> -               free_track = kasan_get_free_track(cache, object, tag);
> -               print_track(free_track, "Freed");
> +               free_track = kasan_get_free_track(cache, object, tag, addr);
> +               print_track(free_track, "Freed", false);
>                 pr_err("\n");
> +#ifdef CONFIG_KASAN_RCU_STACK_RECORD
> +               kasan_print_rcu_free_stack(alloc_info);
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/kasan-dev/20200506052046.14451-1-walter-zh.wu%40mediatek.com.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
