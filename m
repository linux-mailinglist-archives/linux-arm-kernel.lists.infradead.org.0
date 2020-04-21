Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC701B2704
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 15:02:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sBJK8Fe3mP8nKnC0fKSUnuLjVUjQvLO3dn2rJStsz4I=; b=fF+3wwLAz2MRst
	UfshuwwySWZ3g4CqBYCmuQrp89FtVpdf7oXMBuOzUe4JKEWJ0fogKQHtpGhj0XbFe9dOQ9LHDFgrZ
	fp9DdrAYYxJxOAsvA4a9KBiX5CSs5l0sHgVcdpLxGwrdFakFBT1e3XMXJWNzGBeBh52nc7zTnGSQt
	55kedjOyUKxYoPibC2pFoq6NELGgT6QJ8Y7RWlpIZpIpWHOjtOIQgPn4uEpXojP8zJXKJCM/XiR8M
	3xthMcDCTRYJCZQl1L4KqK6XMypXtODm74TeTLH5izI5aU6eOR5N8Sz9Glx5XqDVJxrVkFix/bPBR
	kIvanOMxz+eMwfo/dQnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQsXH-0000w9-0A; Tue, 21 Apr 2020 13:01:59 +0000
Received: from mail-qv1-xf42.google.com ([2607:f8b0:4864:20::f42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQsX4-0000sf-Rv
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 13:01:48 +0000
Received: by mail-qv1-xf42.google.com with SMTP id bu9so6428759qvb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 06:01:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6bxpXR7bk9lriyagOO2UqkV9Fm2IwK+BGPfkmvwlllg=;
 b=Y1fbcTDdB4pAfXbWuu0qCG+GiUYb96vpjnmGAFccY+9j1v13cfYYYRjb73MRcZXYkp
 U6EUTapHN9b9XenIOE4lK9D0skhRRaKRbgIi6UH10YgxB4FSdYbtrmmyy2mFX7rQ+8R/
 kGn6S3t1uPAksnkCI4N/P4q0xaxZzwS+9Yp5d8ADm/pq1cwx0wJSHVhSFnoBFkZKOH+E
 yDdrM2omM7plYRSKEiPH9ZORCCGp7mEKBEyRIXDcFjWKwc7f5WS6l8QkW9Ak/SJoA07r
 kCGwk+SL2V5/2244fqoqANhTIqFEGclIW9TN9d2rthe3JBNWnOtS58O/PtfRNthm8+61
 T37Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6bxpXR7bk9lriyagOO2UqkV9Fm2IwK+BGPfkmvwlllg=;
 b=Bjp79/1qzVtBMlY9oGB9XhmcM0WlzYomPeYs/UiyAzfmr9f3Z0baJhbY0bMQapQFme
 TRGrZAIlgHUrKe9kjftp/vcAuaTCfjhncAfVxYfkhnP/yALsVUPQHta+/hI5Z8tjR28S
 VO0dWMoiiPFiLQyQ57f6gPbAnn3TqU20zzNuYXSet72kgkwAbFBuoFERDpJEvyRB6TRs
 9M7prgyrvfnNZiir6v5VDbNp9rvORtK1PmYR3ZE92TcF7ZK4cYW5fgksZG3i2edveS0p
 23da2kZHsdP5dJvZRp+iAjVEjPnP9RQLgk3gE8PSrpj9z9rOCp337p/asVy3l8rZHbjI
 3YBA==
X-Gm-Message-State: AGi0PuZw+saFbh/5JLmxg0K3UO8mlx0KA57v0uDM/i8bZBKP2gFidIuo
 rbVWv8+/ZmIm8JvYdbzstRHYUsqhexvnqvBknTmrOA==
X-Google-Smtp-Source: APiQypLBt/g9IVIcofjvmBFH/qVYPkFDIZThvQ9tJkf8X2mWe5oPzgaUwrZkerf+z9oIHEEkmTmVpUTSEno7/Es3070=
X-Received: by 2002:a0c:b2d2:: with SMTP id d18mr2496270qvf.80.1587474103980; 
 Tue, 21 Apr 2020 06:01:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200421014007.6012-1-walter-zh.wu@mediatek.com>
 <CACT4Y+af5fegnN9XOUSkf_B62J5sf2ZZbUwYk=GxtSmAhF3ryQ@mail.gmail.com>
 <1587472005.5870.7.camel@mtksdccf07>
In-Reply-To: <1587472005.5870.7.camel@mtksdccf07>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Tue, 21 Apr 2020 15:01:31 +0200
Message-ID: <CACT4Y+avYV1xoqB6V5XrQSs-p2s3mKKu+LZQc4EzPaW-jV+KaA@mail.gmail.com>
Subject: Re: [PATCH] kasan: fix KASAN unit tests for tag-based KASAN
To: Walter Wu <walter-zh.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_060146_930819_DB9D0437 
X-CRM114-Status: GOOD (  31.33  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f42 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: wsd_upstream <wsd_upstream@mediatek.com>,
 Patricia Alfonso <trishalfonso@google.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Brendan Higgins <brendanhiggins@google.com>,
 LKML <linux-kernel@vger.kernel.org>, kasan-dev <kasan-dev@googlegroups.com>,
 Linux-MM <linux-mm@kvack.org>, linux-mediatek@lists.infradead.org,
 Alexander Potapenko <glider@google.com>, David Gow <davidgow@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 21, 2020 at 2:26 PM Walter Wu <walter-zh.wu@mediatek.com> wrote:
>
> Hi Dmitry,
>
> On Tue, 2020-04-21 at 13:56 +0200, Dmitry Vyukov wrote:
> > On Tue, Apr 21, 2020 at 3:40 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> > >
> > > When we use tag-based KASAN, then KASAN unit tests don't detect
> > > out-of-bounds memory access. Because with tag-based KASAN the state
> > > of each 16 aligned bytes of memory is encoded in one shadow byte
> > > and the shadow value is tag of pointer, so we need to read next
> > > shadow byte, the shadow value is not equal to tag of pointer,
> > > then tag-based KASAN will detect out-of-bounds memory access.
> > >
> > > Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
> > > Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
> > > Cc: Dmitry Vyukov <dvyukov@google.com>
> > > Cc: Alexander Potapenko <glider@google.com>
> > > Cc: Matthias Brugger <matthias.bgg@gmail.com>
> > > Cc: Andrey Konovalov <andreyknvl@google.com>
> > > Cc: Andrew Morton <akpm@linux-foundation.org>
> > > ---
> > >  lib/test_kasan.c | 62 ++++++++++++++++++++++++++++++++++++++++++------
> > >  1 file changed, 55 insertions(+), 7 deletions(-)
> > >
> > > diff --git a/lib/test_kasan.c b/lib/test_kasan.c
> > > index e3087d90e00d..a164f6b47fe5 100644
> > > --- a/lib/test_kasan.c
> > > +++ b/lib/test_kasan.c
> > > @@ -40,7 +40,12 @@ static noinline void __init kmalloc_oob_right(void)
> > >                 return;
> > >         }
> >
> > Hi Walter,
> >
> > This would be great to have!
> > But I am concerned about these series that port KASAN tests to KUNIT:
> > https://lkml.org/lkml/2020/4/17/1144
> > I suspect it will be one large merge conflict. Not sure what is the
> > proper way to resovle this. I've added authors to CC.
> >
> Yes, it should have conflicts. Thanks for your reminder.
> >
> > > +#ifdef CONFIG_KASAN_GENERIC
> > >         ptr[size] = 'x';
> > > +#else
> > > +       ptr[size + 5] = 'x';
> > > +#endif
> > > +
> >
> > For this particular snippet I think we can reduce amount of idef'ery
> > and amount of non-compiled code in each configuration with something
> > like:
> >
> >   ptr[size + 5] = 'x';
> >   if (ENABLED(CONFIG_KASAN_GENERIC))
> >       ptr[size] = 'x';
> >
> > One check runs always (it should pass in both configs, right?). The
>
> There is a problem, With generic KASAN it may trigger two KASAN reports.

Why is this a problem? If there are 2, fine. KUNIT can check that if
we expect 2, there are indeed 2.

> if we change it like:
>
> if (ENABLED(CONFIG_KASAN_GENERIC))
>     ptr[size] = 'x';
> else
>     ptr[size + 5] = 'x';
>
> > only only in GENERIC, but it's C-level if rather than preprocessor.
> > KUNIT should make 2 bugs per test easily expressable (and testable).
> >
>
> >
> >
> >
> > >         kfree(ptr);
> > >  }
> > >
> > > @@ -92,7 +97,12 @@ static noinline void __init kmalloc_pagealloc_oob_right(void)
> > >                 return;
> > >         }
> > >
> > > +#ifdef CONFIG_KASAN_GENERIC
> > >         ptr[size] = 0;
> > > +#else
> > > +       ptr[size + 6] = 0;
> > > +#endif
> > > +
> > >         kfree(ptr);
> > >  }
> > >
> > > @@ -162,7 +172,11 @@ static noinline void __init kmalloc_oob_krealloc_more(void)
> > >                 return;
> > >         }
> > >
> > > +#ifdef CONFIG_KASAN_GENERIC
> > >         ptr2[size2] = 'x';
> > > +#else
> > > +       ptr2[size2 + 13] = 'x';
> > > +#endif
> > >         kfree(ptr2);
> > >  }
> > >
> > > @@ -180,7 +194,12 @@ static noinline void __init kmalloc_oob_krealloc_less(void)
> > >                 kfree(ptr1);
> > >                 return;
> > >         }
> > > +
> > > +#ifdef CONFIG_KASAN_GENERIC
> > >         ptr2[size2] = 'x';
> > > +#else
> > > +       ptr2[size2 + 2] = 'x';
> > > +#endif
> > >         kfree(ptr2);
> > >  }
> > >
> > > @@ -216,7 +235,11 @@ static noinline void __init kmalloc_oob_memset_2(void)
> > >                 return;
> > >         }
> > >
> > > +#ifdef CONFIG_KASAN_GENERIC
> > >         memset(ptr+7, 0, 2);
> > > +#else
> > > +       memset(ptr+15, 0, 2);
> > > +#endif
> > >         kfree(ptr);
> > >  }
> > >
> > > @@ -232,7 +255,11 @@ static noinline void __init kmalloc_oob_memset_4(void)
> > >                 return;
> > >         }
> > >
> > > +#ifdef CONFIG_KASAN_GENERIC
> > >         memset(ptr+5, 0, 4);
> > > +#else
> > > +       memset(ptr+15, 0, 4);
> > > +#endif
> > >         kfree(ptr);
> > >  }
> > >
> > > @@ -249,7 +276,11 @@ static noinline void __init kmalloc_oob_memset_8(void)
> > >                 return;
> > >         }
> > >
> > > +#ifdef CONFIG_KASAN_GENERIC
> > >         memset(ptr+1, 0, 8);
> > > +#else
> > > +       memset(ptr+15, 0, 8);
> > > +#endif
> > >         kfree(ptr);
> > >  }
> > >
> > > @@ -265,7 +296,11 @@ static noinline void __init kmalloc_oob_memset_16(void)
> > >                 return;
> > >         }
> > >
> > > +#ifdef CONFIG_KASAN_GENERIC
> > >         memset(ptr+1, 0, 16);
> > > +#else
> > > +       memset(ptr+15, 0, 16);
> > > +#endif
> > >         kfree(ptr);
> > >  }
> > >
> > > @@ -281,7 +316,11 @@ static noinline void __init kmalloc_oob_in_memset(void)
> > >                 return;
> > >         }
> > >
> > > +#ifdef CONFIG_KASAN_GENERIC
> > >         memset(ptr, 0, size+5);
> > > +#else
> > > +       memset(ptr, 0, size+7);
> > > +#endif
> > >         kfree(ptr);
> > >  }
> > >
> > > @@ -415,7 +454,11 @@ static noinline void __init kmem_cache_oob(void)
> > >                 return;
> > >         }
> > >
> > > +#ifdef CONFIG_KASAN_GENERIC
> > >         *p = p[size];
> > > +#else
> > > +       *p = p[size + 8];
> > > +#endif
> > >         kmem_cache_free(cache, p);
> > >         kmem_cache_destroy(cache);
> > >  }
> > > @@ -497,6 +540,11 @@ static noinline void __init copy_user_test(void)
> > >         char __user *usermem;
> > >         size_t size = 10;
> > >         int unused;
> > > +#ifdef CONFIG_KASAN_GENERIC
> > > +       size_t oob_size = 1;
> > > +#else
> > > +       size_t oob_size = 7;
> > > +#endif
> > >
> > >         kmem = kmalloc(size, GFP_KERNEL);
> > >         if (!kmem)
> > > @@ -512,25 +560,25 @@ static noinline void __init copy_user_test(void)
> > >         }
> > >
> > >         pr_info("out-of-bounds in copy_from_user()\n");
> > > -       unused = copy_from_user(kmem, usermem, size + 1);
> > > +       unused = copy_from_user(kmem, usermem, size + oob_size);
> > >
> > >         pr_info("out-of-bounds in copy_to_user()\n");
> > > -       unused = copy_to_user(usermem, kmem, size + 1);
> > > +       unused = copy_to_user(usermem, kmem, size + oob_size);
> > >
> > >         pr_info("out-of-bounds in __copy_from_user()\n");
> > > -       unused = __copy_from_user(kmem, usermem, size + 1);
> > > +       unused = __copy_from_user(kmem, usermem, size + oob_size);
> > >
> > >         pr_info("out-of-bounds in __copy_to_user()\n");
> > > -       unused = __copy_to_user(usermem, kmem, size + 1);
> > > +       unused = __copy_to_user(usermem, kmem, size + oob_size);
> > >
> > >         pr_info("out-of-bounds in __copy_from_user_inatomic()\n");
> > > -       unused = __copy_from_user_inatomic(kmem, usermem, size + 1);
> > > +       unused = __copy_from_user_inatomic(kmem, usermem, size + oob_size);
> > >
> > >         pr_info("out-of-bounds in __copy_to_user_inatomic()\n");
> > > -       unused = __copy_to_user_inatomic(usermem, kmem, size + 1);
> > > +       unused = __copy_to_user_inatomic(usermem, kmem, size + oob_size);
> > >
> > >         pr_info("out-of-bounds in strncpy_from_user()\n");
> > > -       unused = strncpy_from_user(kmem, usermem, size + 1);
> > > +       unused = strncpy_from_user(kmem, usermem, size + oob_size);
> > >
> > >         vm_munmap((unsigned long)usermem, PAGE_SIZE);
> > >         kfree(kmem);
> > > --
> > > 2.18.0
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "kasan-dev" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to kasan-dev+unsubscribe@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/kasan-dev/20200421014007.6012-1-walter-zh.wu%40mediatek.com.
>
> --
> You received this message because you are subscribed to the Google Groups "kasan-dev" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to kasan-dev+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/kasan-dev/1587472005.5870.7.camel%40mtksdccf07.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
