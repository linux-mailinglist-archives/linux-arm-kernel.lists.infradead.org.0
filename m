Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5541BF71A3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 11:13:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OsXYf87jEarWrA5an5DbPt1DPRGxqONJc4wVpjWVXGg=; b=dGIP8rydIAe7xU
	a1F3CemGEmkgblFFTbkOwi8rl7HtCPEoxaNY1BdL9kxx2f6gBn3GlnxMzwQCKP3hq9pKX3P7fD1qM
	6YJRCceIg3EoZs0DhTsVmr/o81z+i7sb9rlwkZhaP/4MZkvsiwHrmAIH3Z38sZYTwwgkV/0KlN1YH
	RIuBIkaLvmrjISfqcLpXJHsvAXjZDGwVU8IRT/098uRN337RlyhI43QdP82nTnN5UADXaQE23vvSc
	mYmip2+PJpMzUctYKlTCNtC5QN6BfZxzQihLAnJIGNGq6yU0PX32Vvx3wCQ+4Pv4XvWP92vAJQr+H
	ghq2DOqVUMfwykyJ9BIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU6gm-00065c-O3; Mon, 11 Nov 2019 10:12:52 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU6gZ-00064e-1Z
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 10:12:40 +0000
X-UUID: 3a1708b4a79a48909e7eabb063294db4-20191111
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=toF+FrGCVhoFJVjUfttIEjB8V6geaXrgJXG1BEMe0Ac=; 
 b=pTHWaONq7n5hFbK5fjWsuaxJ39Pnv3+J8zLuUiVSHYEI2zHezLjueSX7J4XudA0OiMiyKoJ4Fx0kjEHpEe3HHJTZes7pXT6O1L+Yo8Il+vyy5AuP6CZvfBj9mfxWjqxwW5HBkdkJfhPxII7M9g4g8LB9SsMiRwvSd2dmqwy1nug=;
