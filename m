Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6FABCB3F8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 06:42:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rsd1+mabWXXE3G/0t+cDyHjR/GptcKRbyHv+0C+K0a0=; b=Gn5qU12MQalUGI
	t6mQvNhG4dn0rALBNB4konYXtBORzLFLANAWQ2DwtLyrRMtHgV7Lcnpz/iqDg4tDrNj4Y/1kTOKxo
	XavXJ4WRo2bqSMpMRdD0RMQz6e+HFcKI0y6tnNR4P8YW4VQFCbcU2+FWmpJEkq6j/UtBB0wztRLqo
	qp0M0PbRcfL3fY1V8eu9j7gRWV2IxfvZeH2Ye0YYppKfaBiHIDr4Q8IWu0R7JerQqXLUIycCU9Bd2
	Ir92qqmTB2VjqXxIltmLk9LElPaLWNhctdcla+Z24662V0plgKZUMmfZI5Bu6ip1mIepPcpuPyu+o
	HBqJs+WsycGuzpcvb5rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGFQJ-0006Hl-Sp; Fri, 04 Oct 2019 04:42:35 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGFQB-0006HG-Tc; Fri, 04 Oct 2019 04:42:29 +0000
X-UUID: c4d9d0af129048c7b6bf80063d667321-20191003
X-UUID: c4d9d0af129048c7b6bf80063d667321-20191003
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 373828557; Thu, 03 Oct 2019 20:42:22 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 3 Oct 2019 21:42:21 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 4 Oct 2019 12:42:20 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 4 Oct 2019 12:42:20 +0800
Message-ID: <1570164140.19702.97.camel@mtksdccf07>
Subject: Re: [PATCH] kasan: fix the missing underflow in memmove and memcpy
 with CONFIG_KASAN_GENERIC=y
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Dmitry Vyukov <dvyukov@google.com>
Date: Fri, 4 Oct 2019 12:42:20 +0800
In-Reply-To: <CACT4Y+aKrC8mtcDTVhM-So-TTLjOyFCD7r6jryWFH6i2he1WJA@mail.gmail.com>
References: <20190927034338.15813-1-walter-zh.wu@mediatek.com>
 <CACT4Y+Zxz+R=qQxSMoipXoLjRqyApD3O0eYpK0nyrfGHE4NNPw@mail.gmail.com>
 <1569594142.9045.24.camel@mtksdccf07>
 <CACT4Y+YuAxhKtL7ho7jpVAPkjG-JcGyczMXmw8qae2iaZjTh_w@mail.gmail.com>
 <1569818173.17361.19.camel@mtksdccf07>
 <1570018513.19702.36.camel@mtksdccf07>
 <CACT4Y+bbZhvz9ZpHtgL8rCCsV=ybU5jA6zFnJBL7gY2cNXDLyQ@mail.gmail.com>
 <1570069078.19702.57.camel@mtksdccf07>
 <CACT4Y+ZwNv2-QBrvuR2JvemovmKPQ9Ggrr=ZkdTg6xy_Ki6UAg@mail.gmail.com>
 <1570095525.19702.59.camel@mtksdccf07>
 <1570110681.19702.64.camel@mtksdccf07>
 <CACT4Y+aKrC8mtcDTVhM-So-TTLjOyFCD7r6jryWFH6i2he1WJA@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_214227_969996_924B8578 
