Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9257BA8566
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 16:13:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W9rJwMI7qhMBgV1dTmW3ntvZm9uwgST3+Y6fsdKTaGg=; b=PdKVGZhnanXqBi
	Tfk9m/C6ilarhx4H/sDfIFmrDb9vRpURfs6LYW7oXuZHtiUBEKasTXSXutKXX3RftSJ6K3jUxylHZ
	ZD8FGUQ8hOPys5WX6hGCRqujgXnf9257eSa7c5sYATTAs2Ho+hr9IkoO21CKb93QNeor+n12ZM4au
	jsGcQK2+7+8A/3yLrdTs5+3QgL7JrltinUueFTwQRMTwAwmDnu6qASWw1c3tVSLZORKz/GeDVx6ef
	Xdvg2tgNSH5zRz9B8IzfvvZIbUj3yh1BMfU/IuPqzsiS7G25qt/yQRUOl6MzitJPq+v9rsIbqVz6C
	LhYDurIi8umqN5S6+aTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5W2L-0005FP-Oy; Wed, 04 Sep 2019 14:13:29 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5VvG-00048C-Eq; Wed, 04 Sep 2019 14:06:11 +0000
X-UUID: 849c79e9c62f431799f3ad3b8703c86d-20190904
X-UUID: 849c79e9c62f431799f3ad3b8703c86d-20190904
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 759985018; Wed, 04 Sep 2019 06:06:07 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 4 Sep 2019 07:06:05 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 4 Sep 2019 22:06:05 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 4 Sep 2019 22:06:04 +0800
Message-ID: <1567605965.32522.14.camel@mtksdccf07>
Subject: Re: [PATCH 1/2] mm/kasan: dump alloc/free stack for page allocator
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Vlastimil Babka <vbabka@suse.cz>
Date: Wed, 4 Sep 2019 22:06:05 +0800
In-Reply-To: <401064ae-279d-bef3-a8d5-0fe155d0886d@suse.cz>
References: <20190904065133.20268-1-walter-zh.wu@mediatek.com>
 <401064ae-279d-bef3-a8d5-0fe155d0886d@suse.cz>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_070610_517853_E1AE6AE9 
X-CRM114-Status: GOOD (  15.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

On Wed, 2019-09-04 at 14:49 +0200, Vlastimil Babka wrote:
> On 9/4/19 8:51 AM, Walter Wu wrote:
> > This patch is KASAN report adds the alloc/free stacks for page allocator
> > in order to help programmer to see memory corruption caused by page.
> > 
> > By default, KASAN doesn't record alloc/free stack for page allocator.
> > It is difficult to fix up page use-after-free issue.
> > 
> > This feature depends on page owner to record the last stack of pages.
> > It is very helpful for solving the page use-after-free or out-of-bound.
> > 
> > KASAN report will show the last stack of page, it may be:
> > a) If page is in-use state, then it prints alloc stack.
> >    It is useful to fix up page out-of-bound issue.
> 
> I expect this will conflict both in syntax and semantics with my series [1] that
> adds the freeing stack to page_owner when used together with debug_pagealloc,
> and it's now in mmotm. Glad others see the need as well :) Perhaps you could
> review the series, see if it fulfils your usecase (AFAICS the series should be a
> superset, by storing both stacks at once), and perhaps either make KASAN enable
> debug_pagealloc, or turn KASAN into an alternative enabler of the functionality
> there?
> 
> Thanks, Vlastimil
> 
> [1] https://lore.kernel.org/linux-mm/20190820131828.22684-1-vbabka@suse.cz/t/#u
> 
Thanks your information.
We focus on the smartphone, so it doesn't enable
CONFIG_TRANSPARENT_HUGEPAGE, Is it invalid for our usecase?
And It looks like something is different, because we only need last
stack of page, so it can decrease memory overhead.
I will try to enable debug_pagealloc(with your patch) and KASAN, then we
see the result.

Thanks.
Walter 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
