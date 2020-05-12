Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6260E1CEBA8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 05:43:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HjqEFtX8GcW1dyo9y9iAgplDm6ky98UDbOvGwWgfNzk=; b=nFkAdZKkz3WToi
	DMInZeNx7Msp2+ter+VSZR9WUyj8hxSVCzHCltrSnrUivAj4HVYSuewZwyppTSa5Q0MfVy4k5QqOG
	hAy1qo0OZA9uBMch1QuH3R/Q80z3lNnr1p8v49ghQLViFzRWTsGbCmgIKdRrp3NpEeSEWFei0bcFr
	VkDMukxRfG8m+YlZcP2ifVVoo4KrXv7vXQyL2m3iYupQAHlA9qlAPyQD5nmgJrobsQ4mcHEzgHIFn
	piuWFqMfnFXQ9/C8HQ2aytzX/iY/Cs+hJBgpieBGERhSVBDOSqBPj+4bShTPOgKLNeP2Hutpbmyiq
	wiIH3AVLv4h6+PFCy+DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYLpC-0005xD-1D; Tue, 12 May 2020 03:43:22 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYLoq-0005o0-6I
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 03:43:02 +0000
X-UUID: 38f508670fd4444fadbca025760d8476-20200511
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=vldUPWrg6AE2Kp80nlemDtW3IillbEAbCq+PNbZ8Yh4=; 
 b=fNNdZg1Dxz5kVAE53JAjod6C4R9tyrSBRpdZp8RIkfd8LFeRtHFBGW3zcPc3CuuJObUbQZxJAzWqUJ4vZ3d8uYUbwdsuOA1QwdrMnhhKbIGCTypflZrs9XbzFkEUc3MaDr2esgYGIo3uswoD4qTG/gxR33hWf+B2vBTCE0VRj88=;
