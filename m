Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EAA9F71BE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 11:18:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xbem8T1zQfCP1UPerXoZkXvonWzm6JcNjK452w02zuo=; b=YaAL/qn2mm6EoQ
	PZCZNeTEirESD/OurHFrQnOLBN5UYATCuj8ZNVeeVhCmNOjjKfY70AiGwbDaUPpxsx29FKiKSmkq+
	baeFOtMWqvM7JZhhJi8aLALXyFPpN3macyN9SFCt9Wy6IiP8JZZTbDrwAeo563gt7EqUjzd45yRl4
	eAJ3siz2jg3jwUc1MOcjb6/4UKWl4NgGYMqxcejExCY2eQflmFBF6Md5/Q5lg0WD7FetfVCDfvlTI
	lknri3lTan9FM+NpUcQQtF33ISApEJpvJ/fa6RAvngkfXSTlC0t+SfS8pkd1/NvFU4dF0rKhYPQ15
	c3O0Roj0qBrFaJt58jkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU6md-0000F1-IZ; Mon, 11 Nov 2019 10:18:55 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU6lZ-0000Dt-Ld
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 10:17:52 +0000
Received: by mail-qk1-x744.google.com with SMTP id z16so10680262qkg.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 02:17:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0DS5VW8HLST3ocKeDeJ9QZgQRHqn3pgbndgTPCNayrE=;
 b=lFDOhEqVjOSXfNJBmRBz0twb2+nSO8ILygUTgNCKcexs7dLnkD4sI/nkATPjC74Wxi
 UDAL3kRkslYDnoZa+Czz7oq/sYtZqK4oM68t25IP89Tapvl3kjI2BI+Andtou/ufhXWh
 hqvN5aD7TA7I3LgLC0MP7mZmdL27Gtjq6Gz2fJXOY7oOdPpIrOS7vFCdKekB0ZM9Sbhp
 Mot7fZmRkLvbhFjFKdn5uzCL6uId6VsLXbRHZ7sp+NYsdavvhNFkmfwMc/7Dfw5CsOg+
 ymc4HArERq2B/0Uz/QLaBK56LAk28svJawPdlYJzeIFp5MtlW+vKYXTZhh2k+1XkKPea
 lWZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0DS5VW8HLST3ocKeDeJ9QZgQRHqn3pgbndgTPCNayrE=;
 b=OLeu4qHJoBC3lMM9Jp9nxEspvIEzLPddBulwvrWzeqfTH+lPuDDB/bVxooTyRPLQ9r
 n3kZb4TPRl5Si9nL16ssCXn3wDzNPEhXnYwvaRVi53+Y80uF/QcM/CT1rwUIcObEMcvu
 8Z0tbE81fHdDXsCfZEI4GdE5XZcxzTPpna4hjr5aAoG5DA9NI0zUgBKOyblMv4FOUKuJ
 dGHacjyOnnf5LgJi3jgV6+Ze1DFloN1Jx2eA0ybSibTi1RZmZhNYWHDdPWFRT/k/YK38
 ro0Yd05SuJk0Ha35XQPoMgSH51Ew+ptCFdJho0bhvhbjfNYYbXzve27PeD8SUcQ3zLig
 qezQ==
X-Gm-Message-State: APjAAAWLUIhb5gETMGk2SOBs8VSbxE8MGiTq5Ru6JtKO6UaPOncmTXAL
 ziTGzlsVWD/KgGUJcgitPUHGw9WLkykTbSNV70cNiA==
X-Google-Smtp-Source: APXvYqzngyp3gzCT7vLNBQdqFfCduZnei2+2jqfx418+UCn/40IJzE6IHh4VhuB/6RGs/fBSwvjY12hbIRv9V9b1U7s=
X-Received: by 2002:a05:620a:1127:: with SMTP id
 p7mr5628740qkk.250.1573467467767; 
 Mon, 11 Nov 2019 02:17:47 -0800 (PST)
MIME-Version: 1.0
References: <20191104020519.27988-1-walter-zh.wu@mediatek.com>
 <34bf9c08-d2f2-a6c6-1dbe-29b1456d8284@virtuozzo.com>
 <1573456464.20611.45.camel@mtksdccf07>
 <757f0296-7fa0-0e5e-8490-3eca52da41ad@virtuozzo.com>
 <1573467150.20611.57.camel@mtksdccf07>
In-Reply-To: <1573467150.20611.57.camel@mtksdccf07>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Mon, 11 Nov 2019 11:17:35 +0100
Message-ID: <CACT4Y+bxWCF0WCkVxi+Qq3pztAXf2g-eBG5oexmQsQ65xrmiRw@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] kasan: detect negative size in memory operation
 function
