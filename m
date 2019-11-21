Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B203105C8E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 23:20:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LipYMMxvg90cG+/s+zLYQ9gG0VH5Xhs2DrrV09XVOwc=; b=Hn9ZCU8bvqYiTy
	Zc9M/GEG2d47Mb3jfVwaOu8gQGZoUxP1XxPi+V6aczSPNs+bu2t9p+mDDPu+D5xzw/CHyevF7JmRo
	CknfHFb092zJnZVOEq7IPS4QEDso/yML+/VBkgPu7eD3d85AqM4/ieypaup7abZGx3x1w/rzTxINz
	ed3np9hiTAR2Ct1bC8agbubuufxoKOERrowD9+IhWW1zmjmFARcxcjPzHSl0rm5fa7M0oOQ8tbyS1
	qvyIw/xwW9sZ9ck1N9dQksE4beieT7CzcGgaEZr2RtFwjBlxlCc7l6up6nK187QrpcHlL67vfQmCo
	6egBJtTC+u7gKRYn8IoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXuon-0003DB-Rb; Thu, 21 Nov 2019 22:20:53 +0000
Received: from relay.sw.ru ([185.231.240.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXuod-0003C3-MY; Thu, 21 Nov 2019 22:20:45 +0000
Received: from [192.168.15.154] by relay.sw.ru with esmtp (Exim 4.92.3)
 (envelope-from <aryabinin@virtuozzo.com>)
 id 1iXuoL-0007nb-4j; Fri, 22 Nov 2019 01:20:25 +0300
Subject: Re: [PATCH v4 1/2] kasan: detect negative size in memory operation
 function
To: Dmitry Vyukov <dvyukov@google.com>
References: <20191112065302.7015-1-walter-zh.wu@mediatek.com>
 <040479c3-6f96-91c6-1b1a-9f3e947dac06@virtuozzo.com>
 <CACT4Y+botuVF6KanfRrudDguw7HGkJ1mrwvxYZQQF0eWoo-Lxw@mail.gmail.com>
From: Andrey Ryabinin <aryabinin@virtuozzo.com>
Message-ID: <ad1aa63b-38d7-4c8d-00c0-bd215cf9b66e@virtuozzo.com>
Date: Fri, 22 Nov 2019 01:18:38 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CACT4Y+botuVF6KanfRrudDguw7HGkJ1mrwvxYZQQF0eWoo-Lxw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_142043_734169_47380909 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 11/21/19 10:58 PM, Dmitry Vyukov wrote:
> On Thu, Nov 21, 2019 at 1:27 PM Andrey Ryabinin <aryabinin@virtuozzo.com> wrote:
>>> diff --git a/mm/kasan/common.c b/mm/kasan/common.c
>>> index 6814d6d6a023..4bfce0af881f 100644
>>> --- a/mm/kasan/common.c
>>> +++ b/mm/kasan/common.c
>>> @@ -102,7 +102,8 @@ EXPORT_SYMBOL(__kasan_check_write);
>>>  #undef memset
>>>  void *memset(void *addr, int c, size_t len)
>>>  {
>>> -     check_memory_region((unsigned long)addr, len, true, _RET_IP_);
>>> +     if (!check_memory_region((unsigned long)addr, len, true, _RET_IP_))
>>> +             return NULL;
>>>
>>>       return __memset(addr, c, len);
>>>  }
>>> @@ -110,8 +111,9 @@ void *memset(void *addr, int c, size_t len)
>>>  #undef memmove
>>>  void *memmove(void *dest, const void *src, size_t len)
>>>  {
>>> -     check_memory_region((unsigned long)src, len, false, _RET_IP_);
>>> -     check_memory_region((unsigned long)dest, len, true, _RET_IP_);
>>> +     if (!check_memory_region((unsigned long)src, len, false, _RET_IP_) ||
>>> +         !check_memory_region((unsigned long)dest, len, true, _RET_IP_))
>>> +             return NULL;
>>>
>>>       return __memmove(dest, src, len);
>>>  }
>>> @@ -119,8 +121,9 @@ void *memmove(void *dest, const void *src, size_t len)
>>>  #undef memcpy
>>>  void *memcpy(void *dest, const void *src, size_t len)
>>>  {
>>> -     check_memory_region((unsigned long)src, len, false, _RET_IP_);
>>> -     check_memory_region((unsigned long)dest, len, true, _RET_IP_);
>>> +     if (!check_memory_region((unsigned long)src, len, false, _RET_IP_) ||
>>> +         !check_memory_region((unsigned long)dest, len, true, _RET_IP_))
>>> +             return NULL;
>>>
>>
>> I realized that we are going a wrong direction here. Entirely skipping mem*() operation on any
>> poisoned shadow value might only make things worse. Some bugs just don't have any serious consequences,
>> but skipping the mem*() ops entirely might introduce such consequences, which wouldn't happen otherwise.
>>
>> So let's keep this code as this, no need to check the result of check_memory_region().
> 
> I suggested it.
> 
> For our production runs it won't matter, we always panic on first report.
> If one does not panic, there is no right answer. You say: _some_ bugs
> don't have any serious consequences, but skipping the mem*() ops
> entirely might introduce such consequences. The opposite is true as
> well, right? :) And it's not hard to come up with a scenario where
> overwriting memory after free or out of bounds badly corrupts memory.
> I don't think we can somehow magically avoid bad consequences in all
> cases.
>

Absolutely right. My point was that if it's bad consequences either way,
than there is no point in complicating this code, it doesn't buy us anything.

 
> What I was thinking about is tests. We need tests for this. And we
> tried to construct tests specifically so that they don't badly corrupt
> memory (e.g. OOB/UAF reads, or writes to unused redzones, etc), so
> that it's possible to run all of them to completion reliably. Skipping
> the actual memory options allows to write such tests for all possible
> scenarios. That's was my motivation.

But I see you point now. No objections to the patch in that case.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
