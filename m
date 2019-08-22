Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDAEE988EA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 03:22:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UP+wttbe8n0gttRpSvM9JjD4JiwonwshIJ7mjBF0gpo=; b=aG5CM7ZVF6A145
	fZxEeAxmb5fdg3W/t8uZBH32J/gyt/FV2oRj2IO8EQgFeqzp4jOUcYtruBAgzK6uEhrH4dD2lb+5Y
	nxMRCuGdth2OSF7y9vgJiDRBx/7uVvP4MYsrau9ylrzypTiqNCtHsNHzE5pVQGfjC9dgkJgueym0U
	vrDdkKhgzEzXsRl1oi825/P+HMa9g5RmhYvwKAu5xfTH/J84tSlM2c3fwWzCkMMxPlEjdhMPbip3p
	QWk2xCaanjDDjuvgpRsNVsCUPOvMV2yQvq4M34LdhnFwotTrTndNoAbowT2qRhtgPaQ4ReF/516iF
	K/sbCoDV1Caphzokrffg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0bnt-00007K-Ue; Thu, 22 Aug 2019 01:22:17 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0bnk-00005v-JB; Thu, 22 Aug 2019 01:22:10 +0000
X-UUID: 648c6a03e0f140aeb2d83a04ceaf26f6-20190821
X-UUID: 648c6a03e0f140aeb2d83a04ceaf26f6-20190821
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 316571614; Wed, 21 Aug 2019 17:22:01 -0800
Received: from MTKMBS06N1.mediatek.inc (172.21.101.129) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 21 Aug 2019 18:21:58 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs06n1.mediatek.inc (172.21.101.129) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 22 Aug 2019 09:22:02 +0800
Received: from [172.21.84.99] (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 22 Aug 2019 09:21:58 +0800
Message-ID: <1566436922.27117.0.camel@mtksdccf07>
Subject: Re: [PATCH v4] kasan: add memory corruption identification for
 software tag-based mode
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Andrey Ryabinin <aryabinin@virtuozzo.com>
Date: Thu, 22 Aug 2019 09:22:02 +0800
In-Reply-To: <3318f9d7-a760-3cc8-b700-f06108ae745f@virtuozzo.com>
References: <20190806054340.16305-1-walter-zh.wu@mediatek.com>
 <1566279478.9993.21.camel@mtksdccf07>
 <3318f9d7-a760-3cc8-b700-f06108ae745f@virtuozzo.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_182208_639390_FE44CE4A 
X-CRM114-Status: GOOD (  19.22  )
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

On Wed, 2019-08-21 at 20:52 +0300, Andrey Ryabinin wrote:
> 
> On 8/20/19 8:37 AM, Walter Wu wrote:
> > On Tue, 2019-08-06 at 13:43 +0800, Walter Wu wrote:
> >> This patch adds memory corruption identification at bug report for
> >> software tag-based mode, the report show whether it is "use-after-free"
> >> or "out-of-bound" error instead of "invalid-access" error. This will make
> >> it easier for programmers to see the memory corruption problem.
> >>
> >> We extend the slab to store five old free pointer tag and free backtrace,
> >> we can check if the tagged address is in the slab record and make a
> >> good guess if the object is more like "use-after-free" or "out-of-bound".
> >> therefore every slab memory corruption can be identified whether it's
> >> "use-after-free" or "out-of-bound".
> >>
> >> ====== Changes
> >> Change since v1:
> >> - add feature option CONFIG_KASAN_SW_TAGS_IDENTIFY.
> >> - change QUARANTINE_FRACTION to reduce quarantine size.
> >> - change the qlist order in order to find the newest object in quarantine
> >> - reduce the number of calling kmalloc() from 2 to 1 time.
> >> - remove global variable to use argument to pass it.
> >> - correct the amount of qobject cache->size into the byes of qlist_head.
> >> - only use kasan_cache_shrink() to shink memory.
> >>
> >> Change since v2:
> >> - remove the shinking memory function kasan_cache_shrink()
> >> - modify the description of the CONFIG_KASAN_SW_TAGS_IDENTIFY
> >> - optimize the quarantine_find_object() and qobject_free()
> >> - fix the duplicating function name 3 times in the header.
> >> - modify the function name set_track() to kasan_set_track()
> >>
> >> Change since v3:
> >> - change tag-based quarantine to extend slab to identify memory corruption
> > 
> > Hi,Andrey,
> > 
> > Would you review the patch,please?
> 
> 
> I didn't notice anything fundamentally wrong, but I find there are some
> questionable implementation choices that makes code look weirder than necessary
> and harder to understand. So I ended up with cleaning it up, see the diff bellow.
> I'll send v5 with that diff folded.
> 

Thanks your review and suggestion.

Walter


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
