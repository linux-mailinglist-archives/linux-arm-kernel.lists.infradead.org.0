Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA1B92C57D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 13:35:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ROF9XnlM/JsFzc9fCDSGyGvNehCLxDA8CFqEr9lKCXY=; b=ahc9PlzSBA/rm2
	OQBLAViZ54I76lEsn+HT103ztnyYIW5NYOE6TvNoYJ4W26N/DCspcRzT4AFneNFv2oUOk7iiJKCBS
	kRea2n3lSJARMQPXpCBqT/6TiCSpCfdPOHYBd78CMZ4lFrT8Vt/M/qqui4e3KXo32y4NavL/WSpni
	J51liEAOS3MTB0Ynk4Py5bqHfafsPKhvuHHzf+H5AMA6UJoxYRfitNVoioVa/ilAcAQx5jUh8tOtf
	AoeWRyQeQIvswmxkS20WiQI/2ck27WY4BcQhfR+7G7hr54hpcwWgQE8liN8a7MIWVYh4nj/lvhezR
	E3ylxkeTsGUXBEw7cdvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVaO5-0006mX-J7; Tue, 28 May 2019 11:35:25 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVaNn-0005yM-Nx
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 11:35:10 +0000
Received: by mail-it1-x143.google.com with SMTP id j17so2439472itk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 04:35:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=K0oetpqyVaJp/5Bm/JiZ1b8eJxLnFMSEqKc92w+46bQ=;
 b=dQjYiWPcgP2bsXY6+upo0QhTSf1QCoHNlCx6nSLNNqyu0OALBEuew0xbxC++0I21iX
 FB2tDbPHn//d7yySMZDokozEukyoiLzV0arVT3aOaZW8ii42vikgG3fUIk4BjM+rJFv3
 cN28D/KBCjI6OYUjx922zn+iobUWtSUVZmTRq7l2dsrihssdrY8JH1X8jLokptGWWVAp
 +BX0tDtPAe2t9Lf+ymDGP7c13f8k7YRVVaTu5i0wcHbERHckkq9Ue/fd//DaaN9/O/jC
 DEeXrGkoY+e8lsObY4kxWieGr0VN48yId8J4QxRF1cs95PSidQ54EHJeKfXtEM7psQgj
 bBxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=K0oetpqyVaJp/5Bm/JiZ1b8eJxLnFMSEqKc92w+46bQ=;
 b=mcz4V+faAbBZxpb62J0KGaHmMEO6+x9p/yZTVwx4Gm3PQQaAAoddWqRm6Yhpio2Lbp
 iD8dorPnMVPGfaes4IaITpvHWnft5fFcftIoOMDmOJCFG25mv9Ts7qIwDmLtKxEPZLnQ
 MKJvoX4HRRMs7A0pjzwpAaThhnZPVRvX62Mwi/b1Ip6MRydi3Rztz5UsB/WrKBNYijK1
 3rRxfuSERCGtihnP8/+Tp2AHDj/Pw62gAabnE+L0WWIIWR+m8QFcPyfkhB8fIjfGYXuc
 edQLHOTLMwkDwl59VR/v1uS79qxhw4b/U9q2l/1vqPGP1MkySIbkTn3faLsFsQn4+Ggl
 jgOA==
X-Gm-Message-State: APjAAAX9BfYjM6KeFlz4dDt4eiarCKLzGKKvqj214Rwwh3/RB5U0Byjb
 I3lhhlM4QGR7fE6ikoNj+rvGgsIVz9SdiiP/IdDzbA==
X-Google-Smtp-Source: APXvYqwWruxYrwhBaPseL/d1BIIWG40Vv2PrIHgEg9xMT+ePVTJjSYviatAKyjqYN7DG5fMq1brVEPZsOhLtYA5o3CM=
X-Received: by 2002:a24:91d2:: with SMTP id i201mr2838342ite.88.1559043303521; 
 Tue, 28 May 2019 04:35:03 -0700 (PDT)