X-CRM114-Status: GOOD (  23.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Thu, 2019-10-03 at 16:53 +0200, Dmitry Vyukov wrote:
> On Thu, Oct 3, 2019 at 3:51 PM Walter Wu <walter-zh.wu@mediatek.com> wrote:>
> > how about this?
> >
> > commit fd64691026e7ccb8d2946d0804b0621ac177df38
> > Author: Walter Wu <walter-zh.wu@mediatek.com>
> > Date:   Fri Sep 27 09:54:18 2019 +0800
> >
> >     kasan: detect invalid size in memory operation function
> >
> >     It is an undefined behavior to pass a negative value to
> > memset()/memcpy()/memmove()
> >     , so need to be detected by KASAN.
> >
> >     KASAN report:
> >
> >      BUG: KASAN: invalid size 18446744073709551614 in
> > kmalloc_memmove_invalid_size+0x70/0xa0
> >
> >      CPU: 1 PID: 91 Comm: cat Not tainted
> > 5.3.0-rc1ajb-00001-g31943bbc21ce-dirty #7
> >      Hardware name: linux,dummy-virt (DT)
> >      Call trace:
> >       dump_backtrace+0x0/0x278
> >       show_stack+0x14/0x20
> >       dump_stack+0x108/0x15c
> >       print_address_description+0x64/0x368
> >       __kasan_report+0x108/0x1a4
> >       kasan_report+0xc/0x18
> >       check_memory_region+0x15c/0x1b8
> >       memmove+0x34/0x88
> >       kmalloc_memmove_invalid_size+0x70/0xa0
> >
> >     [1] https://bugzilla.kernel.org/show_bug.cgi?id=199341
> >
> >     Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
> >     Reported-by: Dmitry Vyukov <dvyukov@google.com>
> >
> > diff --git a/lib/test_kasan.c b/lib/test_kasan.c
> > index b63b367a94e8..e4e517a51860 100644
> > --- a/lib/test_kasan.c
> > +++ b/lib/test_kasan.c
> > @@ -280,6 +280,23 @@ static noinline void __init
> > kmalloc_oob_in_memset(void)
> >         kfree(ptr);
> >  }
> >
> > +static noinline void __init kmalloc_memmove_invalid_size(void)
> > +{
> > +       char *ptr;
> > +       size_t size = 64;
> > +
> > +       pr_info("invalid size in memmove\n");
> > +       ptr = kmalloc(size, GFP_KERNEL);
> > +       if (!ptr) {
> > +               pr_err("Allocation failed\n");
> > +               return;
> > +       }
> > +
> > +       memset((char *)ptr, 0, 64);
> > +       memmove((char *)ptr, (char *)ptr + 4, -2);
> > +       kfree(ptr);
> > +}
> > +
> >  static noinline void __init kmalloc_uaf(void)
> >  {
> >         char *ptr;
> > @@ -734,6 +751,7 @@ static int __init kmalloc_tests_init(void)
> >         kmalloc_oob_memset_4();
> >         kmalloc_oob_memset_8();
> >         kmalloc_oob_memset_16();
> > +       kmalloc_memmove_invalid_size;
> >         kmalloc_uaf();
> >         kmalloc_uaf_memset();
> >         kmalloc_uaf2();
> > diff --git a/mm/kasan/common.c b/mm/kasan/common.c
> > index 2277b82902d8..5fd377af7457 100644
> > --- a/mm/kasan/common.c
> > +++ b/mm/kasan/common.c
> > @@ -102,7 +102,8 @@ EXPORT_SYMBOL(__kasan_check_write);
> >  #undef memset
> >  void *memset(void *addr, int c, size_t len)
> >  {
> > -       check_memory_region((unsigned long)addr, len, true, _RET_IP_);
> > +       if(!check_memory_region((unsigned long)addr, len, true, _RET_IP_))
> > +               return NULL;
> 
> Overall approach looks good to me.
> A good question is what we should return here. All bets are off after
> a report, but we still try to "minimize damage". One may argue for
> returning addr here and in other functions. But the more I think about
> this, the more I think it does not matter.
> 
agreed

> 
> >         return __memset(addr, c, len);
> >  }
> > @@ -110,7 +111,8 @@ void *memset(void *addr, int c, size_t len)
> >  #undef memmove
> >  void *memmove(void *dest, const void *src, size_t len)
> >  {
> > -       check_memory_region((unsigned long)src, len, false, _RET_IP_);
> > +       if(!check_memory_region((unsigned long)src, len, false, _RET_IP_))
> > +               return NULL;
> >         check_memory_region((unsigned long)dest, len, true, _RET_IP_);
> >
> >         return __memmove(dest, src, len);
> > @@ -119,7 +121,8 @@ void *memmove(void *dest, const void *src, size_t
> > len)
> >  #undef memcpy
> >  void *memcpy(void *dest, const void *src, size_t len)
> >  {
> > -       check_memory_region((unsigned long)src, len, false, _RET_IP_);
> > +       if(!check_memory_region((unsigned long)src, len, false, _RET_IP_))
> > +               return NULL;
> >         check_memory_region((unsigned long)dest, len, true, _RET_IP_);
> >
> >         return __memcpy(dest, src, len);
> > diff --git a/mm/kasan/generic.c b/mm/kasan/generic.c
> > index 616f9dd82d12..02148a317d27 100644
> > --- a/mm/kasan/generic.c
> > +++ b/mm/kasan/generic.c
> > @@ -173,6 +173,11 @@ static __always_inline bool
> > check_memory_region_inline(unsigned long addr,
> >         if (unlikely(size == 0))
> >                 return true;
> >
> > +       if (unlikely((long)size < 0)) {
> > +               kasan_report(addr, size, write, ret_ip);
> > +               return false;
> > +       }
> > +
> >         if (unlikely((void *)addr <
> >                 kasan_shadow_to_mem((void *)KASAN_SHADOW_START))) {
> >                 kasan_report(addr, size, write, ret_ip);
> > diff --git a/mm/kasan/report.c b/mm/kasan/report.c
> > index 0e5f965f1882..0cd317ef30f5 100644
> > --- a/mm/kasan/report.c
> > +++ b/mm/kasan/report.c
> > @@ -68,11 +68,16 @@ __setup("kasan_multi_shot", kasan_set_multi_shot);
> >
> >  static void print_error_description(struct kasan_access_info *info)
> >  {
> > -       pr_err("BUG: KASAN: %s in %pS\n",
> > -               get_bug_type(info), (void *)info->ip);
> > -       pr_err("%s of size %zu at addr %px by task %s/%d\n",
> > -               info->is_write ? "Write" : "Read", info->access_size,
> > -               info->access_addr, current->comm, task_pid_nr(current));
> > +       if ((long)info->access_size < 0) {
> > +               pr_err("BUG: KASAN: invalid size %zu in %pS\n",
> > +                       info->access_size, (void *)info->ip);
> 
> I would not introduce a new bug type.
> These are parsed and used by some systems, e.g. syzbot. If size is
> user-controllable, then a new bug type for this will mean 2 bug
> reports.
> It also won't harm to print Read/Write, definitely the address, so no
> reason to special case this out of a dozen of report formats.
> This can qualify as out-of-bounds (definitely will cross some
> bounds!), so I would change get_bug_type() to return
> "slab-out-of-bounds" (as the most common OOB) in such case (with a
> comment).
> 
Print Read/Write and address information, it is ok.
But if we can directly point to the root cause of this problem, why we
not do it?  see 1) and 2) to get a point, if we print OOB, then user
needs one minute to think what is root case of this problem, but if we
print invalid size, then user can directly get root case. this is my
original thinking.
1)Invalid size is true then OOB is true.
2)OOB is true then invalid size may be true or false.

But I see you say some systems have used bug report so that avoid this
trouble, i will print the wrong type is "out-of-bound" in a unified way
when size<0.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
