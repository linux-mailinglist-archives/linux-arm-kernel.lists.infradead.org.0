Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C65511DAD1E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 10:20:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5C0UZzHCryC4HNefpohRk5wRH+EpIx3s3t0hr3Gdt+E=; b=IWDg5R5VVxbNN3
	05CgE4Ze7bDydFLKdoO5FJKP7DzefAk3Igim6LfM6t/7g1jQ2S2Mw3Ej1UqH1zccKbEXBw2sNHKOX
	KsJYZLNegPhI16nd6JegA0hRFQxPHDLOkFFey5mdDZNAhcX8JdbWYaeEP9ynJiP9+QLVUjtVOBswp
	75+cPG91BFcw6Vd0EeXt2LATb8cn4QCZz/DXpsjx4p3BqmRlKdDWBOa65N4xsvrOqjMivIlhKi+8l
	p1XaikfJ4fAINPAken1cXH1nat0V8hqkQMryKr3pkyPg4Xc+ZGQoWDw1UYybxNdYNH3mzDwNMsOMh
	oR1pTlaiiRoTm2jhq7Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbJxG-0004Yp-83; Wed, 20 May 2020 08:19:58 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbJx6-0004Xz-6E
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 08:19:50 +0000
Received: by mail-qv1-xf41.google.com with SMTP id r3so944142qve.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 01:19:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=i9kZ4DLw3B9UuDkBPKoYytfO4JE+8lbRu+jW7CqCwcs=;
 b=nSvDgkz/XH999496uCU1XwtFX57tHIZ/W5V55cBsCmFR4XeC/W22hxSFld5HI3qQ8I
 ADZX0xVpgz0DmOM3V4/J0UN5V0tsNdyuCxA+YkmmtkVNt/e0ZivL0OCxIltzZhwyhHCb
 LU6hFhXQ1RRxIpCr50V4REWVd/gJs5FLRCo5F/o4wn1jz0N2S0EavqBBSEsp5suuGYnL
 rplM4OVtyRVOxbqwXLMbAWw+x3MjbpYb4gjPOyPDUATjcdtNncKe5FvHqBNnxq+WFTRN
 ADGpG08BasSxGL3ajYtKpfP8GQD5FT30hvJ+IIl5ech8IGyaO+iuW74E6bJsZA7sLk7R
 i9+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=i9kZ4DLw3B9UuDkBPKoYytfO4JE+8lbRu+jW7CqCwcs=;
 b=keZmaJoLGmiquoKlwFPle7hTjrHNCHgt63cnnkQLY5BoaPWraEGGoOdjjcKIzSRySm
 Sdc5VcDFMTi45QeeAAmHenX2bADbK8I/t4l+K4U9sWkhBRihUlG0GHXlkJRC7jfcZKQN
 XZUe8UWe2X/TENrWmde4hZOFOyOGi0nMHwJn7L+dMWLjyRpeR4HMlvsVgYAlQhaOsOrU
 rBomhx5ZGu9+Pj3zThixUSVdqwqoKlBdhxES3SnNxSZlOxLuys7zoXvADMLy6+4PdzEG
 wfd8uXaDmZTxgWQKKDApYFYqCJvZh3RZFOCnATae75LlwKfwTNadtSiIRjv5eyV00P7T
 uCSA==
X-Gm-Message-State: AOAM532oL63Mnr7uxmgeV8st9Hl9PO0/spAC5KEsIe35nmNAHuIydZ3A
 WuRzl7sI2aU6tCZl1aRxc1H+m6qpdBxG34djhH4IcQ==
