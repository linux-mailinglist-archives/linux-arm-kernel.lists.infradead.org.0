Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2117EA8575
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 16:15:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t/prEmPqI6P/efHehhm9lj1k+CMicqgd4s79FQVm9po=; b=RvPubt8mPbDxg2
	akaUWnXjva5o0AWJ/nHFS2ANNZAM7Ii6+rtZHrkK0d8U9oJeuIHjXOkGtK/iZjRi+mL2SJW7yu+0W
	vAF27eatEEAol2k7+gUY8h3kJdvc92ZxpvYsvYjrofDH2NHGdxouUkCX4ZPGjSRq2lS3qIcWeBawv
	tUPlXa3+Q6ugXzc1ebbhCiwIfwYuEUiZOGBhG6g2J8MgdOi1dY9IlkhQzRdkqGkKx/sw7h1zVEpQp
	lneRGadDoZnjtjyJzErvA0JDJrKmwUxSF+Kaz5XWJnB5QRllRpFpKp/sXb35BdyyxR+wR23rlyde6
	dgnOOIh/PN9lG035O0og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5W4H-0008KC-LB; Wed, 04 Sep 2019 14:15:29 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5W2i-0005lC-60; Wed, 04 Sep 2019 14:13:54 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 8F3D1B048;
 Wed,  4 Sep 2019 14:13:49 +0000 (UTC)
Subject: Re: [PATCH 1/2] mm/kasan: dump alloc/free stack for page allocator
To: Walter Wu <walter-zh.wu@mediatek.com>
References: <20190904065133.20268-1-walter-zh.wu@mediatek.com>
 <401064ae-279d-bef3-a8d5-0fe155d0886d@suse.cz>
 <1567605965.32522.14.camel@mtksdccf07>
From: Vlastimil Babka <vbabka@suse.cz>
Message-ID: <7998e8f1-e5e2-da84-ea1f-33e696015dce@suse.cz>
Date: Wed, 4 Sep 2019 16:13:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1567605965.32522.14.camel@mtksdccf07>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_071352_455105_9415FA41 
X-CRM114-Status: GOOD (  18.55  )
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
Cc: wsd_upstream@mediatek.com, Arnd Bergmann <arnd@arndb.de>,
 linux-mm@kvack.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, kasan-dev@googlegroups.com,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Alexander Potapenko <glider@google.com>, linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Andrew Morton <akpm@linux-foundation.org>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/4/19 4:06 PM, Walter Wu wrote:
> On Wed, 2019-09-04 at 14:49 +0200, Vlastimil Babka wrote:
>> On 9/4/19 8:51 AM, Walter Wu wrote:
>> > This patch is KASAN report adds the alloc/free stacks for page allocator
>> > in order to help programmer to see memory corruption caused by page.
>> > 
>> > By default, KASAN doesn't record alloc/free stack for page allocator.
>> > It is difficult to fix up page use-after-free issue.
>> > 
>> > This feature depends on page owner to record the last stack of pages.
>> > It is very helpful for solving the page use-after-free or out-of-bound.
>> > 
>> > KASAN report will show the last stack of page, it may be:
>> > a) If page is in-use state, then it prints alloc stack.
>> >    It is useful to fix up page out-of-bound issue.
>> 
>> I expect this will conflict both in syntax and semantics with my series [1] that
>> adds the freeing stack to page_owner when used together with debug_pagealloc,
>> and it's now in mmotm. Glad others see the need as well :) Perhaps you could
>> review the series, see if it fulfils your usecase (AFAICS the series should be a
>> superset, by storing both stacks at once), and perhaps either make KASAN enable
>> debug_pagealloc, or turn KASAN into an alternative enabler of the functionality
>> there?
>> 
>> Thanks, Vlastimil
>> 
>> [1] https://lore.kernel.org/linux-mm/20190820131828.22684-1-vbabka@suse.cz/t/#u
>> 
> Thanks your information.
> We focus on the smartphone, so it doesn't enable
> CONFIG_TRANSPARENT_HUGEPAGE, Is it invalid for our usecase?

The THP fix is not required for the rest of the series, it was even merged to
mainline separately.

> And It looks like something is different, because we only need last
> stack of page, so it can decrease memory overhead.

That would save you depot_stack_handle_t (which is u32) per page. I guess that's
nothing compared to KASAN overhead?

> I will try to enable debug_pagealloc(with your patch) and KASAN, then we
> see the result.

Thanks.

> Thanks.
> Walter 
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
