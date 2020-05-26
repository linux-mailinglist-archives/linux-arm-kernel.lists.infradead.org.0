Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E78F21E1930
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 03:45:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FboJRn18bTsQijY2RUWhX9jQKV7+Wed8LgltYRcM+3c=; b=aND/4OTgxqBtnf
	sJyqZdKZThTLWiPMTWbEffYR/wLHNS4LxKL5h/hVbiOhQMJBFLlgP8hDpB38FLVfE6emrqNKfD97K
	lrjqzbAxPe/PToL78lmtetqGZFLgkDnGBDYuae1Ef7ykdog9LpethogBt0N1FaZgtx6vPCVdVDA9f
	e7ApLx2PSOtvMNIJj1VxSlTGJf1R1+UsOCSSgRH3FJeBRGPWrpg4GL058BVnTj7YrqRhmYsmnESuN
	jne1GM/SIT/EgF/W+wTrRtLkhadssx83JA6X2EknyyZKjdWskZInZbSZDsqmek5KRnWDQWGMiIuJb
	nxzM8lgMX+esMVL30Mew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdOf5-0000R2-4R; Tue, 26 May 2020 01:45:47 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdOeV-00071C-2e; Tue, 26 May 2020 01:45:14 +0000
X-UUID: 36055f6d47c74c1aad0892c4e9cb955b-20200525
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=ueSBcAd3PluSlVN5bpFI2LrWqNDxT0TcwE09/a4ZIpc=; 
 b=AG81D6CAsb4uQJ3952Xiki9aYDaWeVe8uJQjQsOBmKEIs8Kzu6bAw7EtE2jb4+uQCqWt82sOPm2JxSYpkJo/ck+TXLUBk53A4X8Pku1RTz9A1EOxc+QkIvK4UjiqzSjJc7ICAWBE6+zvHQiAQmFmgr2c0diZhFlspj16kr2Dsz4=;
X-UUID: 36055f6d47c74c1aad0892c4e9cb955b-20200525
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1610499720; Mon, 25 May 2020 17:44:59 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 25 May 2020 18:34:57 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 26 May 2020 09:34:55 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Tue, 26 May 2020 09:34:56 +0800
Message-ID: <1590456895.7226.11.camel@mtksdccf07>
Subject: Re: [PATCH v6 1/4] rcu/kasan: record and print call_rcu() call stack
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Dmitry Vyukov <dvyukov@google.com>
Date: Tue, 26 May 2020 09:34:55 +0800
In-Reply-To: <CACT4Y+Zn9eMAPwCMEo710NnsUEoXP+H7xge8a1essu2F9DeFRw@mail.gmail.com>
References: <20200522020059.22332-1-walter-zh.wu@mediatek.com>
 <CACT4Y+Zn9eMAPwCMEo710NnsUEoXP+H7xge8a1essu2F9DeFRw@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_184511_428959_41827175 
