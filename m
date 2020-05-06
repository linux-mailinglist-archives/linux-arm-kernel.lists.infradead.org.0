Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C62A1C6F96
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 13:45:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KNTrTfQ9aC8sdhigUHG0+5yxfX8eWu+8dxzlSOS92k4=; b=dPmKkpSjs038ql
	1bwR7AkL3wPAAbdmyTVcqL5/hOoJjrQyuKAf+duNuv9BRu461R6+338jCBSlInzk8hLLbwzO3k/Ol
	hCoHqRGlIc46b/lxC6aBuQ5ifvhffNjp0sMl9afaMYlDkJODTsa3LSMj8N7JdbqJMF6IMenAk5hlt
	WEotg6ZS4RKI/ziieF4UwmZj+LVdPvTV7Qpf1eFoCb84Qo7pIUv5Unicmk5l2UY49P5gimURio+qY
	lHFVYyLp0OtPdSGOQgA2BIcAlqBwpubRuB8ZIDGIteMMOme9+HzZ8XtOYiq9KWI07pWx3aGDwX7my
	vGv8GVRX9PRodwttGbUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWIUb-0001RT-1l; Wed, 06 May 2020 11:45:37 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWIUS-0001QD-Er; Wed, 06 May 2020 11:45:30 +0000
X-UUID: a217d9b825394e8c96b2af66ac624be9-20200506
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=HC1C5JU9o2lOZOLuLLz92jALWgAK6MhyRnRurn0tSl0=; 
 b=Row5HprT9YghcGCdts38avYJgPIbn8sXz68uRUMxGJPzkqwY2rfFuuIyiYRJ3+Nec233mgnyfYLbn2M2veZKJgE2sHi81C1ZzNWEHat6U2Fzlo8SBv54EiBMzyXPqWaSRHGcX+Yl+KLRIn49eXjy2WwqbOY9UongwkD+qrS5mEM=;
