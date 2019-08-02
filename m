Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5742E7EA99
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 05:05:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EpTBNdLdw+dNr+WToPw1cP/OJQQbaLV5BTANXRJNsWo=; b=GZIZWf2DI+hzds
	Im5YVZpJAuS3uFq1Ik/GZ29V7ZLD6zXtOyFWpBTpZMzXws7rDjwv7bJMzixY9M/vT2/l7D2zN0pmG
	jNiuU+4+mUs7xDFRpXvPwSxSpQRykN0WkRuAyxAf9graNvblLftjMnHDvx82ay/0EystIepg94KA5
	ajBxzHnwSOv5rJyfHtHTCZzvWbqvkg5MPRC/Vdb6Y0BEr5xbaTX7OGNngy85r3Wabq0ljZ8LHRT2Z
	E4PmhD+qZ844fna0oUlfGkHXRXGnmW1JcjoPBYj074DvqrYIWZTvcEMVw46KOBVAqG93Nyg9gTKgs
	SK3d/1JfkMzshPxSzhuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htNsB-0002gB-3q; Fri, 02 Aug 2019 03:04:51 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htNrw-0002Sz-Pv; Fri, 02 Aug 2019 03:04:38 +0000
X-UUID: 4873e50b090149ccab2fae14e0efb1ef-20190801
X-UUID: 4873e50b090149ccab2fae14e0efb1ef-20190801
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1884439017; Thu, 01 Aug 2019 19:04:23 -0800
Received: from MTKMBS06N2.mediatek.inc (172.21.101.130) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 1 Aug 2019 20:04:21 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs06n2.mediatek.inc (172.21.101.130) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 2 Aug 2019 11:04:19 +0800
Received: from [172.21.84.99] (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 2 Aug 2019 11:04:19 +0800
Message-ID: <1564715059.4231.6.camel@mtksdccf07>
Subject: Re: [PATCH v3] kasan: add memory corruption identification for
 software tag-based mode
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Andrey Ryabinin <aryabinin@virtuozzo.com>
Date: Fri, 2 Aug 2019 11:04:19 +0800
In-Reply-To: <f29ee964-cf12-1b5d-e570-1d5baa49a580@virtuozzo.com>
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
 <1562839579.5846.12.camel@mtksdccf07>
 <37897fb7-88c1-859a-dfcc-0a5e89a642e0@virtuozzo.com>
 <1563160001.4793.4.camel@mtksdccf07>
 <9ab1871a-2605-ab34-3fd3-4b44a0e17ab7@virtuozzo.com>
 <1563789162.31223.3.camel@mtksdccf07>
 <e62da62a-2a63-3a1c-faeb-9c5561a5170c@virtuozzo.com>
 <1564144097.515.3.camel@mtksdccf07>
 <71df2bd5-7bc8-2c82-ee31-3f68c3b6296d@virtuozzo.com>
 <1564147164.515.10.camel@mtksdccf07>
 <f29ee964-cf12-1b5d-e570-1d5baa49a580@virtuozzo.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: EFC55C8D8568410C5734BD4FCFD4848B3C4EE4673A27E15E32FD2B157FABFEE12000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_200436_845316_2ACCE72F 
X-CRM114-Status: GOOD (  13.48  )
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

On Wed, 2019-07-31 at 20:04 +0300, Andrey Ryabinin wrote:
> 
> On 7/26/19 4:19 PM, Walter Wu wrote:
> > On Fri, 2019-07-26 at 15:52 +0300, Andrey Ryabinin wrote:
> >>
> >> On 7/26/19 3:28 PM, Walter Wu wrote:
> >>> On Fri, 2019-07-26 at 15:00 +0300, Andrey Ryabinin wrote:
> >>>>
> >>>
> >>>>>
> >>>>>
> >>>>> I remember that there are already the lists which you concern. Maybe we
> >>>>> can try to solve those problems one by one.
> >>>>>
> >>>>> 1. deadlock issue? cause by kmalloc() after kfree()?
> >>>>
> >>>> smp_call_on_cpu()
> >>>
> >>>>> 2. decrease allocation fail, to modify GFP_NOWAIT flag to GFP_KERNEL?
> >>>>
> >>>> No, this is not gonna work. Ideally we shouldn't have any allocations there.
> >>>> It's not reliable and it hurts performance.
> >>>>
> >>> I dont know this meaning, we need create a qobject and put into
> >>> quarantine, so may need to call kmem_cache_alloc(), would you agree this
> >>> action?
> >>>
> >>
> >> How is this any different from what you have now?
> > 
> > I originally thought you already agreed the free-list(tag-based
> > quarantine) after fix those issue. If no allocation there,
> 
> If no allocation there, than it must be somewhere else.
> We known exactly the amount of memory we need, so it's possible to preallocate it in advance.
> 
I see. We will implement an extend slub to record five free backtrack
and free pointer tag, and determine whether it is oob or uaf by the free
pointer tag. If you have other ideas, please tell me. Thanks.

 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