X-UUID: 3a1708b4a79a48909e7eabb063294db4-20191111
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1779185749; Mon, 11 Nov 2019 02:12:57 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 11 Nov 2019 02:12:29 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 11 Nov 2019 18:12:28 +0800
Received: from [172.21.84.99] (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 11 Nov 2019 18:12:27 +0800
Message-ID: <1573467150.20611.57.camel@mtksdccf07>
Subject: Re: [PATCH v3 1/2] kasan: detect negative size in memory operation
 function
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Andrey Ryabinin <aryabinin@virtuozzo.com>
Date: Mon, 11 Nov 2019 18:12:30 +0800
In-Reply-To: <757f0296-7fa0-0e5e-8490-3eca52da41ad@virtuozzo.com>
References: <20191104020519.27988-1-walter-zh.wu@mediatek.com>
 <34bf9c08-d2f2-a6c6-1dbe-29b1456d8284@virtuozzo.com>
 <1573456464.20611.45.camel@mtksdccf07>
 <757f0296-7fa0-0e5e-8490-3eca52da41ad@virtuozzo.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_021239_093869_A9B83EA6 
X-CRM114-Status: GOOD (  24.21  )
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
Cc: wsd_upstream <wsd_upstream@mediatek.com>, linux-kernel@vger.kernel.org,
 kasan-dev@googlegroups.com, linux-mm@kvack.org,
 Alexander Potapenko <glider@google.com>, linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-11-11 at 12:29 +0300, Andrey Ryabinin wrote:
> 
> On 11/11/19 10:14 AM, Walter Wu wrote:
> > On Sat, 2019-11-09 at 01:31 +0300, Andrey Ryabinin wrote:
> >>
> >> On 11/4/19 5:05 AM, Walter Wu wrote:
> >>
> >>>
> >>> diff --git a/mm/kasan/common.c b/mm/kasan/common.c
> >>> index 6814d6d6a023..4ff67e2fd2db 100644
> >>> --- a/mm/kasan/common.c
> >>> +++ b/mm/kasan/common.c
> >>> @@ -99,10 +99,14 @@ bool __kasan_check_write(const volatile void *p, unsigned int size)
> >>>  }
> >>>  EXPORT_SYMBOL(__kasan_check_write);
> >>>  
> >>> +extern bool report_enabled(void);
> >>> +
> >>>  #undef memset
> >>>  void *memset(void *addr, int c, size_t len)
> >>>  {
> >>> -	check_memory_region((unsigned long)addr, len, true, _RET_IP_);
> >>> +	if (report_enabled() &&
> >>> +	    !check_memory_region((unsigned long)addr, len, true, _RET_IP_))
> >>> +		return NULL;
> >>>  
> >>>  	return __memset(addr, c, len);
> >>>  }
> >>> @@ -110,8 +114,10 @@ void *memset(void *addr, int c, size_t len)
> >>>  #undef memmove
> >>>  void *memmove(void *dest, const void *src, size_t len)
> >>>  {
> >>> -	check_memory_region((unsigned long)src, len, false, _RET_IP_);
> >>> -	check_memory_region((unsigned long)dest, len, true, _RET_IP_);
> >>> +	if (report_enabled() &&
> >>> +	   (!check_memory_region((unsigned long)src, len, false, _RET_IP_) ||
> >>> +	    !check_memory_region((unsigned long)dest, len, true, _RET_IP_)))
> >>> +		return NULL;
> >>>  
> >>>  	return __memmove(dest, src, len);
> >>>  }
> >>> @@ -119,8 +125,10 @@ void *memmove(void *dest, const void *src, size_t len)
> >>>  #undef memcpy
> >>>  void *memcpy(void *dest, const void *src, size_t len)
> >>>  {
> >>> -	check_memory_region((unsigned long)src, len, false, _RET_IP_);
> >>> -	check_memory_region((unsigned long)dest, len, true, _RET_IP_);
> >>> +	if (report_enabled() &&
> >>
> >>             report_enabled() checks seems to be useless.
> >>
> > 
> > Hi Andrey,
> > 
> > If it doesn't have report_enable(), then it will have below the error.
> > We think it should be x86 shadow memory is invalid value before KASAN
> > initialized, it will have some misjudgments to do directly return when
> > it detects invalid shadow value in memset()/memcpy()/memmove(). So we
> > add report_enable() to avoid this happening. but we should only use the
> > condition "current->kasan_depth == 0" to determine if KASAN is
> > initialized. And we try it is pass at x86.
> > 
> 
> Ok, I see. It just means that check_memory_region() return incorrect result in early stages of boot.
> So, the right way to deal with this would be making kasan_report() to return bool ("false" if no report and "true" if reported)
> and propagate this return value up to check_memory_region().
> 
This changes in v4.

> 
> >>> diff --git a/mm/kasan/generic_report.c b/mm/kasan/generic_report.c
> >>> index 36c645939bc9..52a92c7db697 100644
> >>> --- a/mm/kasan/generic_report.c
> >>> +++ b/mm/kasan/generic_report.c
> >>> @@ -107,6 +107,24 @@ static const char *get_wild_bug_type(struct kasan_access_info *info)
> >>>  
> >>>  const char *get_bug_type(struct kasan_access_info *info)
> >>>  {
> >>> +	/*
> >>> +	 * If access_size is negative numbers, then it has three reasons
> >>> +	 * to be defined as heap-out-of-bounds bug type.
> >>> +	 * 1) Casting negative numbers to size_t would indeed turn up as
> >>> +	 *    a large size_t and its value will be larger than ULONG_MAX/2,
> >>> +	 *    so that this can qualify as out-of-bounds.
> >>> +	 * 2) If KASAN has new bug type and user-space passes negative size,
> >>> +	 *    then there are duplicate reports. So don't produce new bug type
> >>> +	 *    in order to prevent duplicate reports by some systems
> >>> +	 *    (e.g. syzbot) to report the same bug twice.
> >>> +	 * 3) When size is negative numbers, it may be passed from user-space.
> >>> +	 *    So we always print heap-out-of-bounds in order to prevent that
> >>> +	 *    kernel-space and user-space have the same bug but have duplicate
> >>> +	 *    reports.
> >>> +	 */
> >>  
> >> Completely fail to understand 2) and 3). 2) talks something about *NOT* producing new bug
> >> type, but at the same time you code actually does that.
> >> 3) says something about user-space which have nothing to do with kasan.
> >>
> > about 2)
> > We originally think the heap-out-of-bounds is similar to
> > heap-buffer-overflow, maybe we should change the bug type to
> > heap-buffer-overflow.
> 
> There is no "heap-buffer-overflow".
> 
If I remember correctly, "heap-buffer-overflow" is one of existing bug
type in user-space? Or you want to expect to see an existing bug type in
kernel space?

> > 
> > about 3)
> > Our idea is just to always print "heap-out-of-bounds" and don't
> > differentiate if the size come from user-space or not.
> 
> Still doesn't make sence to me. KASAN doesn't differentiate if the size coming from user-space
> or not. It simply doesn't have any way of knowing from where is the size coming from.

Yes, it don't know where is coming from. so we originally always print
the existing bug type to indicate negative size, or we can remove 3)?
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