X-UUID: a217d9b825394e8c96b2af66ac624be9-20200506
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 994686487; Wed, 06 May 2020 03:45:22 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 6 May 2020 04:45:19 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 6 May 2020 19:45:17 +0800
Received: from [172.21.84.99] (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 6 May 2020 19:45:17 +0800
Message-ID: <1588765520.23664.22.camel@mtksdccf07>
Subject: Re: [PATCH 1/3] rcu/kasan: record and print call_rcu() call stack
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Dmitry Vyukov <dvyukov@google.com>
Date: Wed, 6 May 2020 19:45:20 +0800
In-Reply-To: <CACT4Y+beyYmoTn8GR_Y_Ca5XypxpRac-9ttu=zTtS-J-BYTfMA@mail.gmail.com>
References: <20200506052046.14451-1-walter-zh.wu@mediatek.com>
 <CACT4Y+beyYmoTn8GR_Y_Ca5XypxpRac-9ttu=zTtS-J-BYTfMA@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 394EFE9EF3BC220BD62FBD36B53299AE0F17607FF8BE54C4C50C762437373FCB2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_044528_518459_CA25B597 
X-CRM114-Status: GOOD (  33.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: wsd_upstream <wsd_upstream@mediatek.com>, "Paul E .
 McKenney" <paulmck@kernel.org>, Linux-MM <linux-mm@kvack.org>,
 Lai Jiangshan <jiangshanlai@gmail.com>, Josh Triplett <josh@joshtriplett.org>,
 kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>,
 Joel Fernandes <joel@joelfernandes.org>, linux-mediatek@lists.infradead.org,
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

On Wed, 2020-05-06 at 11:46 +0200, Dmitry Vyukov wrote:
> On Wed, May 6, 2020 at 7:21 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> >
> > When call_rcu() is called, we store the call_rcu() call stack into
> > slub alloc meta-data, so that KASAN report prints call_rcu() information.
> >
> > We add new KASAN_RCU_STACK_RECORD configuration option. It will record
> > first and last call_rcu() call stack and KASAN report will print two
> > call_rcu() call stack.
> >
> > This option doesn't increase the cost of memory consumption. Because
> > we don't enlarge struct kasan_alloc_meta size.
> > - add two call_rcu() call stack into kasan_alloc_meta, size is 8 bytes.
> > - remove free track from kasan_alloc_meta, size is 8 bytes.
> >
> > [1]https://bugzilla.kernel.org/show_bug.cgi?id=198437
> >
> > Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
> > Suggested-by: Dmitry Vyukov <dvyukov@google.com>
> > Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
> > Cc: Dmitry Vyukov <dvyukov@google.com>
> > Cc: Alexander Potapenko <glider@google.com>
> > Cc: Andrew Morton <akpm@linux-foundation.org>
> > Cc: Paul E. McKenney <paulmck@kernel.org>
> > Cc: Josh Triplett <josh@joshtriplett.org>
> > Cc: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
> > Cc: Lai Jiangshan <jiangshanlai@gmail.com>
> > Cc: Joel Fernandes <joel@joelfernandes.org>
> > ---
> >  include/linux/kasan.h |  7 +++++++
> >  kernel/rcu/tree.c     |  4 ++++
> >  lib/Kconfig.kasan     | 11 +++++++++++
> >  mm/kasan/common.c     | 23 +++++++++++++++++++++++
> >  mm/kasan/kasan.h      | 12 ++++++++++++
> >  mm/kasan/report.c     | 33 +++++++++++++++++++++++++++------
> >  6 files changed, 84 insertions(+), 6 deletions(-)
> >
> > diff --git a/include/linux/kasan.h b/include/linux/kasan.h
> > index 31314ca7c635..5eeece6893cd 100644
> > --- a/include/linux/kasan.h
> > +++ b/include/linux/kasan.h
> > @@ -96,6 +96,12 @@ size_t kasan_metadata_size(struct kmem_cache *cache);
> >  bool kasan_save_enable_multi_shot(void);
> >  void kasan_restore_multi_shot(bool enabled);
> >
> > +#ifdef CONFIG_KASAN_RCU_STACK_RECORD
> > +void kasan_record_callrcu(void *ptr);
> 
> The issue also mentions workqueue and timer stacks.
> Have you considered supporting them as well? What was your motivation
> for doing only rcu?
> 
I will try to implement them when I have free time, maybe we can do it
step by step, finish the printing call_rcu() first.
I remember that I saw the following link, recording call_rcu seems like
be needed.

https://groups.google.com/forum/#!searchin/kasan-dev/better$20stack
$20traces$20for$20rcu%7Csort:date/kasan-dev/KQsjT_88hDE/7rNUZprRBgAJ


> Looking at the first report for "workqueue use-after-free":
> https://syzkaller.appspot.com/bug?extid=9cba1e478f91aad39876
> This is exactly the same situation as for call_rcu, just a workqueue
> is used to invoke a callback that frees the object.
> 
> If you don't want to do all at the same time, I would at least
> name/branch everything inside of KASAN more generally (I think in the
> issue I called it "aux" (auxiliary), or maybe something like
> "additional"). But then call this kasan_record_aux_stack() only from
> rcu for now. But then later we can separately decide and extend to
> other callers.
> It just feels wrong to have KASAN over-specialized for rcu only in this way.
> And I think if the UAF is really caused by call_rcu callback, then it
> sill will be recorded as last stack most of the time because rcu
> callbacks are invoked relatively fast and there should not be much
> else happening with the object since it's near end of life already.
> 
Yes, I agree with you. I will send v2 patchset as you saying.

> 
> 
> 
> > +#else
> > +static inline void kasan_record_callrcu(void *ptr) {}
> > +#endif
> > +
> >  #else /* CONFIG_KASAN */
> >
> >  static inline void kasan_unpoison_shadow(const void *address, size_t size) {}
> > @@ -165,6 +171,7 @@ static inline void kasan_remove_zero_shadow(void *start,
> >
> >  static inline void kasan_unpoison_slab(const void *ptr) { }
> >  static inline size_t kasan_metadata_size(struct kmem_cache *cache) { return 0; }
> > +static inline void kasan_record_callrcu(void *ptr) {}
> >
> >  #endif /* CONFIG_KASAN */
> >
> > diff --git a/kernel/rcu/tree.c b/kernel/rcu/tree.c
> > index 06548e2ebb72..145c79becf7b 100644
> > --- a/kernel/rcu/tree.c
> > +++ b/kernel/rcu/tree.c
> > @@ -57,6 +57,7 @@
> >  #include <linux/slab.h>
> >  #include <linux/sched/isolation.h>
> >  #include <linux/sched/clock.h>
> > +#include <linux/kasan.h>
> >  #include "../time/tick-internal.h"
> >
> >  #include "tree.h"
> > @@ -2694,6 +2695,9 @@ __call_rcu(struct rcu_head *head, rcu_callback_t func)
> >                 trace_rcu_callback(rcu_state.name, head,
> >                                    rcu_segcblist_n_cbs(&rdp->cblist));
> >
> > +       if (IS_ENABLED(CONFIG_KASAN_RCU_STACK_RECORD))
> 
> The if is not necessary, this function is no-op when not enabled.
> 
> > +               kasan_record_callrcu(head);
> > +
> >         /* Go handle any RCU core processing required. */
> >         if (IS_ENABLED(CONFIG_RCU_NOCB_CPU) &&
> >             unlikely(rcu_segcblist_is_offloaded(&rdp->cblist))) {
> > diff --git a/lib/Kconfig.kasan b/lib/Kconfig.kasan
> > index 81f5464ea9e1..022934049cc2 100644
> > --- a/lib/Kconfig.kasan
> > +++ b/lib/Kconfig.kasan
> > @@ -158,6 +158,17 @@ config KASAN_VMALLOC
> >           for KASAN to detect more sorts of errors (and to support vmapped
> >           stacks), but at the cost of higher memory usage.
> >
> > +config KASAN_RCU_STACK_RECORD
> > +       bool "Record and print call_rcu() call stack"
> > +       depends on KASAN_GENERIC
> > +       help
> > +         By default, the KASAN report doesn't print call_rcu() call stack.
> > +         It is very difficult to analyze memory issues(e.g., use-after-free).
> > +
> > +         Enabling this option will print first and last call_rcu() call stack.
> > +         It doesn't enlarge slub alloc meta-data size, so it doesn't increase
> > +         the cost of memory consumption.
> > +
> >  config TEST_KASAN
> >         tristate "Module for testing KASAN for bug detection"
> >         depends on m && KASAN
> > diff --git a/mm/kasan/common.c b/mm/kasan/common.c
> > index 2906358e42f0..32d422bdf127 100644
> > --- a/mm/kasan/common.c
> > +++ b/mm/kasan/common.c
> > @@ -299,6 +299,29 @@ struct kasan_free_meta *get_free_info(struct kmem_cache *cache,
> >         return (void *)object + cache->kasan_info.free_meta_offset;
> >  }
> >
> > +#ifdef CONFIG_KASAN_RCU_STACK_RECORD
> > +void kasan_record_callrcu(void *addr)
> > +{
> > +       struct page *page = kasan_addr_to_page(addr);
> > +       struct kmem_cache *cache;
> > +       struct kasan_alloc_meta *alloc_info;
> > +       void *object;
> > +
> > +       if (!(page && PageSlab(page)))
> > +               return;
> > +
> > +       cache = page->slab_cache;
> > +       object = nearest_obj(cache, page, addr);
> > +       alloc_info = get_alloc_info(cache, object);
> > +
> > +       if (!alloc_info->rcu_free_stack[0])
> > +               /* record first call_rcu() call stack */
> > +               alloc_info->rcu_free_stack[0] = save_stack(GFP_NOWAIT);
> > +       else
> > +               /* record last call_rcu() call stack */
> > +               alloc_info->rcu_free_stack[1] = save_stack(GFP_NOWAIT);
> > +}
> > +#endif
> >
> >  static void kasan_set_free_info(struct kmem_cache *cache,
> >                 void *object, u8 tag)
> > diff --git a/mm/kasan/kasan.h b/mm/kasan/kasan.h
> > index e8f37199d885..adc105b9cd07 100644
> > --- a/mm/kasan/kasan.h
> > +++ b/mm/kasan/kasan.h
> > @@ -96,15 +96,27 @@ struct kasan_track {
> >         depot_stack_handle_t stack;
> >  };
> >
> > +#ifdef CONFIG_KASAN_RCU_STACK_RECORD
> > +#define BYTES_PER_WORD 4
> > +#define KASAN_NR_RCU_FREE_STACKS 2
> > +#else /* CONFIG_KASAN_RCU_STACK_RECORD */
> >  #ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
> >  #define KASAN_NR_FREE_STACKS 5
> >  #else
> >  #define KASAN_NR_FREE_STACKS 1
> >  #endif
> > +#endif /* CONFIG_KASAN_RCU_STACK_RECORD */
> >
> >  struct kasan_alloc_meta {
> >         struct kasan_track alloc_track;
> > +#ifdef CONFIG_KASAN_RCU_STACK_RECORD
> > +       /* call_rcu() call stack is stored into kasan_alloc_meta.
> > +        * free stack is stored into freed object.
> > +        */
> > +       depot_stack_handle_t rcu_free_stack[KASAN_NR_RCU_FREE_STACKS];
> > +#else
> >         struct kasan_track free_track[KASAN_NR_FREE_STACKS];
> > +#endif
> >  #ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
> >         u8 free_pointer_tag[KASAN_NR_FREE_STACKS];
> >         u8 free_track_idx;
> > diff --git a/mm/kasan/report.c b/mm/kasan/report.c
> > index 80f23c9da6b0..7aaccc70b65b 100644
> > --- a/mm/kasan/report.c
> > +++ b/mm/kasan/report.c
> > @@ -105,9 +105,13 @@ static void end_report(unsigned long *flags)
> >         kasan_enable_current();
> >  }
> >
> > -static void print_track(struct kasan_track *track, const char *prefix)
> > +static void print_track(struct kasan_track *track, const char *prefix,
> > +                                               bool is_callrcu)
> >  {
> > -       pr_err("%s by task %u:\n", prefix, track->pid);
> > +       if (is_callrcu)
> > +               pr_err("%s:\n", prefix);
> > +       else
> > +               pr_err("%s by task %u:\n", prefix, track->pid);
> >         if (track->stack) {
> >                 unsigned long *entries;
> >                 unsigned int nr_entries;
> > @@ -159,8 +163,22 @@ static void describe_object_addr(struct kmem_cache *cache, void *object,
> >                 (void *)(object_addr + cache->object_size));
> >  }
> >
> > +#ifdef CONFIG_KASAN_RCU_STACK_RECORD
> > +static void kasan_print_rcu_free_stack(struct kasan_alloc_meta *alloc_info)
> > +{
> > +       struct kasan_track free_track;
> > +
> > +       free_track.stack  = alloc_info->rcu_free_stack[0];
> > +       print_track(&free_track, "First call_rcu() call stack", true);
> > +       pr_err("\n");
> > +       free_track.stack  = alloc_info->rcu_free_stack[1];
> > +       print_track(&free_track, "Last call_rcu() call stack", true);
> > +       pr_err("\n");
> > +}
> > +#endif
> > +
> >  static struct kasan_track *kasan_get_free_track(struct kmem_cache *cache,
> > -               void *object, u8 tag)
> > +               void *object, u8 tag, const void *addr)
> >  {
> >         struct kasan_alloc_meta *alloc_meta;
> >         int i = 0;
> > @@ -187,11 +205,14 @@ static void describe_object(struct kmem_cache *cache, void *object,
> >         if (cache->flags & SLAB_KASAN) {
> >                 struct kasan_track *free_track;
> >
> > -               print_track(&alloc_info->alloc_track, "Allocated");
> > +               print_track(&alloc_info->alloc_track, "Allocated", false);
> >                 pr_err("\n");
> > -               free_track = kasan_get_free_track(cache, object, tag);
> > -               print_track(free_track, "Freed");
> > +               free_track = kasan_get_free_track(cache, object, tag, addr);
> > +               print_track(free_track, "Freed", false);
> >                 pr_err("\n");
> > +#ifdef CONFIG_KASAN_RCU_STACK_RECORD
> > +               kasan_print_rcu_free_stack(alloc_info);
> > +#endif
> >         }
> >
> >         describe_object_addr(cache, object, addr);
> > --
> > 2.18.0
> >
> > --
> > You received this message because you are subscribed to the Google Groups "kasan-dev" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to kasan-dev+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/kasan-dev/20200506052046.14451-1-walter-zh.wu%40mediatek.com.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