X-UUID: 38f508670fd4444fadbca025760d8476-20200511
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 834151864; Mon, 11 May 2020 19:42:56 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 11 May 2020 20:38:48 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 12 May 2020 11:38:40 +0800
Received: from [172.21.84.99] (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Tue, 12 May 2020 11:38:36 +0800
Message-ID: <1589254720.19238.36.camel@mtksdccf07>
Subject: Re: [PATCH v2 1/3] rcu/kasan: record and print call_rcu() call stack
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Dmitry Vyukov <dvyukov@google.com>
Date: Tue, 12 May 2020 11:38:40 +0800
In-Reply-To: <CACT4Y+aOkuH6Dn+L+wv1qVOLgXyCY_Ck4hecAMw3DgyBgC9qHw@mail.gmail.com>
References: <20200511023111.15310-1-walter-zh.wu@mediatek.com>
 <CACT4Y+YWNwTSoheJhc3nMdQi9m719F3PzpGo3TfRY3zAg9EwuQ@mail.gmail.com>
 <CACT4Y+bO1Zg_jgFHbOWgp7fLAADOQ_-AZmjEHz0WG7=oyOt4Gg@mail.gmail.com>
 <1589203771.21284.22.camel@mtksdccf07>
 <CACT4Y+aOkuH6Dn+L+wv1qVOLgXyCY_Ck4hecAMw3DgyBgC9qHw@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_204300_241740_825CA055 
X-CRM114-Status: GOOD (  24.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: "Paul E . McKenney" <paulmck@kernel.org>, Linux-MM <linux-mm@kvack.org>,
 Lai Jiangshan <jiangshanlai@gmail.com>, Josh Triplett <josh@joshtriplett.org>,
 kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>,
 Joel Fernandes <joel@joelfernandes.org>,
 Alexander Potapenko <glider@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, Andrew
 Morton <akpm@linux-foundation.org>, Linux
 ARM <linux-arm-kernel@lists.infradead.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2020-05-11 at 16:19 +0200, Dmitry Vyukov wrote:
> On Mon, May 11, 2020 at 3:29 PM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> > > > This feature will record first and last call_rcu() call stack and
> > > > print two call_rcu() call stack in KASAN report.
> > > >
> > > > When call_rcu() is called, we store the call_rcu() call stack into
> > > > slub alloc meta-data, so that KASAN report can print rcu stack.
> > > >
> > > > It doesn't increase the cost of memory consumption. Because we don't
> > > > enlarge struct kasan_alloc_meta size.
> > > > - add two call_rcu() call stack into kasan_alloc_meta, size is 8 bytes.
> > > > - remove free track from kasan_alloc_meta, size is 8 bytes.
> > > >
> > > > [1]https://bugzilla.kernel.org/show_bug.cgi?id=198437
> > > > [2]https://groups.google.com/forum/#!searchin/kasan-dev/better$20stack$20traces$20for$20rcu%7Csort:date/kasan-dev/KQsjT_88hDE/7rNUZprRBgAJ
> > > >
> > > > Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
> > > > Suggested-by: Dmitry Vyukov <dvyukov@google.com>
> > > > Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
> > > > Cc: Dmitry Vyukov <dvyukov@google.com>
> > > > Cc: Alexander Potapenko <glider@google.com>
> > > > Cc: Andrew Morton <akpm@linux-foundation.org>
> > > > Cc: Paul E. McKenney <paulmck@kernel.org>
> > > > Cc: Josh Triplett <josh@joshtriplett.org>
> > > > Cc: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
> > > > Cc: Lai Jiangshan <jiangshanlai@gmail.com>
> > > > Cc: Joel Fernandes <joel@joelfernandes.org>
> > > > ---
> > > >  include/linux/kasan.h |  2 ++
> > > >  kernel/rcu/tree.c     |  3 +++
> > > >  lib/Kconfig.kasan     |  2 ++
> > > >  mm/kasan/common.c     |  4 ++--
> > > >  mm/kasan/generic.c    | 29 +++++++++++++++++++++++++++++
> > > >  mm/kasan/kasan.h      | 19 +++++++++++++++++++
> > > >  mm/kasan/report.c     | 21 +++++++++++++++++----
> > > >  7 files changed, 74 insertions(+), 6 deletions(-)
> > > >
> > > > diff --git a/include/linux/kasan.h b/include/linux/kasan.h
> > > > index 31314ca7c635..23b7ee00572d 100644
> > > > --- a/include/linux/kasan.h
> > > > +++ b/include/linux/kasan.h
> > > > @@ -174,11 +174,13 @@ static inline size_t kasan_metadata_size(struct kmem_cache *cache) { return 0; }
> > > >
> > > >  void kasan_cache_shrink(struct kmem_cache *cache);
> > > >  void kasan_cache_shutdown(struct kmem_cache *cache);
> > > > +void kasan_record_aux_stack(void *ptr);
> > > >
> > > >  #else /* CONFIG_KASAN_GENERIC */
> > > >
> > > >  static inline void kasan_cache_shrink(struct kmem_cache *cache) {}
> > > >  static inline void kasan_cache_shutdown(struct kmem_cache *cache) {}
> > > > +static inline void kasan_record_aux_stack(void *ptr) {}
> > > >
> > > >  #endif /* CONFIG_KASAN_GENERIC */
> > > >
> > > > diff --git a/kernel/rcu/tree.c b/kernel/rcu/tree.c
> > > > index 06548e2ebb72..de872b6cc261 100644
> > > > --- a/kernel/rcu/tree.c
> > > > +++ b/kernel/rcu/tree.c
> > > > @@ -57,6 +57,7 @@
> > > >  #include <linux/slab.h>
> > > >  #include <linux/sched/isolation.h>
> > > >  #include <linux/sched/clock.h>
> > > > +#include <linux/kasan.h>
> > > >  #include "../time/tick-internal.h"
> > > >
> > > >  #include "tree.h"
> > > > @@ -2694,6 +2695,8 @@ __call_rcu(struct rcu_head *head, rcu_callback_t func)
> > > >                 trace_rcu_callback(rcu_state.name, head,
> > > >                                    rcu_segcblist_n_cbs(&rdp->cblist));
> > > >
> > > > +       kasan_record_aux_stack(head);
> > > > +
> > > >         /* Go handle any RCU core processing required. */
> > > >         if (IS_ENABLED(CONFIG_RCU_NOCB_CPU) &&
> > > >             unlikely(rcu_segcblist_is_offloaded(&rdp->cblist))) {
> > > > diff --git a/lib/Kconfig.kasan b/lib/Kconfig.kasan
> > > > index 81f5464ea9e1..56a89291f1cc 100644
> > > > --- a/lib/Kconfig.kasan
> > > > +++ b/lib/Kconfig.kasan
> > > > @@ -58,6 +58,8 @@ config KASAN_GENERIC
> > > >           For better error detection enable CONFIG_STACKTRACE.
> > > >           Currently CONFIG_KASAN_GENERIC doesn't work with CONFIG_DEBUG_SLAB
> > > >           (the resulting kernel does not boot).
> > > > +         Currently CONFIG_KASAN_GENERIC will print first and last call_rcu()
> > > > +         call stack. It doesn't increase the cost of memory consumption.
> > > >
> > > >  config KASAN_SW_TAGS
> > > >         bool "Software tag-based mode"
> > > > diff --git a/mm/kasan/common.c b/mm/kasan/common.c
> > > > index 2906358e42f0..8bc618289bb1 100644
> > > > --- a/mm/kasan/common.c
> > > > +++ b/mm/kasan/common.c
> > > > @@ -41,7 +41,7 @@
> > > >  #include "kasan.h"
> > > >  #include "../slab.h"
> > > >
> > > > -static inline depot_stack_handle_t save_stack(gfp_t flags)
> > > > +depot_stack_handle_t kasan_save_stack(gfp_t flags)
> > > >  {
> > > >         unsigned long entries[KASAN_STACK_DEPTH];
> > > >         unsigned int nr_entries;
> > > > @@ -54,7 +54,7 @@ static inline depot_stack_handle_t save_stack(gfp_t flags)
> > > >  static inline void set_track(struct kasan_track *track, gfp_t flags)
> > > >  {
> > > >         track->pid = current->pid;
> > > > -       track->stack = save_stack(flags);
> > > > +       track->stack = kasan_save_stack(flags);
> > > >  }
> > > >
> > > >  void kasan_enable_current(void)
> > > > diff --git a/mm/kasan/generic.c b/mm/kasan/generic.c
> > > > index 56ff8885fe2e..b86880c338e2 100644
> > > > --- a/mm/kasan/generic.c
> > > > +++ b/mm/kasan/generic.c
> > > > @@ -325,3 +325,32 @@ DEFINE_ASAN_SET_SHADOW(f2);
> > > >  DEFINE_ASAN_SET_SHADOW(f3);
> > > >  DEFINE_ASAN_SET_SHADOW(f5);
> > > >  DEFINE_ASAN_SET_SHADOW(f8);
> > > > +
> > > > +void kasan_record_aux_stack(void *addr)
> > > > +{
> > > > +       struct page *page = kasan_addr_to_page(addr);
> > > > +       struct kmem_cache *cache;
> > > > +       struct kasan_alloc_meta *alloc_info;
> > > > +       void *object;
> > > > +
> > > > +       if (!(page && PageSlab(page)))
> > > > +               return;
> > > > +
> > > > +       cache = page->slab_cache;
> > > > +       object = nearest_obj(cache, page, addr);
> > > > +       alloc_info = get_alloc_info(cache, object);
> > > > +
> > > > +       if (!alloc_info->rcu_stack[0])
> > > > +               /* record first call_rcu() call stack */
> > > > +               alloc_info->rcu_stack[0] = kasan_save_stack(GFP_NOWAIT);
> > > > +       else
> > > > +               /* record last call_rcu() call stack */
> > > > +               alloc_info->rcu_stack[1] = kasan_save_stack(GFP_NOWAIT);
> > > > +}
> > > > +
> > > > +struct kasan_track *kasan_get_aux_stack(struct kasan_alloc_meta *alloc_info,
> > > > +                                               u8 idx)
> > > > +{
> > > > +       return container_of(&alloc_info->rcu_stack[idx],
> > > > +                                               struct kasan_track, stack);
> > > > +}
> > > > diff --git a/mm/kasan/kasan.h b/mm/kasan/kasan.h
> > > > index e8f37199d885..1cc1fb7b0de3 100644
> > > > --- a/mm/kasan/kasan.h
> > > > +++ b/mm/kasan/kasan.h
> > > > @@ -96,15 +96,28 @@ struct kasan_track {
> > > >         depot_stack_handle_t stack;
> > > >  };
> > > >
> > > > +#ifdef CONFIG_KASAN_GENERIC
> > > > +#define SIZEOF_PTR sizeof(void *)
> > >
> > > Please move this to generic.c closer to kasan_set_free_info.
> > > Unnecessary in the header.
> > >
> > > > +#define KASAN_NR_RCU_CALL_STACKS 2
> > >
> > > Since KASAN_NR_RCU_CALL_STACKS is only used once below, you could as
> > > well use 2 instead of it.
> > > Reduces level of indirection and cognitive load.
> > >
> > > > +#else /* CONFIG_KASAN_GENERIC */
> > > >  #ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
> > > >  #define KASAN_NR_FREE_STACKS 5
> > > >  #else
> > > >  #define KASAN_NR_FREE_STACKS 1
> > > >  #endif
> > > > +#endif /* CONFIG_KASAN_GENERIC */
> > > >
> > > >  struct kasan_alloc_meta {
> > > >         struct kasan_track alloc_track;
> > > > +#ifdef CONFIG_KASAN_GENERIC
> > > > +       /*
> > > > +        * call_rcu() call stack is stored into struct kasan_alloc_meta.
> > > > +        * The free stack is stored into freed object.
> > > > +        */
> > > > +       depot_stack_handle_t rcu_stack[KASAN_NR_RCU_CALL_STACKS];
> > > > +#else
> > > >         struct kasan_track free_track[KASAN_NR_FREE_STACKS];
> > > > +#endif
> > > >  #ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
> > > >         u8 free_pointer_tag[KASAN_NR_FREE_STACKS];
> > > >         u8 free_track_idx;
> > > > @@ -159,16 +172,22 @@ void kasan_report_invalid_free(void *object, unsigned long ip);
> > > >
> > > >  struct page *kasan_addr_to_page(const void *addr);
> > > >
> > > > +depot_stack_handle_t kasan_save_stack(gfp_t flags);
> > > > +
> > > >  #if defined(CONFIG_KASAN_GENERIC) && \
> > > >         (defined(CONFIG_SLAB) || defined(CONFIG_SLUB))
> > > >  void quarantine_put(struct kasan_free_meta *info, struct kmem_cache *cache);
> > > >  void quarantine_reduce(void);
> > > >  void quarantine_remove_cache(struct kmem_cache *cache);
> > > > +struct kasan_track *kasan_get_aux_stack(struct kasan_alloc_meta *alloc_info,
> > > > +                       u8 idx);
> > > >  #else
> > > >  static inline void quarantine_put(struct kasan_free_meta *info,
> > > >                                 struct kmem_cache *cache) { }
> > > >  static inline void quarantine_reduce(void) { }
> > > >  static inline void quarantine_remove_cache(struct kmem_cache *cache) { }
> > > > +static inline struct kasan_track *kasan_get_aux_stack(
> > > > +                       struct kasan_alloc_meta *alloc_info, u8 idx) { return NULL; }
> > > >  #endif
> > > >
> > > >  #ifdef CONFIG_KASAN_SW_TAGS
> > > > diff --git a/mm/kasan/report.c b/mm/kasan/report.c
> > > > index 80f23c9da6b0..f16a1a210815 100644
> > > > --- a/mm/kasan/report.c
> > > > +++ b/mm/kasan/report.c
> > > > @@ -105,9 +105,13 @@ static void end_report(unsigned long *flags)
> > > >         kasan_enable_current();
> > > >  }
> > > >
> > > > -static void print_track(struct kasan_track *track, const char *prefix)
> > > > +static void print_track(struct kasan_track *track, const char *prefix,
> > > > +                                               bool is_callrcu)
> > > >  {
> > > > -       pr_err("%s by task %u:\n", prefix, track->pid);
> > > > +       if (is_callrcu)
> > > > +               pr_err("%s:\n", prefix);
> > > > +       else
> > > > +               pr_err("%s by task %u:\n", prefix, track->pid);
> > > >         if (track->stack) {
> > > >                 unsigned long *entries;
> > > >                 unsigned int nr_entries;
> > > > @@ -187,11 +191,20 @@ static void describe_object(struct kmem_cache *cache, void *object,
> > > >         if (cache->flags & SLAB_KASAN) {
> > > >                 struct kasan_track *free_track;
> > > >
> > > > -               print_track(&alloc_info->alloc_track, "Allocated");
> > > > +               print_track(&alloc_info->alloc_track, "Allocated", false);
> > > >                 pr_err("\n");
> > > >                 free_track = kasan_get_free_track(cache, object, tag);
> > > > -               print_track(free_track, "Freed");
> > > > +               print_track(free_track, "Freed", false);
> > > >                 pr_err("\n");
> > > > +
> > > > +               if (IS_ENABLED(CONFIG_KASAN_GENERIC)) {
> > > > +                       free_track = kasan_get_aux_stack(alloc_info, 0);
> > > > +                       print_track(free_track, "First call_rcu() call stack", true);
> > > > +                       pr_err("\n");
> > > > +                       free_track = kasan_get_aux_stack(alloc_info, 1);
> > > > +                       print_track(free_track, "Last call_rcu() call stack", true);
> > > > +                       pr_err("\n");
> > > > +               }
> > > >         }
> > > >
> > > >         describe_object_addr(cache, object, addr);
> >
> > Some higher level comments.
> >
> > 1. I think we need to put the free track into kasan_free_meta as it
> > was before. It looks like exactly the place for it. We have logic to
> > properly place it and to do the casts.
> >
> >
> > If the free track put kasan_free_meta, then it increase slab meta size?
> > Our original goal does not enlarge it.
> 
> Are you sure it will increase object size?
> I think we overlap kasan_free_meta with the object as well. The only
> case we don't overlap kasan_free_meta with the object are
> SLAB_TYPESAFE_BY_RCU || cache->ctor. But these are rare and it should
> only affect small objects with small redzones.
> And I think now we simply have a bug for these objects, we check
> KASAN_KMALLOC_FREE and then assume object contains free stack, but for
> objects with ctor, they still contain live object data, we don't store
> free stack in them.
> Such objects can be both free and still contain user data.
> 

Overlay kasan_free_meta. I see. but overlay it only when the object was
freed. kasan_free_meta will be used until free object.
1). When put object into quarantine, it need kasan_free_meta.
2). When the object exit from quarantine, it need kasan_free_meta

If we choose to overlay kasan_free_meta, then the free stack will be
stored very late. It may has no free stack in report.

> 
> > 2. We need to zero aux stacks when we reallocate the object. Otherwise
> > we print confusing garbage.
> >
> > My local has an UT about use-after-free and rcu, but it is hard to test the printing confusing garbage, because we may need to get the same object(old pointer and new pointer). In generic KASAN is not easy to get it.
> >
> > 3. __kasan_slab_free now contains a window of inconsistency when it
> > marked the object as KASAN_KMALLOC_FREE, but did not store the free
> > track yet. If another thread prints a report now, it will print random
> > garbage.
> >
> >
> > It is possible, but the window is so tiny. It sets free track immediately after write the KASAN_KMALLOC_FREE.
> 
> It is small. But (1) why do we want to allow it at all, (2) there is
> actually a more serious problem. If we mark an object as
> KASAN_KMALLOC_FREE, but don't do kasan_set_free_info (because object
> has ctor), now we will treat live object data as free track. We need
> to fix it anyway.
> 

I see.

> 
> 
> 
> > 4. We need some tests. At least (2) should be visible on tests.
> >
> >
> > Ok.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