X-Google-Smtp-Source: ABdhPJxS56KTz8SQRHGQN467D9wGXVPyf4MPYvwKy1Xpre2EHRIkvA2x1dKDySbqkcJSb1A33egEdmSPhTqXdkZ2cCA=
X-Received: by 2002:a05:6214:1543:: with SMTP id
 t3mr3830927qvw.122.1589962785981; 
 Wed, 20 May 2020 01:19:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200519022517.24182-1-walter-zh.wu@mediatek.com>
 <CACT4Y+aJDO+2kSgNpcvHksfn+bZaFWPoGj3-55-dyjLHcHbFUg@mail.gmail.com>
 <1589947387.29577.35.camel@mtksdccf07>
 <CACT4Y+Zy0O3brZRvN5jbdXMosBv+aFgRGSubbhCwzOSUftGoeA@mail.gmail.com>
 <1589951659.4440.4.camel@mtksdccf07> <1589955526.4440.22.camel@mtksdccf07>
In-Reply-To: <1589955526.4440.22.camel@mtksdccf07>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Wed, 20 May 2020 10:19:33 +0200
Message-ID: <CACT4Y+Z42fQe4ijnA7HksAqrnpyzGU5pyY2bRFBETsL-mkB9_g@mail.gmail.com>
Subject: Re: [PATCH v4 2/4] kasan: record and print the free track
To: Walter Wu <walter-zh.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_011948_257105_5D8C5DF0 
X-CRM114-Status: GOOD (  29.26  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f41 listed in]
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
 linux-mediatek@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 kasan-dev <kasan-dev@googlegroups.com>, Linux-MM <linux-mm@kvack.org>,
 Alexander Potapenko <glider@google.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 8:18 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
