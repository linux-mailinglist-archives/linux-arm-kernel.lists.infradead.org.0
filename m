Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1978A8596
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 16:24:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JGHStdJRamo2r6sLZWcn7dEGf+h8oAv1viv8fwxRFwU=; b=lXjnddLIzL0AYB
	jcIvsAROZTk+g0GmMAg12K59+huW3dCyiisuMEYaHvKfK2sAyK007a6uv0X365uIfISwc1z14lF9K
	/ROsPY0q8p1ZqglPxxhoJfvQmqLvk8u3q52xEyEN9UjI7vVWDMUnk1s1wc5AQAF8HWAgEissNQZ76
	3giohsuVtnqmRmS24SQEKC3rBA6N3HUkbBo59vMaZ48FKoRdR8M9cN3SVftX3L4P0D8bj5tQ0ennC
	HlfspHwB+cdLcqTgymWg9bCpC3+8Ki3UKgCo2FGtRTnwhw7AoDsYit7QiYg3EQ0IWDjXnMWASueqw
	QtwvpWoxRBtawP9VrQoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5WDD-0003eT-Ko; Wed, 04 Sep 2019 14:24:44 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5WD0-0003cn-Uh; Wed, 04 Sep 2019 14:24:32 +0000
X-UUID: 07d89c2481bf4c63b03f0dfd00cbe4a4-20190904
X-UUID: 07d89c2481bf4c63b03f0dfd00cbe4a4-20190904
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 444790332; Wed, 04 Sep 2019 06:24:26 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 4 Sep 2019 07:24:25 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 4 Sep 2019 22:24:23 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 4 Sep 2019 22:24:22 +0800
Message-ID: <1567607063.32522.24.camel@mtksdccf07>
Subject: Re: [PATCH 1/2] mm/kasan: dump alloc/free stack for page allocator
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Vlastimil Babka <vbabka@suse.cz>
Date: Wed, 4 Sep 2019 22:24:23 +0800
In-Reply-To: <7998e8f1-e5e2-da84-ea1f-33e696015dce@suse.cz>
References: <20190904065133.20268-1-walter-zh.wu@mediatek.com>
 <401064ae-279d-bef3-a8d5-0fe155d0886d@suse.cz>
 <1567605965.32522.14.camel@mtksdccf07>
 <7998e8f1-e5e2-da84-ea1f-33e696015dce@suse.cz>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_072430_994110_93A4BFF7 
X-CRM114-Status: GOOD (  19.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: wsd_upstream@mediatek.com, Arnd Bergmann <arnd@arndb.de>,
 linux-mm@kvack.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, kasan-dev@googlegroups.com, Martin
 Schwidefsky <schwidefsky@de.ibm.com>, Alexander Potapenko <glider@google.com>,
 linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Andrew Morton <akpm@linux-foundation.org>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-09-04 at 16:13 +0200, Vlastimil Babka wrote:
> On 9/4/19 4:06 PM, Walter Wu wrote:
> > On Wed, 2019-09-04 at 14:49 +0200, Vlastimil Babka wrote:
> >> On 9/4/19 8:51 AM, Walter Wu wrote:
> >> > This patch is KASAN report adds the alloc/free stacks for page allocator
> >> > in order to help programmer to see memory corruption caused by page.
> >> > 
> >> > By default, KASAN doesn't record alloc/free stack for page allocator.
> >> > It is difficult to fix up page use-after-free issue.
> >> > 
> >> > This feature depends on page owner to record the last stack of pages.
> >> > It is very helpful for solving the page use-after-free or out-of-bound.
> >> > 
> >> > KASAN report will show the last stack of page, it may be:
> >> > a) If page is in-use state, then it prints alloc stack.
> >> >    It is useful to fix up page out-of-bound issue.
> >> 
> >> I expect this will conflict both in syntax and semantics with my series [1] that
> >> adds the freeing stack to page_owner when used together with debug_pagealloc,
> >> and it's now in mmotm. Glad others see the need as well :) Perhaps you could
> >> review the series, see if it fulfils your usecase (AFAICS the series should be a
> >> superset, by storing both stacks at once), and perhaps either make KASAN enable
> >> debug_pagealloc, or turn KASAN into an alternative enabler of the functionality
> >> there?
> >> 
> >> Thanks, Vlastimil
> >> 
> >> [1] https://lore.kernel.org/linux-mm/20190820131828.22684-1-vbabka@suse.cz/t/#u
> >> 
> > Thanks your information.
> > We focus on the smartphone, so it doesn't enable
> > CONFIG_TRANSPARENT_HUGEPAGE, Is it invalid for our usecase?
> 
> The THP fix is not required for the rest of the series, it was even merged to
> mainline separately.
> 
> > And It looks like something is different, because we only need last
> > stack of page, so it can decrease memory overhead.
> 
> That would save you depot_stack_handle_t (which is u32) per page. I guess that's
> nothing compared to KASAN overhead?
> 
If we can use less memory, we can achieve what we want. Why not?

Thanks.
Walter



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
