Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CDCAF7203
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 11:30:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xrh5cA1y0gCJmAE/SFrTXN+rfMuaJ7UBpeN3tU95dnA=; b=uySdXKkGgd6MgJ
	n5DL4RbWeLQkcldFotqLOD0lxhuiZnMnfeWKjuXbePl9Xf1eZSZYKRmsbX/rt1jFD9Xjhum0MeRKt
	kN5HD4PNjkw9A8afSbDtb65cDFwJc5i7xSnyfaGmWnWAR8f33Lr5WiJaJxtfMAtVbHHxnzv8SsO9G
	Pc8Uy16O7ehiCDFl6fOBj2w3ToDI0EmsXa8zck/pXvzP4vunzBVGwzxWahJGXcqshu6bNkDvSYO3N
	K7aquMp8a1e2kD/HbhcNB/O34/h3m89EcOZ9CbwVwPEhVqAU9YhJEUsp00VauKqk902p/M1zW3ay3
	SfZgeRZ2tyebLXIibfIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU6x8-0002yF-FE; Mon, 11 Nov 2019 10:29:46 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU6w2-0002df-Tg
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 10:28:45 +0000
X-UUID: 2a6eb4d841ab4182952dc5b1be7c4db0-20191111
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=Uo09G+Mt+uFPoRjbYnLMUPPU/rQnCSKkFsV6CT6/YM4=; 
 b=X3BPNePRXGKJ657K5HiUcPOU82BEKqVSrq7Hu6msvac7UrlfTeNedap83FY7Avn4sYInMms1z0KpPSkyQd46wIuj96LQMYlFVIJKZeJOzXq2w4NFiU38RWCXnMccoBMHcK8n+coiCVGHXjjurFzGa//0EnlnHO4I3sAatmGmUf0=;
X-UUID: 2a6eb4d841ab4182952dc5b1be7c4db0-20191111
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1636575857; Mon, 11 Nov 2019 02:29:00 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 11 Nov 2019 02:28:32 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 11 Nov 2019 18:28:31 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 11 Nov 2019 18:28:30 +0800
Message-ID: <1573468113.20611.61.camel@mtksdccf07>
Subject: Re: [PATCH v3 1/2] kasan: detect negative size in memory operation
 function
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Dmitry Vyukov <dvyukov@google.com>
Date: Mon, 11 Nov 2019 18:28:33 +0800
In-Reply-To: <CACT4Y+bxWCF0WCkVxi+Qq3pztAXf2g-eBG5oexmQsQ65xrmiRw@mail.gmail.com>
References: <20191104020519.27988-1-walter-zh.wu@mediatek.com>
 <34bf9c08-d2f2-a6c6-1dbe-29b1456d8284@virtuozzo.com>
 <1573456464.20611.45.camel@mtksdccf07>
 <757f0296-7fa0-0e5e-8490-3eca52da41ad@virtuozzo.com>
 <1573467150.20611.57.camel@mtksdccf07>
 <CACT4Y+bxWCF0WCkVxi+Qq3pztAXf2g-eBG5oexmQsQ65xrmiRw@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_022838_979607_999F3CA3 
