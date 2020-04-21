Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 440AD1B2828
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 15:38:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tqIjLYZN2LW6szNmMfvklDejxyCoFtRONnA2aqEdIxI=; b=HUXMcdT/XSrHIz
	DmEhXU+pVa9AZ6C/GeQEuosHIzzitG9kL/E0bFYglOB+l3TmnFKIcqGreZMnzdtjobZ1fFhSdFPRg
	10APmTdF1bDhmRpCzlbfoUM5VxvcZIGIRgWvu+D76UhR2Uga9dWdgLzFiyr0TTLn4SZnJlLlZ3AfK
	hwnJbffJ3hqbeWgJRFR6Qoq9t2XTKosfuRppZUYMwBMUHOgZDmg+AoREArvRyB/Jmt6NjqoQOfWFR
	BBL3RVGEfx2MfsW/9gn/SAoFn7/sr3pQS8qADxuDSwZoVpwjcW8v5wAPli3G8otzvBtf2PgeWx5fU
	cPw691cW13SHgyljmvEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQt6K-0002b2-QN; Tue, 21 Apr 2020 13:38:12 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQt67-0002Yl-Kn; Tue, 21 Apr 2020 13:38:01 +0000
X-UUID: 7aef3cae0bc74e8ebfbf641041b22f82-20200421
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=JX00X8S2zWSDA5/Zsgs0O/ncM6aJvIG88Eh4mjiOiX4=; 
 b=UTEX4+n2pZQ0fF+O3YomMJTx5Chv4HrzbCXIH4djX0EtxWKEH0nnrPg/PkrPU8ht/SwiJIT0MmGZOUCbWQ8AD6mWxzrKWYedkpsHU7aQ3379tWU/sEGWrq8fmCOriTi+NVUEhlPVEuNzrPbOM7j7+msHHJjlTzkh/nctkzOcvLs=;
X-UUID: 7aef3cae0bc74e8ebfbf641041b22f82-20200421
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 473077511; Tue, 21 Apr 2020 05:37:33 -0800
Received: from MTKMBS06N2.mediatek.inc (172.21.101.130) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 21 Apr 2020 06:37:51 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs06n2.mediatek.inc (172.21.101.130) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 21 Apr 2020 21:37:52 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Tue, 21 Apr 2020 21:37:48 +0800
Message-ID: <1587476272.5870.15.camel@mtksdccf07>
Subject: Re: [PATCH] kasan: fix KASAN unit tests for tag-based KASAN
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Dmitry Vyukov <dvyukov@google.com>
Date: Tue, 21 Apr 2020 21:37:52 +0800
In-Reply-To: <CACT4Y+avYV1xoqB6V5XrQSs-p2s3mKKu+LZQc4EzPaW-jV+KaA@mail.gmail.com>
References: <20200421014007.6012-1-walter-zh.wu@mediatek.com>
 <CACT4Y+af5fegnN9XOUSkf_B62J5sf2ZZbUwYk=GxtSmAhF3ryQ@mail.gmail.com>
 <1587472005.5870.7.camel@mtksdccf07>
 <CACT4Y+avYV1xoqB6V5XrQSs-p2s3mKKu+LZQc4EzPaW-jV+KaA@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: BC3A44A52E9D8AE093BF388FD62DAE971AB1F492889557179C30B461B1F267482000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_063759_856973_E9EF013A 
