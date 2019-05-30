Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA9F2EA6E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 03:58:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8+marc9ALrdBpcXk9F2zyyC54JLTec56iMGzJoJl75s=; b=NPyeBaPKv2KR7N
	V4T2TbZrqQNvuHZLZJgqEC9CfLoara5pvmdGvSNuxFI9qpZJMgZk+ANQpiQXK3bMydf9/q+CT80Hu
	X9Nz5diYyP1MYypbkpvkWrUfmAr9rKGugjfGNxwE9PEsJBAJPLToQcmF/Du1gmtoppLEZg37lYwiP
	qKRCRgyMbXuaXZvCIU5cv7F4b8OgzQ7cEp1nKrrPBt5RRHoCZiSr+wYOWd0SrFlmgpDTmYlFfsSKA
	YQNqNbySRWDeNNr96QVPKZkf4P7U5ABF1bdaebbSg+R+sxV/BDNux8g6LG2PVrpiGiMgnMublYJc5
	j0LqdzJpwH+JEGxgfJfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWAKw-0005ln-3n; Thu, 30 May 2019 01:58:34 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWAKn-0005kb-If; Thu, 30 May 2019 01:58:27 +0000
X-UUID: 0f66a0144afd4b8785e7f15f8bea6d9a-20190529
X-UUID: 0f66a0144afd4b8785e7f15f8bea6d9a-20190529
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1795255748; Wed, 29 May 2019 17:58:05 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 29 May 2019 18:58:04 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 30 May 2019 09:58:02 +0800
Received: from [172.21.84.99] (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 30 May 2019 09:58:02 +0800
Message-ID: <1559181482.24427.18.camel@mtksdccf07>
Subject: Re: [PATCH] kasan: add memory corruption identification for
 software tag-based mode
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Dmitry Vyukov <dvyukov@google.com>
Date: Thu, 30 May 2019 09:58:02 +0800
In-Reply-To: <CACT4Y+ZwXsBk8VqvDOJGMqrbVjuZ-HfC9RG4LpgRC-9WqmQJVw@mail.gmail.com>
References: <1559027797-30303-1-git-send-email-walter-zh.wu@mediatek.com>
 <CACT4Y+aCnODuffR7PafyYispp_U+ZdY1Dr0XQYvmghkogLJzSw@mail.gmail.com>
 <1559122529.17186.24.camel@mtksdccf07>
 <CACT4Y+ZwXsBk8VqvDOJGMqrbVjuZ-HfC9RG4LpgRC-9WqmQJVw@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_185825_633648_A541D293 
X-CRM114-Status: GOOD (  21.69  )
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: wsd_upstream@mediatek.com, Catalin Marinas <catalin.marinas@arm.com>,
 linux-mediatek@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 kasan-dev <kasan-dev@googlegroups.com>, Pekka Enberg <penberg@kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Miles
 Chen <miles.chen@mediatek.com>, Alexander Potapenko <glider@google.com>,
 David Rientjes <rientjes@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, Christoph Lameter <cl@linux.com>,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-05-29 at 12:00 +0200, Dmitry Vyukov wrote:
> > > There can be multiple qobjects in the quarantine associated with the
> > > address, right? If so, we need to find the last one rather then a
> > > random one.
> > >
> > The qobject includes the address which has tag and range, corruption
> > address must be satisfied with the same tag and within object address
> > range, then it is found in the quarantine.
> > It should not easy to get multiple qobjects have the same tag and within
> > object address range.
> 
> Yes, using the tag for matching (which I missed) makes the match less likely.
> 
> But I think we should at least try to find the newest object in
> best-effort manner.
We hope it, too.

> Consider, both slab and slub reallocate objects in LIFO manner and we
> don't have a quarantine for objects themselves. So if we have a loop
> that allocates and frees an object of same size a dozen of times.
> That's enough to get a duplicate pointer+tag qobject.
> This includes:
> 1. walking the global quarantine from quarantine_tail backwards.
It is ok.

> 2. walking per-cpu lists in the opposite direction: from tail rather
> then from head. I guess we don't have links, so we could change the
> order and prepend new objects from head.
> This way we significantly increase chances of finding the right
> object. This also deserves a comment mentioning that we can find a
> wrong objects.
> 
The current walking per-cpu list direction is from head to trail. we
will modify the direction and find the newest object.


> > > Why don't we allocate qlist_object and qlist_node in a single
> > > allocation? Doing 2 allocations is both unnecessary slow and leads to
> > > more complex code. We need to allocate them with a single allocations.
> > > Also I think they should be allocated from a dedicated cache that opts
> > > out of quarantine?
> > >
> > Single allocation is good suggestion, if we only has one allocation.
> > then we need to move all member of qlist_object to qlist_node?
> >
> > struct qlist_object {
> >     unsigned long addr;
> >     unsigned int size;
> >     struct kasan_alloc_meta free_track;
> > };
> > struct qlist_node {
> >     struct qlist_object *qobject;
> >     struct qlist_node *next;
> > };
> 
> I see 2 options:
> 1. add addr/size/free_track to qlist_node under ifdef CONFIG_KASAN_SW_TAGS
> 2. or probably better would be to include qlist_node into qlist_object
> as first field, then allocate qlist_object and cast it to qlist_node
> when adding to quarantine, and then as we iterate quarantine, we cast
> qlist_node back to qlist_object and can access size/addr.
> 
Choice 2 looks better, We first try it.

> 
> > We call call ___cache_free() to free the qobject and qnode, it should be
> > out of quarantine?
> 
> This should work.

Thanks your good suggestion.
We will implement those solution which you suggested to the second
edition.


Thanks,
Walter


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