X-CRM114-Status: GOOD (  26.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 LKML <linux-kernel@vger.kernel.org>, kasan-dev <kasan-dev@googlegroups.com>,
 Linux-MM <linux-mm@kvack.org>, Alexander Potapenko <glider@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-11-11 at 11:17 +0100, Dmitry Vyukov wrote:
> On Mon, Nov 11, 2019 at 11:12 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> > > On 11/11/19 10:14 AM, Walter Wu wrote:
> > > > On Sat, 2019-11-09 at 01:31 +0300, Andrey Ryabinin wrote:
> > > >>
> > > >> On 11/4/19 5:05 AM, Walter Wu wrote:
> > > >>
> > > >>>
> > > >>> diff --git a/mm/kasan/common.c b/mm/kasan/common.c
> > > >>> index 6814d6d6a023..4ff67e2fd2db 100644
> > > >>> --- a/mm/kasan/common.c
> > > >>> +++ b/mm/kasan/common.c
> > > >>> @@ -99,10 +99,14 @@ bool __kasan_check_write(const volatile void *p, unsigned int size)
> > > >>>  }
> > > >>>  EXPORT_SYMBOL(__kasan_check_write);
> > > >>>
> > > >>> +extern bool report_enabled(void);
> > > >>> +
> > > >>>  #undef memset
> > > >>>  void *memset(void *addr, int c, size_t len)
> > > >>>  {
> > > >>> - check_memory_region((unsigned long)addr, len, true, _RET_IP_);
> > > >>> + if (report_enabled() &&
> > > >>> +     !check_memory_region((unsigned long)addr, len, true, _RET_IP_))
> > > >>> +         return NULL;
> > > >>>
> > > >>>   return __memset(addr, c, len);
> > > >>>  }
> > > >>> @@ -110,8 +114,10 @@ void *memset(void *addr, int c, size_t len)
> > > >>>  #undef memmove
> > > >>>  void *memmove(void *dest, const void *src, size_t len)
> > > >>>  {
> > > >>> - check_memory_region((unsigned long)src, len, false, _RET_IP_);
> > > >>> - check_memory_region((unsigned long)dest, len, true, _RET_IP_);
> > > >>> + if (report_enabled() &&
> > > >>> +    (!check_memory_region((unsigned long)src, len, false, _RET_IP_) ||
> > > >>> +     !check_memory_region((unsigned long)dest, len, true, _RET_IP_)))
> > > >>> +         return NULL;
> > > >>>
> > > >>>   return __memmove(dest, src, len);
> > > >>>  }
> > > >>> @@ -119,8 +125,10 @@ void *memmove(void *dest, const void *src, size_t len)
> > > >>>  #undef memcpy
> > > >>>  void *memcpy(void *dest, const void *src, size_t len)
> > > >>>  {
> > > >>> - check_memory_region((unsigned long)src, len, false, _RET_IP_);
> > > >>> - check_memory_region((unsigned long)dest, len, true, _RET_IP_);
> > > >>> + if (report_enabled() &&
> > > >>
> > > >>             report_enabled() checks seems to be useless.
> > > >>
> > > >
> > > > Hi Andrey,
> > > >
> > > > If it doesn't have report_enable(), then it will have below the error.
> > > > We think it should be x86 shadow memory is invalid value before KASAN
> > > > initialized, it will have some misjudgments to do directly return when
> > > > it detects invalid shadow value in memset()/memcpy()/memmove(). So we
> > > > add report_enable() to avoid this happening. but we should only use the
> > > > condition "current->kasan_depth == 0" to determine if KASAN is
> > > > initialized. And we try it is pass at x86.
> > > >
> > >
> > > Ok, I see. It just means that check_memory_region() return incorrect result in early stages of boot.
> > > So, the right way to deal with this would be making kasan_report() to return bool ("false" if no report and "true" if reported)
> > > and propagate this return value up to check_memory_region().
> > >
> > This changes in v4.
> >
> > >
> > > >>> diff --git a/mm/kasan/generic_report.c b/mm/kasan/generic_report.c
> > > >>> index 36c645939bc9..52a92c7db697 100644
> > > >>> --- a/mm/kasan/generic_report.c
> > > >>> +++ b/mm/kasan/generic_report.c
> > > >>> @@ -107,6 +107,24 @@ static const char *get_wild_bug_type(struct kasan_access_info *info)
> > > >>>
> > > >>>  const char *get_bug_type(struct kasan_access_info *info)
> > > >>>  {
> > > >>> + /*
> > > >>> +  * If access_size is negative numbers, then it has three reasons
> > > >>> +  * to be defined as heap-out-of-bounds bug type.
> > > >>> +  * 1) Casting negative numbers to size_t would indeed turn up as
> > > >>> +  *    a large size_t and its value will be larger than ULONG_MAX/2,
> > > >>> +  *    so that this can qualify as out-of-bounds.
> > > >>> +  * 2) If KASAN has new bug type and user-space passes negative size,
> > > >>> +  *    then there are duplicate reports. So don't produce new bug type
> > > >>> +  *    in order to prevent duplicate reports by some systems
> > > >>> +  *    (e.g. syzbot) to report the same bug twice.
> > > >>> +  * 3) When size is negative numbers, it may be passed from user-space.
> > > >>> +  *    So we always print heap-out-of-bounds in order to prevent that
> > > >>> +  *    kernel-space and user-space have the same bug but have duplicate
> > > >>> +  *    reports.
> > > >>> +  */
> > > >>
> > > >> Completely fail to understand 2) and 3). 2) talks something about *NOT* producing new bug
> > > >> type, but at the same time you code actually does that.
> > > >> 3) says something about user-space which have nothing to do with kasan.
> > > >>
> > > > about 2)
> > > > We originally think the heap-out-of-bounds is similar to
> > > > heap-buffer-overflow, maybe we should change the bug type to
> > > > heap-buffer-overflow.
> > >
> > > There is no "heap-buffer-overflow".
> > >
> > If I remember correctly, "heap-buffer-overflow" is one of existing bug
> > type in user-space? Or you want to expect to see an existing bug type in
> > kernel space?
> 
> Existing bug in KASAN.
> KASAN and ASAN bugs will never match regardless of what we do. They
> are simply in completely different code. So aligning titles between
> kernel and userspace will not lead to any better deduplication.

Ok, it seems like to print "out-of-bounds". Simple and easy to know it.
Thanks Dmitry.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