X-CRM114-Status: GOOD (  30.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Patricia Alfonso <trishalfonso@google.com>, Andrey
 Konovalov <andreyknvl@google.com>, Brendan Higgins <brendanhiggins@google.com>,
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

On Tue, 2020-04-21 at 15:01 +0200, 'Dmitry Vyukov' via kasan-dev wrote:
> On Tue, Apr 21, 2020 at 2:26 PM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> >
> > Hi Dmitry,
> >
> > On Tue, 2020-04-21 at 13:56 +0200, Dmitry Vyukov wrote:
> > > On Tue, Apr 21, 2020 at 3:40 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> > > >
> > > > When we use tag-based KASAN, then KASAN unit tests don't detect
> > > > out-of-bounds memory access. Because with tag-based KASAN the state
> > > > of each 16 aligned bytes of memory is encoded in one shadow byte
> > > > and the shadow value is tag of pointer, so we need to read next
> > > > shadow byte, the shadow value is not equal to tag of pointer,
> > > > then tag-based KASAN will detect out-of-bounds memory access.
> > > >
> > > > Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
> > > > Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
> > > > Cc: Dmitry Vyukov <dvyukov@google.com>
> > > > Cc: Alexander Potapenko <glider@google.com>
> > > > Cc: Matthias Brugger <matthias.bgg@gmail.com>
> > > > Cc: Andrey Konovalov <andreyknvl@google.com>
> > > > Cc: Andrew Morton <akpm@linux-foundation.org>
> > > > ---
> > > >  lib/test_kasan.c | 62 ++++++++++++++++++++++++++++++++++++++++++------
> > > >  1 file changed, 55 insertions(+), 7 deletions(-)
> > > >
> > > > diff --git a/lib/test_kasan.c b/lib/test_kasan.c
> > > > index e3087d90e00d..a164f6b47fe5 100644
> > > > --- a/lib/test_kasan.c
> > > > +++ b/lib/test_kasan.c
> > > > @@ -40,7 +40,12 @@ static noinline void __init kmalloc_oob_right(void)
> > > >                 return;
> > > >         }
> > >
> > > Hi Walter,
> > >
> > > This would be great to have!
> > > But I am concerned about these series that port KASAN tests to KUNIT:
> > > https://lkml.org/lkml/2020/4/17/1144
> > > I suspect it will be one large merge conflict. Not sure what is the
> > > proper way to resovle this. I've added authors to CC.
> > >
> > Yes, it should have conflicts. Thanks for your reminder.
> > >
> > > > +#ifdef CONFIG_KASAN_GENERIC
> > > >         ptr[size] = 'x';
> > > > +#else
> > > > +       ptr[size + 5] = 'x';
> > > > +#endif
> > > > +
> > >
> > > For this particular snippet I think we can reduce amount of idef'ery
> > > and amount of non-compiled code in each configuration with something
> > > like:
> > >
> > >   ptr[size + 5] = 'x';
> > >   if (ENABLED(CONFIG_KASAN_GENERIC))
> > >       ptr[size] = 'x';
> > >
> > > One check runs always (it should pass in both configs, right?). The
> >
> > There is a problem, With generic KASAN it may trigger two KASAN reports.
> 
> Why is this a problem? If there are 2, fine. KUNIT can check that if
> we expect 2, there are indeed 2.
> 
Sorry, I originally assume my patch doesn't include in KUNIT. so I think
there is a problem. but I know your meaning. Can my patch upstream
first?

