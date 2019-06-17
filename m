Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D512478E1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 06:01:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WjV8oEQLFBrC0mNKIAta30aDcabZBurl9Mk6BuFsU0E=; b=C9///LVxAe8W+E
	gFRk3n1gwqAIRLiBcLXlxlUNGwZHBXxh5qA13MxKfVA4Kbx3hqBSR1yfWxHL+6xOAhj2n81/D/pXV
	vwkXypIV708SfvM435y5RjTmgeObEjnSIeQbcB5t5ciKLxeQsm3yflF0NshSCrreOonsM7N5uVQzQ
	+DFqSuc9igf1tcwk5pIQo/2oaX7Opeu2Am1kgHuvwSvDO5JkAxRcd6LkVWSexsFCUBNTNuuBXTgbe
	yZnjLDFTIELK2q14b8zVuNBlOH88+N2V4huUnNYj05cGvm+JwdOkw4ForDydAiu8KzgTO/UAAu4Rs
	8EYvv8YPIwig0oh4FpnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcipG-0007jg-1v; Mon, 17 Jun 2019 04:00:58 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcioy-0007iG-La; Mon, 17 Jun 2019 04:00:42 +0000
X-UUID: d0216446594a4680a0ec7631a77ead4d-20190616
X-UUID: d0216446594a4680a0ec7631a77ead4d-20190616
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1398254681; Sun, 16 Jun 2019 20:00:21 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 16 Jun 2019 21:00:19 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 17 Jun 2019 12:00:18 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 17 Jun 2019 12:00:17 +0800
Message-ID: <1560744017.15814.49.camel@mtksdccf07>
Subject: Re: [PATCH v3] kasan: add memory corruption identification for
 software tag-based mode
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Dmitry Vyukov <dvyukov@google.com>, Andrey Ryabinin
 <aryabinin@virtuozzo.com>
Date: Mon, 17 Jun 2019 12:00:17 +0800
In-Reply-To: <1560479520.15814.34.camel@mtksdccf07>
References: <20190613081357.1360-1-walter-zh.wu@mediatek.com>
 <da7591c9-660d-d380-d59e-6d70b39eaa6b@virtuozzo.com>
 <1560447999.15814.15.camel@mtksdccf07>
 <1560479520.15814.34.camel@mtksdccf07>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_210040_714626_9FD18B62 
X-CRM114-Status: GOOD (  24.32  )
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
Cc: wsd_upstream@mediatek.com, "Jason A . Donenfeld" <Jason@zx2c4.com>, Vasily
 Gorbik <gor@linux.ibm.com>, Arnd Bergmann <arnd@arndb.de>, linux-mm@kvack.org,
 Andrey Konovalov <andreyknvl@google.com>, linux-kernel@vger.kernel.org,
 kasan-dev@googlegroups.com, Pekka Enberg <penberg@kernel.org>, Martin
 Schwidefsky <schwidefsky@de.ibm.com>, Miles Chen <miles.chen@mediatek.com>,
 Alexander Potapenko <glider@google.com>, linux-arm-kernel@lists.infradead.org,
 David Rientjes <rientjes@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Christoph Lameter <cl@linux.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-06-14 at 10:32 +0800, Walter Wu wrote:
> On Fri, 2019-06-14 at 01:46 +0800, Walter Wu wrote:
> > On Thu, 2019-06-13 at 15:27 +0300, Andrey Ryabinin wrote:
> > > 
> > > On 6/13/19 11:13 AM, Walter Wu wrote:
> > > > This patch adds memory corruption identification at bug report for
> > > > software tag-based mode, the report show whether it is "use-after-free"
> > > > or "out-of-bound" error instead of "invalid-access" error.This will make
> > > > it easier for programmers to see the memory corruption problem.
> > > > 
> > > > Now we extend the quarantine to support both generic and tag-based kasan.
> > > > For tag-based kasan, the quarantine stores only freed object information
> > > > to check if an object is freed recently. When tag-based kasan reports an
> > > > error, we can check if the tagged addr is in the quarantine and make a
> > > > good guess if the object is more like "use-after-free" or "out-of-bound".
> > > > 
> > > 
> > > 
> > > We already have all the information and don't need the quarantine to make such guess.
> > > Basically if shadow of the first byte of object has the same tag as tag in pointer than it's out-of-bounds,
> > > otherwise it's use-after-free.
> > > 
> > > In pseudo-code it's something like this:
> > > 
> > > u8 object_tag = *(u8 *)kasan_mem_to_shadow(nearest_object(cacche, page, access_addr));
> > > 
> > > if (access_addr_tag == object_tag && object_tag != KASAN_TAG_INVALID)
> > > 	// out-of-bounds
> > > else
> > > 	// use-after-free
> > 
> > Thanks your explanation.
> > I see, we can use it to decide corruption type.
> > But some use-after-free issues, it may not have accurate free-backtrace.
> > Unfortunately in that situation, free-backtrace is the most important.
> > please see below example
> > 
> > In generic KASAN, it gets accurate free-backrace(ptr1).
> > In tag-based KASAN, it gets wrong free-backtrace(ptr2). It will make
> > programmer misjudge, so they may not believe tag-based KASAN.
> > So We provide this patch, we hope tag-based KASAN bug report is the same
> > accurate with generic KASAN.
> > 
> > ---
> >     ptr1 = kmalloc(size, GFP_KERNEL);
> >     ptr1_free(ptr1);
> > 
> >     ptr2 = kmalloc(size, GFP_KERNEL);
> >     ptr2_free(ptr2);
> > 
> >     ptr1[size] = 'x';  //corruption here
> > 
> > 
> > static noinline void ptr1_free(char* ptr)
> > {
> >     kfree(ptr);
> > }
> > static noinline void ptr2_free(char* ptr)
> > {
> >     kfree(ptr);
> > }
> > ---
> > 
> We think of another question about deciding by that shadow of the first
> byte.
> In tag-based KASAN, it is immediately released after calling kfree(), so
> the slub is easy to be used by another pointer, then it will change
> shadow memory to the tag of new pointer, it will not be the
> KASAN_TAG_INVALID, so there are many false negative cases, especially in
> small size allocation.
> 
> Our patch is to solve those problems. so please consider it, thanks.
> 
Hi, Andrey and Dmitry,

I am sorry to bother you.
Would you tell me what you think about this patch?
We want to use tag-based KASAN, so we hope its bug report is clear and
correct as generic KASAN.

Thanks your review.
Walter


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
