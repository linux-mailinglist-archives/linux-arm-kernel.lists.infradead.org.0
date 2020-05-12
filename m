Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF571CF70E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 16:26:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AzT2YO/r0CDvTVrlH/fgJdX2toTSFHTuB6F/6zjTCVc=; b=L2IvkaOrUeobSD
	EhnGdrp/SXXZzeeNUVA19icdHzEoVoP8Ch2w/9uHwawCI6N9xxMF8I80PwgEdX6PxCvMCENN3Y6iz
	LmMbSR3gTbK6qnTX7kmF3e9rRTK5SH/5eWHnnvF1qb0yjxWAgot1seSXkOZLLqcJ5oLYJKJK66xdS
	/rxUsIREykBSEowRYwpY9DrUpdiPK5yoxArbzE2dB8tupq0rVvjiPe/ebX8h5AZAPNov9S35bZsAc
	ccYySF6yLPwvxiUwmP4JtNCw0PjPvZbyMqzj59nHn7EGV554Xdw1Zd57Z/mbd/9/qDZJsN66FFnyN
	RnAb+CurLzSrtWktCNLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYVqw-00016d-Ad; Tue, 12 May 2020 14:25:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYVqo-00015c-69; Tue, 12 May 2020 14:25:44 +0000
Received: from paulmck-ThinkPad-P72.home (50-39-105-78.bvtn.or.frontiernet.net
 [50.39.105.78])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7312920643;
 Tue, 12 May 2020 14:25:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589293541;
 bh=GAuLnJw38wjex33WM/xBMovuYfRu+Mie1CmIhSZV7wk=;
 h=Date:From:To:Cc:Subject:Reply-To:References:In-Reply-To:From;
 b=bflJblCqBsj5+T4M9MSjx2CFs4OC8CwwTK7AOhocSmXbnOXIvC0NjPIdAn09/Qe2Q
 kKTBuPiq72IJs5emrXSXCh7CivRqUEJVA/qggEgfeGADrJr1B0CWXLHX08ftqKKRUI
 eRx3EP+8CriTmbahWApd3M3giCyi24/6bgpbIn3o=
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
 id 5C7E43522FA4; Tue, 12 May 2020 07:25:41 -0700 (PDT)
Date: Tue, 12 May 2020 07:25:41 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: Dmitry Vyukov <dvyukov@google.com>
Subject: Re: [PATCH v2 1/3] rcu/kasan: record and print call_rcu() call stack
Message-ID: <20200512142541.GD2869@paulmck-ThinkPad-P72>
References: <20200511023111.15310-1-walter-zh.wu@mediatek.com>
 <20200511180527.GZ2869@paulmck-ThinkPad-P72>
 <1589250993.19238.22.camel@mtksdccf07>
 <CACT4Y+b6ZfmZG3YYC_TkoeGaAQjSEKvF4dZ9vHzTx5iokD4zTQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACT4Y+b6ZfmZG3YYC_TkoeGaAQjSEKvF4dZ9vHzTx5iokD4zTQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_072542_274262_3C76B614 
X-CRM114-Status: GOOD (  44.42  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Walter Wu <walter-zh.wu@mediatek.com>,
 wsd_upstream <wsd_upstream@mediatek.com>, Linux-MM <linux-mm@kvack.org>,
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

On Tue, May 12, 2020 at 03:56:17PM +0200, Dmitry Vyukov wrote:
> On Tue, May 12, 2020 at 4:36 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> >
> > On Mon, 2020-05-11 at 11:05 -0700, Paul E. McKenney wrote:
> > > On Mon, May 11, 2020 at 10:31:11AM +0800, Walter Wu wrote:
> > > > This feature will record first and last call_rcu() call stack and
> > > > print two call_rcu() call stack in KASAN report.
> > >
> > > Suppose that a given rcu_head structure is passed to call_rcu(), then
> > > the grace period elapses, the callback is invoked, and the enclosing
> > > data structure is freed.  But then that same region of memory is
> > > immediately reallocated as the same type of structure and again
> > > passed to call_rcu(), and that this cycle repeats several times.
> > >
> > > Would the first call stack forever be associated with the first
> > > call_rcu() in this series?  If so, wouldn't the last two usually
> > > be the most useful?  Or am I unclear on the use case?
> 
> 2 points here:
> 
> 1. With KASAN the object won't be immediately reallocated. KASAN has
> 'quarantine' to delay reuse of heap objects. It is assumed that the
> object is still in quarantine when we detect a use-after-free. In such
> a case we will have proper call_rcu stacks as well.
> It is possible that the object is not in quarantine already and was
> reused several times (quarantine is not infinite), but then KASAN will
> report non-sense stacks for allocation/free as well. So wrong call_rcu
> stacks are less of a problem in such cases.
> 
> 2. We would like to memorize 2 last call_rcu stacks regardless, but we
> just don't have a good place for the index (bit which of the 2 is the
> one to overwrite). Probably could shove it into some existing field,
> but then will require atomic operations, etc.
> 
> Nobody knows how well/bad it will work. I think we need to get the
> first version in, deploy on syzbot, accumulate some base of example
> reports and iterate from there.