To: Walter Wu <walter-zh.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_021750_026773_BADEB117 
X-CRM114-Status: GOOD (  26.15  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 LKML <linux-kernel@vger.kernel.org>, kasan-dev <kasan-dev@googlegroups.com>,
 Linux-MM <linux-mm@kvack.org>, Alexander Potapenko <glider@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 11, 2019 at 11:12 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> > On 11/11/19 10:14 AM, Walter Wu wrote:
> > > On Sat, 2019-11-09 at 01:31 +0300, Andrey Ryabinin wrote:
> > >>
> > >> On 11/4/19 5:05 AM, Walter Wu wrote:
> > >>
> > >>>
> > >>> diff --git a/mm/kasan/common.c b/mm/kasan/common.c
> > >>> index 6814d6d6a023..4ff67e2fd2db 100644
> > >>> --- a/mm/kasan/common.c
> > >>> +++ b/mm/kasan/common.c
> > >>> @@ -99,10 +99,14 @@ bool __kasan_check_write(const volatile void *p, unsigned int size)
> > >>>  }
> > >>>  EXPORT_SYMBOL(__kasan_check_write);
> > >>>
> > >>> +extern bool report_enabled(void);
> > >>> +
> > >>>  #undef memset
> > >>>  void *memset(void *addr, int c, size_t len)
> > >>>  {
> > >>> - check_memory_region((unsigned long)addr, len, true, _RET_IP_);
> > >>> + if (report_enabled() &&
> > >>> +     !check_memory_region((unsigned long)addr, len, true, _RET_IP_))
> > >>> +         return NULL;
> > >>>
> > >>>   return __memset(addr, c, len);
> > >>>  }
> > >>> @@ -110,8 +114,10 @@ void *memset(void *addr, int c, size_t len)
> > >>>  #undef memmove
> > >>>  void *memmove(void *dest, const void *src, size_t len)
> > >>>  {
> > >>> - check_memory_region((unsigned long)src, len, false, _RET_IP_);
> > >>> - check_memory_region((unsigned long)dest, len, true, _RET_IP_);
> > >>> + if (report_enabled() &&
> > >>> +    (!check_memory_region((unsigned long)src, len, false, _RET_IP_) ||
> > >>> +     !check_memory_region((unsigned long)dest, len, true, _RET_IP_)))
> > >>> +         return NULL;
> > >>>
> > >>>   return __memmove(dest, src, len);
> > >>>  }
> > >>> @@ -119,8 +125,10 @@ void *memmove(void *dest, const void *src, size_t len)
> > >>>  #undef memcpy
> > >>>  void *memcpy(void *dest, const void *src, size_t len)
> > >>>  {
> > >>> - check_memory_region((unsigned long)src, len, false, _RET_IP_);
> > >>> - check_memory_region((unsigned long)dest, len, true, _RET_IP_);
> > >>> + if (report_enabled() &&
> > >>
> > >>             report_enabled() checks seems to be useless.
> > >>
> > >
> > > Hi Andrey,
> > >
> > > If it doesn't have report_enable(), then it will have below the error.
> > > We think it should be x86 shadow memory is invalid value before KASAN
> > > initialized, it will have some misjudgments to do directly return when
> > > it detects invalid shadow value in memset()/memcpy()/memmove(). So we
> > > add report_enable() to avoid this happening. but we should only use the
> > > condition "current->kasan_depth == 0" to determine if KASAN is
> > > initialized. And we try it is pass at x86.
> > >
> >
> > Ok, I see. It just means that check_memory_region() return incorrect result in early stages of boot.
> > So, the right way to deal with this would be making kasan_report() to return bool ("false" if no report and "true" if reported)
> > and propagate this return value up to check_memory_region().
> >
> This changes in v4.
>
> >
> > >>> diff --git a/mm/kasan/generic_report.c b/mm/kasan/generic_report.c
> > >>> index 36c645939bc9..52a92c7db697 100644
> > >>> --- a/mm/kasan/generic_report.c
> > >>> +++ b/mm/kasan/generic_report.c
> > >>> @@ -107,6 +107,24 @@ static const char *get_wild_bug_type(struct kasan_access_info *info)
> > >>>
> > >>>  const char *get_bug_type(struct kasan_access_info *info)
> > >>>  {
> > >>> + /*
> > >>> +  * If access_size is negative numbers, then it has three reasons
> > >>> +  * to be defined as heap-out-of-bounds bug type.
> > >>> +  * 1) Casting negative numbers to size_t would indeed turn up as
> > >>> +  *    a large size_t and its value will be larger than ULONG_MAX/2,
> > >>> +  *    so that this can qualify as out-of-bounds.
> > >>> +  * 2) If KASAN has new bug type and user-space passes negative size,
> > >>> +  *    then there are duplicate reports. So don't produce new bug type
> > >>> +  *    in order to prevent duplicate reports by some systems
> > >>> +  *    (e.g. syzbot) to report the same bug twice.
> > >>> +  * 3) When size is negative numbers, it may be passed from user-space.
> > >>> +  *    So we always print heap-out-of-bounds in order to prevent that
> > >>> +  *    kernel-space and user-space have the same bug but have duplicate
> > >>> +  *    reports.
> > >>> +  */
> > >>
> > >> Completely fail to understand 2) and 3). 2) talks something about *NOT* producing new bug
> > >> type, but at the same time you code actually does that.
> > >> 3) says something about user-space which have nothing to do with kasan.
> > >>
> > > about 2)
> > > We originally think the heap-out-of-bounds is similar to
> > > heap-buffer-overflow, maybe we should change the bug type to
> > > heap-buffer-overflow.
> >
> > There is no "heap-buffer-overflow".
> >
> If I remember correctly, "heap-buffer-overflow" is one of existing bug
> type in user-space? Or you want to expect to see an existing bug type in
> kernel space?

Existing bug in KASAN.
KASAN and ASAN bugs will never match regardless of what we do. They
are simply in completely different code. So aligning titles between
kernel and userspace will not lead to any better deduplication.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
