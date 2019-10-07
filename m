Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0CDDCE17D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 14:20:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DLNQmpjG5SBO3p1V35IPse82K0570nxaxalFwL3kme8=; b=MlgBolDQuJXkyf
	vscigV6Dh474PDb88ZRDfxAvSfTGeggVWtdY8AmTjWsRNqkVzaNcGN8cZVKGvsRRMwpkL6Lv/IrIw
	GJ9bUPRznNa+QVFlMYlGL8QG2CATFEBZdmKT/dPZ6eEgm7Y+Z6xEKUreX991eFOR15U/z+hNjBRu6
	DYZiE/poUnGq2glZlc56RtslQCOqie2LQner5akUHJalImWAy6Rte0yj/HcLmU7u9HeqGWu1a9y9/
	eY/8PKOt8Nv+yXW5DBko/F+8niupF9q+1/XFY2IbDa8kV7E0yqWWJSP8GdvVKymPDzDkAijF8LbfF
	XaFYotnP6dLxFARfbUsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHS04-0002AI-GC; Mon, 07 Oct 2019 12:20:28 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHRzn-0001hG-QR
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 12:20:13 +0000
Received: by mail-qt1-x844.google.com with SMTP id m61so7699323qte.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 05:20:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=foEkWUCM575fnsqo6dD50iM97OZJEympj2lwIIE9A5g=;
 b=LHYPKcnfysh/Caiq374/gthsrLoIyk3tHXauOq+eeVZLHdbJJfrDcvWMnP2YRDOG4y
 o5uB6vwOOlA557aaOrvSnrvdUsLdP6tDbE57H4KMJFVNh3LP+hyNKyQWB8mgP6sbfMwk
 7mj/gcuVz6UtV+hEqDDnDPAm8v9hZdZpVm3cCRfysjB5nenQdwqdBbxgL46F9xMZv/tY
 8lycVZo65X1EijvrwASG3VLPlK2s6MohOoUoZ9qq8JkoaFH4dF54hK4Bz5PT5q73wR72
 cEvq0/v0xrIYrPBFoQZotC6HP9bsE82nGsWHRSnVk6yzliex7OHgj34KO9NeiwPN+CYu
 4GSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=foEkWUCM575fnsqo6dD50iM97OZJEympj2lwIIE9A5g=;
 b=LYkEQlrDu6pBZJ8D85UraUe1dJuubT5cjrSWmfNqC/AEmp2VN031gqLhnWT7CvXOh7
 AMXGv7d1wruEZR3Tn3pzcVu0zl3R5jmCFIY9JrYOL/jmHtbz0dnh+zkATaxEkGrBpI+6
 WenfjBQ6Ut2sGPn3Q5gEm4lblkomQR++y4KXku0BrB6lSKDR/W3tbjnXu1CUZuj3P0Aq
 puec+Lq08YEjFGb+BGIJRQTYyGvtqGYMIoWPqyXu3ydBjFLkha3aEbQXqnHxAihXp/z+
 alxam5hi97TYjOeG1+C8A9brted3sH4Spmd7j7Pj8kZwR3bFbxtTJa+Dro02rbp5Oc2M
 1Itw==
X-Gm-Message-State: APjAAAUcrHZZtIGHolJ8vfj64vEhYNd0doTjLasnn4uU8165LFls/nw2
 QM/SnAg439loSpptymUheCM7Sk/N/5SHr9mbw7zoHQ==
