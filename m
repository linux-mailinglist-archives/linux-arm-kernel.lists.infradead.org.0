Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7E68B112E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 16:32:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8UiZn4U/6WlW0t59yHarbfKhvz4POpbVSqlY0r+7IFI=; b=mOdryxEVVUjWw56Keh/aJAx9z
	GsvNQLP+ZvQnNYKIGV9E9vtibzLxihHLtSES8CwlBdfvWsAwXj18AJAc+0Q3xUp3t8JVvUTBkQ6np
	u5TIccK+f50sPgKsbRsq6xaWZxK+CJi3wY/++38Ka6P5M1l2TDeJtSERb/Y8KpcajCpXpXU13mqg5
	pKyKGvO8e4JSIaUapfCZqDYPrnpM1HuUpkCXb9Ax2pqjhzLnipLygYNjrqzSXBvmXdqRnGbuNccBk
	+p8tydWkGkKSWXUfgn2zIaXywbyeZ2JUODBHzb1gHost8vVTyD6sMXiRwnJYvLH8X1TCn+YEIhbg+
	T9rUIVGIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Q8a-0002Vy-GL; Thu, 12 Sep 2019 14:31:56 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Q8O-0002Va-Gz; Thu, 12 Sep 2019 14:31:46 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id F35A4AFFE;
 Thu, 12 Sep 2019 14:31:42 +0000 (UTC)
Subject: Re: [PATCH v3] mm/kasan: dump alloc and free stack for page allocator
To: Walter Wu <walter-zh.wu@mediatek.com>
References: <20190911083921.4158-1-walter-zh.wu@mediatek.com>
 <5E358F4B-552C-4542-9655-E01C7B754F14@lca.pw>
 <c4d2518f-4813-c941-6f47-73897f420517@suse.cz>
 <1568297308.19040.5.camel@mtksdccf07>
From: Vlastimil Babka <vbabka@suse.cz>
Message-ID: <613f9f23-c7f0-871f-fe13-930c35ef3105@suse.cz>
Date: Thu, 12 Sep 2019 16:31:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1568297308.19040.5.camel@mtksdccf07>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_073144_713249_47F64288 
X-CRM114-Status: GOOD (  15.59  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Qian Cai <cai@lca.pw>, wsd_upstream@mediatek.com,
 Arnd Bergmann <arnd@arndb.de>, linux-mm@kvack.org,
 Andrey Konovalov <andreyknvl@google.com>, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, kasan-dev@googlegroups.com,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Alexander Potapenko <glider@google.com>, linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Andrew Morton <akpm@linux-foundation.org>, Dmitry Vyukov <dvyukov@google.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/12/19 4:08 PM, Walter Wu wrote:
> 
>>   extern void __reset_page_owner(struct page *page, unsigned int order);
>> diff --git a/lib/Kconfig.kasan b/lib/Kconfig.kasan
>> index 6c9682ce0254..dc560c7562e8 100644
>> --- a/lib/Kconfig.kasan
>> +++ b/lib/Kconfig.kasan
>> @@ -41,6 +41,8 @@ config KASAN_GENERIC
>>   	select SLUB_DEBUG if SLUB
>>   	select CONSTRUCTORS
>>   	select STACKDEPOT
>> +	select PAGE_OWNER
>> +	select PAGE_OWNER_FREE_STACK
>>   	help
>>   	  Enables generic KASAN mode.
>>   	  Supported in both GCC and Clang. With GCC it requires version 4.9.2
>> @@ -63,6 +65,8 @@ config KASAN_SW_TAGS
>>   	select SLUB_DEBUG if SLUB
>>   	select CONSTRUCTORS
>>   	select STACKDEPOT
>> +	select PAGE_OWNER
>> +	select PAGE_OWNER_FREE_STACK
>>   	help
> 
> What is the difference between PAGE_OWNER+PAGE_OWNER_FREE_STACK and
> DEBUG_PAGEALLOC?

Same memory usage, but debug_pagealloc means also extra checks and 
restricting memory access to freed pages to catch UAF.

> If you directly enable PAGE_OWNER+PAGE_OWNER_FREE_STACK
> PAGE_OWNER_FREE_STACK,don't you think low-memory device to want to use
> KASAN?

OK, so it should be optional? But I think it's enough to distinguish no 
PAGE_OWNER at all, and PAGE_OWNER+PAGE_OWNER_FREE_STACK together - I 
don't see much point in PAGE_OWNER only for this kind of debugging.

So how about this? KASAN wouldn't select PAGE_OWNER* but it would be 
recommended in the help+docs. When PAGE_OWNER and KASAN are selected by 
user, PAGE_OWNER_FREE_STACK gets also selected, and both will be also 
runtime enabled without explicit page_owner=on.
I mostly want to avoid another boot-time option for enabling 
PAGE_OWNER_FREE_STACK.
Would that be enough flexibility for low-memory devices vs full-fledged 
debugging?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