>
> On Wed, 2020-05-20 at 13:14 +0800, Walter Wu wrote:
> > > On Wed, May 20, 2020 at 6:03 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> > > >
> > > > > On Tue, May 19, 2020 at 4:25 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> > > > > >
> > > > > > Move free track from slub alloc meta-data to slub free meta-data in
> > > > > > order to make struct kasan_free_meta size is 16 bytes. It is a good
> > > > > > size because it is the minimal redzone size and a good number of
> > > > > > alignment.
> > > > > >
> > > > > > For free track in generic KASAN, we do the modification in struct
> > > > > > kasan_alloc_meta and kasan_free_meta:
> > > > > > - remove free track from kasan_alloc_meta.
> > > > > > - add free track into kasan_free_meta.
> > > > > >
> > > > > > [1]https://bugzilla.kernel.org/show_bug.cgi?id=198437
> > > > > >
> > > > > > Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
> > > > > > Suggested-by: Dmitry Vyukov <dvyukov@google.com>
> > > > > > Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
> > > > > > Cc: Dmitry Vyukov <dvyukov@google.com>
> > > > > > Cc: Alexander Potapenko <glider@google.com>
> > > > > > ---
> > > > > >  mm/kasan/common.c  | 22 ++--------------------
> > > > > >  mm/kasan/generic.c | 18 ++++++++++++++++++
> > > > > >  mm/kasan/kasan.h   |  7 +++++++
> > > > > >  mm/kasan/report.c  | 20 --------------------
> > > > > >  mm/kasan/tags.c    | 37 +++++++++++++++++++++++++++++++++++++
> > > > > >  5 files changed, 64 insertions(+), 40 deletions(-)
> > > > > >
> > > > > > diff --git a/mm/kasan/common.c b/mm/kasan/common.c
> > > > > > index 8bc618289bb1..47b53912f322 100644
> > > > > > --- a/mm/kasan/common.c
> > > > > > +++ b/mm/kasan/common.c
> > > > > > @@ -51,7 +51,7 @@ depot_stack_handle_t kasan_save_stack(gfp_t flags)
> > > > > >         return stack_depot_save(entries, nr_entries, flags);
> > > > > >  }
> > > > > >
> > > > > > -static inline void set_track(struct kasan_track *track, gfp_t flags)
> > > > > > +void kasan_set_track(struct kasan_track *track, gfp_t flags)
> > > > > >  {
> > > > > >         track->pid = current->pid;
> > > > > >         track->stack = kasan_save_stack(flags);
> > > > > > @@ -299,24 +299,6 @@ struct kasan_free_meta *get_free_info(struct kmem_cache *cache,
> > > > > >         return (void *)object + cache->kasan_info.free_meta_offset;
> > > > > >  }
> > > > > >
> > > > > > -
> > > > > > -static void kasan_set_free_info(struct kmem_cache *cache,
> > > > > > -               void *object, u8 tag)
> > > > > > -{
> > > > > > -       struct kasan_alloc_meta *alloc_meta;
> > > > > > -       u8 idx = 0;
> > > > > > -
> > > > > > -       alloc_meta = get_alloc_info(cache, object);
> > > > > > -
> > > > > > -#ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
> > > > > > -       idx = alloc_meta->free_track_idx;
> > > > > > -       alloc_meta->free_pointer_tag[idx] = tag;
> > > > > > -       alloc_meta->free_track_idx = (idx + 1) % KASAN_NR_FREE_STACKS;
> > > > > > -#endif
> > > > > > -
> > > > > > -       set_track(&alloc_meta->free_track[idx], GFP_NOWAIT);
> > > > > > -}
> > > > > > -
> > > > > >  void kasan_poison_slab(struct page *page)
> > > > > >  {
> > > > > >         unsigned long i;
> > > > > > @@ -492,7 +474,7 @@ static void *__kasan_kmalloc(struct kmem_cache *cache, const void *object,
> > > > > >                 KASAN_KMALLOC_REDZONE);
> > > > > >
> > > > > >         if (cache->flags & SLAB_KASAN)
> > > > > > -               set_track(&get_alloc_info(cache, object)->alloc_track, flags);
> > > > > > +               kasan_set_track(&get_alloc_info(cache, object)->alloc_track, flags);
> > > > > >
> > > > > >         return set_tag(object, tag);
> > > > > >  }
> > > > > > diff --git a/mm/kasan/generic.c b/mm/kasan/generic.c
> > > > > > index 3372bdcaf92a..763d8a13e0ac 100644
> > > > > > --- a/mm/kasan/generic.c
> > > > > > +++ b/mm/kasan/generic.c
> > > > > > @@ -344,3 +344,21 @@ void kasan_record_aux_stack(void *addr)
> > > > > >         alloc_info->aux_stack[1] = alloc_info->aux_stack[0];
> > > > > >         alloc_info->aux_stack[0] = kasan_save_stack(GFP_NOWAIT);
> > > > > >  }
> > > > > > +
> > > > > > +void kasan_set_free_info(struct kmem_cache *cache,
> > > > > > +                               void *object, u8 tag)
> > > > > > +{
> > > > > > +       struct kasan_free_meta *free_meta;
> > > > > > +
> > > > > > +       free_meta = get_free_info(cache, object);
> > > > > > +       kasan_set_track(&free_meta->free_track, GFP_NOWAIT);
> > > > > > +}
> > > > > > +
> > > > > > +struct kasan_track *kasan_get_free_track(struct kmem_cache *cache,
> > > > > > +                               void *object, u8 tag)
> > > > > > +{
> > > > > > +       struct kasan_free_meta *free_meta;
> > > > > > +
> > > > > > +       free_meta = get_free_info(cache, object);
> > > > > > +       return &free_meta->free_track;
> > > > > > +}
> > > > > > diff --git a/mm/kasan/kasan.h b/mm/kasan/kasan.h
> > > > > > index a7391bc83070..ad897ec36545 100644
> > > > > > --- a/mm/kasan/kasan.h
> > > > > > +++ b/mm/kasan/kasan.h
> > > > > > @@ -127,6 +127,9 @@ struct kasan_free_meta {
> > > > > >          * Otherwise it might be used for the allocator freelist.
> > > > > >          */
> > > > > >         struct qlist_node quarantine_link;
> > > > > > +#ifdef CONFIG_KASAN_GENERIC
> > > > > > +       struct kasan_track free_track;
> > > > > > +#endif
> > > > > >  };
> > > > > >
> > > > > >  struct kasan_alloc_meta *get_alloc_info(struct kmem_cache *cache,
> > > > > > @@ -168,6 +171,10 @@ void kasan_report_invalid_free(void *object, unsigned long ip);
> > > > > >  struct page *kasan_addr_to_page(const void *addr);
> > > > > >
> > > > > >  depot_stack_handle_t kasan_save_stack(gfp_t flags);
> > > > > > +void kasan_set_track(struct kasan_track *track, gfp_t flags);
> > > > > > +void kasan_set_free_info(struct kmem_cache *cache, void *object, u8 tag);
> > > > > > +struct kasan_track *kasan_get_free_track(struct kmem_cache *cache,
> > > > > > +                               void *object, u8 tag);
> > > > > >
> > > > > >  #if defined(CONFIG_KASAN_GENERIC) && \
> > > > > >         (defined(CONFIG_SLAB) || defined(CONFIG_SLUB))
> > > > > > diff --git a/mm/kasan/report.c b/mm/kasan/report.c
> > > > > > index 6f8f2bf8f53b..96d2657fe70f 100644
> > > > > > --- a/mm/kasan/report.c
> > > > > > +++ b/mm/kasan/report.c
> > > > > > @@ -159,26 +159,6 @@ static void describe_object_addr(struct kmem_cache *cache, void *object,
> > > > > >                 (void *)(object_addr + cache->object_size));
> > > > > >  }
> > > > > >
> > > > > > -static struct kasan_track *kasan_get_free_track(struct kmem_cache *cache,
> > > > > > -               void *object, u8 tag)
> > > > > > -{
> > > > > > -       struct kasan_alloc_meta *alloc_meta;
> > > > > > -       int i = 0;
> > > > > > -
> > > > > > -       alloc_meta = get_alloc_info(cache, object);
> > > > > > -
> > > > > > -#ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
> > > > > > -       for (i = 0; i < KASAN_NR_FREE_STACKS; i++) {
> > > > > > -               if (alloc_meta->free_pointer_tag[i] == tag)
> > > > > > -                       break;
> > > > > > -       }
> > > > > > -       if (i == KASAN_NR_FREE_STACKS)
> > > > > > -               i = alloc_meta->free_track_idx;
> > > > > > -#endif
> > > > > > -
> > > > > > -       return &alloc_meta->free_track[i];
> > > > > > -}
> > > > > > -
> > > > > >  #ifdef CONFIG_KASAN_GENERIC
> > > > > >  static void print_stack(depot_stack_handle_t stack)
> > > > > >  {
> > > > > > diff --git a/mm/kasan/tags.c b/mm/kasan/tags.c
> > > > > > index 25b7734e7013..201dee5d6ae0 100644
> > > > > > --- a/mm/kasan/tags.c
> > > > > > +++ b/mm/kasan/tags.c
> > > > > > @@ -162,3 +162,40 @@ void __hwasan_tag_memory(unsigned long addr, u8 tag, unsigned long size)
> > > > > >         kasan_poison_shadow((void *)addr, size, tag);
> > > > > >  }
> > > > > >  EXPORT_SYMBOL(__hwasan_tag_memory);
> > > > > > +
> > > > > > +void kasan_set_free_info(struct kmem_cache *cache,
> > > > > > +                               void *object, u8 tag)
> > > > > > +{
> > > > > > +       struct kasan_alloc_meta *alloc_meta;
> > > > > > +       u8 idx = 0;
> > > > > > +
> > > > > > +       alloc_meta = get_alloc_info(cache, object);
> > > > > > +
> > > > > > +#ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
> > > > > > +       idx = alloc_meta->free_track_idx;
> > > > > > +       alloc_meta->free_pointer_tag[idx] = tag;
> > > > > > +       alloc_meta->free_track_idx = (idx + 1) % KASAN_NR_FREE_STACKS;
> > > > > > +#endif
> > > > > > +
> > > > > > +       kasan_set_track(&alloc_meta->free_track[idx], GFP_NOWAIT);
> > > > > > +}
> > > > > > +
> > > > > > +struct kasan_track *kasan_get_free_track(struct kmem_cache *cache,
> > > > > > +                               void *object, u8 tag)
> > > > > > +{
> > > > > > +       struct kasan_alloc_meta *alloc_meta;
> > > > > > +       int i = 0;
> > > > > > +
> > > > > > +       alloc_meta = get_alloc_info(cache, object);
> > > > > > +
> > > > > > +#ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
> > > > > > +       for (i = 0; i < KASAN_NR_FREE_STACKS; i++) {
> > > > > > +               if (alloc_meta->free_pointer_tag[i] == tag)
> > > > > > +                       break;
> > > > > > +       }
> > > > > > +       if (i == KASAN_NR_FREE_STACKS)
> > > > > > +               i = alloc_meta->free_track_idx;
> > > > > > +#endif
> > > > > > +
> > > > > > +       return &alloc_meta->free_track[i];
> > > > > > +}
> > > > >
> > > > > Hi Walter,
> > > > >
> > > > > FTR I've uploaded this for review purposes here:
> > > > > https://linux-review.googlesource.com/c/linux/kernel/git/torvalds/linux/+/2458
> > > > >
> > > > > Diff from the previous version is available as:
> > > > > https://linux-review.googlesource.com/c/linux/kernel/git/torvalds/linux/+/2458/1..2
> > > > >
> > > > > I've tested this locally and with syzkaller. This is :
> > > > >
> > > > > [   80.583021][    C3] Freed by task 0:
> > > > > [   80.583480][    C3]  kasan_save_stack+0x1b/0x40 mm/kasan/common.c:49
> > > > > [   80.584056][    C3]  kasan_set_track+0x1c/0x30 mm/kasan/common.c:57
> > > > > [   80.584617][    C3]  kasan_set_free_info+0x1b/0x30 mm/kasan/generic.c:354
> > > > > [   80.585221][    C3]  __kasan_slab_free+0xd8/0x120 mm/kasan/common.c:438
> > > > > [   80.585814][    C3]  __cache_free mm/slab.c:3426 [inline]
> > > > > [   80.585814][    C3]  kfree+0x10b/0x2b0 mm/slab.c:3757
> > > > > [   80.586291][    C3]  kasan_rcu_reclaim+0x16/0x43 [test_kasan]
> > > > > [   80.587009][    C3]  rcu_do_batch kernel/rcu/tree.c:2207 [inline]
> > > > > [   80.587009][    C3]  rcu_core+0x59f/0x1370 kernel/rcu/tree.c:2434
> > > > > [   80.587537][    C3]  __do_softirq+0x26c/0x9fa kernel/softirq.c:292
> > > > > [   80.588085][    C3]
> > > > > [   80.588367][    C3] Last one call_rcu() call stack:
> > > > > [   80.589052][    C3]  kasan_save_stack+0x1b/0x40 mm/kasan/common.c:49
> > > > > [   80.589622][    C3]  kasan_record_aux_stack+0x82/0xb0 mm/kasan/generic.c:345
> > > > > [   80.590254][    C3]  __call_rcu kernel/rcu/tree.c:2672 [inline]
> > > > > [   80.590254][    C3]  call_rcu+0x14f/0x7f0 kernel/rcu/tree.c:2746
> > > > > [   80.590782][    C3]  kasan_rcu_uaf+0xe4/0xeb [test_kasan]
> > > > > [   80.591697][    C3]  kmalloc_tests_init+0xbc/0x1097 [test_kasan]
> > > > > [   80.592900][    C3]  do_one_initcall+0x10a/0x7d0 init/main.c:1196
> > > > > [   80.593494][    C3]  do_init_module+0x1e6/0x6d0 kernel/module.c:3539
> > > > > [   80.594066][    C3]  load_module+0x7464/0x9450 kernel/module.c:3890
> > > > > [   80.594626][    C3]  __do_sys_init_module+0x1e3/0x220 kernel/module.c:3953
> > > > > [   80.595265][    C3]  do_syscall_64+0xf6/0x7d0 arch/x86/entry/common.c:295
> > > > > [   80.595822][    C3]  entry_SYSCALL_64_after_hwframe+0x49/0xb3
> > > > >
> > > > >
> > > > > Overall this looks very good to me.
> > > > > But there is one aspect that bothers me. In the previous patch you had
> > > > > code that returned NULL from kasan_get_free_track() if the object is
> > > > > live (which means free meta is not available, it's occupied by object
> > > > > data). Now you dropped that code, but I think we still need it.
> > > > > Otherwise we cast user object data to free meta and print the free
> > > > > stack/pid from whatever garbage is there. This may lead to very
> > > > > confusing output and potentially to crashes in stackdepot.
> > > > >
> > > >
> > > > Yes, I totally agree with you. In the previous email I thought that
> > > > there is a problem with free track, but I did not point it out. Thank
> > > > you for pointing this problem. As you mentioned, we should fix it.
> > > >
> > > > > What do you think about this patch on top of your patches?
> > > > > https://linux-review.googlesource.com/c/linux/kernel/git/torvalds/linux/+/2478
> > > > > This way we very precisely mark the period of time when the object has
> > > > > free track live and set.
> > > > > If it looks good to you, feel free to incorporate it into your series.
> > > > >
> > > >
> > > > Thank you for providing good idea solution.
> > > >
> > > > I saw this patch, that is a great patch. I think it can fix the issue
> > > > which has garbage stack. it should work as described below.
> > > >
> > > > 1). When object is live, then don't print free stack.
> > > > 2). When object is NOT alive, after free object:
> > > > 2a). when object is in quarantine, then it can print free stack
> > > > 2b). when object is NOT in quarantine, then it can NOT print free stack.
> > > >
> > > > I have a question about 2), why we don't directly use
> > > > KASAN_KMALLOC_FREE? if we directly use it, then 2b) can print free
> > > > stack? 2b) may has use-after-free? so that it may need free stack.
> > >
>
> About 2b), I see another question. When do qlink_free(), it will be
> written KASAN_KMALLOC_FREE from KASAN_KMALLOC_FREETRACK? if we don't
> write shadow memory, it is still KASAN_KMALLOC_FREETRACK, then 2b) will
> have free stack? Because I see you add KASAN_KMALLOC_FREETRACK to get
> use-after-free in get_shadow_bug_type(). so should it not write
> KASAN_KMALLOC_FREE?