X-Google-Smtp-Source: APXvYqwd0VtKG/ssBM8w+azUJA7VLtUFK0uvly01KrSBiPL8XWh9b9V7ijucaxueKzu4MiMHLgWkXKNRUS58zXWZCeU=
X-Received: by 2002:ac8:108b:: with SMTP id a11mr29317165qtj.380.1570450806687; 
 Mon, 07 Oct 2019 05:20:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190927034338.15813-1-walter-zh.wu@mediatek.com>
 <CACT4Y+Zxz+R=qQxSMoipXoLjRqyApD3O0eYpK0nyrfGHE4NNPw@mail.gmail.com>
 <1569594142.9045.24.camel@mtksdccf07>
 <CACT4Y+YuAxhKtL7ho7jpVAPkjG-JcGyczMXmw8qae2iaZjTh_w@mail.gmail.com>
 <1569818173.17361.19.camel@mtksdccf07> <1570018513.19702.36.camel@mtksdccf07>
 <CACT4Y+bbZhvz9ZpHtgL8rCCsV=ybU5jA6zFnJBL7gY2cNXDLyQ@mail.gmail.com>
 <1570069078.19702.57.camel@mtksdccf07>
 <CACT4Y+ZwNv2-QBrvuR2JvemovmKPQ9Ggrr=ZkdTg6xy_Ki6UAg@mail.gmail.com>
 <1570095525.19702.59.camel@mtksdccf07> <1570110681.19702.64.camel@mtksdccf07>
 <CACT4Y+aKrC8mtcDTVhM-So-TTLjOyFCD7r6jryWFH6i2he1WJA@mail.gmail.com>
 <1570164140.19702.97.camel@mtksdccf07> <1570176131.19702.105.camel@mtksdccf07>
 <CACT4Y+ZvhomaeXFKr4za6MJi=fW2SpPaCFP=fk06CMRhNcmFvQ@mail.gmail.com>
 <1570182257.19702.109.camel@mtksdccf07>
 <CACT4Y+ZnWPEO-9DkE6C3MX-Wo+8pdS6Gr6-2a8LzqBS=2fe84w@mail.gmail.com>
 <1570190718.19702.125.camel@mtksdccf07>
 <CACT4Y+YbkjuW3_WQJ4BB8YHWvxgHJyZYxFbDJpnPzfTMxYs60g@mail.gmail.com>
 <1570418576.4686.30.camel@mtksdccf07>
 <CACT4Y+aho7BEvQstd2+a2be-jJ0dEsjGebH7bcUFhYp-PoRDxQ@mail.gmail.com>
 <1570436289.4686.40.camel@mtksdccf07>
 <CACT4Y+Z6QObZ2fvVxSmvv16YQAu4GswOqfOVQK_1_Ncz0eir_g@mail.gmail.com>
 <1570438317.4686.44.camel@mtksdccf07>
 <CACT4Y+Yc86bKxDp4ST8+49rzLOWkTXLkjs0eyFtohCi_uSjmLQ@mail.gmail.com>
 <1570439032.4686.50.camel@mtksdccf07>
 <CACT4Y+YL=8jFXrj2LOuQV7ZyDe-am4W8y1WHEDJJ0-mVNJ3_Cw@mail.gmail.com>
 <1570440492.4686.59.camel@mtksdccf07> <1570441833.4686.66.camel@mtksdccf07>
 <CACT4Y+Z0A=Zi4AxEjn4jpHk0xG9+Nh2Q-OYEnOmooW0wN-_vfQ@mail.gmail.com>
 <1570449804.4686.79.camel@mtksdccf07>
In-Reply-To: <1570449804.4686.79.camel@mtksdccf07>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Mon, 7 Oct 2019 14:19:54 +0200
Message-ID: <CACT4Y+b4VX5cW3WhP6o3zyKxHjNZRo1Lokxr0+MwDcB5hV5K+A@mail.gmail.com>
Subject: Re: [PATCH] kasan: fix the missing underflow in memmove and memcpy
 with CONFIG_KASAN_GENERIC=y
