Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF4D0F6FAC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 09:25:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nSs54oqiCWJOXNrJAHfGp2dkTtW6SkN2rpU/Hvkthso=; b=Q/GfOsLAXoEMTF
	ljt04O74R0GgL2IE/mqcy4WbiKUypolSHzG2QYGJr0+9jte1mbAhWWMQpeh/pdieIM51t+ZC51Bs6
	QRFDxsVBivjUd5deKlrobVNOPJ9Rs61nITxPHGqP4Ia/Bs413hNcBtxAWDATXHjHvOsta076pm25d
	3B6wbiYDbpeGdyvuh7A/g1QLEeqEmub93A7bor6sPf7VQjlUTOMTKoVBqVsfGglnoQy79C2NyAj0f
	Q/yMeOs1NUE3aAiuVIDZDVH1rbueBGz4iCQNK7Fj9Db4fOOQ1RviBiYezkkw26HPU7HdsW4osSM4g
	XS+Lv5mZXB0UHCRgrBaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU50j-00040x-4C; Mon, 11 Nov 2019 08:25:21 +0000
Received: from relay.sw.ru ([185.231.240.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU50W-0002pR-K1
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 08:25:10 +0000
Received: from [172.16.25.5] by relay.sw.ru with esmtp (Exim 4.92.3)
 (envelope-from <aryabinin@virtuozzo.com>)
 id 1iU50L-00018h-TL; Mon, 11 Nov 2019 11:24:58 +0300
Subject: Re: [PATCH v3 1/2] kasan: detect negative size in memory operation
 function
To: Dmitry Vyukov <dvyukov@google.com>
References: <20191104020519.27988-1-walter-zh.wu@mediatek.com>
 <34bf9c08-d2f2-a6c6-1dbe-29b1456d8284@virtuozzo.com>
 <CACT4Y+bfGrJemwyMVqd2Kt19mF2i=3GwXRKHP0qGJaT_5OhSCA@mail.gmail.com>
From: Andrey Ryabinin <aryabinin@virtuozzo.com>
Message-ID: <20df03c5-e733-98b0-84e9-8d52ddce5c98@virtuozzo.com>
Date: Mon, 11 Nov 2019 11:24:36 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CACT4Y+bfGrJemwyMVqd2Kt19mF2i=3GwXRKHP0qGJaT_5OhSCA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_002508_661306_E034D0CC 
X-CRM114-Status: GOOD (  15.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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



On 11/11/19 10:57 AM, Dmitry Vyukov wrote:
> On Fri, Nov 8, 2019 at 11:32 PM Andrey Ryabinin <aryabinin@virtuozzo.com> wrote:

>>> diff --git a/mm/kasan/generic_report.c b/mm/kasan/generic_report.c
>>> index 36c645939bc9..52a92c7db697 100644
>>> --- a/mm/kasan/generic_report.c
>>> +++ b/mm/kasan/generic_report.c
>>> @@ -107,6 +107,24 @@ static const char *get_wild_bug_type(struct kasan_access_info *info)
>>>
>>>  const char *get_bug_type(struct kasan_access_info *info)
>>>  {
>>> +     /*
>>> +      * If access_size is negative numbers, then it has three reasons
>>> +      * to be defined as heap-out-of-bounds bug type.
>>> +      * 1) Casting negative numbers to size_t would indeed turn up as
>>> +      *    a large size_t and its value will be larger than ULONG_MAX/2,
>>> +      *    so that this can qualify as out-of-bounds.
>>> +      * 2) If KASAN has new bug type and user-space passes negative size,
>>> +      *    then there are duplicate reports. So don't produce new bug type
>>> +      *    in order to prevent duplicate reports by some systems
>>> +      *    (e.g. syzbot) to report the same bug twice.
>>> +      * 3) When size is negative numbers, it may be passed from user-space.
>>> +      *    So we always print heap-out-of-bounds in order to prevent that
>>> +      *    kernel-space and user-space have the same bug but have duplicate
>>> +      *    reports.
>>> +      */
>>
>> Completely fail to understand 2) and 3). 2) talks something about *NOT* producing new bug
>> type, but at the same time you code actually does that.
>> 3) says something about user-space which have nothing to do with kasan.
> 
> The idea was to use one of the existing bug titles so that syzbot does
> not produce 2 versions for OOBs where size is user-controlled. We
> don't know if it's overflow from heap, global or stack, but heap is
> the most common bug, so saying heap overflow will reduce chances of
> producing duplicates the most.
> But for all of this to work we do need to use one of the existing bug titles.

The "heap-out-of-bounds" is not one of the existing bug titles.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