It may or may not work.
The potential problem is that when qlink_free calls ___cache_free,
slab/slub may start using object memory for its own purposes, e.g.
store the next link. This next link may overwrite part of free meta.
It actually may work because the slab/slib next link is likely to
overlap with kasan_free_meta.quarantine_link only. And we may have
kasan_free_meta.free_track intact while KASAN_KMALLOC_FREE is set. But
this needs careful checking for both slab and slub and if they may use
more than 1 word in some configurations.


> > > We can't use KASAN_KMALLOC_FREE because of this part:
> > >
> > > static bool __kasan_slab_free(struct kmem_cache *cache, void *object,
> > >                   unsigned long ip, bool quarantine)
> > > {
> > > ...
> > >     kasan_poison_shadow(object, rounded_up_size, KASAN_KMALLOC_FREE);
> > >
> > >     if ((IS_ENABLED(CONFIG_KASAN_GENERIC) && !quarantine) ||
> > >             unlikely(!(cache->flags & SLAB_KASAN)))
> > >         return false;
> > >
> > >     kasan_set_free_info(cache, object, tag);
> > > ...
> > >
> >
> > Ok, I see. When return false, then the shadow memory content has
> > KASAN_KMALLOC_FREE, but it doesn't set free stack, so that we need to
> > avoid this situation. Thank for you reminder.
> >
> > >
> > > We may set KASAN_KMALLOC_FREE, but not set the track (or even have
> > > memory for the track!).
> > > The object may not have free meta allocated at all, e.g. very large
> > > object with ctor (no place to store meta), or it may be in a mempool:
> > > https://elixir.bootlin.com/linux/v5.7-rc6/source/mm/mempool.c#L109
> > > and mempool may be using the object memory itself (for its own next
> > > link or something).
> > >
> > > KASAN_KMALLOC_FREETRACK very explicitly tracks the exact condition we
> > > want: we have meta info live now and we have free track set.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
