Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9284C7C9DB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 19:05:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RH2zgYUFPB+RpgU6Khsm4PgVSuWlwU2YagNq4zd+1yw=; b=uqFHkftBgWarES
	kghozBnM3iTO7YYV6B2tg2OwQNHoUuTBBlPNvrDvft1IvCJXzWHrQlAb9BCEnDEFeUMQP0XRaqbAf
	X5Q6ll1Je7K5ulFLAaSOeXXm0Iyn6HCmT+O0YTlFkRxWm0kWVYD4g49TBHQFc5z6GBm88lR9S9vWE
	I+TfA7QmKsQvWGdj/bQ9/U9hsWV4279i/E+L+Ljeoj8AJcPZdBZYdITPE5NWvS56a1Qj8wJYWqJ4n
	eS8qTeSoC++ruN4bjfSWRLBToamRWwACRVppzm8aBhYZm13YY8sNqAXRYt1SR56av7PDjh96rjJb0
	pkOU7ftLulNJPn4XYs9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hss2M-0000AY-TY; Wed, 31 Jul 2019 17:05:14 +0000
Received: from relay.sw.ru ([185.231.240.75])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hss2C-0007PS-BO; Wed, 31 Jul 2019 17:05:06 +0000
Received: from [172.16.25.12] by relay.sw.ru with esmtp (Exim 4.92)
 (envelope-from <aryabinin@virtuozzo.com>)
 id 1hss1z-0001ux-M2; Wed, 31 Jul 2019 20:04:51 +0300
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
 <37897fb7-88c1-859a-dfcc-0a5e89a642e0@virtuozzo.com>
 <1563160001.4793.4.camel@mtksdccf07>
 <9ab1871a-2605-ab34-3fd3-4b44a0e17ab7@virtuozzo.com>
 <1563789162.31223.3.camel@mtksdccf07>
 <e62da62a-2a63-3a1c-faeb-9c5561a5170c@virtuozzo.com>
 <1564144097.515.3.camel@mtksdccf07>
 <71df2bd5-7bc8-2c82-ee31-3f68c3b6296d@virtuozzo.com>
 <1564147164.515.10.camel@mtksdccf07>
From: Andrey Ryabinin <aryabinin@virtuozzo.com>
Message-ID: <f29ee964-cf12-1b5d-e570-1d5baa49a580@virtuozzo.com>
Date: Wed, 31 Jul 2019 20:04:59 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1564147164.515.10.camel@mtksdccf07>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_100504_392343_0AAB8B3D 
X-CRM114-Status: GOOD (  11.77  )
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



On 7/26/19 4:19 PM, Walter Wu wrote:
> On Fri, 2019-07-26 at 15:52 +0300, Andrey Ryabinin wrote:
>>
>> On 7/26/19 3:28 PM, Walter Wu wrote:
>>> On Fri, 2019-07-26 at 15:00 +0300, Andrey Ryabinin wrote:
>>>>
>>>
>>>>>
>>>>>
>>>>> I remember that there are already the lists which you concern. Maybe we
>>>>> can try to solve those problems one by one.
>>>>>
>>>>> 1. deadlock issue? cause by kmalloc() after kfree()?
>>>>
>>>> smp_call_on_cpu()
>>>
>>>>> 2. decrease allocation fail, to modify GFP_NOWAIT flag to GFP_KERNEL?
>>>>
>>>> No, this is not gonna work. Ideally we shouldn't have any allocations there.
>>>> It's not reliable and it hurts performance.
>>>>
>>> I dont know this meaning, we need create a qobject and put into
>>> quarantine, so may need to call kmem_cache_alloc(), would you agree this
>>> action?
>>>
>>
>> How is this any different from what you have now?
> 
> I originally thought you already agreed the free-list(tag-based
> quarantine) after fix those issue. If no allocation there,

If no allocation there, than it must be somewhere else.
We known exactly the amount of memory we need, so it's possible to preallocate it in advance.


> i think maybe
> only move generic quarantine into tag-based kasan, but its memory
> consumption is more bigger our patch. what do you think?
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