> > if we change it like:
> >
> > if (ENABLED(CONFIG_KASAN_GENERIC))
> >     ptr[size] = 'x';
> > else
> >     ptr[size + 5] = 'x';
> >
> > > only only in GENERIC, but it's C-level if rather than preprocessor.
> > > KUNIT should make 2 bugs per test easily expressable (and testable).
> > >
> >
> > >
> > >
> > >
> > > >         kfree(ptr);
> > > >  }
> > > >
> > > > @@ -92,7 +97,12 @@ static noinline void __init kmalloc_pagealloc_oob_right(void)
> > > >                 return;
> > > >         }
> > > >
> > > > +#ifdef CONFIG_KASAN_GENERIC
> > > >         ptr[size] = 0;
> > > > +#else
> > > > +       ptr[size + 6] = 0;
> > > > +#endif
> > > > +
> > > >         kfree(ptr);
> > > >  }
> > > >
> > > > @@ -162,7 +172,11 @@ static noinline void __init kmalloc_oob_krealloc_more(void)
> > > >                 return;
> > > >         }
> > > >
> > > > +#ifdef CONFIG_KASAN_GENERIC
> > > >         ptr2[size2] = 'x';
> > > > +#else
> > > > +       ptr2[size2 + 13] = 'x';
> > > > +#endif
> > > >         kfree(ptr2);
> > > >  }
> > > >
> > > > @@ -180,7 +194,12 @@ static noinline void __init kmalloc_oob_krealloc_less(void)
> > > >                 kfree(ptr1);
> > > >                 return;
> > > >         }
> > > > +
> > > > +#ifdef CONFIG_KASAN_GENERIC
> > > >         ptr2[size2] = 'x';
> > > > +#else
> > > > +       ptr2[size2 + 2] = 'x';
> > > > +#endif
> > > >         kfree(ptr2);
> > > >  }
> > > >
> > > > @@ -216,7 +235,11 @@ static noinline void __init kmalloc_oob_memset_2(void)
> > > >                 return;
> > > >         }
> > > >
> > > > +#ifdef CONFIG_KASAN_GENERIC
> > > >         memset(ptr+7, 0, 2);
> > > > +#else
> > > > +       memset(ptr+15, 0, 2);
> > > > +#endif
> > > >         kfree(ptr);
> > > >  }
> > > >
> > > > @@ -232,7 +255,11 @@ static noinline void __init kmalloc_oob_memset_4(void)
> > > >                 return;
> > > >         }
> > > >
> > > > +#ifdef CONFIG_KASAN_GENERIC
> > > >         memset(ptr+5, 0, 4);
> > > > +#else
> > > > +       memset(ptr+15, 0, 4);
> > > > +#endif
> > > >         kfree(ptr);
> > > >  }
> > > >
> > > > @@ -249,7 +276,11 @@ static noinline void __init kmalloc_oob_memset_8(void)
> > > >                 return;
> > > >         }
> > > >
> > > > +#ifdef CONFIG_KASAN_GENERIC
> > > >         memset(ptr+1, 0, 8);
> > > > +#else
> > > > +       memset(ptr+15, 0, 8);
> > > > +#endif
> > > >         kfree(ptr);
> > > >  }
> > > >
> > > > @@ -265,7 +296,11 @@ static noinline void __init kmalloc_oob_memset_16(void)
> > > >                 return;
> > > >         }
> > > >
> > > > +#ifdef CONFIG_KASAN_GENERIC
> > > >         memset(ptr+1, 0, 16);
> > > > +#else
> > > > +       memset(ptr+15, 0, 16);
> > > > +#endif
> > > >         kfree(ptr);
> > > >  }
> > > >
> > > > @@ -281,7 +316,11 @@ static noinline void __init kmalloc_oob_in_memset(void)
> > > >                 return;
> > > >         }
> > > >
> > > > +#ifdef CONFIG_KASAN_GENERIC
> > > >         memset(ptr, 0, size+5);
> > > > +#else
> > > > +       memset(ptr, 0, size+7);
> > > > +#endif
> > > >         kfree(ptr);
> > > >  }
> > > >
> > > > @@ -415,7 +454,11 @@ static noinline void __init kmem_cache_oob(void)
> > > >                 return;
> > > >         }
> > > >
> > > > +#ifdef CONFIG_KASAN_GENERIC
> > > >         *p = p[size];
> > > > +#else
> > > > +       *p = p[size + 8];
> > > > +#endif
> > > >         kmem_cache_free(cache, p);
> > > >         kmem_cache_destroy(cache);
> > > >  }
> > > > @@ -497,6 +540,11 @@ static noinline void __init copy_user_test(void)
> > > >         char __user *usermem;
> > > >         size_t size = 10;
> > > >         int unused;
> > > > +#ifdef CONFIG_KASAN_GENERIC
> > > > +       size_t oob_size = 1;
> > > > +#else
> > > > +       size_t oob_size = 7;
> > > > +#endif
> > > >
> > > >         kmem = kmalloc(size, GFP_KERNEL);
> > > >         if (!kmem)
> > > > @@ -512,25 +560,25 @@ static noinline void __init copy_user_test(void)
> > > >         }
> > > >
> > > >         pr_info("out-of-bounds in copy_from_user()\n");
> > > > -       unused = copy_from_user(kmem, usermem, size + 1);
> > > > +       unused = copy_from_user(kmem, usermem, size + oob_size);
> > > >
> > > >         pr_info("out-of-bounds in copy_to_user()\n");
> > > > -       unused = copy_to_user(usermem, kmem, size + 1);
> > > > +       unused = copy_to_user(usermem, kmem, size + oob_size);
> > > >
> > > >         pr_info("out-of-bounds in __copy_from_user()\n");
> > > > -       unused = __copy_from_user(kmem, usermem, size + 1);
> > > > +       unused = __copy_from_user(kmem, usermem, size + oob_size);
> > > >
> > > >         pr_info("out-of-bounds in __copy_to_user()\n");
> > > > -       unused = __copy_to_user(usermem, kmem, size + 1);
> > > > +       unused = __copy_to_user(usermem, kmem, size + oob_size);
> > > >
> > > >         pr_info("out-of-bounds in __copy_from_user_inatomic()\n");
> > > > -       unused = __copy_from_user_inatomic(kmem, usermem, size + 1);
> > > > +       unused = __copy_from_user_inatomic(kmem, usermem, size + oob_size);
> > > >
> > > >         pr_info("out-of-bounds in __copy_to_user_inatomic()\n");
> > > > -       unused = __copy_to_user_inatomic(usermem, kmem, size + 1);
> > > > +       unused = __copy_to_user_inatomic(usermem, kmem, size + oob_size);
> > > >
> > > >         pr_info("out-of-bounds in strncpy_from_user()\n");
> > > > -       unused = strncpy_from_user(kmem, usermem, size + 1);
> > > > +       unused = strncpy_from_user(kmem, usermem, size + oob_size);
> > > >
> > > >         vm_munmap((unsigned long)usermem, PAGE_SIZE);
> > > >         kfree(kmem);
> > > > --
> > > > 2.18.0
> > > >
> > > > --
> > > > You received this message because you are subscribed to the Google Groups "kasan-dev" group.
> > > > To unsubscribe from this group and stop receiving emails from it, send an email to kasan-dev+unsubscribe@googlegroups.com.
> > > > To view this discussion on the web visit https://groups.google.com/d/msgid/kasan-dev/20200421014007.6012-1-walter-zh.wu%40mediatek.com.
> >
> > --
> > You received this message because you are subscribed to the Google Groups "kasan-dev" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to kasan-dev+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/kasan-dev/1587472005.5870.7.camel%40mtksdccf07.
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
