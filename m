Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8653462E61
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 04:54:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/PrQupXKnasPdJlsSsFodgDFiWANkRfKp3zI0Ivvw7Q=; b=C4P1zIgG8Jtatl
	f1JiAUC6QSo50jqW3fOT0KNEms/Xl1NeSh2yYyWG/QNW9tfpZUBf+uI1QrFmnX0JyiYUxe/fBO6sA
	F+F920G4ah2/gNhgQ2sBmx+suYzDSVGBXhYm96HIOs2kVHp3EDEsR+mSKNcRzhZFydzhzWNdf2gGd
	NE03iblx/p6w2ATGfqljS1p/EFQtedaky5rfkxOw24yjHJM9+HxDXv7l+AJag3huOndYjR7RVmGNg
	akTF2MZzn823WVB3SjhqD0k2AN/yNrrKq2rOlWbCLTarvt1Kq3XeSrlQ+k2z9cCIuaFZ/HtcuiDv/
	Xo05t2/NIMv72zFQ+iUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkgGu-0007EU-NC; Tue, 09 Jul 2019 02:54:24 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkgGY-0007Cm-Ox; Tue, 09 Jul 2019 02:54:04 +0000
X-UUID: c57abe65623d46d79887a824a29c78f9-20190708
X-UUID: c57abe65623d46d79887a824a29c78f9-20190708
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 371221610; Mon, 08 Jul 2019 18:53:56 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 8 Jul 2019 19:53:54 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 9 Jul 2019 10:53:52 +0800
Received: from [172.21.84.99] (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 9 Jul 2019 10:53:52 +0800
Message-ID: <1562640832.9077.32.camel@mtksdccf07>
Subject: Re: [PATCH v3] kasan: add memory corruption identification for
 software tag-based mode
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Andrey Ryabinin <aryabinin@virtuozzo.com>, Dmitry Vyukov
 <dvyukov@google.com>
Date: Tue, 9 Jul 2019 10:53:52 +0800
In-Reply-To: <ebc99ee1-716b-0b18-66ab-4e93de02ce50@virtuozzo.com>
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
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_195402_827362_5104FD1C 
X-CRM114-Status: GOOD (  29.66  )
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
Cc: wsd_upstream <wsd_upstream@mediatek.com>,
 "Jason A . Donenfeld" <Jason@zx2c4.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Arnd Bergmann <arnd@arndb.de>, Linux-MM <linux-mm@kvack.org>,
 Andrey Konovalov <andreyknvl@google.com>, LKML <linux-kernel@vger.kernel.org>,
 kasan-dev <kasan-dev@googlegroups.com>, Pekka Enberg <penberg@kernel.org>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Miles Chen <miles.chen@mediatek.com>, Alexander Potapenko <glider@google.com>,
 David Rientjes <rientjes@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Christoph Lameter <cl@linux.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-07-08 at 19:33 +0300, Andrey Ryabinin wrote:
> 
> On 7/5/19 4:34 PM, Dmitry Vyukov wrote:
> > On Mon, Jul 1, 2019 at 11:56 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> >>>>>>>>> This patch adds memory corruption identification at bug report for
> >>>>>>>>> software tag-based mode, the report show whether it is "use-after-free"
> >>>>>>>>> or "out-of-bound" error instead of "invalid-access" error.This will make
> >>>>>>>>> it easier for programmers to see the memory corruption problem.
> >>>>>>>>>
> >>>>>>>>> Now we extend the quarantine to support both generic and tag-based kasan.
> >>>>>>>>> For tag-based kasan, the quarantine stores only freed object information
> >>>>>>>>> to check if an object is freed recently. When tag-based kasan reports an
> >>>>>>>>> error, we can check if the tagged addr is in the quarantine and make a
> >>>>>>>>> good guess if the object is more like "use-after-free" or "out-of-bound".
> >>>>>>>>>
> >>>>>>>>
> >>>>>>>>
> >>>>>>>> We already have all the information and don't need the quarantine to make such guess.
> >>>>>>>> Basically if shadow of the first byte of object has the same tag as tag in pointer than it's out-of-bounds,
> >>>>>>>> otherwise it's use-after-free.
> >>>>>>>>
> >>>>>>>> In pseudo-code it's something like this:
> >>>>>>>>
> >>>>>>>> u8 object_tag = *(u8 *)kasan_mem_to_shadow(nearest_object(cacche, page, access_addr));
> >>>>>>>>
> >>>>>>>> if (access_addr_tag == object_tag && object_tag != KASAN_TAG_INVALID)
> >>>>>>>>   // out-of-bounds
> >>>>>>>> else
> >>>>>>>>   // use-after-free
> >>>>>>>
> >>>>>>> Thanks your explanation.
> >>>>>>> I see, we can use it to decide corruption type.
> >>>>>>> But some use-after-free issues, it may not have accurate free-backtrace.
> >>>>>>> Unfortunately in that situation, free-backtrace is the most important.
> >>>>>>> please see below example
> >>>>>>>
> >>>>>>> In generic KASAN, it gets accurate free-backrace(ptr1).
> >>>>>>> In tag-based KASAN, it gets wrong free-backtrace(ptr2). It will make
> >>>>>>> programmer misjudge, so they may not believe tag-based KASAN.
> >>>>>>> So We provide this patch, we hope tag-based KASAN bug report is the same
> >>>>>>> accurate with generic KASAN.
> >>>>>>>
> >>>>>>> ---
> >>>>>>>     ptr1 = kmalloc(size, GFP_KERNEL);
> >>>>>>>     ptr1_free(ptr1);
> >>>>>>>
> >>>>>>>     ptr2 = kmalloc(size, GFP_KERNEL);
> >>>>>>>     ptr2_free(ptr2);
> >>>>>>>
> >>>>>>>     ptr1[size] = 'x';  //corruption here
> >>>>>>>
> >>>>>>>
> >>>>>>> static noinline void ptr1_free(char* ptr)
> >>>>>>> {
> >>>>>>>     kfree(ptr);
> >>>>>>> }
> >>>>>>> static noinline void ptr2_free(char* ptr)
> >>>>>>> {
> >>>>>>>     kfree(ptr);
> >>>>>>> }
> >>>>>>> ---
> >>>>>>>
> >>>>>> We think of another question about deciding by that shadow of the first
> >>>>>> byte.
> >>>>>> In tag-based KASAN, it is immediately released after calling kfree(), so
> >>>>>> the slub is easy to be used by another pointer, then it will change
> >>>>>> shadow memory to the tag of new pointer, it will not be the
> >>>>>> KASAN_TAG_INVALID, so there are many false negative cases, especially in
> >>>>>> small size allocation.
> >>>>>>
> >>>>>> Our patch is to solve those problems. so please consider it, thanks.
> >>>>>>
> >>>>> Hi, Andrey and Dmitry,
> >>>>>
> >>>>> I am sorry to bother you.
> >>>>> Would you tell me what you think about this patch?
> >>>>> We want to use tag-based KASAN, so we hope its bug report is clear and
> >>>>> correct as generic KASAN.
> >>>>>
> >>>>> Thanks your review.
> >>>>> Walter
> >>>>
> >>>> Hi Walter,
> >>>>
> >>>> I will probably be busy till the next week. Sorry for delays.
> >>>
> >>> It's ok. Thanks your kindly help.
> >>> I hope I can contribute to tag-based KASAN. It is a very important tool
> >>> for us.
> >>
> >> Hi, Dmitry,
> >>
> >> Would you have free time to discuss this patch together?
> >> Thanks.
> > 
> > Sorry for delays. I am overwhelm by some urgent work. I afraid to
> > promise any dates because the next week I am on a conference, then
> > again a backlog and an intern starting...
> > 
> > Andrey, do you still have concerns re this patch? This change allows
> > to print the free stack.
> 
> I 'm not sure that quarantine is a best way to do that. Quarantine is made to delay freeing, but we don't that here.
> If we want to remember more free stacks wouldn't be easier simply to remember more stacks in object itself?
> Same for previously used tags for better use-after-free identification.
> 

Hi Andrey,

We ever tried to use object itself to determine use-after-free
identification, but tag-based KASAN immediately released the pointer
after call kfree(), the original object will be used by another
pointer, if we use object itself to determine use-after-free issue, then
it has many false negative cases. so we create a lite quarantine(ring
buffers) to record recent free stacks in order to avoid those false
negative situations.

We hope to have one solution to cover all cases and be accurate. Our
patch is configurable feature option, it can provide some programmers to
easy see the tag-based KASAN report.


> > We also have a quarantine for hwasan in user-space. Though it works a
> > bit differently then the normal asan quarantine. We keep a per-thread
> > fixed-size ring-buffer of recent allocations:
> > https://github.com/llvm-mirror/compiler-rt/blob/master/lib/hwasan/hwasan_report.cpp#L274-L284
> > and scan these ring buffers during reports.
> > 

Thanks your information, it looks like the same idea with our patch.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
