Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D11941D7501
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 12:19:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RENfpJhbjbwMFdO4N1gbCFq+s9RWSjQAzzSWiQGD6bg=; b=SfMGxbSXhgfA2f
	1sl2xdL52SsCFkMjyjc5Z7KvskL4p6CKPD8k+E5HeMLduGGtWiP0vHnrvs623nVLkQNMTCXgWXje3
	yX2NnI9trc1zSXcWKClyqNE0YJMg/PTq7wpg3WZWT1lh8rnfkc1Hx5A3IEEoUQwbwRg/03cFdAAN/
	nHxFbjqaB5Eg50Z8K2qLJOxPrmbb4dn0kybH/6phCAmkflKwUXIN5VxBtacwjMRoI1mgU1yrahvGd
	T7xSeWRF1v1IGEYuzltW2xEgMRm828HCQuaOGHU3lt/Vug1/a4GUTK7HHdvs9B9irb2jLCdlvE/tK
	5EXQWJgY+wKTeJv1/0pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jacrP-0000d5-Ci; Mon, 18 May 2020 10:19:03 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jacrH-0000bK-Ds
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 10:18:57 +0000
Received: by mail-qk1-x741.google.com with SMTP id b6so9472706qkh.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 03:18:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SeQSSJ6tmsyyQwBxZIU0ZhjYI9wUM1h2JniQ2eBNH4E=;
 b=Kopo/21L3C7MudOEHWTkWV41hFq0ooPCTzMCXhC2puPmlUUiozJSeKE1O8UC7zJyXK
 RfwOo42aYdSxrntkDGjY71EyI5JlDrWjEGLhr9YeM2h9LfoehewNIPSHiTPp4xmbcA+/
 MpPx4CPfWbTqbMHa5oPktsU2gvZF7r/GPB1q7Kyl+Y/iTJJrc7BgABfPcDNhcmoZHr2F
 qbSq9plJMy+YKEKVFSIBpVtH9uRj/W5IL2Y6G5sCDwCcnTCCfk4las4JCLK2eC3N2dm5
 +gNFTd2KOLnWO0ksMMNwnbtVd7VZ0T2zyKXxp4WXgCdmVedZtHSJ66F4+VocOmzeCAmZ
 7NRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SeQSSJ6tmsyyQwBxZIU0ZhjYI9wUM1h2JniQ2eBNH4E=;
 b=UB9MW/fq8GYmj2DR/gEAw4cMpmip/eky5rGwqW5eIDcNxZFMkHqQoIGmXArIxnvbdZ
 AEHZtmD8PJcN4likIPPe239Y5VxOPFBV5aAc5HZwUACeemhvRxRX4XHcEfvHXiFitRbg
 LDCfXtHxr5XrXsos/WSV7yA5XFyr107RpUo1w5g02sIgV4F94B04vbuEmZ10O9yu2AbJ
 tp6rO3WlHA4XrVHaP3fNKvXtwmHoatE0kSMkhcPV8BNd3y1Y8/94b+D9mQH+L6wzdEG4
 jZwk07DulqzTKqnDwUG0/FxCECaex/h3UH8JL+0TSO2WbcqJfwzB2XuIAZ73um5eGdtP
 vasw==
X-Gm-Message-State: AOAM530u/7A3QYW7XMwGEyI6+9RtDWGbcsBKcQjRTgnZScxAO6Flx9GE
 FUT6iHCbh1BqpRlAcKJtANOej9CCDHN1y8fXLTBoIw==
X-Google-Smtp-Source: ABdhPJykjMBtckEPDW2MVoTFnCMJCVBSqp/zeSHD0RUpov0jZbVBUpIt8cohaU1fiFQa9m+77TzvhXCuMxIMfK4+GDY=
X-Received: by 2002:a05:620a:990:: with SMTP id
 x16mr14681630qkx.256.1589797131499; 
 Mon, 18 May 2020 03:18:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200518062730.4665-1-walter-zh.wu@mediatek.com>