If I understood the stack-index point below, why not just move the
previous stackm index to clobber the previous-to-previous stack index,
then put the current stack index into the spot thus opened up?

> > The first call stack doesn't forever associate with first call_rcu(),
> > if someone object freed and reallocated, then the first call stack will
> > replace with new object.
> >
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
> > > >             trace_rcu_callback(rcu_state.name, head,
> > > >                                rcu_segcblist_n_cbs(&rdp->cblist));
> > > >
> > > > +   kasan_record_aux_stack(head);
> > >
> > > Just for the record, at this point we have not yet queued the callback.
> > > We have also not yet disabled interrupts.  Which might be OK, but I
> > > figured I should call out the possibility of moving this down a few
> > > lines to follow the local_irq_save().
> > >
> >
> > We will intend to do it.
> 
> I will sleep better if we move it up :)
> It qualifies a "debug check", which are generally done on entrance to
> the function. Or are these all debug checks up to this point?
> But if the callback did not leak anywhere up to this point and we will
> maintain it that way, then formally it is fine.

There are debug checks, then initialization of presumed private
structures, disabling of interrupts, more check that are now safe given
that we are pinned to a specific CPU, and so on.

I am OK with it being at the beginning of the function.

> > > If someone incorrectly invokes concurrently invokes call_rcu() on this
> > > same region of memory, possibly from an interrupt handler, we are OK
> > > corrupting the stack traces, right?
> > >
> >
> > Yes, and the wrong invoking call_rcu should be recorded.
> >
> > > But what happens if a given structure has more than one rcu_head
> > > structure?  In that case, RCU would be just fine with it being
> > > concurrently passed to different call_rcu() invocations as long as the
> > > two invocations didn't both use the same rcu_head structure.  (In that
> > > case, they had best not be both freeing the object, and if even one of
> > > them is freeing the object, coordination is necessary.)
> > >
> > > If this is a problem, one approach would be to move the
> > > kasan_record_aux_stack(head) call to kfree_rcu().  After all, it is
> > > definitely illegal to pass the same memory to a pair of kfree_rcu()
> > > invocations!  ;-)
> > >
> >
> > The function of kasan_record_aux_stack(head) is simple, it is only to
> > record call stack by the 'head' object.
> 
> I would say "corrupting" stacks on some races is fine-ish. In the end
> we are just storing an u32 stack id.
> On syzbot we generally have multiple samples of the same crash, so
> even if one is "corrupted" there may be others that are not corrupted.
> Just protecting from this looks too complex and expensive. And in the
> end there is not much we can do anyway.
> 
> Recording all call_rcu stacks (not just kfree_rcu) is intentional.  I
> think it may be useful to even extend to recording workqueue and timer
> stacks as well.

Given the u32 nature of the stack ID, I agree that there is no point
in excluding call_rcu().  At least until such time as we start getting
false positives due to multiple rcu_head structures in the same structure.

                                                      Thanx, Paul

