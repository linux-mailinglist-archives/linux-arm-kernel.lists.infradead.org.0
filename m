Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D2AF6F49
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 08:58:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xa+t0Q/+y7SAdS0DGW3A/lqEy/rn64A34JegNL0gj0E=; b=ulxYuUoznWViMj
	Tcs5svUhX1RvdABzwEfpJlZLVXlkKkZzIDrSpN7OP3gLBn96P3rUH//6vBYHhZu2GDARkPZ8c6+uI
	bIY+0OmEmBenI9mAWzu73fbSvnNnbjt6FerlivcfTa3S0O0cdVYVm3+owgJ/T1CAiDB/nUr1Ls9fk
	TRJSVDxxVQcxRaIzdqDwFibGu5UxP2YHdKeAajg4Rz2s0jrjnpZSZ6WVBWWeNvA5OBuF0wr7gi01o
	D7yObvhHHjDSh3ZXWa63NuTwxjNhfddHOcJxy1xaQh2Sefuu97A+1tvQInuxE2BC7lLh/o3xboFbp
	pQ6QHsJFZ+XGIHdFzeUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU4aI-0001GU-VL; Mon, 11 Nov 2019 07:58:03 +0000
Received: from mail-qv1-xf44.google.com ([2607:f8b0:4864:20::f44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU4a7-0001FS-Fb
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 07:57:53 +0000
Received: by mail-qv1-xf44.google.com with SMTP id s18so4507941qvr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 10 Nov 2019 23:57:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=H7y4zy6OrzaKCbmt5VnQkSfOPrSCD4IzJM4CsQhV4vc=;
 b=g63j6COvu8/gYONRQt9DCMBKG/vdfAoAIq4kFVCoQhW0YwHdPfzPFVjXRltUzcXy2M
 4M19/g5navLrOWvbxmDK/dkpTzke5fDPVwWhmBPpgXLTx40JhXcXvRV6iiqyWyzya82P
 BU8PgrRkZoODSqCPT2homm3jFH4r+tvEgnMem6528jRA3HsYRbAEMVMobBxRwCJnBlO5
 4vKiHw+Y9wHjBbI3BACQ6pwr5HzfcSSTpN/LA6x4Hb3pJFzbHdMx8Otzz6pMqk9NDAhI
 rDzRU5zSfuaBi543fvixREZ3C9D/JjYgJzpgOlHzGoYxwHBzTlm0mtHSt4p0sxQJNRCq
 OKsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=H7y4zy6OrzaKCbmt5VnQkSfOPrSCD4IzJM4CsQhV4vc=;
 b=dyqVdEnMNjg98dTpMXB+vZ11Tgp1o6+VrehemlEIjFuEis70yf8Nh/fhb277z7oNwu
 VwhhhhSOCUFrAbN3yFEyxCS+yt0aOmp7p+9/TPrQ8vewiYwWnrOu2KeVa/lN8TY+gwi6
 4qOT+ejhAGf0oFQV+H424EKm+5yQ5AYWgKLtBuyHmKzL/Jsj1slypBKRgWNg7/NAxRvB
 AH9ZOd3LeaF8FCdqqh4QekmkNJApK/LsEROciY7SlGEsMvlL5AqFeYYzmd8lkeTFOaMt
 4/rqEwm6qeDaO9AkkwCSvi1WLhYuOBRLg1eFekjqIRdjR8dTNOAtue4K2I71+tZxgeMO
 sJKQ==
X-Gm-Message-State: APjAAAXYE7bQ19ZvT6Hv/EtlIvODMjLJEEhCHPqPE8XN2ILkaC9qJAty
 An4Xwz+kPUyPKW+w8UwCmrPuL+FRpFRNFpISxyrGDA==
X-Google-Smtp-Source: APXvYqwfegIIk1e1zoYpAwU83F6r6f1P4e2x+T1xLBRYcBCusyP997BoiwHQt2Bm/a3lw7Hh2aH9A36AFHU/5KoT4bs=
X-Received: by 2002:a05:6214:8ee:: with SMTP id
 dr14mr22829788qvb.122.1573459067244; 
 Sun, 10 Nov 2019 23:57:47 -0800 (PST)
MIME-Version: 1.0
References: <20191104020519.27988-1-walter-zh.wu@mediatek.com>
 <34bf9c08-d2f2-a6c6-1dbe-29b1456d8284@virtuozzo.com>
In-Reply-To: <34bf9c08-d2f2-a6c6-1dbe-29b1456d8284@virtuozzo.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Mon, 11 Nov 2019 08:57:35 +0100
Message-ID: <CACT4Y+bfGrJemwyMVqd2Kt19mF2i=3GwXRKHP0qGJaT_5OhSCA@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] kasan: detect negative size in memory operation
 function
To: Andrey Ryabinin <aryabinin@virtuozzo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_235751_548928_C8EE210E 
X-CRM114-Status: GOOD (  19.26  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Walter Wu <walter-zh.wu@mediatek.com>,
 wsd_upstream <wsd_upstream@mediatek.com>, LKML <linux-kernel@vger.kernel.org>,
 kasan-dev <kasan-dev@googlegroups.com>, Linux-MM <linux-mm@kvack.org>,
 Alexander Potapenko <glider@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 8, 2019 at 11:32 PM Andrey Ryabinin <aryabinin@virtuozzo.com> wrote:
> > diff --git a/mm/kasan/common.c b/mm/kasan/common.c
> > index 6814d6d6a023..4ff67e2fd2db 100644
> > --- a/mm/kasan/common.c
> > +++ b/mm/kasan/common.c
> > @@ -99,10 +99,14 @@ bool __kasan_check_write(const volatile void *p, unsigned int size)
> >  }
> >  EXPORT_SYMBOL(__kasan_check_write);
> >
> > +extern bool report_enabled(void);
> > +
> >  #undef memset
> >  void *memset(void *addr, int c, size_t len)
> >  {
> > -     check_memory_region((unsigned long)addr, len, true, _RET_IP_);
> > +     if (report_enabled() &&
> > +         !check_memory_region((unsigned long)addr, len, true, _RET_IP_))
> > +             return NULL;
> >
> >       return __memset(addr, c, len);
> >  }
> > @@ -110,8 +114,10 @@ void *memset(void *addr, int c, size_t len)
> >  #undef memmove
> >  void *memmove(void *dest, const void *src, size_t len)
> >  {
> > -     check_memory_region((unsigned long)src, len, false, _RET_IP_);
> > -     check_memory_region((unsigned long)dest, len, true, _RET_IP_);
> > +     if (report_enabled() &&
> > +        (!check_memory_region((unsigned long)src, len, false, _RET_IP_) ||
> > +         !check_memory_region((unsigned long)dest, len, true, _RET_IP_)))
> > +             return NULL;
> >
> >       return __memmove(dest, src, len);
> >  }
> > @@ -119,8 +125,10 @@ void *memmove(void *dest, const void *src, size_t len)
> >  #undef memcpy
> >  void *memcpy(void *dest, const void *src, size_t len)
> >  {
> > -     check_memory_region((unsigned long)src, len, false, _RET_IP_);
> > -     check_memory_region((unsigned long)dest, len, true, _RET_IP_);
> > +     if (report_enabled() &&
>
>             report_enabled() checks seems to be useless.
>
> > +        (!check_memory_region((unsigned long)src, len, false, _RET_IP_) ||
> > +         !check_memory_region((unsigned long)dest, len, true, _RET_IP_)))
> > +             return NULL;
> >
> >       return __memcpy(dest, src, len);
> >  }
> > diff --git a/mm/kasan/generic.c b/mm/kasan/generic.c
> > index 616f9dd82d12..02148a317d27 100644
> > --- a/mm/kasan/generic.c
> > +++ b/mm/kasan/generic.c
> > @@ -173,6 +173,11 @@ static __always_inline bool check_memory_region_inline(unsigned long addr,
> >       if (unlikely(size == 0))
> >               return true;
> >
> > +     if (unlikely((long)size < 0)) {
>
>         if (unlikely(addr + size < addr)) {
>
> > +             kasan_report(addr, size, write, ret_ip);
> > +             return false;
> > +     }
> > +
> >       if (unlikely((void *)addr <
> >               kasan_shadow_to_mem((void *)KASAN_SHADOW_START))) {
> >               kasan_report(addr, size, write, ret_ip);
> > diff --git a/mm/kasan/generic_report.c b/mm/kasan/generic_report.c
> > index 36c645939bc9..52a92c7db697 100644
> > --- a/mm/kasan/generic_report.c
> > +++ b/mm/kasan/generic_report.c
> > @@ -107,6 +107,24 @@ static const char *get_wild_bug_type(struct kasan_access_info *info)
> >
> >  const char *get_bug_type(struct kasan_access_info *info)
> >  {
> > +     /*
> > +      * If access_size is negative numbers, then it has three reasons
> > +      * to be defined as heap-out-of-bounds bug type.
> > +      * 1) Casting negative numbers to size_t would indeed turn up as
> > +      *    a large size_t and its value will be larger than ULONG_MAX/2,
> > +      *    so that this can qualify as out-of-bounds.
> > +      * 2) If KASAN has new bug type and user-space passes negative size,
> > +      *    then there are duplicate reports. So don't produce new bug type
> > +      *    in order to prevent duplicate reports by some systems
> > +      *    (e.g. syzbot) to report the same bug twice.
> > +      * 3) When size is negative numbers, it may be passed from user-space.
> > +      *    So we always print heap-out-of-bounds in order to prevent that
> > +      *    kernel-space and user-space have the same bug but have duplicate
> > +      *    reports.
> > +      */
>
> Completely fail to understand 2) and 3). 2) talks something about *NOT* producing new bug
> type, but at the same time you code actually does that.
> 3) says something about user-space which have nothing to do with kasan.

The idea was to use one of the existing bug titles so that syzbot does
not produce 2 versions for OOBs where size is user-controlled. We
don't know if it's overflow from heap, global or stack, but heap is
the most common bug, so saying heap overflow will reduce chances of
producing duplicates the most.
But for all of this to work we do need to use one of the existing bug titles.

> > +     if ((long)info->access_size < 0)
>
>         if (info->access_addr + info->access_size < info->access_addr)
>
> > +             return "heap-out-of-bounds";
> > +
> >       if (addr_has_shadow(info->access_addr))
> >               return get_shadow_bug_type(info);
> >       return get_wild_bug_type(info);
> > diff --git a/mm/kasan/report.c b/mm/kasan/report.c
> > index 621782100eaa..c79e28814e8f 100644
> > --- a/mm/kasan/report.c
> > +++ b/mm/kasan/report.c
> > @@ -446,7 +446,7 @@ static void print_shadow_for_address(const void *addr)
> >       }
> >  }
> >
> > -static bool report_enabled(void)
> > +bool report_enabled(void)
> >  {
> >       if (current->kasan_depth)
> >               return false;
> > diff --git a/mm/kasan/tags.c b/mm/kasan/tags.c
> > index 0e987c9ca052..b829535a3ad7 100644
> > --- a/mm/kasan/tags.c
> > +++ b/mm/kasan/tags.c
> > @@ -86,6 +86,11 @@ bool check_memory_region(unsigned long addr, size_t size, bool write,
> >       if (unlikely(size == 0))
> >               return true;
> >
> > +     if (unlikely((long)size < 0)) {
>
>         if (unlikely(addr + size < addr)) {
>
> > +             kasan_report(addr, size, write, ret_ip);
> > +             return false;
> > +     }
> > +
> >       tag = get_tag((const void *)addr);
> >
> >       /*
> > diff --git a/mm/kasan/tags_report.c b/mm/kasan/tags_report.c
> > index 969ae08f59d7..f7ae474aef3a 100644
> > --- a/mm/kasan/tags_report.c
> > +++ b/mm/kasan/tags_report.c
> > @@ -36,6 +36,24 @@
> >
> >  const char *get_bug_type(struct kasan_access_info *info)
> >  {
> > +     /*
> > +      * If access_size is negative numbers, then it has three reasons
> > +      * to be defined as heap-out-of-bounds bug type.
> > +      * 1) Casting negative numbers to size_t would indeed turn up as
> > +      *    a large size_t and its value will be larger than ULONG_MAX/2,
> > +      *    so that this can qualify as out-of-bounds.
> > +      * 2) If KASAN has new bug type and user-space passes negative size,
> > +      *    then there are duplicate reports. So don't produce new bug type
> > +      *    in order to prevent duplicate reports by some systems
> > +      *    (e.g. syzbot) to report the same bug twice.
> > +      * 3) When size is negative numbers, it may be passed from user-space.
> > +      *    So we always print heap-out-of-bounds in order to prevent that
> > +      *    kernel-space and user-space have the same bug but have duplicate
> > +      *    reports.
> > +      */
> > +     if ((long)info->access_size < 0)
>
>         if (info->access_addr + info->access_size < info->access_addr)
>
> > +             return "heap-out-of-bounds";
> > +
> >  #ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
> >       struct kasan_alloc_meta *alloc_meta;
> >       struct kmem_cache *cache;
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