To: Walter Wu <walter-zh.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_052011_885632_6D139899 
X-CRM114-Status: GOOD (  35.46  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Mon, Oct 7, 2019 at 2:03 PM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> > > > > > > > > On Mon, Oct 7, 2019 at 10:18 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> > > > > > > > > > The patchsets help to produce KASAN report when size is negative numbers
> > > > > > > > > > in memory operation function. It is helpful for programmer to solve the
> > > > > > > > > > undefined behavior issue. Patch 1 based on Dmitry's review and
> > > > > > > > > > suggestion, patch 2 is a test in order to verify the patch 1.
> > > > > > > > > >
> > > > > > > > > > [1]https://bugzilla.kernel.org/show_bug.cgi?id=199341
> > > > > > > > > > [2]https://lore.kernel.org/linux-arm-kernel/20190927034338.15813-1-walter-zh.wu@mediatek.com/
> > > > > > > > > >
> > > > > > > > > > Walter Wu (2):
> > > > > > > > > > kasan: detect invalid size in memory operation function
> > > > > > > > > > kasan: add test for invalid size in memmove
> > > > > > > > > >
> > > > > > > > > >  lib/test_kasan.c          | 18 ++++++++++++++++++
> > > > > > > > > >  mm/kasan/common.c         | 13 ++++++++-----
> > > > > > > > > >  mm/kasan/generic.c        |  5 +++++
> > > > > > > > > >  mm/kasan/generic_report.c | 12 ++++++++++++
> > > > > > > > > >  mm/kasan/tags.c           |  5 +++++
> > > > > > > > > >  mm/kasan/tags_report.c    | 12 ++++++++++++
> > > > > > > > > >  6 files changed, 60 insertions(+), 5 deletions(-)
> > > > > > > > > >
> > > > > > > > > >
> > > > > > > > > >
> > > > > > > > > >
> > > > > > > > > > commit 5b3b68660b3d420fd2bd792f2d9fd3ccb8877ef7
> > > > > > > > > > Author: Walter-zh Wu <walter-zh.wu@mediatek.com>
> > > > > > > > > > Date:   Fri Oct 4 18:38:31 2019 +0800
> > > > > > > > > >
> > > > > > > > > >     kasan: detect invalid size in memory operation function
> > > > > > > > > >
> > > > > > > > > >     It is an undefined behavior to pass a negative numbers to
> > > > > > > > > > memset()/memcpy()/memmove()
> > > > > > > > > >     , so need to be detected by KASAN.
> > > > > > > > > >
> > > > > > > > > >     If size is negative numbers, then it has two reasons to be defined
> > > > > > > > > > as out-of-bounds bug type.
> > > > > > > > > >     1) Casting negative numbers to size_t would indeed turn up as a
> > > > > > > > > > large
> > > > > > > > > >     size_t and its value will be larger than ULONG_MAX/2, so that this
> > > > > > > > > > can
> > > > > > > > > >     qualify as out-of-bounds.
> > > > > > > > > >     2) Don't generate new bug type in order to prevent duplicate reports
> > > > > > > > > > by
> > > > > > > > > >     some systems, e.g. syzbot.
> > > > > > > > > >
> > > > > > > > > >     KASAN report:
> > > > > > > > > >
> > > > > > > > > >      BUG: KASAN: out-of-bounds in kmalloc_memmove_invalid_size+0x70/0xa0
> > > > > > > > > >      Read of size 18446744073709551608 at addr ffffff8069660904 by task
> > > > > > > > > > cat/72
> > > > > > > > > >
> > > > > > > > > >      CPU: 2 PID: 72 Comm: cat Not tainted
> > > > > > > > > > 5.4.0-rc1-next-20191004ajb-00001-gdb8af2f372b2-dirty #1
> > > > > > > > > >      Hardware name: linux,dummy-virt (DT)
> > > > > > > > > >      Call trace:
> > > > > > > > > >       dump_backtrace+0x0/0x288
> > > > > > > > > >       show_stack+0x14/0x20
> > > > > > > > > >       dump_stack+0x10c/0x164
> > > > > > > > > >       print_address_description.isra.9+0x68/0x378
> > > > > > > > > >       __kasan_report+0x164/0x1a0
> > > > > > > > > >       kasan_report+0xc/0x18
> > > > > > > > > >       check_memory_region+0x174/0x1d0
> > > > > > > > > >       memmove+0x34/0x88
> > > > > > > > > >       kmalloc_memmove_invalid_size+0x70/0xa0
> > > > > > > > > >
> > > > > > > > > >     [1] https://bugzilla.kernel.org/show_bug.cgi?id=199341
> > > > > > > > > >
> > > > > > > > > >     Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
> > > > > > > > > >     Reported -by: Dmitry Vyukov <dvyukov@google.com>
> > > > > > > > > >     Suggested-by: Dmitry Vyukov <dvyukov@google.com>
> > > > > > > > > >
> > > > > > > > > > diff --git a/mm/kasan/common.c b/mm/kasan/common.c
> > > > > > > > > > index 6814d6d6a023..6ef0abd27f06 100644
> > > > > > > > > > --- a/mm/kasan/common.c
> > > > > > > > > > +++ b/mm/kasan/common.c
> > > > > > > > > > @@ -102,7 +102,8 @@ EXPORT_SYMBOL(__kasan_check_write);
> > > > > > > > > >  #undef memset
> > > > > > > > > >  void *memset(void *addr, int c, size_t len)
> > > > > > > > > >  {
> > > > > > > > > > -       check_memory_region((unsigned long)addr, len, true, _RET_IP_);
> > > > > > > > > > +       if (!check_memory_region((unsigned long)addr, len, true, _RET_IP_))
> > > > > > > > > > +               return NULL;
> > > > > > > > > >
> > > > > > > > > >         return __memset(addr, c, len);
> > > > > > > > > >  }
> > > > > > > > > > @@ -110,8 +111,9 @@ void *memset(void *addr, int c, size_t len)
> > > > > > > > > >  #undef memmove
> > > > > > > > > >  void *memmove(void *dest, const void *src, size_t len)
> > > > > > > > > >  {
> > > > > > > > > > -       check_memory_region((unsigned long)src, len, false, _RET_IP_);
> > > > > > > > > > -       check_memory_region((unsigned long)dest, len, true, _RET_IP_);
> > > > > > > > > > +       if (!check_memory_region((unsigned long)src, len, false, _RET_IP_) ||
> > > > > > > > > > +       !check_memory_region((unsigned long)dest, len, true, _RET_IP_))
> > > > > > > > > > +               return NULL;
> > > > > > > > > >
> > > > > > > > > >         return __memmove(dest, src, len);
> > > > > > > > > >  }
> > > > > > > > > > @@ -119,8 +121,9 @@ void *memmove(void *dest, const void *src, size_t
> > > > > > > > > > len)
> > > > > > > > > >  #undef memcpy
> > > > > > > > > >  void *memcpy(void *dest, const void *src, size_t len)
> > > > > > > > > >  {
> > > > > > > > > > -       check_memory_region((unsigned long)src, len, false, _RET_IP_);
> > > > > > > > > > -       check_memory_region((unsigned long)dest, len, true, _RET_IP_);
> > > > > > > > > > +       if (!check_memory_region((unsigned long)src, len, false, _RET_IP_) ||
> > > > > > > > > > +       !check_memory_region((unsigned long)dest, len, true, _RET_IP_))
> > > > > > > > > > +               return NULL;
> > > > > > > > > >
> > > > > > > > > >         return __memcpy(dest, src, len);
> > > > > > > > > >  }
> > > > > > > > > > diff --git a/mm/kasan/generic.c b/mm/kasan/generic.c
> > > > > > > > > > index 616f9dd82d12..02148a317d27 100644
> > > > > > > > > > --- a/mm/kasan/generic.c
> > > > > > > > > > +++ b/mm/kasan/generic.c
> > > > > > > > > > @@ -173,6 +173,11 @@ static __always_inline bool
> > > > > > > > > > check_memory_region_inline(unsigned long addr,
> > > > > > > > > >         if (unlikely(size == 0))
> > > > > > > > > >                 return true;
> > > > > > > > > >
> > > > > > > > > > +       if (unlikely((long)size < 0)) {
> > > > > > > > > > +               kasan_report(addr, size, write, ret_ip);
> > > > > > > > > > +               return false;
> > > > > > > > > > +       }
> > > > > > > > > > +
> > > > > > > > > >         if (unlikely((void *)addr <
> > > > > > > > > >                 kasan_shadow_to_mem((void *)KASAN_SHADOW_START))) {
> > > > > > > > > >                 kasan_report(addr, size, write, ret_ip);
> > > > > > > > > > diff --git a/mm/kasan/generic_report.c b/mm/kasan/generic_report.c
> > > > > > > > > > index 36c645939bc9..ed0eb94cb811 100644
> > > > > > > > > > --- a/mm/kasan/generic_report.c
> > > > > > > > > > +++ b/mm/kasan/generic_report.c
> > > > > > > > > > @@ -107,6 +107,18 @@ static const char *get_wild_bug_type(struct
> > > > > > > > > > kasan_access_info *info)
> > > > > > > > > >
> > > > > > > > > >  const char *get_bug_type(struct kasan_access_info *info)
> > > > > > > > > >  {
> > > > > > > > > > +       /*
> > > > > > > > > > +        * If access_size is negative numbers, then it has two reasons
> > > > > > > > > > +        * to be defined as out-of-bounds bug type.
> > > > > > > > > > +        * 1) Casting negative numbers to size_t would indeed turn up as
> > > > > > > > > > +        * a 'large' size_t and its value will be larger than ULONG_MAX/2,
> > > > > > > > > > +        * so that this can qualify as out-of-bounds.
> > > > > > > > > > +        * 2) Don't generate new bug type in order to prevent duplicate
> > > > > > > > > > reports
> > > > > > > > > > +        * by some systems, e.g. syzbot.
> > > > > > > > > > +        */
> > > > > > > > > > +       if ((long)info->access_size < 0)
> > > > > > > > > > +               return "out-of-bounds";
> > > > > > > > >
> > > > > > > > > "out-of-bounds" is the _least_ frequent KASAN bug type. It won't
> > > > > > > > > prevent duplicates. "heap-out-of-bounds" is the frequent one.
> > > > > > > >
> > > > > > > >
> > > > > > > >     /*
> > > > > > > >      * If access_size is negative numbers, then it has two reasons
> > > > > > > >      * to be defined as out-of-bounds bug type.
> > > > > > > >      * 1) Casting negative numbers to size_t would indeed turn up as
> > > > > > > >      * a  "large" size_t and its value will be larger than ULONG_MAX/2,
> > > > > > > >      *    so that this can qualify as out-of-bounds.
> > > > > > > >      * 2) Don't generate new bug type in order to prevent duplicate
> > > > > > > > reports
> > > > > > > >      *    by some systems, e.g. syzbot. "out-of-bounds" is the _least_
> > > > > > > > frequent KASAN bug type.
> > > > > > > >      *    It won't prevent duplicates. "heap-out-of-bounds" is the
> > > > > > > > frequent one.
> > > > > > > >      */
> > > > > > > >
> > > > > > > > We directly add it into the comment.
> > > > > > >
> > > > > > >
> > > > > > > OK, let's start from the beginning: why do you return "out-of-bounds" here?
> > > > > > >
> > > > > > Uh, comment 1 and 2 should explain it. :)
> > > > >
> > > > > The comment says it will cause duplicate reports. It does not explain
> > > > > why you want syzbot to produce duplicate reports and spam kernel
> > > > > developers... So why do you want that?
> > > > >
> > > > We don't generate new bug type in order to prevent duplicate by some
> > > > systems, e.g. syzbot. Is it right? If yes, then it should not have
> > > > duplicate report.
> > > >
> > > Sorry, because we don't generate new bug type. it should be duplicate
> > > report(only one report which may be oob or size invlid),
> > > the duplicate report goal is that invalid size is oob issue, too.
> > >
> > > I would not introduce a new bug type.
> > > These are parsed and used by some systems, e.g. syzbot. If size is
> > > user-controllable, then a new bug type for this will mean 2 bug
> > > reports.
> >
> > To prevent duplicates, the new crash title must not just match _any_
> > crash title that kernel can potentially produce. It must match exactly
> > the crash that kernel produces for this bug on other input data.
> >
> > Consider, userspace passes size=123, KASAN produces "heap-out-of-bounds in foo".
> > Now userspace passes size=-1 and KASAN produces "invalid-size in foo".
> > This will be a duplicate bug report.
> > Now if KASAN will produce "out-of-bounds in foo", it will also lead to
> > a duplicate report.
> > Only iff KASAN will produce "heap-out-of-bounds in foo" for size=-1,
> > it will not lead to a duplicate report.
>
> I think it is not easy to avoid the duplicate report(mentioned above).
> As far as my knowledge is concerned, KASAN is memory corruption detector
> in kernel space, it should only detect memory corruption and don't
> distinguish whether it is passed by userspace. if we want to do, then we
> may need to parse backtrace to check if it has copy_form_user() or other
> function?

My idea was just to always print "heap-out-of-bounds" and don't
differentiate if the size come from userspace or not.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
