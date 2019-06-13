Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF9443E77
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 17:50:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SLSbx+0zF6IST8qsY9P9oyc8xpXPCoLLEhFxYJe/xCo=; b=Uc17y0tC4Y0033
	jO196wlIulMz/HjKXxdmVr7OaMNUfBpQP1aUaMZ6I7QuRQuOjiu+ZURvaKzRKiMGzbLiZbmbMxIuI
	Q8nckG1ItXp0pvGV2Zdrlp9vfdypYAnfh9SeYrPBXjFBwzlWkxpL6QF05c3TkzNFwBqKtcd5OhfEF
	la9akHWFMJMTenjuocD2/KZ8uRRAUD48VOP2LyNitaKxRjFrpWe1qSiTyFJkn6bm5/J5YG0Mfn6Pn
	Q4IC1GuoUaEOSi2f61U9RHjESsVa0FJS3D8Oxo9JxC8DBOMDGlkdDmizSa9+Nvq6HsSJsRr5tF8Q7
	c3BFXb28887BxKONYAMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbRzr-0000wP-QA; Thu, 13 Jun 2019 15:50:39 +0000
Received: from relay.sw.ru ([185.231.240.75])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbRzb-0000t1-7L; Thu, 13 Jun 2019 15:50:25 +0000
Received: from [172.16.25.12] by relay.sw.ru with esmtp (Exim 4.92)
 (envelope-from <aryabinin@virtuozzo.com>)
 id 1hbRzR-0002en-B5; Thu, 13 Jun 2019 18:50:13 +0300
Subject: Re: [PATCH v3] kasan: add memory corruption identification for
 software tag-based mode
To: Dmitry Vyukov <dvyukov@google.com>
References: <20190613081357.1360-1-walter-zh.wu@mediatek.com>
 <da7591c9-660d-d380-d59e-6d70b39eaa6b@virtuozzo.com>
 <CACT4Y+ZGEmGE2LFmRfPGgtUGwBqyL+s_CSp5DCpWGanTJCRcXw@mail.gmail.com>
From: Andrey Ryabinin <aryabinin@virtuozzo.com>
Message-ID: <278bd641-7d74-b9ac-1549-1e630ef3d38c@virtuozzo.com>
Date: Thu, 13 Jun 2019 18:50:25 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CACT4Y+ZGEmGE2LFmRfPGgtUGwBqyL+s_CSp5DCpWGanTJCRcXw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_085023_265592_72F267E0 
X-CRM114-Status: GOOD (  15.08  )
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
Cc: wsd_upstream <wsd_upstream@mediatek.com>,
 Walter Wu <walter-zh.wu@mediatek.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Arnd Bergmann <arnd@arndb.de>, Linux-MM <linux-mm@kvack.org>,
 Andrey Konovalov <andreyknvl@google.com>,
 "Jason A . Donenfeld" <Jason@zx2c4.com>,
 kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>,
 Pekka Enberg <penberg@kernel.org>, Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Miles Chen <miles.chen@mediatek.com>, Alexander Potapenko <glider@google.com>,
 David Rientjes <rientjes@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>, Christoph Lameter <cl@linux.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/13/19 4:05 PM, Dmitry Vyukov wrote:
> On Thu, Jun 13, 2019 at 2:27 PM Andrey Ryabinin <aryabinin@virtuozzo.com> wrote:
>> On 6/13/19 11:13 AM, Walter Wu wrote:
>>> This patch adds memory corruption identification at bug report for
>>> software tag-based mode, the report show whether it is "use-after-free"
>>> or "out-of-bound" error instead of "invalid-access" error.This will make
>>> it easier for programmers to see the memory corruption problem.
>>>
>>> Now we extend the quarantine to support both generic and tag-based kasan.
>>> For tag-based kasan, the quarantine stores only freed object information
>>> to check if an object is freed recently. When tag-based kasan reports an
>>> error, we can check if the tagged addr is in the quarantine and make a
>>> good guess if the object is more like "use-after-free" or "out-of-bound".
>>>
>>
>>
>> We already have all the information and don't need the quarantine to make such guess.
>> Basically if shadow of the first byte of object has the same tag as tag in pointer than it's out-of-bounds,
>> otherwise it's use-after-free.
>>
>> In pseudo-code it's something like this:
>>
>> u8 object_tag = *(u8 *)kasan_mem_to_shadow(nearest_object(cacche, page, access_addr));
>>
>> if (access_addr_tag == object_tag && object_tag != KASAN_TAG_INVALID)
>>         // out-of-bounds
>> else
>>         // use-after-free
> 
> But we don't have redzones in tag mode (intentionally), so unless I am
> missing something we don't have the necessary info. Both cases look
> the same -- we hit a different tag.

We always have some redzone. We need a place to store 'struct kasan_alloc_meta',
and sometimes also kasan_free_meta plus alignment to the next object.


> There may only be a small trailer for kmalloc-allocated objects that
> is painted with a different tag. I don't remember if we actually use a
> different tag for the trailer. Since tag mode granularity is 16 bytes,
> for smaller objects the trailer is impossible at all.
> 

Smaller that 16-bytes objects have 16 bytes of kasan_alloc_meta.
Redzones and freed objects always painted with KASAN_TAG_INVALID.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