MIME-Version: 1.0
References: <1559027797-30303-1-git-send-email-walter-zh.wu@mediatek.com>
In-Reply-To: <1559027797-30303-1-git-send-email-walter-zh.wu@mediatek.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Tue, 28 May 2019 13:34:50 +0200
Message-ID: <CACT4Y+aCnODuffR7PafyYispp_U+ZdY1Dr0XQYvmghkogLJzSw@mail.gmail.com>
Subject: Re: [PATCH] kasan: add memory corruption identification for software
 tag-based mode
To: Walter Wu <walter-zh.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_043507_852270_F22170A7 
X-CRM114-Status: GOOD (  34.72  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: wsd_upstream@mediatek.com, Catalin Marinas <catalin.marinas@arm.com>,
 linux-mediatek@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 kasan-dev <kasan-dev@googlegroups.com>, Pekka Enberg <penberg@kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Miles Chen <miles.chen@mediatek.com>,
 Alexander Potapenko <glider@google.com>, David Rientjes <rientjes@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, Christoph Lameter <cl@linux.com>,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

   and On Tue, May 28, 2019 at 9:17 AM Walter Wu
<walter-zh.wu@mediatek.com> wrote:
>
> This patch adds memory corruption identification at bug report for
> software tag-based mode, the report show whether it is "use-after-free"
> or "out-of-bound" error instead of "invalid-access" error.This will make
> it easier for programmers to see the memory corruption problem.
>
> Now we extend the quarantine to support both generic and tag-based kasan.
> For tag-based kasan, the quarantine stores only freed object information
> to check if an object is freed recently. When tag-based kasan reports an
> error, we can check if the tagged addr is in the quarantine and make a
> good guess if the object is more like "use-after-free" or "out-of-bound".
>
> Due to tag-based kasan, the tag values are stored in the shadow memory,
> all tag comparison failures are memory corruption. Even if those freed
> object have been deallocated, we still can get the memory corruption.
> So the freed object doesn't need to be kept in quarantine, it can be
> immediately released after calling kfree(). We only need the freed object
> information in quarantine, the error handler is able to use object
> information to know if it has been allocated or deallocated, therefore
> every slab memory corruption can be identified whether it's
> "use-after-free" or "out-of-bound".
>
> The difference between generic kasan and tag-based kasan quarantine is
> slab memory usage. Tag-based kasan only stores freed object information
> rather than the object itself. So tag-based kasan quarantine memory usage
> is smaller than generic kasan.
>
>
> ====== Benchmarks
>
> The following numbers were collected in QEMU.
> Both generic and tag-based KASAN were used in inline instrumentation mode
> and no stack checking.
>
> Boot time :
> * ~1.5 sec for clean kernel
> * ~3 sec for generic KASAN
> * ~3.5  sec for tag-based KASAN
> * ~3.5 sec for tag-based KASAN + corruption identification
>
> Slab memory usage after boot :
> * ~10500 kb  for clean kernel
> * ~30500 kb  for generic KASAN
> * ~12300 kb  for tag-based KASAN
> * ~17100 kb  for tag-based KASAN + corruption identification

Hi Walter,

Please describe your use case.
For testing context the generic KASAN works better and it does have
quarantine already. For prod/canary environment the quarantine may be
unacceptable in most cases.
I think we also want to use tag-based KASAN as a base for ARM MTE
support in near future and quarantine will be most likely unacceptable
for main MTE use cases. So at the very least I think this should be
configurable. +Catalin for this.

You don't change total quarantine size and charge only sizeof(struct
qlist_object). If I am reading this correctly, this means that
quarantine will have the same large overhead as with generic KASAN. We
will just cache much more objects there. The boot benchmarks may be
unrepresentative for this. Don't we need to reduce quarantine size or
something?


> Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
> ---
>  include/linux/kasan.h  |  20 +++++---
>  mm/kasan/Makefile      |   4 +-
>  mm/kasan/common.c      |  15 +++++-
>  mm/kasan/generic.c     |  11 -----
>  mm/kasan/kasan.h       |  45 ++++++++++++++++-
>  mm/kasan/quarantine.c  | 107 ++++++++++++++++++++++++++++++++++++++---
>  mm/kasan/report.c      |  36 +++++++++-----
>  mm/kasan/tags.c        |  64 ++++++++++++++++++++++++
>  mm/kasan/tags_report.c |   5 +-
>  mm/slub.c              |   2 -
>  10 files changed, 262 insertions(+), 47 deletions(-)
>
> diff --git a/include/linux/kasan.h b/include/linux/kasan.h
> index b40ea104dd36..bbb52a8bf4a9 100644
> --- a/include/linux/kasan.h
> +++ b/include/linux/kasan.h
> @@ -83,6 +83,9 @@ size_t kasan_metadata_size(struct kmem_cache *cache);
>  bool kasan_save_enable_multi_shot(void);
>  void kasan_restore_multi_shot(bool enabled);
>
> +void kasan_cache_shrink(struct kmem_cache *cache);
> +void kasan_cache_shutdown(struct kmem_cache *cache);
> +
>  #else /* CONFIG_KASAN */
>
>  static inline void kasan_unpoison_shadow(const void *address, size_t size) {}
> @@ -153,20 +156,14 @@ static inline void kasan_remove_zero_shadow(void *start,
>  static inline void kasan_unpoison_slab(const void *ptr) { }
>  static inline size_t kasan_metadata_size(struct kmem_cache *cache) { return 0; }
>
> +static inline void kasan_cache_shrink(struct kmem_cache *cache) {}
> +static inline void kasan_cache_shutdown(struct kmem_cache *cache) {}
>  #endif /* CONFIG_KASAN */
>
>  #ifdef CONFIG_KASAN_GENERIC
>
>  #define KASAN_SHADOW_INIT 0
>
> -void kasan_cache_shrink(struct kmem_cache *cache);
> -void kasan_cache_shutdown(struct kmem_cache *cache);
> -
> -#else /* CONFIG_KASAN_GENERIC */
> -
> -static inline void kasan_cache_shrink(struct kmem_cache *cache) {}
> -static inline void kasan_cache_shutdown(struct kmem_cache *cache) {}

Why do we need to move these functions?
For generic KASAN that's required because we store the objects
themselves in the quarantine, but it's not the case for tag-based mode
with your patch...

> -
>  #endif /* CONFIG_KASAN_GENERIC */
>
>  #ifdef CONFIG_KASAN_SW_TAGS
> @@ -180,6 +177,8 @@ void *kasan_reset_tag(const void *addr);
>  void kasan_report(unsigned long addr, size_t size,
>                 bool is_write, unsigned long ip);
>
> +struct kasan_alloc_meta *get_object_track(void);
> +
>  #else /* CONFIG_KASAN_SW_TAGS */
>
>  static inline void kasan_init_tags(void) { }
> @@ -189,6 +188,11 @@ static inline void *kasan_reset_tag(const void *addr)
>         return (void *)addr;
>  }
>
> +static inline struct kasan_alloc_meta *get_object_track(void)
> +{
> +       return 0;
> +}
> +
>  #endif /* CONFIG_KASAN_SW_TAGS */
>
>  #endif /* LINUX_KASAN_H */
> diff --git a/mm/kasan/Makefile b/mm/kasan/Makefile
> index 5d1065efbd47..03b0fe22ec55 100644
> --- a/mm/kasan/Makefile
> +++ b/mm/kasan/Makefile
> @@ -16,6 +16,6 @@ CFLAGS_common.o := $(call cc-option, -fno-conserve-stack -fno-stack-protector)
>  CFLAGS_generic.o := $(call cc-option, -fno-conserve-stack -fno-stack-protector)
>  CFLAGS_tags.o := $(call cc-option, -fno-conserve-stack -fno-stack-protector)
>
> -obj-$(CONFIG_KASAN) := common.o init.o report.o
> -obj-$(CONFIG_KASAN_GENERIC) += generic.o generic_report.o quarantine.o
> +obj-$(CONFIG_KASAN) := common.o init.o report.o quarantine.o
> +obj-$(CONFIG_KASAN_GENERIC) += generic.o generic_report.o
>  obj-$(CONFIG_KASAN_SW_TAGS) += tags.o tags_report.o
> diff --git a/mm/kasan/common.c b/mm/kasan/common.c
> index 80bbe62b16cd..919f693a58ab 100644
> --- a/mm/kasan/common.c
> +++ b/mm/kasan/common.c
> @@ -81,7 +81,7 @@ static inline depot_stack_handle_t save_stack(gfp_t flags)
>         return depot_save_stack(&trace, flags);
>  }
>
> -static inline void set_track(struct kasan_track *track, gfp_t flags)
> +void set_track(struct kasan_track *track, gfp_t flags)
>  {
>         track->pid = current->pid;
>         track->stack = save_stack(flags);
> @@ -457,7 +457,7 @@ static bool __kasan_slab_free(struct kmem_cache *cache, void *object,
>                 return false;
>
>         set_track(&get_alloc_info(cache, object)->free_track, GFP_NOWAIT);
> -       quarantine_put(get_free_info(cache, object), cache);
> +       quarantine_put(get_free_info(cache, tagged_object), cache);

Why do we need this change?

>
>         return IS_ENABLED(CONFIG_KASAN_GENERIC);
>  }
> @@ -614,6 +614,17 @@ void kasan_free_shadow(const struct vm_struct *vm)
>                 vfree(kasan_mem_to_shadow(vm->addr));
>  }
>
> +void kasan_cache_shrink(struct kmem_cache *cache)
> +{
> +       quarantine_remove_cache(cache);
> +}
> +
> +void kasan_cache_shutdown(struct kmem_cache *cache)
> +{
> +       if (!__kmem_cache_empty(cache))
> +               quarantine_remove_cache(cache);
> +}
> +
>  #ifdef CONFIG_MEMORY_HOTPLUG
>  static bool shadow_mapped(unsigned long addr)
>  {
> diff --git a/mm/kasan/generic.c b/mm/kasan/generic.c
> index 504c79363a34..5f579051dead 100644
> --- a/mm/kasan/generic.c
> +++ b/mm/kasan/generic.c
> @@ -191,17 +191,6 @@ void check_memory_region(unsigned long addr, size_t size, bool write,
>         check_memory_region_inline(addr, size, write, ret_ip);
>  }
>
> -void kasan_cache_shrink(struct kmem_cache *cache)
> -{
> -       quarantine_remove_cache(cache);
> -}
> -
> -void kasan_cache_shutdown(struct kmem_cache *cache)
> -{
> -       if (!__kmem_cache_empty(cache))
> -               quarantine_remove_cache(cache);
> -}
> -
>  static void register_global(struct kasan_global *global)
>  {
>         size_t aligned_size = round_up(global->size, KASAN_SHADOW_SCALE_SIZE);
> diff --git a/mm/kasan/kasan.h b/mm/kasan/kasan.h
> index 3e0c11f7d7a1..6848a93660d9 100644
> --- a/mm/kasan/kasan.h
> +++ b/mm/kasan/kasan.h
> @@ -95,9 +95,21 @@ struct kasan_alloc_meta {
>         struct kasan_track free_track;
>  };
>
> +#ifdef CONFIG_KASAN_GENERIC
>  struct qlist_node {
>         struct qlist_node *next;
>  };
> +#else
> +struct qlist_object {
> +       unsigned long addr;
> +       unsigned int size;
> +       struct kasan_alloc_meta free_track;

Why is this kasan_alloc_meta rather then kasan_track? We don't
memorize alloc stack...

> +};
> +struct qlist_node {
> +       struct qlist_object *qobject;
> +       struct qlist_node *next;
> +};
> +#endif
>  struct kasan_free_meta {
>         /* This field is used while the object is in the quarantine.
>          * Otherwise it might be used for the allocator freelist.
> @@ -133,16 +145,19 @@ void kasan_report(unsigned long addr, size_t size,
>                 bool is_write, unsigned long ip);
>  void kasan_report_invalid_free(void *object, unsigned long ip);
>
> -#if defined(CONFIG_KASAN_GENERIC) && \
> +#if defined(CONFIG_KASAN_GENERIC) || defined(CONFIG_KASAN_SW_TAGS) && \

This condition seems to be always true, no?

>         (defined(CONFIG_SLAB) || defined(CONFIG_SLUB))
> +
>  void quarantine_put(struct kasan_free_meta *info, struct kmem_cache *cache);
>  void quarantine_reduce(void);
>  void quarantine_remove_cache(struct kmem_cache *cache);
> +void set_track(struct kasan_track *track, gfp_t flags);
>  #else
>  static inline void quarantine_put(struct kasan_free_meta *info,
>                                 struct kmem_cache *cache) { }
>  static inline void quarantine_reduce(void) { }
>  static inline void quarantine_remove_cache(struct kmem_cache *cache) { }
> +static inline void set_track(struct kasan_track *track, gfp_t flags) {}
>  #endif
>
>  #ifdef CONFIG_KASAN_SW_TAGS
> @@ -151,6 +166,15 @@ void print_tags(u8 addr_tag, const void *addr);
>
>  u8 random_tag(void);
>
> +bool quarantine_find_object(void *object);
> +
> +int qobject_add_size(void);

Would be more reasonable to use size_t type for object sizes.

> +
> +struct qlist_node *qobject_create(struct kasan_free_meta *info,
> +               struct kmem_cache *cache);
> +
> +void qobject_free(struct qlist_node *qlink, struct kmem_cache *cache);
> +
>  #else
>
>  static inline void print_tags(u8 addr_tag, const void *addr) { }
> @@ -160,6 +184,25 @@ static inline u8 random_tag(void)
>         return 0;
>  }
>
> +static inline bool quarantine_find_object(void *object)
> +{
> +       return 0;

s/0/false/

> +}
> +
> +static inline int qobject_add_size(void)
> +{
> +       return 0;
> +}
> +
> +static inline struct qlist_node *qobject_create(struct kasan_free_meta *info,
> +               struct kmem_cache *cache)
> +{
> +       return 0;

s/0/NULL/

> +}
> +
> +static inline void qobject_free(struct qlist_node *qlink,
> +               struct kmem_cache *cache) {}
> +
>  #endif
>
>  #ifndef arch_kasan_set_tag
> diff --git a/mm/kasan/quarantine.c b/mm/kasan/quarantine.c
> index 978bc4a3eb51..f14c8dbec552 100644
> --- a/mm/kasan/quarantine.c
> +++ b/mm/kasan/quarantine.c
> @@ -67,7 +67,10 @@ static void qlist_put(struct qlist_head *q, struct qlist_node *qlink,
>                 q->tail->next = qlink;
>         q->tail = qlink;
>         qlink->next = NULL;
> -       q->bytes += size;
> +       if (IS_ENABLED(CONFIG_KASAN_SW_TAGS))

It would be more reasonable to pass the right size from the caller. It
already have to have the branch on CONFIG_KASAN_SW_TAGS because it
needs to allocate qobject or not, that would be the right place to
pass the right size.

> +               q->bytes += qobject_add_size();
> +       else
> +               q->bytes += size;
>  }
>
>  static void qlist_move_all(struct qlist_head *from, struct qlist_head *to)
> @@ -139,13 +142,18 @@ static void *qlink_to_object(struct qlist_node *qlink, struct kmem_cache *cache)
>
>  static void qlink_free(struct qlist_node *qlink, struct kmem_cache *cache)
>  {
> -       void *object = qlink_to_object(qlink, cache);
>         unsigned long flags;
> +       struct kmem_cache *obj_cache =
> +                       cache ? cache : qlink_to_cache(qlink);
> +       void *object = qlink_to_object(qlink, obj_cache);
> +
> +       if (IS_ENABLED(CONFIG_KASAN_SW_TAGS))
> +               qobject_free(qlink, cache);
>
>         if (IS_ENABLED(CONFIG_SLAB))
>                 local_irq_save(flags);
>
> -       ___cache_free(cache, object, _THIS_IP_);
> +       ___cache_free(obj_cache, object, _THIS_IP_);
>
>         if (IS_ENABLED(CONFIG_SLAB))
>                 local_irq_restore(flags);
> @@ -160,11 +168,9 @@ static void qlist_free_all(struct qlist_head *q, struct kmem_cache *cache)
>
>         qlink = q->head;
>         while (qlink) {
> -               struct kmem_cache *obj_cache =
> -                       cache ? cache : qlink_to_cache(qlink);
>                 struct qlist_node *next = qlink->next;
>
> -               qlink_free(qlink, obj_cache);
> +               qlink_free(qlink, cache);
>                 qlink = next;
>         }
>         qlist_init(q);
> @@ -187,7 +193,18 @@ void quarantine_put(struct kasan_free_meta *info, struct kmem_cache *cache)
>         local_irq_save(flags);
>
>         q = this_cpu_ptr(&cpu_quarantine);
> -       qlist_put(q, &info->quarantine_link, cache->size);
> +       if (IS_ENABLED(CONFIG_KASAN_SW_TAGS)) {
> +               struct qlist_node *free_obj_info = qobject_create(info, cache);
> +
> +               if (!free_obj_info) {
> +                       local_irq_restore(flags);
> +                       return;
> +               }
> +               qlist_put(q, free_obj_info, cache->size);
> +       } else {
> +               qlist_put(q, &info->quarantine_link, cache->size);
> +       }
> +
>         if (unlikely(q->bytes > QUARANTINE_PERCPU_SIZE)) {
>                 qlist_move_all(q, &temp);
>
> @@ -327,3 +344,79 @@ void quarantine_remove_cache(struct kmem_cache *cache)
>
>         synchronize_srcu(&remove_cache_srcu);
>  }
> +
> +#ifdef CONFIG_KASAN_SW_TAGS
> +static struct kasan_alloc_meta object_free_track;

This global is a dirty solution. It's better passed as argument to the
required functions rather than functions leave part of state in a
global and somebody picks it up later.

> +
> +struct kasan_alloc_meta *get_object_track(void)
> +{
> +       return &object_free_track;
> +}
> +
> +static bool qlist_find_object(struct qlist_head *from, void *addr)
> +{
> +       struct qlist_node *curr;
> +       struct qlist_object *curr_obj;
> +
> +       if (unlikely(qlist_empty(from)))
> +               return false;
> +
> +       curr = from->head;
> +       while (curr) {
> +               struct qlist_node *next = curr->next;
> +
> +               curr_obj = curr->qobject;
> +               if (unlikely(((unsigned long)addr >= curr_obj->addr)
> +                       && ((unsigned long)addr <
> +                                       (curr_obj->addr + curr_obj->size)))) {
> +                       object_free_track = curr_obj->free_track;
> +
> +                       return true;
> +               }
> +
> +               curr = next;
> +       }
> +       return false;
> +}
> +
> +static int per_cpu_find_object(void *arg)
> +{
> +       void *addr = arg;
> +       struct qlist_head *q;
> +
> +       q = this_cpu_ptr(&cpu_quarantine);
> +       return qlist_find_object(q, addr);
> +}
> +
> +struct cpumask cpu_allowed_mask __read_mostly;
> +
> +bool quarantine_find_object(void *addr)
> +{
> +       unsigned long flags, i;
> +       bool find = false;
> +       int cpu;
> +
> +       cpumask_copy(&cpu_allowed_mask, cpu_online_mask);
> +       for_each_cpu(cpu, &cpu_allowed_mask) {
> +               find = smp_call_on_cpu(cpu, per_cpu_find_object, addr, true);

There can be multiple qobjects in the quarantine associated with the
address, right? If so, we need to find the last one rather then a
random one.

> +               if (find)
> +                       return true;
> +       }
> +
> +       raw_spin_lock_irqsave(&quarantine_lock, flags);
> +       for (i = 0; i < QUARANTINE_BATCHES; i++) {
> +               if (qlist_empty(&global_quarantine[i]))
> +                       continue;
> +               find = qlist_find_object(&global_quarantine[i], addr);
> +               /* Scanning whole quarantine can take a while. */
> +               raw_spin_unlock_irqrestore(&quarantine_lock, flags);
> +               cond_resched();
> +               raw_spin_lock_irqsave(&quarantine_lock, flags);
> +       }
> +       raw_spin_unlock_irqrestore(&quarantine_lock, flags);
> +
> +       synchronize_srcu(&remove_cache_srcu);
> +
> +       return find;
> +}
> +#endif
> diff --git a/mm/kasan/report.c b/mm/kasan/report.c
> index ca9418fe9232..9cfabf2f0c40 100644
> --- a/mm/kasan/report.c
> +++ b/mm/kasan/report.c
> @@ -150,18 +150,26 @@ static void describe_object_addr(struct kmem_cache *cache, void *object,
>  }
>
>  static void describe_object(struct kmem_cache *cache, void *object,
> -                               const void *addr)
> +                               const void *tagged_addr)
>  {
> +       void *untagged_addr = reset_tag(tagged_addr);
>         struct kasan_alloc_meta *alloc_info = get_alloc_info(cache, object);
>
>         if (cache->flags & SLAB_KASAN) {
> -               print_track(&alloc_info->alloc_track, "Allocated");
> -               pr_err("\n");
> -               print_track(&alloc_info->free_track, "Freed");
> -               pr_err("\n");
> +               if (IS_ENABLED(CONFIG_KASAN_SW_TAGS) &&
> +                       quarantine_find_object((void *)tagged_addr)) {

Can't this be an out-of-bound even if we find the object in quarantine?
For example, if we've freed an object, then reallocated and accessed
out-of-bounds within the object bounds?
Overall suggesting that this is a use-after-free rather than
out-of-bounds without redzones and quarantining the object itself is
quite imprecise. We can confuse a user even more...


> +                       alloc_info = get_object_track();
> +                       print_track(&alloc_info->free_track, "Freed");
> +                       pr_err("\n");
> +               } else {
> +                       print_track(&alloc_info->alloc_track, "Allocated");
> +                       pr_err("\n");
> +                       print_track(&alloc_info->free_track, "Freed");
> +                       pr_err("\n");
> +               }
>         }
>
> -       describe_object_addr(cache, object, addr);
> +       describe_object_addr(cache, object, untagged_addr);
>  }
>
>  static inline bool kernel_or_module_addr(const void *addr)
> @@ -180,23 +188,25 @@ static inline bool init_task_stack_addr(const void *addr)
>                         sizeof(init_thread_union.stack));
>  }
>
> -static void print_address_description(void *addr)
> +static void print_address_description(void *tagged_addr)
>  {
> -       struct page *page = addr_to_page(addr);
> +       void *untagged_addr = reset_tag(tagged_addr);
> +       struct page *page = addr_to_page(untagged_addr);
>
>         dump_stack();
>         pr_err("\n");
>
>         if (page && PageSlab(page)) {
>                 struct kmem_cache *cache = page->slab_cache;
> -               void *object = nearest_obj(cache, page, addr);
> +               void *object = nearest_obj(cache, page, untagged_addr);
>
> -               describe_object(cache, object, addr);
> +               describe_object(cache, object, tagged_addr);
>         }
>
> -       if (kernel_or_module_addr(addr) && !init_task_stack_addr(addr)) {
> +       if (kernel_or_module_addr(untagged_addr) &&
> +                       !init_task_stack_addr(untagged_addr)) {
>                 pr_err("The buggy address belongs to the variable:\n");
> -               pr_err(" %pS\n", addr);
> +               pr_err(" %pS\n", untagged_addr);
>         }
>
>         if (page) {
> @@ -314,7 +324,7 @@ void kasan_report(unsigned long addr, size_t size,
>         pr_err("\n");
>
>         if (addr_has_shadow(untagged_addr)) {
> -               print_address_description(untagged_addr);
> +               print_address_description(tagged_addr);
>                 pr_err("\n");
>                 print_shadow_for_address(info.first_bad_addr);
>         } else {
> diff --git a/mm/kasan/tags.c b/mm/kasan/tags.c
> index 63fca3172659..fa5d1e29003d 100644
> --- a/mm/kasan/tags.c
> +++ b/mm/kasan/tags.c
> @@ -124,6 +124,70 @@ void check_memory_region(unsigned long addr, size_t size, bool write,
>         }
>  }
>
> +int qobject_add_size(void)
> +{
> +       return sizeof(struct qlist_object);

Shouldn't this also account for qlist_node?

> +}
> +
> +static struct kmem_cache *qobject_to_cache(struct qlist_object *qobject)
> +{
> +       return virt_to_head_page(qobject)->slab_cache;
> +}
> +
> +struct qlist_node *qobject_create(struct kasan_free_meta *info,
> +                                               struct kmem_cache *cache)
> +{
> +       struct qlist_node *free_obj_info;
> +       struct qlist_object *qobject_info;
> +       struct kasan_alloc_meta *object_track;
> +       void *object;
> +
> +       object = ((void *)info) - cache->kasan_info.free_meta_offset;
> +       qobject_info = kmalloc(sizeof(struct qlist_object), GFP_NOWAIT);
> +       if (!qobject_info)
> +               return NULL;
> +       qobject_info->addr = (unsigned long) object;
> +       qobject_info->size = cache->object_size;
> +       object_track = &qobject_info->free_track;
> +       set_track(&object_track->free_track, GFP_NOWAIT);
> +
> +       free_obj_info = kmalloc(sizeof(struct qlist_node), GFP_NOWAIT);

Why don't we allocate qlist_object and qlist_node in a single
allocation? Doing 2 allocations is both unnecessary slow and leads to
more complex code. We need to allocate them with a single allocations.
Also I think they should be allocated from a dedicated cache that opts
out of quarantine?


> +       if (!free_obj_info) {
> +               unsigned long flags;
> +               struct kmem_cache *qobject_cache =
> +                       qobject_to_cache(qobject_info);
> +
> +               if (IS_ENABLED(CONFIG_SLAB))
> +                       local_irq_save(flags);
> +
> +               ___cache_free(qobject_cache, (void *)qobject_info, _THIS_IP_);
> +
> +               if (IS_ENABLED(CONFIG_SLAB))
> +                       local_irq_restore(flags);
> +               return NULL;
> +       }
> +       free_obj_info->qobject = qobject_info;
> +
> +       return free_obj_info;
> +}
> +
> +void qobject_free(struct qlist_node *qlink, struct kmem_cache *cache)
> +{
> +       struct qlist_object *qobject = qlink->qobject;
> +       unsigned long flags;
> +
> +       struct kmem_cache *qobject_cache =
> +                       cache ? cache : qobject_to_cache(qobject);
> +
> +       if (IS_ENABLED(CONFIG_SLAB))
> +               local_irq_save(flags);
> +
> +       ___cache_free(qobject_cache, (void *)qobject, _THIS_IP_);
> +
> +       if (IS_ENABLED(CONFIG_SLAB))
> +               local_irq_restore(flags);
> +}
> +
>  #define DEFINE_HWASAN_LOAD_STORE(size)                                 \
>         void __hwasan_load##size##_noabort(unsigned long addr)          \
>         {                                                               \
> diff --git a/mm/kasan/tags_report.c b/mm/kasan/tags_report.c
> index 8eaf5f722271..8c8871b2cb09 100644
> --- a/mm/kasan/tags_report.c
> +++ b/mm/kasan/tags_report.c
> @@ -36,7 +36,10 @@
>
>  const char *get_bug_type(struct kasan_access_info *info)
>  {
> -       return "invalid-access";
> +       if (quarantine_find_object((void *)info->access_addr))
> +               return "use-after-free";
> +       else
> +               return "out-of-bounds";
>  }
>
>  void *find_first_bad_addr(void *addr, size_t size)
> diff --git a/mm/slub.c b/mm/slub.c
> index 1b08fbcb7e61..11c54f3995c8 100644
> --- a/mm/slub.c
> +++ b/mm/slub.c
> @@ -3004,12 +3004,10 @@ static __always_inline void slab_free(struct kmem_cache *s, struct page *page,
>                 do_slab_free(s, page, head, tail, cnt, addr);
>  }
>
> -#ifdef CONFIG_KASAN_GENERIC
>  void ___cache_free(struct kmem_cache *cache, void *x, unsigned long addr)
>  {
>         do_slab_free(cache, virt_to_head_page(x), x, NULL, 1, addr);
>  }
> -#endif
>
>  void kmem_cache_free(struct kmem_cache *s, void *x)
>  {
> --
> 2.18.0
>
> --
> You received this message because you are subscribed to the Google Groups "kasan-dev" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to kasan-dev+unsubscribe@googlegroups.com.
> To post to this group, send email to kasan-dev@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/kasan-dev/1559027797-30303-1-git-send-email-walter-zh.wu%40mediatek.com.
> For more options, visit https://groups.google.com/d/optout.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
