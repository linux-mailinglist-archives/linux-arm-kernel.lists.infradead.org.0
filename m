Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1473092622
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 16:07:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yI7Ik7zsVn342ssshQZnCcBjdZViFqaiRSG1KnZndr4=; b=fHfbVqHFLILMU7
	NQBuMUmWVNbPHDVMJd0jEkXY2tkd6LF1NXyIAAEK13qGv8mCKmISzyU+Fo1x8wWle/Yg489kYV0+M
	s8X0XofZueai818g3pKvprmjkn73WZstK4seOLw5UFvzG8WFRKG1ITIMC3VRRkLfuGw2VYQCbyAkq
	q0xxaiwt6y+8WEb0G7O1+jBWJXvI0vjQele3bFLdyAaPNkterOWQnpBxtui3KfTcphAEu4skQ4FOC
	CY/FQhTnRecPhCy6lvgRQ38WBI2BD6qAKXie7pj4OKwt8UgQNWyy1thH3dnd78uI0iAqL+n8wSBdb
	Dmx/MQjoBM683gdiuTVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hziJY-0000sD-Ty; Mon, 19 Aug 2019 14:07:16 +0000
Received: from relay.sw.ru ([185.231.240.75])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hziIt-0008Qx-UM; Mon, 19 Aug 2019 14:06:39 +0000
Received: from [172.16.25.5] by relay.sw.ru with esmtp (Exim 4.92)
 (envelope-from <aryabinin@virtuozzo.com>)
 id 1hziIi-0001H7-Gd; Mon, 19 Aug 2019 17:06:24 +0300
Subject: Re: [PATCH] arm64: kasan: fix phys_to_virt() false positive on
 tag-based kasan
To: Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>
References: <20190819114420.2535-1-walter-zh.wu@mediatek.com>
 <20190819125625.bu3nbrldg7te5kwc@willie-the-truck>
 <20190819132347.GB9927@lakrids.cambridge.arm.com>
 <20190819133441.ejomv6cprdcz7hh6@willie-the-truck>
From: Andrey Ryabinin <aryabinin@virtuozzo.com>
Message-ID: <8df7ec20-2fd2-8076-9a34-ac4c9785e91a@virtuozzo.com>
Date: Mon, 19 Aug 2019 17:06:33 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190819133441.ejomv6cprdcz7hh6@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_070636_054582_28626A80 
X-CRM114-Status: GOOD (  19.46  )
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
Cc: Walter Wu <walter-zh.wu@mediatek.com>, wsd_upstream@mediatek.com,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, kasan-dev@googlegroups.com,
 Alexander Potapenko <glider@google.com>, linux-arm-kernel@lists.infradead.org,
 Andrey Konovalov <andreyknvl@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Andrew Morton <akpm@linux-foundation.org>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 8/19/19 4:34 PM, Will Deacon wrote:
> On Mon, Aug 19, 2019 at 02:23:48PM +0100, Mark Rutland wrote:
>> On Mon, Aug 19, 2019 at 01:56:26PM +0100, Will Deacon wrote:
>>> On Mon, Aug 19, 2019 at 07:44:20PM +0800, Walter Wu wrote:
>>>> __arm_v7s_unmap() call iopte_deref() to translate pyh_to_virt address,
>>>> but it will modify pointer tag into 0xff, so there is a false positive.
>>>>
>>>> When enable tag-based kasan, phys_to_virt() function need to rewrite
>>>> its original pointer tag in order to avoid kasan report an incorrect
>>>> memory corruption.
>>>
>>> Hmm. Which tree did you see this on? We've recently queued a load of fixes
>>> in this area, but I /thought/ they were only needed after the support for
>>> 52-bit virtual addressing in the kernel.
>>
>> I'm seeing similar issues in the virtio blk code (splat below), atop of
>> the arm64 for-next/core branch. I think this is a latent issue, and
>> people are only just starting to test with KASAN_SW_TAGS.
>>
>> It looks like the virtio blk code will round-trip a SLUB-allocated pointer from
>> virt->page->virt, losing the per-object tag in the process.
>>
>> Our page_to_virt() seems to get a per-page tag, but this only makes
>> sense if you're dealing with the page allocator, rather than something
>> like SLUB which carves a page into smaller objects giving each object a
>> distinct tag.
>>
>> Any round-trip of a pointer from SLUB is going to lose the per-object
>> tag.
> 
> Urgh, I wonder how this is supposed to work?
> 

We supposed to ignore pointers with 0xff tags. We do ignore them when memory access checked,
but not in kfree() path.
This untested patch should fix the issue:



---
 mm/kasan/common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/mm/kasan/common.c b/mm/kasan/common.c
index 895dc5e2b3d5..0a81cc328049 100644
--- a/mm/kasan/common.c
+++ b/mm/kasan/common.c
@@ -407,7 +407,7 @@ static inline bool shadow_invalid(u8 tag, s8 shadow_byte)
 		return shadow_byte < 0 ||
 			shadow_byte >= KASAN_SHADOW_SCALE_SIZE;
 	else
-		return tag != (u8)shadow_byte;
+		return (tag != KASAN_TAG_KERNEL) && (tag != (u8)shadow_byte);
 }
 
 static bool __kasan_slab_free(struct kmem_cache *cache, void *object,
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
