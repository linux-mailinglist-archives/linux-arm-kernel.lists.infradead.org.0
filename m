Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C6751C6FF2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 14:07:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K9jubRPu2PwuYoKztdGiWsUu3gzKP1u49N9W48A2rBo=; b=iWcNTEJjtNrYmX
	kNz/HPPl+Aim2/sJtNcGO1bJOgRumhdXUE5C+IoyFA6AEQubPiB2UyCq6XofDBOc4TfIf4WDKJbli
	0mj1J5C12bbGhPG7enlBYQBfQjlwuLLEAptyJfSFQXY2hNfK8YmI7leHEt3ixZYzjPCIOcLA8rIlx
	n11fjY0Grir5avfAvfh8uK13HWtXceuXWPkVQeNtqxzwiCJN/m5uHLew5vkP5LSR22Rqsbg3JRfjV
	mBIfyrjBh3fziiX5y8BnhzfrsypZ2dyPEHc7sFLE77eXzsl6ZwoiLCfUMYQ+BZO+rYYXh84g1dN0R
	1GIKVTS/zrY/XqAUpGVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWIpd-0008Bf-LZ; Wed, 06 May 2020 12:07:21 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWIpT-0008AU-RY; Wed, 06 May 2020 12:07:13 +0000
X-UUID: 14e4cb0d204544f28b7ab95cfcf411c0-20200506
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=xiv1xlLmws1dThuPdvPP+yLmXez/7eZ0aRvlqDySsPo=; 
 b=e2XxZSMnri4PGs4d0tHZpMtLFBkjSeJ8b8tNp8Tt/6WF+d1cU95isafgH0lF8TcBQSGkOjC12VR5tR6sLUYGHGvdDAZfLyTdfGeEFoHBsIUX7SU9OVV/ZVbGvbXSDBBtOQjHGn/L+tIu/9scTTd9wE7eLhs9GxecVs7j8xu8tK0=;
