Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F123A66B1D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 12:53:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RiX/+wPO7uZW+OtZk8Dlx5vegmALQw8E8TBp2Ho+c80=; b=YM8rtLzFNw2f3R
	6EtlSiUK4j438jWr3+/Ltp4BKqW9tavVXj5K2b/iU84/5TM+WVa3uXcbeDJt5ZIf/t0qMeOtIvUZR
	6jcwzYRqFkm7G2yrI3wqG8uN0sXzUi/W93TL2rdreDZpp5i2hRXlGcQagaJZy/v9AzRb+owLQ1drq
	peEPRpEWpZV2mvQ+dPVsQGOZxtaykeHyyEpRd20XbtgZypxoWcPeWn9/yM3LouawrzkR5dFJkotTK
	NDCCFEPotgKTnCHMzHqh/uZfx70Yx3PoxakjanEwbUhbOFQd5wnzST0MrwDkwPmXdKdGlt5fbOCEf
	ATgTWej1jx4uIgtpJz/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hltAq-00044L-Ki; Fri, 12 Jul 2019 10:53:08 +0000
Received: from relay.sw.ru ([185.231.240.75])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hltAa-00042V-1a; Fri, 12 Jul 2019 10:52:54 +0000
Received: from [172.16.25.12] by relay.sw.ru with esmtp (Exim 4.92)
 (envelope-from <aryabinin@virtuozzo.com>)
 id 1hltAL-0005Ih-PS; Fri, 12 Jul 2019 13:52:38 +0300
Subject: Re: [PATCH v3] kasan: add memory corruption identification for
 software tag-based mode
To: Walter Wu <walter-zh.wu@mediatek.com>
References: <20190613081357.1360-1-walter-zh.wu@mediatek.com>
 <da7591c9-660d-d380-d59e-6d70b39eaa6b@virtuozzo.com>
 <1560447999.15814.15.camel@mtksdccf07> <1560479520.15814.34.camel@mtksdccf07>
 <1560744017.15814.49.camel@mtksdccf07>
 <CACT4Y+Y3uS59rXf92ByQuFK_G4v0H8NNnCY1tCbr4V+PaZF3ag@mail.gmail.com>
 <1560774735.15814.54.camel@mtksdccf07> <1561974995.18866.1.camel@mtksdccf07>
 <CACT4Y+aMXTBE0uVkeZz+MuPx3X1nESSBncgkScWvAkciAxP1RA@mail.gmail.com>
 <ebc99ee1-716b-0b18-66ab-4e93de02ce50@virtuozzo.com>
 <1562640832.9077.32.camel@mtksdccf07>
 <d9fd1d5b-9516-b9b9-0670-a1885e79f278@virtuozzo.com>
 <1562839579.5846.12.camel@mtksdccf07>
From: Andrey Ryabinin <aryabinin@virtuozzo.com>
Message-ID: <37897fb7-88c1-859a-dfcc-0a5e89a642e0@virtuozzo.com>
Date: Fri, 12 Jul 2019 13:52:40 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1562839579.5846.12.camel@mtksdccf07>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_035252_088304_19E6DD08 
X-CRM114-Status: GOOD (  15.42  )
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
Cc: wsd_upstream <wsd_upstream@mediatek.com>,
 "Jason A . Donenfeld" <Jason@zx2c4.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Arnd Bergmann <arnd@arndb.de>, Linux-MM <linux-mm@kvack.org>,
 Andrey Konovalov <andreyknvl@google.com>, LKML <linux-kernel@vger.kernel.org>,
 kasan-dev <kasan-dev@googlegroups.com>, Pekka Enberg <penberg@kernel.org>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Miles Chen <miles.chen@mediatek.com>, Alexander Potapenko <glider@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 David Rientjes <rientjes@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Christoph Lameter <cl@linux.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 7/11/19 1:06 PM, Walter Wu wrote:
> On Wed, 2019-07-10 at 21:24 +0300, Andrey Ryabinin wrote:
>>
>> On 7/9/19 5:53 AM, Walter Wu wrote:
>>> On Mon, 2019-07-08 at 19:33 +0300, Andrey Ryabinin wrote:
>>>>
>>>> On 7/5/19 4:34 PM, Dmitry Vyukov wrote:
>>>>> On Mon, Jul 1, 2019 at 11:56 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
>>
>>>>>
>>>>> Sorry for delays. I am overwhelm by some urgent work. I afraid to
>>>>> promise any dates because the next week I am on a conference, then
>>>>> again a backlog and an intern starting...
>>>>>
>>>>> Andrey, do you still have concerns re this patch? This change allows
>>>>> to print the free stack.
>>>>
>>>> I 'm not sure that quarantine is a best way to do that. Quarantine is made to delay freeing, but we don't that here.
>>>> If we want to remember more free stacks wouldn't be easier simply to remember more stacks in object itself?
>>>> Same for previously used tags for better use-after-free identification.
>>>>
>>>
>>> Hi Andrey,
>>>
>>> We ever tried to use object itself to determine use-after-free
>>> identification, but tag-based KASAN immediately released the pointer
>>> after call kfree(), the original object will be used by another
>>> pointer, if we use object itself to determine use-after-free issue, then
>>> it has many false negative cases. so we create a lite quarantine(ring
>>> buffers) to record recent free stacks in order to avoid those false
>>> negative situations.
>>
>> I'm telling that *more* than one free stack and also tags per object can be stored.
>> If object reused we would still have information about n-last usages of the object.
>> It seems like much easier and more efficient solution than patch you proposing.
>>
> To make the object reused, we must ensure that no other pointers uses it
> after kfree() release the pointer.
> Scenario:
> 1). The object reused information is valid when no another pointer uses
> it.
> 2). The object reused information is invalid when another pointer uses
> it.
> Do you mean that the object reused is scenario 1) ?
> If yes, maybe we can change the calling quarantine_put() location. It
> will be fully use that quarantine, but at scenario 2) it looks like to
> need this patch.
> If no, maybe i miss your meaning, would you tell me how to use invalid
> object information? or?
> 


KASAN keeps information about object with the object, right after payload in the kasan_alloc_meta struct.
This information is always valid as long as slab page allocated. Currently it keeps only one last free stacktrace.
It could be extended to record more free stacktraces and also record previously used tags which will allow you
to identify use-after-free and extract right free stacktrace.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
