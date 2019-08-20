Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C734956BD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 07:39:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D6vCCjrEe5SpzdKItZLSnVyt74/bbqOpT8AFHB0jmHo=; b=m46xJ37eYtn1mu
	CQl99M8tZquEJiDlXfTVuaa5erQpkaJ33fKoAdbH6+7c3UbN7zD25b2zCIVlAv0roUdYtL/BVDkAu
	tGOXt/6Oq3Blt3rMfzo12cU8p2trKc1/PHwpTjNM7Z7ogMBUPviFWusI9/I0aRVrWkUIy35vrx+9o
	mVCIdFdVsqOGqKTG77wULSzmA26F2bRPEOlPSssk1fYiw3XXw5LcwNf/lXz4pfQ2HV+ZfnKor0fmD
	j2HhXgs34wFvojRJ+WI/baVUd8/o0yTx+Un0705oZXOufWSBMFug5JhibQ7ac4aQEp1rsT99MNNb4
	DYHi2yWnlGltI8QgcN1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzwrC-0000T5-8h; Tue, 20 Aug 2019 05:38:58 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzwqT-0000RB-D1; Tue, 20 Aug 2019 05:38:14 +0000
X-UUID: 80cd020a75fb40dc8ba0560ec796e1aa-20190819
X-UUID: 80cd020a75fb40dc8ba0560ec796e1aa-20190819
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1686240551; Mon, 19 Aug 2019 21:37:59 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 19 Aug 2019 22:37:58 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 20 Aug 2019 13:37:57 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 20 Aug 2019 13:37:57 +0800
Message-ID: <1566279478.9993.21.camel@mtksdccf07>
Subject: Re: [PATCH v4] kasan: add memory corruption identification for
 software tag-based mode
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Andrey Ryabinin <aryabinin@virtuozzo.com>
Date: Tue, 20 Aug 2019 13:37:58 +0800
In-Reply-To: <20190806054340.16305-1-walter-zh.wu@mediatek.com>
References: <20190806054340.16305-1-walter-zh.wu@mediatek.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_223813_459196_9963CF6D 
X-CRM114-Status: GOOD (  14.98  )
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
Cc: wsd_upstream@mediatek.com, Vasily Gorbik <gor@linux.ibm.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-mm@kvack.org,
 Andrey Konovalov <andreyknvl@google.com>, linux-kernel@vger.kernel.org,
 kasan-dev@googlegroups.com, Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Miles Chen <miles.chen@mediatek.com>, Alexander Potapenko <glider@google.com>,
 linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Andrew
 Morton <akpm@linux-foundation.org>, Thomas Gleixner <tglx@linutronix.de>,
 Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-08-06 at 13:43 +0800, Walter Wu wrote:
> This patch adds memory corruption identification at bug report for
> software tag-based mode, the report show whether it is "use-after-free"
> or "out-of-bound" error instead of "invalid-access" error. This will make
> it easier for programmers to see the memory corruption problem.
> 
> We extend the slab to store five old free pointer tag and free backtrace,
> we can check if the tagged address is in the slab record and make a
> good guess if the object is more like "use-after-free" or "out-of-bound".
> therefore every slab memory corruption can be identified whether it's
> "use-after-free" or "out-of-bound".
> 
> ====== Changes
> Change since v1:
> - add feature option CONFIG_KASAN_SW_TAGS_IDENTIFY.
> - change QUARANTINE_FRACTION to reduce quarantine size.
> - change the qlist order in order to find the newest object in quarantine
> - reduce the number of calling kmalloc() from 2 to 1 time.
> - remove global variable to use argument to pass it.
> - correct the amount of qobject cache->size into the byes of qlist_head.
> - only use kasan_cache_shrink() to shink memory.
> 
> Change since v2:
> - remove the shinking memory function kasan_cache_shrink()
> - modify the description of the CONFIG_KASAN_SW_TAGS_IDENTIFY
> - optimize the quarantine_find_object() and qobject_free()
> - fix the duplicating function name 3 times in the header.
> - modify the function name set_track() to kasan_set_track()
> 
> Change since v3:
> - change tag-based quarantine to extend slab to identify memory corruption

Hi,Andrey,

Would you review the patch,please?
This patch is to pre-allocate slub record(tag and free backtrace) during
create slub object. When kernel has memory corruption, it will print
correct corruption type and free backtrace.

Thanks.

Walter


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