> > > > +
> > > >     /* Go handle any RCU core processing required. */
> > > >     if (IS_ENABLED(CONFIG_RCU_NOCB_CPU) &&
> > > >         unlikely(rcu_segcblist_is_offloaded(&rdp->cblist))) {
> > > > diff --git a/lib/Kconfig.kasan b/lib/Kconfig.kasan
> > > > index 81f5464ea9e1..56a89291f1cc 100644
> > > > --- a/lib/Kconfig.kasan
> > > > +++ b/lib/Kconfig.kasan
> > > > @@ -58,6 +58,8 @@ config KASAN_GENERIC
> > > >       For better error detection enable CONFIG_STACKTRACE.
> > > >       Currently CONFIG_KASAN_GENERIC doesn't work with CONFIG_DEBUG_SLAB
> > > >       (the resulting kernel does not boot).
> > > > +     Currently CONFIG_KASAN_GENERIC will print first and last call_rcu()
> > > > +     call stack. It doesn't increase the cost of memory consumption.
> > > >
> > > >  config KASAN_SW_TAGS
> > > >     bool "Software tag-based mode"
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
> > > >     unsigned long entries[KASAN_STACK_DEPTH];
> > > >     unsigned int nr_entries;
> > > > @@ -54,7 +54,7 @@ static inline depot_stack_handle_t save_stack(gfp_t flags)
> > > >  static inline void set_track(struct kasan_track *track, gfp_t flags)
> > > >  {
> > > >     track->pid = current->pid;
> > > > -   track->stack = save_stack(flags);
> > > > +   track->stack = kasan_save_stack(flags);
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
> > > > +   struct page *page = kasan_addr_to_page(addr);
> > > > +   struct kmem_cache *cache;
> > > > +   struct kasan_alloc_meta *alloc_info;
> > > > +   void *object;
> > > > +
> > > > +   if (!(page && PageSlab(page)))
> > > > +           return;
> > > > +
> > > > +   cache = page->slab_cache;
> > > > +   object = nearest_obj(cache, page, addr);
> > > > +   alloc_info = get_alloc_info(cache, object);
> > > > +
> > > > +   if (!alloc_info->rcu_stack[0])
> > > > +           /* record first call_rcu() call stack */
> > > > +           alloc_info->rcu_stack[0] = kasan_save_stack(GFP_NOWAIT);
> > > > +   else
> > > > +           /* record last call_rcu() call stack */
> > > > +           alloc_info->rcu_stack[1] = kasan_save_stack(GFP_NOWAIT);
> > > > +}
> > > > +
> > > > +struct kasan_track *kasan_get_aux_stack(struct kasan_alloc_meta *alloc_info,
> > > > +                                           u8 idx)
> > > > +{
> > > > +   return container_of(&alloc_info->rcu_stack[idx],
> > > > +                                           struct kasan_track, stack);
> > > > +}
> > > > diff --git a/mm/kasan/kasan.h b/mm/kasan/kasan.h
> > > > index e8f37199d885..1cc1fb7b0de3 100644
> > > > --- a/mm/kasan/kasan.h
> > > > +++ b/mm/kasan/kasan.h
> > > > @@ -96,15 +96,28 @@ struct kasan_track {
> > > >     depot_stack_handle_t stack;
> > > >  };
> > > >
> > > > +#ifdef CONFIG_KASAN_GENERIC
> > > > +#define SIZEOF_PTR sizeof(void *)
> > > > +#define KASAN_NR_RCU_CALL_STACKS 2
> > > > +#else /* CONFIG_KASAN_GENERIC */
> > > >  #ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
> > > >  #define KASAN_NR_FREE_STACKS 5
> > > >  #else
> > > >  #define KASAN_NR_FREE_STACKS 1
> > > >  #endif
> > > > +#endif /* CONFIG_KASAN_GENERIC */
> > > >
> > > >  struct kasan_alloc_meta {
> > > >     struct kasan_track alloc_track;
> > > > +#ifdef CONFIG_KASAN_GENERIC
> > > > +   /*
> > > > +    * call_rcu() call stack is stored into struct kasan_alloc_meta.
> > > > +    * The free stack is stored into freed object.
> > > > +    */
> > > > +   depot_stack_handle_t rcu_stack[KASAN_NR_RCU_CALL_STACKS];
> > > > +#else
> > > >     struct kasan_track free_track[KASAN_NR_FREE_STACKS];
> > > > +#endif
> > > >  #ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
> > > >     u8 free_pointer_tag[KASAN_NR_FREE_STACKS];
> > > >     u8 free_track_idx;
> > > > @@ -159,16 +172,22 @@ void kasan_report_invalid_free(void *object, unsigned long ip);
> > > >
> > > >  struct page *kasan_addr_to_page(const void *addr);
> > > >
> > > > +depot_stack_handle_t kasan_save_stack(gfp_t flags);
> > > > +
> > > >  #if defined(CONFIG_KASAN_GENERIC) && \
> > > >     (defined(CONFIG_SLAB) || defined(CONFIG_SLUB))
> > > >  void quarantine_put(struct kasan_free_meta *info, struct kmem_cache *cache);
> > > >  void quarantine_reduce(void);
> > > >  void quarantine_remove_cache(struct kmem_cache *cache);
> > > > +struct kasan_track *kasan_get_aux_stack(struct kasan_alloc_meta *alloc_info,
> > > > +                   u8 idx);
> > > >  #else
> > > >  static inline void quarantine_put(struct kasan_free_meta *info,
> > > >                             struct kmem_cache *cache) { }
> > > >  static inline void quarantine_reduce(void) { }
> > > >  static inline void quarantine_remove_cache(struct kmem_cache *cache) { }
> > > > +static inline struct kasan_track *kasan_get_aux_stack(
> > > > +                   struct kasan_alloc_meta *alloc_info, u8 idx) { return NULL; }
> > > >  #endif
> > > >
> > > >  #ifdef CONFIG_KASAN_SW_TAGS
> > > > diff --git a/mm/kasan/report.c b/mm/kasan/report.c
> > > > index 80f23c9da6b0..f16a1a210815 100644
> > > > --- a/mm/kasan/report.c
> > > > +++ b/mm/kasan/report.c
> > > > @@ -105,9 +105,13 @@ static void end_report(unsigned long *flags)
> > > >     kasan_enable_current();
> > > >  }
> > > >
> > > > -static void print_track(struct kasan_track *track, const char *prefix)
> > > > +static void print_track(struct kasan_track *track, const char *prefix,
> > > > +                                           bool is_callrcu)
> > > >  {
> > > > -   pr_err("%s by task %u:\n", prefix, track->pid);
> > > > +   if (is_callrcu)
> > > > +           pr_err("%s:\n", prefix);
> > > > +   else
> > > > +           pr_err("%s by task %u:\n", prefix, track->pid);
> > > >     if (track->stack) {
> > > >             unsigned long *entries;
> > > >             unsigned int nr_entries;
> > > > @@ -187,11 +191,20 @@ static void describe_object(struct kmem_cache *cache, void *object,
> > > >     if (cache->flags & SLAB_KASAN) {
> > > >             struct kasan_track *free_track;
> > > >
> > > > -           print_track(&alloc_info->alloc_track, "Allocated");
> > > > +           print_track(&alloc_info->alloc_track, "Allocated", false);
> > > >             pr_err("\n");
> > > >             free_track = kasan_get_free_track(cache, object, tag);
> > > > -           print_track(free_track, "Freed");
> > > > +           print_track(free_track, "Freed", false);
> > > >             pr_err("\n");
> > > > +
> > > > +           if (IS_ENABLED(CONFIG_KASAN_GENERIC)) {
> > > > +                   free_track = kasan_get_aux_stack(alloc_info, 0);
> > > > +                   print_track(free_track, "First call_rcu() call stack", true);
> > > > +                   pr_err("\n");
> > > > +                   free_track = kasan_get_aux_stack(alloc_info, 1);
> > > > +                   print_track(free_track, "Last call_rcu() call stack", true);
> > > > +                   pr_err("\n");
> > > > +           }
> > > >     }
> > > >
> > > >     describe_object_addr(cache, object, addr);
> > > > --
> > > I> 2.18.0
> >
> > --
> > You received this message because you are subscribed to the Google Groups "kasan-dev" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to kasan-dev+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/kasan-dev/1589250993.19238.22.camel%40mtksdccf07.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
