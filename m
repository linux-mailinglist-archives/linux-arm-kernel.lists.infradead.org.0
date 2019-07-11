Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 686FF65451
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 12:06:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nXixyd7jmx2qiQfxblwdedfBZTRH6OsT4EIu6kgggfI=; b=sO398hR///Dz2h
	PQMEdkUwsERQXhbSs1hvO7SsW03pTg3Ts0d2WHtHYQW/zudcQlfr2jqkggVtg0YIPyqYDRP3HmHVZ
	3nmE9SwFotZjcAMQqcaEi7ISgJlnjPNz0aheA0SOPJ96SeIwWQ6/MFyxcBYgu6CPmBj9GIa7KRsZA
	yUPQP9j7gVB93ZoUuswkS7MxlNNsqyRuWCH7ytiTj70jsWkyN4V1+r2gWAoz6dDxpWykwEAPk4sEd
	o+blL9NtBkuwyWVYEOaRzBazsckhcFbHVHP3a4GBLlTJDndFqJLhpo28W43XprZiZoYh1EFcOIKPq
	+NKFCNFmIbK/TH7WRwPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlVyW-0003n8-9e; Thu, 11 Jul 2019 10:06:52 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlVyD-0003lv-UK; Thu, 11 Jul 2019 10:06:35 +0000
X-UUID: e50d150dedd24ea89fb7f9fb98f64476-20190711
X-UUID: e50d150dedd24ea89fb7f9fb98f64476-20190711
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1877396440; Thu, 11 Jul 2019 02:06:22 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 11 Jul 2019 03:06:20 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 11 Jul 2019 18:06:19 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 11 Jul 2019 18:06:19 +0800
Message-ID: <1562839579.5846.12.camel@mtksdccf07>
Subject: Re: [PATCH v3] kasan: add memory corruption identification for
 software tag-based mode
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Andrey Ryabinin <aryabinin@virtuozzo.com>
Date: Thu, 11 Jul 2019 18:06:19 +0800
In-Reply-To: <d9fd1d5b-9516-b9b9-0670-a1885e79f278@virtuozzo.com>
References: <20190613081357.1360-1-walter-zh.wu@mediatek.com>
 <da7591c9-660d-d380-d59e-6d70b39eaa6b@virtuozzo.com>
 <1560447999.15814.15.camel@mtksdccf07>
 <1560479520.15814.34.camel@mtksdccf07>
 <1560744017.15814.49.camel@mtksdccf07>
 <CACT4Y+Y3uS59rXf92ByQuFK_G4v0H8NNnCY1tCbr4V+PaZF3ag@mail.gmail.com>
 <1560774735.15814.54.camel@mtksdccf07>
 <1561974995.18866.1.camel@mtksdccf07>
 <CACT4Y+aMXTBE0uVkeZz+MuPx3X1nESSBncgkScWvAkciAxP1RA@mail.gmail.com>
 <ebc99ee1-716b-0b18-66ab-4e93de02ce50@virtuozzo.com>
 <1562640832.9077.32.camel@mtksdccf07>
 <d9fd1d5b-9516-b9b9-0670-a1885e79f278@virtuozzo.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: FCA1495ABCFBF051C3A138F429F412BB004A5166313DECBCF8F5873EED71160F2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_030633_981420_2518FF10 
X-CRM114-Status: GOOD (  21.25  )
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
Cc: wsd_upstream <wsd_upstream@mediatek.com>, "Jason
 A . Donenfeld" <Jason@zx2c4.com>, Vasily
 Gorbik <gor@linux.ibm.com>, Arnd Bergmann <arnd@arndb.de>,
 Linux-MM <linux-mm@kvack.org>, Andrey Konovalov <andreyknvl@google.com>,
 LKML <linux-kernel@vger.kernel.org>, kasan-dev <kasan-dev@googlegroups.com>,
 Pekka Enberg <penberg@kernel.org>, Martin
 Schwidefsky <schwidefsky@de.ibm.com>, Miles Chen <miles.chen@mediatek.com>,
 Alexander Potapenko <glider@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 David Rientjes <rientjes@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Christoph Lameter <cl@linux.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-07-10 at 21:24 +0300, Andrey Ryabinin wrote:
> 
> On 7/9/19 5:53 AM, Walter Wu wrote:
> > On Mon, 2019-07-08 at 19:33 +0300, Andrey Ryabinin wrote:
> >>
> >> On 7/5/19 4:34 PM, Dmitry Vyukov wrote:
> >>> On Mon, Jul 1, 2019 at 11:56 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> 
> >>>
> >>> Sorry for delays. I am overwhelm by some urgent work. I afraid to
> >>> promise any dates because the next week I am on a conference, then
> >>> again a backlog and an intern starting...
> >>>
> >>> Andrey, do you still have concerns re this patch? This change allows
> >>> to print the free stack.
> >>
> >> I 'm not sure that quarantine is a best way to do that. Quarantine is made to delay freeing, but we don't that here.
> >> If we want to remember more free stacks wouldn't be easier simply to remember more stacks in object itself?
> >> Same for previously used tags for better use-after-free identification.
> >>
> > 
> > Hi Andrey,
> > 
> > We ever tried to use object itself to determine use-after-free
> > identification, but tag-based KASAN immediately released the pointer
> > after call kfree(), the original object will be used by another
> > pointer, if we use object itself to determine use-after-free issue, then
> > it has many false negative cases. so we create a lite quarantine(ring
> > buffers) to record recent free stacks in order to avoid those false
> > negative situations.
> 
> I'm telling that *more* than one free stack and also tags per object can be stored.
> If object reused we would still have information about n-last usages of the object.
> It seems like much easier and more efficient solution than patch you proposing.
> 
To make the object reused, we must ensure that no other pointers uses it
after kfree() release the pointer.
Scenario:
1). The object reused information is valid when no another pointer uses
it.
2). The object reused information is invalid when another pointer uses
it.
Do you mean that the object reused is scenario 1) ?
If yes, maybe we can change the calling quarantine_put() location. It
will be fully use that quarantine, but at scenario 2) it looks like to
need this patch.
If no, maybe i miss your meaning, would you tell me how to use invalid
object information? or?

> As for other concern about this particular patch
>  - It wasn't tested. There is deadlock (sleep in atomic) on the report path which would have been noticed it tested.
we already used it on qemu and ran kasan UT. It look like ok.

>    Also GFP_NOWAIT allocation which fails very noisy and very often, especially in memory constraint enviromnent where tag-based KASAN supposed to be used.
> 
Maybe, we can change it into GFP_KERNEL.

>  - Inefficient usage of memory:
> 	48 bytes (sizeof (qlist_object) + sizeof(kasan_alloc_meta)) per kfree() call seems like a lot. It could be less.
> 
We will think it.

> 	The same 'struct kasan_track' stored twice in two different places (in object and in quarantine).
> 	Basically, at least some part of the quarantine always duplicates information that we already know about
> 	recently freed object. 
> 
> 	Since now we call kmalloc() from kfree() path, every unique kfree() stacktrace now generates additional unique stacktrace that
> 	takes space in stackdepot.
> 
Duplicate information is solved after change the calling
quarantine_put() location.







_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