X-UUID: 14e4cb0d204544f28b7ab95cfcf411c0-20200506
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 713611829; Wed, 06 May 2020 04:07:10 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 6 May 2020 05:07:07 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 6 May 2020 20:06:58 +0800
Received: from [172.21.84.99] (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 6 May 2020 20:06:58 +0800
Message-ID: <1588766821.7534.3.camel@mtksdccf07>
Subject: Re: [PATCH 2/3] kasan: record and print the free track
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Dmitry Vyukov <dvyukov@google.com>
Date: Wed, 6 May 2020 20:07:01 +0800
In-Reply-To: <CACT4Y+bOxe+Y8BuzC=0k6rmkDiJ7PBnVcsY=jzZe1trVj476fg@mail.gmail.com>
References: <20200506052155.14515-1-walter-zh.wu@mediatek.com>
 <CACT4Y+ajKJpwNXd1V17bOT_ZShXm8h2eepxx_g4hAqk78SxCDA@mail.gmail.com>
 <1588766193.23664.28.camel@mtksdccf07>
 <CACT4Y+bOxe+Y8BuzC=0k6rmkDiJ7PBnVcsY=jzZe1trVj476fg@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: C775F1E3319AFBF59C1D207AB67E55811CC5F8909591D57E3E5AFA2BB1C54DE42000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_050711_894799_9B7652DA 
X-CRM114-Status: GOOD (  27.71  )
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
Cc: wsd_upstream <wsd_upstream@mediatek.com>,
 linux-mediatek@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 kasan-dev <kasan-dev@googlegroups.com>, Linux-MM <linux-mm@kvack.org>,
 Alexander Potapenko <glider@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-05-06 at 13:59 +0200, Dmitry Vyukov wrote:
> On Wed, May 6, 2020 at 1:56 PM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> >
> > On Wed, 2020-05-06 at 11:50 +0200, Dmitry Vyukov wrote:
> > > On Wed, May 6, 2020 at 7:22 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> > > >
> > > > We add new KASAN_RCU_STACK_RECORD configuration option. It will move
> > > > free track from slub meta-data (struct kasan_alloc_meta) into freed object.
> > > > Because we hope this options doesn't enlarge slub meta-data size.
> > > >
> > > > This option doesn't enlarge struct kasan_alloc_meta size.
> > > > - add two call_rcu() call stack into kasan_alloc_meta, size is 8 bytes.
> > > > - remove free track from kasan_alloc_meta, size is 8 bytes.
> > > >
> > > > This option is only suitable for generic KASAN, because we move free track
> > > > into the freed object, so free track is valid information only when it
> > > > exists in quarantine. If the object is in-use state, then the KASAN report
> > > > doesn't print call_rcu() free track information.
> > > >
> > > > [1]https://bugzilla.kernel.org/show_bug.cgi?id=198437
> > > >
> > > > Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
> > > > Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
> > > > Cc: Dmitry Vyukov <dvyukov@google.com>
> > > > Cc: Alexander Potapenko <glider@google.com>
> > > > ---
> > > >  mm/kasan/common.c | 10 +++++++++-
> > > >  mm/kasan/report.c | 24 +++++++++++++++++++++---
> > > >  2 files changed, 30 insertions(+), 4 deletions(-)
> > > >
> > > > diff --git a/mm/kasan/common.c b/mm/kasan/common.c
> > > > index 32d422bdf127..13ec03e225a7 100644
> > > > --- a/mm/kasan/common.c
> > > > +++ b/mm/kasan/common.c
> > > > @@ -321,8 +321,15 @@ void kasan_record_callrcu(void *addr)
> > > >                 /* record last call_rcu() call stack */
> > > >                 alloc_info->rcu_free_stack[1] = save_stack(GFP_NOWAIT);
> > > >  }
> > > > -#endif
> > > >
> > > > +static void kasan_set_free_info(struct kmem_cache *cache,
> > > > +               void *object, u8 tag)
> > > > +{
> > > > +       /* store free track into freed object */
> > > > +       set_track((struct kasan_track *)(object + BYTES_PER_WORD), GFP_NOWAIT);
> > > > +}
> > > > +
> > > > +#else
> > > >  static void kasan_set_free_info(struct kmem_cache *cache,
> > > >                 void *object, u8 tag)
> > > >  {
> > > > @@ -339,6 +346,7 @@ static void kasan_set_free_info(struct kmem_cache *cache,
> > > >
> > > >         set_track(&alloc_meta->free_track[idx], GFP_NOWAIT);
> > > >  }
> > > > +#endif
> > > >
> > > >  void kasan_poison_slab(struct page *page)
> > > >  {
> > > > diff --git a/mm/kasan/report.c b/mm/kasan/report.c
> > > > index 7aaccc70b65b..f2b0c6b9dffa 100644
> > > > --- a/mm/kasan/report.c
> > > > +++ b/mm/kasan/report.c
> > > > @@ -175,8 +175,23 @@ static void kasan_print_rcu_free_stack(struct kasan_alloc_meta *alloc_info)
> > > >         print_track(&free_track, "Last call_rcu() call stack", true);
> > > >         pr_err("\n");
> > > >  }
> > > > -#endif
> > > >
> > > > +static struct kasan_track *kasan_get_free_track(struct kmem_cache *cache,
> > > > +               void *object, u8 tag, const void *addr)
> > > > +{
> > > > +       u8 *shadow_addr = (u8 *)kasan_mem_to_shadow(addr);
> > > > +
> > > > +       /*
> > > > +        * Only the freed object can get free track,
> > > > +        * because free track information is stored to freed object.
> > > > +        */
> > > > +       if (*shadow_addr == KASAN_KMALLOC_FREE)
> > > > +               return (struct kasan_track *)(object + BYTES_PER_WORD);
> > >
> > > Humm... the other patch defines BYTES_PER_WORD as 4... I would assume
> > > seeing 8 (or sizeof(long)) here. Why 4?
> > It should be a pointer size, maybe sizeof(long) makes more sense.
> >
> > > Have you tested all 4 modes (RCU/no-RCU x SLAB/SLUB)? As far as I
> > > remember one of the allocators stored something in the object.
> > Good question, I only tested in RCU x SLUB, would you tell mew how do
> > no-RCU? I will test them in v2 pathset.
> 
> I meant with CONFIG_KASAN_RCU_STACK_RECORD=y and with
> CONFIG_KASAN_RCU_STACK_RECORD not set.
> But if we drop CONFIG_KASAN_RCU_STACK_RECORD config, then it halves
> the number of configurations to test ;)
> 
Ok, I have be tested by RCU xSLUB and no_RCUxSLUB, It is workable. So I
only miss this SLAB combination. 

> 
> > >
> > > Also, does this work with objects with ctors and slabs destroyed by
> > > rcu? kasan_track may smash other things in these cases.
> > > Have you looked at the KASAN implementation when free_track was
> > > removed? That may have useful details :)
> > Set free_track before put into quarantine, free_track should not have to
> > be removed, it only have to overwirte itself.
> >
> > >
> > >
> > > > +       else
> > > > +               return NULL;
> > > > +}
> > > > +
> > > > +#else
> > > >  static struct kasan_track *kasan_get_free_track(struct kmem_cache *cache,
> > > >                 void *object, u8 tag, const void *addr)
> > > >  {
> > > > @@ -196,6 +211,7 @@ static struct kasan_track *kasan_get_free_track(struct kmem_cache *cache,
> > > >
> > > >         return &alloc_meta->free_track[i];
> > > >  }
> > > > +#endif
> > > >
> > > >  static void describe_object(struct kmem_cache *cache, void *object,
> > > >                                 const void *addr, u8 tag)
> > > > @@ -208,8 +224,10 @@ static void describe_object(struct kmem_cache *cache, void *object,
> > > >                 print_track(&alloc_info->alloc_track, "Allocated", false);
> > > >                 pr_err("\n");
> > > >                 free_track = kasan_get_free_track(cache, object, tag, addr);
> > > > -               print_track(free_track, "Freed", false);
> > > > -               pr_err("\n");
> > > > +               if (free_track) {
> > > > +                       print_track(free_track, "Freed", false);
> > > > +                       pr_err("\n");
> > > > +               }
> > > >  #ifdef CONFIG_KASAN_RCU_STACK_RECORD
> > > >                 kasan_print_rcu_free_stack(alloc_info);
> > > >  #endif
> > > > --
> > > > 2.18.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