X-CRM114-Status: GOOD (  27.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Andrey Konovalov <andreyknvl@google.com>,
 Lai Jiangshan <jiangshanlai@gmail.com>, Josh Triplett <josh@joshtriplett.org>,
 kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>,
 Joel Fernandes <joel@joelfernandes.org>, linux-mediatek@lists.infradead.org,
 Alexander Potapenko <glider@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, Andrew
 Morton <akpm@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2020-05-25 at 11:56 +0200, Dmitry Vyukov wrote:
> On Fri, May 22, 2020 at 4:01 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> >
> > This feature will record the last two call_rcu() call stacks and
> > prints up to 2 call_rcu() call stacks in KASAN report.
> >
> > When call_rcu() is called, we store the call_rcu() call stack into
> > slub alloc meta-data, so that the KASAN report can print rcu stack.
> >
> > [1]https://bugzilla.kernel.org/show_bug.cgi?id=198437
> > [2]https://groups.google.com/forum/#!searchin/kasan-dev/better$20stack$20traces$20for$20rcu%7Csort:date/kasan-dev/KQsjT_88hDE/7rNUZprRBgAJ
> 
> Hi Walter,
> 
> The series look good to me. Thanks for bearing with me. I am eager to
> see this in syzbot reports.
> 
> Reviewed-and-tested-by: Dmitry Vyukov <dvyukov@google.com>
> 

Hi Dmitry,

I appreciate for your response. This patches make KASAN report more
better and let me learn a lot. Thank you for good suggestion and
detailed explanation.

Walter

> > Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
> > Suggested-by: Dmitry Vyukov <dvyukov@google.com>
> > Acked-by: Paul E. McKenney <paulmck@kernel.org>
> > Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
> > Cc: Dmitry Vyukov <dvyukov@google.com>
> > Cc: Alexander Potapenko <glider@google.com>
> > Cc: Andrew Morton <akpm@linux-foundation.org>
> > Cc: Josh Triplett <josh@joshtriplett.org>
> > Cc: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
> > Cc: Lai Jiangshan <jiangshanlai@gmail.com>
> > Cc: Joel Fernandes <joel@joelfernandes.org>
> > Cc: Andrey Konovalov <andreyknvl@google.com>
> > ---
> >  include/linux/kasan.h |  2 ++
> >  kernel/rcu/tree.c     |  2 ++
> >  mm/kasan/common.c     |  4 ++--
> >  mm/kasan/generic.c    | 21 +++++++++++++++++++++
> >  mm/kasan/kasan.h      | 10 ++++++++++
> >  mm/kasan/report.c     | 28 +++++++++++++++++++++++-----
> >  6 files changed, 60 insertions(+), 7 deletions(-)
> >
> > diff --git a/include/linux/kasan.h b/include/linux/kasan.h
> > index 31314ca7c635..23b7ee00572d 100644
> > --- a/include/linux/kasan.h
> > +++ b/include/linux/kasan.h
> > @@ -174,11 +174,13 @@ static inline size_t kasan_metadata_size(struct kmem_cache *cache) { return 0; }
> >
> >  void kasan_cache_shrink(struct kmem_cache *cache);
> >  void kasan_cache_shutdown(struct kmem_cache *cache);
> > +void kasan_record_aux_stack(void *ptr);
> >
> >  #else /* CONFIG_KASAN_GENERIC */
> >
> >  static inline void kasan_cache_shrink(struct kmem_cache *cache) {}
> >  static inline void kasan_cache_shutdown(struct kmem_cache *cache) {}
> > +static inline void kasan_record_aux_stack(void *ptr) {}
> >
> >  #endif /* CONFIG_KASAN_GENERIC */
> >
> > diff --git a/kernel/rcu/tree.c b/kernel/rcu/tree.c
> > index 06548e2ebb72..36a4ff7f320b 100644
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
> > @@ -2668,6 +2669,7 @@ __call_rcu(struct rcu_head *head, rcu_callback_t func)
> >         head->func = func;
> >         head->next = NULL;
> >         local_irq_save(flags);
> > +       kasan_record_aux_stack(head);
> >         rdp = this_cpu_ptr(&rcu_data);
> >
> >         /* Add the callback to our list. */
> > diff --git a/mm/kasan/common.c b/mm/kasan/common.c
> > index 2906358e42f0..8bc618289bb1 100644
> > --- a/mm/kasan/common.c
> > +++ b/mm/kasan/common.c
> > @@ -41,7 +41,7 @@
> >  #include "kasan.h"
> >  #include "../slab.h"
> >
> > -static inline depot_stack_handle_t save_stack(gfp_t flags)
> > +depot_stack_handle_t kasan_save_stack(gfp_t flags)
> >  {
> >         unsigned long entries[KASAN_STACK_DEPTH];
> >         unsigned int nr_entries;
> > @@ -54,7 +54,7 @@ static inline depot_stack_handle_t save_stack(gfp_t flags)
> >  static inline void set_track(struct kasan_track *track, gfp_t flags)
> >  {
> >         track->pid = current->pid;
> > -       track->stack = save_stack(flags);
> > +       track->stack = kasan_save_stack(flags);
> >  }
> >
> >  void kasan_enable_current(void)
> > diff --git a/mm/kasan/generic.c b/mm/kasan/generic.c
> > index 56ff8885fe2e..8acf48882ba2 100644
> > --- a/mm/kasan/generic.c
> > +++ b/mm/kasan/generic.c
> > @@ -325,3 +325,24 @@ DEFINE_ASAN_SET_SHADOW(f2);
> >  DEFINE_ASAN_SET_SHADOW(f3);
> >  DEFINE_ASAN_SET_SHADOW(f5);
> >  DEFINE_ASAN_SET_SHADOW(f8);
> > +
> > +void kasan_record_aux_stack(void *addr)
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
> > +       /*
> > +        * record the last two call_rcu() call stacks.
> > +        */
> > +       alloc_info->aux_stack[1] = alloc_info->aux_stack[0];
> > +       alloc_info->aux_stack[0] = kasan_save_stack(GFP_NOWAIT);
> > +}
> > diff --git a/mm/kasan/kasan.h b/mm/kasan/kasan.h
> > index e8f37199d885..a7391bc83070 100644
> > --- a/mm/kasan/kasan.h
> > +++ b/mm/kasan/kasan.h
> > @@ -104,7 +104,15 @@ struct kasan_track {
> >
> >  struct kasan_alloc_meta {
> >         struct kasan_track alloc_track;
> > +#ifdef CONFIG_KASAN_GENERIC
> > +       /*
> > +        * call_rcu() call stack is stored into struct kasan_alloc_meta.
> > +        * The free stack is stored into struct kasan_free_meta.
> > +        */
> > +       depot_stack_handle_t aux_stack[2];
> > +#else
> >         struct kasan_track free_track[KASAN_NR_FREE_STACKS];
> > +#endif
> >  #ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
> >         u8 free_pointer_tag[KASAN_NR_FREE_STACKS];
> >         u8 free_track_idx;
> > @@ -159,6 +167,8 @@ void kasan_report_invalid_free(void *object, unsigned long ip);
> >
> >  struct page *kasan_addr_to_page(const void *addr);
> >
> > +depot_stack_handle_t kasan_save_stack(gfp_t flags);
> > +
> >  #if defined(CONFIG_KASAN_GENERIC) && \
> >         (defined(CONFIG_SLAB) || defined(CONFIG_SLUB))
> >  void quarantine_put(struct kasan_free_meta *info, struct kmem_cache *cache);
> > diff --git a/mm/kasan/report.c b/mm/kasan/report.c
> > index 80f23c9da6b0..2421a4bd9227 100644
> > --- a/mm/kasan/report.c
> > +++ b/mm/kasan/report.c
> > @@ -105,15 +105,20 @@ static void end_report(unsigned long *flags)
> >         kasan_enable_current();
> >  }
> >
> > +static void print_stack(depot_stack_handle_t stack)
> > +{
> > +       unsigned long *entries;
> > +       unsigned int nr_entries;
> > +
> > +       nr_entries = stack_depot_fetch(stack, &entries);
> > +       stack_trace_print(entries, nr_entries, 0);
> > +}
> > +
> >  static void print_track(struct kasan_track *track, const char *prefix)
> >  {
> >         pr_err("%s by task %u:\n", prefix, track->pid);
> >         if (track->stack) {
> > -               unsigned long *entries;
> > -               unsigned int nr_entries;
> > -
> > -               nr_entries = stack_depot_fetch(track->stack, &entries);
> > -               stack_trace_print(entries, nr_entries, 0);
> > +               print_stack(track->stack);
> >         } else {
> >                 pr_err("(stack is not available)\n");
> >         }
> > @@ -192,6 +197,19 @@ static void describe_object(struct kmem_cache *cache, void *object,
> >                 free_track = kasan_get_free_track(cache, object, tag);
> >                 print_track(free_track, "Freed");
> >                 pr_err("\n");
> > +
> > +#ifdef CONFIG_KASAN_GENERIC
> > +               if (alloc_info->aux_stack[0]) {
> > +                       pr_err("Last call_rcu():\n");
> > +                       print_stack(alloc_info->aux_stack[0]);
> > +                       pr_err("\n");
> > +               }
> > +               if (alloc_info->aux_stack[1]) {
> > +                       pr_err("Second to last call_rcu():\n");
> > +                       print_stack(alloc_info->aux_stack[1]);
> > +                       pr_err("\n");
> > +               }
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
> > To view this discussion on the web visit https://groups.google.com/d/msgid/kasan-dev/20200522020059.22332-1-walter-zh.wu%40mediatek.com.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
