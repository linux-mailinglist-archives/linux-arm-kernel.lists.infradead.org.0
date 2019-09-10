Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFDD1AEAD7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 14:46:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pFp9rp6V9xBR7Jr/PcwFo55EZTO+QdxbQy/8KApZGYQ=; b=bizbvQqQZMUg7g
	3pVCgRymCREniyu3dDjJ1OSXhNAEQhqUbPxG6551pfV8U3uRKVKuniu6Z662AMwjYMa/dARII2RSc
	/p78mMkqyLNHQRG+GLJUXKTPcZNKe1wV3E4ZbXBihABBs4w28d5biNIGSxfLrBz/Z2HKN6B+WVKoK
	Ve9m5XOnQ/0i/n+h0QpZP//zez5XCa/Q/hAPQRZPdq/5Y1wfWggyojDoSDnxPf+3657Hy09dSd1OC
	4xkxHhqGOKY2/Sl/3qbmmel+WhsZb79FbesRCnDy6ZgJDIIx/y2NpqhNWUN1ylq08Betf/WD5O4rQ
	7TxYNYCgaPLMAo10xDUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7fXc-0001Ph-Hq; Tue, 10 Sep 2019 12:46:40 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7fXJ-0001Mi-Tw; Tue, 10 Sep 2019 12:46:24 +0000
X-UUID: 375eddb5be2e46d399fa7502b2a86964-20190910
X-UUID: 375eddb5be2e46d399fa7502b2a86964-20190910
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 485063196; Tue, 10 Sep 2019 04:46:17 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 10 Sep 2019 05:46:16 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 10 Sep 2019 20:46:14 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 10 Sep 2019 20:46:14 +0800
Message-ID: <1568119575.24886.20.camel@mtksdccf07>
Subject: Re: [PATCH v2 0/2] mm/kasan: dump alloc/free stack for page allocator
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Andrey Ryabinin <aryabinin@virtuozzo.com>
Date: Tue, 10 Sep 2019 20:46:15 +0800
In-Reply-To: <a7863965-90ab-5dae-65e7-8f68f4b4beb5@virtuozzo.com>
References: <20190909082412.24356-1-walter-zh.wu@mediatek.com>
 <d53d88df-d9a4-c126-32a8-4baeb0645a2c@suse.cz>
 <a7863965-90ab-5dae-65e7-8f68f4b4beb5@virtuozzo.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_054621_966809_07ACD1A9 
X-CRM114-Status: GOOD (  17.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, wsd_upstream@mediatek.com,
 Arnd Bergmann <arnd@arndb.de>, linux-mm@kvack.org, Andrey
 Konovalov <andreyknvl@google.com>, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, kasan-dev@googlegroups.com,
 Michal Hocko <mhocko@kernel.org>, Martin
 Schwidefsky <schwidefsky@de.ibm.com>, Alexander Potapenko <glider@google.com>,
 Vlastimil Babka <vbabka@suse.cz>, Matthias Brugger <matthias.bgg@gmail.com>,
 Qian Cai <cai@lca.pw>, Andrew Morton <akpm@linux-foundation.org>,
 Will Deacon <will@kernel.org>, Thomas
 Gleixner <tglx@linutronix.de>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-09-10 at 13:50 +0300, Andrey Ryabinin wrote:
> 
> On 9/9/19 4:07 PM, Vlastimil Babka wrote:
> > On 9/9/19 10:24 AM, walter-zh.wu@mediatek.com wrote:
> >> From: Walter Wu <walter-zh.wu@mediatek.com>
> >>
> >> This patch is KASAN report adds the alloc/free stacks for page allocator
> >> in order to help programmer to see memory corruption caused by page.
> >>
> >> By default, KASAN doesn't record alloc and free stack for page allocator.
> >> It is difficult to fix up page use-after-free or dobule-free issue.
> >>
> >> Our patchsets will record the last stack of pages.
> >> It is very helpful for solving the page use-after-free or double-free.
> >>
> >> KASAN report will show the last stack of page, it may be:
> >> a) If page is in-use state, then it prints alloc stack.
> >>     It is useful to fix up page out-of-bound issue.
> > 
> > I still disagree with duplicating most of page_owner functionality for the sake of using a single stack handle for both alloc and free (while page_owner + debug_pagealloc with patches in mmotm uses two handles). It reduces the amount of potentially important debugging information, and I really doubt the u32-per-page savings are significant, given the rest of KASAN overhead.
> > 
> >> BUG: KASAN: slab-out-of-bounds in kmalloc_pagealloc_oob_right+0x88/0x90
> >> Write of size 1 at addr ffffffc0d64ea00a by task cat/115
> >> ...
> >> Allocation stack of page:
> >>   set_page_stack.constprop.1+0x30/0xc8
> >>   kasan_alloc_pages+0x18/0x38
> >>   prep_new_page+0x5c/0x150
> >>   get_page_from_freelist+0xb8c/0x17c8
> >>   __alloc_pages_nodemask+0x1a0/0x11b0
> >>   kmalloc_order+0x28/0x58
> >>   kmalloc_order_trace+0x28/0xe0
> >>   kmalloc_pagealloc_oob_right+0x2c/0x68
> >>
> >> b) If page is freed state, then it prints free stack.
> >>     It is useful to fix up page use-after-free or double-free issue.
> >>
> >> BUG: KASAN: use-after-free in kmalloc_pagealloc_uaf+0x70/0x80
> >> Write of size 1 at addr ffffffc0d651c000 by task cat/115
> >> ...
> >> Free stack of page:
> >>   kasan_free_pages+0x68/0x70
> >>   __free_pages_ok+0x3c0/0x1328
> >>   __free_pages+0x50/0x78
> >>   kfree+0x1c4/0x250
> >>   kmalloc_pagealloc_uaf+0x38/0x80
> >>
> >> This has been discussed, please refer below link.
> >> https://bugzilla.kernel.org/show_bug.cgi?id=203967
> > 
> > That's not a discussion, but a single comment from Dmitry, which btw contains "provide alloc *and* free stacks for it" ("it" refers to page, emphasis mine). It would be nice if he or other KASAN guys could clarify.
> > 
> 
> For slab objects we memorize both alloc and free stacks. You'll never know in advance what information will be usefull
> to fix an issue, so it usually better to provide more information. I don't think we should do anything different for pages.
> 
> Given that we already have the page_owner responsible for providing alloc/free stacks for pages, all that we should in KASAN do is to
> enable the feature by default. Free stack saving should be decoupled from debug_pagealloc into separate option so that it can be enabled 
> by KASAN and/or debug_pagealloc.

Thanks your suggestion.
We will send the patch v3 as described above.




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