In-Reply-To: <20200518062730.4665-1-walter-zh.wu@mediatek.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Mon, 18 May 2020 12:18:39 +0200
Message-ID: <CACT4Y+YVF2cLdg6qaK+3NcU3kLz2Pys6NWxLAYfity5n5cjirA@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] kasan: record and print the free track
To: Walter Wu <walter-zh.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_031855_470958_DDE1F477 
X-CRM114-Status: GOOD (  22.36  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
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

On Mon, May 18, 2020 at 8:27 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
>
> Move free track from slub alloc meta-data to slub free meta-data in
> order to make struct kasan_free_meta size is 16 bytes. It is a good
> size because it is the minimal redzone size and a good number of
> alignment.
>
> For free track in generic KASAN, we do the modification in struct
> kasan_alloc_meta and kasan_free_meta:
> - remove free track from kasan_alloc_meta.
> - add free track into kasan_free_meta.
>
> [1]https://bugzilla.kernel.org/show_bug.cgi?id=198437
>
> Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
> Suggested-by: Dmitry Vyukov <dvyukov@google.com>
> Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
> Cc: Dmitry Vyukov <dvyukov@google.com>
> Cc: Alexander Potapenko <glider@google.com>
> ---
>  mm/kasan/common.c  | 33 ++++++++++-----------------------
>  mm/kasan/generic.c | 18 ++++++++++++++++++
>  mm/kasan/kasan.h   |  7 +++++++
>  mm/kasan/report.c  | 20 --------------------
>  mm/kasan/tags.c    | 37 +++++++++++++++++++++++++++++++++++++
>  5 files changed, 72 insertions(+), 43 deletions(-)
>
> diff --git a/mm/kasan/common.c b/mm/kasan/common.c
> index 8bc618289bb1..6500bc2bb70c 100644
> --- a/mm/kasan/common.c
> +++ b/mm/kasan/common.c
> @@ -51,7 +51,7 @@ depot_stack_handle_t kasan_save_stack(gfp_t flags)
>         return stack_depot_save(entries, nr_entries, flags);
>  }
>
> -static inline void set_track(struct kasan_track *track, gfp_t flags)
> +void kasan_set_track(struct kasan_track *track, gfp_t flags)
>  {
>         track->pid = current->pid;
>         track->stack = kasan_save_stack(flags);
> @@ -249,9 +249,7 @@ void kasan_cache_create(struct kmem_cache *cache, unsigned int *size,
>         *size += sizeof(struct kasan_alloc_meta);
>
>         /* Add free meta. */
> -       if (IS_ENABLED(CONFIG_KASAN_GENERIC) &&
> -           (cache->flags & SLAB_TYPESAFE_BY_RCU || cache->ctor ||
> -            cache->object_size < sizeof(struct kasan_free_meta))) {
> +       if (IS_ENABLED(CONFIG_KASAN_GENERIC)) {

Why do we need to increase object size unconditionally?
We only store info in free track when the object is free, so I would
assume we still can generally overlap free track and the object
itself. We store free track at the same time we use the quarantine
link, and the quarantine link was overlapped with the object just
fine.
With this change we indeed increase object size, which we do not want
in general.


>                 cache->kasan_info.free_meta_offset = *size;
>                 *size += sizeof(struct kasan_free_meta);
>         }
> @@ -299,24 +297,6 @@ struct kasan_free_meta *get_free_info(struct kmem_cache *cache,
>         return (void *)object + cache->kasan_info.free_meta_offset;
>  }
>
> -
> -static void kasan_set_free_info(struct kmem_cache *cache,
> -               void *object, u8 tag)
> -{
> -       struct kasan_alloc_meta *alloc_meta;
> -       u8 idx = 0;
> -
> -       alloc_meta = get_alloc_info(cache, object);
> -
> -#ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
> -       idx = alloc_meta->free_track_idx;
> -       alloc_meta->free_pointer_tag[idx] = tag;
> -       alloc_meta->free_track_idx = (idx + 1) % KASAN_NR_FREE_STACKS;
> -#endif
> -
> -       set_track(&alloc_meta->free_track[idx], GFP_NOWAIT);
> -}
> -
>  void kasan_poison_slab(struct page *page)
>  {
>         unsigned long i;
> @@ -396,6 +376,13 @@ void * __must_check kasan_init_slab_obj(struct kmem_cache *cache,
>         alloc_info = get_alloc_info(cache, object);
>         __memset(alloc_info, 0, sizeof(*alloc_info));
>
> +       if (IS_ENABLED(CONFIG_KASAN_GENERIC)) {
> +               struct kasan_free_meta *free_info;
> +
> +               free_info = get_free_info(cache, object);
> +               __memset(free_info, 0, sizeof(*free_info));

If we overlap free track with object, this will not be needed as well, right?

> +       }
> +
>         if (IS_ENABLED(CONFIG_KASAN_SW_TAGS))
>                 object = set_tag(object,
>                                 assign_tag(cache, object, true, false));
> @@ -492,7 +479,7 @@ static void *__kasan_kmalloc(struct kmem_cache *cache, const void *object,
>                 KASAN_KMALLOC_REDZONE);
>
>         if (cache->flags & SLAB_KASAN)
> -               set_track(&get_alloc_info(cache, object)->alloc_track, flags);
> +               kasan_set_track(&get_alloc_info(cache, object)->alloc_track, flags);
>
>         return set_tag(object, tag);
>  }
> diff --git a/mm/kasan/generic.c b/mm/kasan/generic.c
> index 78d8e0a75a8a..988bc095b738 100644
> --- a/mm/kasan/generic.c
> +++ b/mm/kasan/generic.c
> @@ -345,3 +345,21 @@ void kasan_record_aux_stack(void *addr)
>                 alloc_info->rcu_stack[1] = alloc_info->rcu_stack[0];
>         alloc_info->rcu_stack[0] = kasan_save_stack(GFP_NOWAIT);
>  }
> +
> +void kasan_set_free_info(struct kmem_cache *cache,
> +                               void *object, u8 tag)
> +{
> +       struct kasan_free_meta *free_meta;
> +
> +       free_meta = get_free_info(cache, object);
> +       kasan_set_track(&free_meta->free_track, GFP_NOWAIT);
> +}
> +
> +struct kasan_track *kasan_get_free_track(struct kmem_cache *cache,
> +                               void *object, u8 tag)
> +{
> +       struct kasan_free_meta *free_meta;
> +
> +       free_meta = get_free_info(cache, object);
> +       return &free_meta->free_track;
> +}
> diff --git a/mm/kasan/kasan.h b/mm/kasan/kasan.h
> index 870c5dd07756..87ee3626b8b0 100644
> --- a/mm/kasan/kasan.h
> +++ b/mm/kasan/kasan.h
> @@ -127,6 +127,9 @@ struct kasan_free_meta {
>          * Otherwise it might be used for the allocator freelist.
>          */
>         struct qlist_node quarantine_link;
> +#ifdef CONFIG_KASAN_GENERIC
> +       struct kasan_track free_track;
> +#endif
>  };
>
>  struct kasan_alloc_meta *get_alloc_info(struct kmem_cache *cache,
> @@ -168,6 +171,10 @@ void kasan_report_invalid_free(void *object, unsigned long ip);
>  struct page *kasan_addr_to_page(const void *addr);
>
>  depot_stack_handle_t kasan_save_stack(gfp_t flags);
> +void kasan_set_track(struct kasan_track *track, gfp_t flags);
> +void kasan_set_free_info(struct kmem_cache *cache, void *object, u8 tag);
> +struct kasan_track *kasan_get_free_track(struct kmem_cache *cache,
> +                               void *object, u8 tag);
>
>  #if defined(CONFIG_KASAN_GENERIC) && \
>         (defined(CONFIG_SLAB) || defined(CONFIG_SLUB))
> diff --git a/mm/kasan/report.c b/mm/kasan/report.c
> index 5ee66cf7e27c..7e9f9f6d5e85 100644
> --- a/mm/kasan/report.c
> +++ b/mm/kasan/report.c
> @@ -159,26 +159,6 @@ static void describe_object_addr(struct kmem_cache *cache, void *object,
>                 (void *)(object_addr + cache->object_size));
>  }
>
> -static struct kasan_track *kasan_get_free_track(struct kmem_cache *cache,
> -               void *object, u8 tag)
> -{
> -       struct kasan_alloc_meta *alloc_meta;
> -       int i = 0;
> -
> -       alloc_meta = get_alloc_info(cache, object);
> -
> -#ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
> -       for (i = 0; i < KASAN_NR_FREE_STACKS; i++) {
> -               if (alloc_meta->free_pointer_tag[i] == tag)
> -                       break;
> -       }
> -       if (i == KASAN_NR_FREE_STACKS)
> -               i = alloc_meta->free_track_idx;
> -#endif
> -
> -       return &alloc_meta->free_track[i];
> -}
> -
>  #ifdef CONFIG_KASAN_GENERIC
>  static void print_stack(depot_stack_handle_t stack)
>  {
> diff --git a/mm/kasan/tags.c b/mm/kasan/tags.c
> index 25b7734e7013..201dee5d6ae0 100644
> --- a/mm/kasan/tags.c
> +++ b/mm/kasan/tags.c
> @@ -162,3 +162,40 @@ void __hwasan_tag_memory(unsigned long addr, u8 tag, unsigned long size)
>         kasan_poison_shadow((void *)addr, size, tag);
>  }
>  EXPORT_SYMBOL(__hwasan_tag_memory);
> +
> +void kasan_set_free_info(struct kmem_cache *cache,
> +                               void *object, u8 tag)
> +{
> +       struct kasan_alloc_meta *alloc_meta;
> +       u8 idx = 0;
> +
> +       alloc_meta = get_alloc_info(cache, object);
> +
> +#ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
> +       idx = alloc_meta->free_track_idx;
> +       alloc_meta->free_pointer_tag[idx] = tag;
> +       alloc_meta->free_track_idx = (idx + 1) % KASAN_NR_FREE_STACKS;
> +#endif
> +
> +       kasan_set_track(&alloc_meta->free_track[idx], GFP_NOWAIT);
> +}
> +
> +struct kasan_track *kasan_get_free_track(struct kmem_cache *cache,
> +                               void *object, u8 tag)
> +{
> +       struct kasan_alloc_meta *alloc_meta;
> +       int i = 0;
> +
> +       alloc_meta = get_alloc_info(cache, object);
> +
> +#ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
> +       for (i = 0; i < KASAN_NR_FREE_STACKS; i++) {
> +               if (alloc_meta->free_pointer_tag[i] == tag)
> +                       break;
> +       }
> +       if (i == KASAN_NR_FREE_STACKS)
> +               i = alloc_meta->free_track_idx;
> +#endif
> +
> +       return &alloc_meta->free_track[i];
> +}
> --
> 2.18.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
