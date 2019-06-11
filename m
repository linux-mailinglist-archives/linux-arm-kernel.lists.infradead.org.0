Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF3CC3CAA4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 14:01:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0y1wXDyUJa2PLYMKn9sFLhVP0gCekTbvD6ybeF0tJdQ=; b=SrjFr4zOYpLKQd
	45gCTHvGW+4xMM/D2WSduPi5h/KxPvClNZ9iozvzpRMI3EABLh5F8hYP9dqVYm42da7JbYEGYrqr9
	7s8M3jx7T+pDrl77hjc1BYc3T5gEPQDKjvnDZym3nhQn6Y6KPl8YozAu0HKt4a0nc4KCn3qPW6LcL
	DrW7cTod0ovE/qY54Xm4qOZVDZ/CukPHSPFxreKoW9o0BCd0dn99JGqJOW+H9TjV7wa7+beSrHMmq
	WE974seQGlul5BoaKaGTj/RIjKGnVTIPZtAg+RU6FAhNybi1byNtg/MzxYhD8eLL0GpCew2hHJqJn
	W/35XgcMIhjnFqTT2WxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hafTB-0007Sn-F3; Tue, 11 Jun 2019 12:01:41 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hafSs-0007RR-Og; Tue, 11 Jun 2019 12:01:24 +0000
X-UUID: 61d042873d744cb48340f9e2da33cd18-20190611
X-UUID: 61d042873d744cb48340f9e2da33cd18-20190611
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1289692212; Tue, 11 Jun 2019 04:01:17 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 11 Jun 2019 05:01:16 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 11 Jun 2019 20:01:14 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 11 Jun 2019 20:01:14 +0800
Message-ID: <1560254473.29153.16.camel@mtksdccf07>
Subject: Re: [PATCH v2] kasan: add memory corruption identification for
 software tag-based mode
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Dmitry Vyukov <dvyukov@google.com>
Date: Tue, 11 Jun 2019 20:01:13 +0800
In-Reply-To: <CACT4Y+bNQCa_h158Hhug_DgF3X-8Uoc6Ar7p5vFvHE7uThQmjg@mail.gmail.com>
References: <1559651172-28989-1-git-send-email-walter-zh.wu@mediatek.com>
 <CACT4Y+Y9_85YB8CCwmKerDWc45Z00hMd6Pc-STEbr0cmYSqnoA@mail.gmail.com>
 <1560151690.20384.3.camel@mtksdccf07>
 <CACT4Y+aetKEM9UkfSoVf8EaDNTD40mEF0xyaRiuw=DPEaGpTkQ@mail.gmail.com>
 <1560236742.4832.34.camel@mtksdccf07>
 <CACT4Y+YNG0OGT+mCEms+=SYWA=9R3MmBzr8e3QsNNdQvHNt9Fg@mail.gmail.com>
 <1560249891.29153.4.camel@mtksdccf07>
 <CACT4Y+aXqjCMaJego3yeSG1eR1+vkJkx5GB+xsy5cpGvAtTnDA@mail.gmail.com>
 <CACT4Y+bNQCa_h158Hhug_DgF3X-8Uoc6Ar7p5vFvHE7uThQmjg@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_050122_809993_14AB8835 
X-CRM114-Status: GOOD (  34.43  )
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
Cc: wsd_upstream <wsd_upstream@mediatek.com>, "Jason
 A. Donenfeld" <Jason@zx2c4.com>, Vasily
 Gorbik <gor@linux.ibm.com>, Arnd Bergmann <arnd@arndb.de>,
 Linux-MM <linux-mm@kvack.org>, Andrey Konovalov <andreyknvl@google.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, kasan-dev <kasan-dev@googlegroups.com>,
 Pekka Enberg <penberg@kernel.org>, Martin
 Schwidefsky <schwidefsky@de.ibm.com>,
 Miles Chen =?UTF-8?Q?=28=E9=99=B3=E6=B0=91=E6=A8=BA=29?=
 <Miles.Chen@mediatek.com>, Alexander Potapenko <glider@google.com>,
 David Rientjes <rientjes@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, Christoph Lameter <cl@linux.com>,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-06-11 at 13:39 +0200, Dmitry Vyukov wrote:
> I should have been asked this earlier, but: what is your use-case?
We need KASAN to help us to detect memory corruption at mobile phone. It
is powerful tool.

> Could you use CONFIG_KASAN_GENERIC instead? Why not?
> CONFIG_KASAN_GENERIC already has quarantine.
> 
We hope to use tag-based KASAN, because it consumes more less
memory(1/16) than generic KASAN(1/8), but we also hope the tag-based
KASAN report is easy read and able to identify the use-after-free or
out-of-bound.


> On Tue, Jun 11, 2019 at 1:32 PM Dmitry Vyukov <dvyukov@google.com> wrote:
> >
> > On Tue, Jun 11, 2019 at 12:44 PM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> > >
> > > On Tue, 2019-06-11 at 10:47 +0200, Dmitry Vyukov wrote:
> > > > On Tue, Jun 11, 2019 at 9:05 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> > > > >
> > > > > On Mon, 2019-06-10 at 13:46 +0200, Dmitry Vyukov wrote:
> > > > > > On Mon, Jun 10, 2019 at 9:28 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> > > > > > >
> > > > > > > On Fri, 2019-06-07 at 21:18 +0800, Dmitry Vyukov wrote:
> > > > > > > > > diff --git a/include/linux/kasan.h b/include/linux/kasan.h
> > > > > > > > > index b40ea104dd36..be0667225b58 100644
> > > > > > > > > --- a/include/linux/kasan.h
> > > > > > > > > +++ b/include/linux/kasan.h
> > > > > > > > > @@ -164,7 +164,11 @@ void kasan_cache_shutdown(struct kmem_cache *cache);
> > > > > > > > >
> > > > > > > > >  #else /* CONFIG_KASAN_GENERIC */
> > > > > > > > >
> > > > > > > > > +#ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
> > > > > > > > > +void kasan_cache_shrink(struct kmem_cache *cache);
> > > > > > > > > +#else
> > > > > > > >
> > > > > > > > Please restructure the code so that we don't duplicate this function
> > > > > > > > name 3 times in this header.
> > > > > > > >
> > > > > > > We have fixed it, Thank you for your reminder.
> > > > > > >
> > > > > > >
> > > > > > > > >  static inline void kasan_cache_shrink(struct kmem_cache *cache) {}
> > > > > > > > > +#endif
> > > > > > > > >  static inline void kasan_cache_shutdown(struct kmem_cache *cache) {}
> > > > > > > > >
> > > > > > > > >  #endif /* CONFIG_KASAN_GENERIC */
> > > > > > > > > diff --git a/lib/Kconfig.kasan b/lib/Kconfig.kasan
> > > > > > > > > index 9950b660e62d..17a4952c5eee 100644
> > > > > > > > > --- a/lib/Kconfig.kasan
> > > > > > > > > +++ b/lib/Kconfig.kasan
> > > > > > > > > @@ -134,6 +134,15 @@ config KASAN_S390_4_LEVEL_PAGING
> > > > > > > > >           to 3TB of RAM with KASan enabled). This options allows to force
> > > > > > > > >           4-level paging instead.
> > > > > > > > >
> > > > > > > > > +config KASAN_SW_TAGS_IDENTIFY
> > > > > > > > > +       bool "Enable memory corruption idenitfication"
> > > > > > > >
> > > > > > > > s/idenitfication/identification/
> > > > > > > >
> > > > > > > I should replace my glasses.
> > > > > > >
> > > > > > >
> > > > > > > > > +       depends on KASAN_SW_TAGS
> > > > > > > > > +       help
> > > > > > > > > +         Now tag-based KASAN bug report always shows invalid-access error, This
> > > > > > > > > +         options can identify it whether it is use-after-free or out-of-bound.
> > > > > > > > > +         This will make it easier for programmers to see the memory corruption
> > > > > > > > > +         problem.
> > > > > > > >
> > > > > > > > This description looks like a change description, i.e. it describes
> > > > > > > > the current behavior and how it changes. I think code comments should
> > > > > > > > not have such, they should describe the current state of the things.
> > > > > > > > It should also mention the trade-off, otherwise it raises reasonable
> > > > > > > > questions like "why it's not enabled by default?" and "why do I ever
> > > > > > > > want to not enable it?".
> > > > > > > > I would do something like:
> > > > > > > >
> > > > > > > > This option enables best-effort identification of bug type
> > > > > > > > (use-after-free or out-of-bounds)
> > > > > > > > at the cost of increased memory consumption for object quarantine.
> > > > > > > >
> > > > > > > I totally agree with your comments. Would you think we should try to add the cost?
> > > > > > > It may be that it consumes about 1/128th of available memory at full quarantine usage rate.
> > > > > >
> > > > > > Hi,
> > > > > >
> > > > > > I don't understand the question. We should not add costs if not
> > > > > > necessary. Or you mean why we should add _docs_ regarding the cost? Or
> > > > > > what?
> > > > > >
> > > > > I mean the description of option. Should it add the description for
> > > > > memory costs. I see KASAN_SW_TAGS and KASAN_GENERIC options to show the
> > > > > memory costs. So We originally think it is possible to add the
> > > > > description, if users want to enable it, maybe they want to know its
> > > > > memory costs.
> > > > >
> > > > > If you think it is not necessary, we will not add it.
> > > >
> > > > Full description of memory costs for normal KASAN mode and
> > > > KASAN_SW_TAGS should probably go into
> > > > Documentation/dev-tools/kasan.rst rather then into config description
> > > > because it may be too lengthy.
> > > >
> > > Thanks your reminder.
> > >
> > > > I mentioned memory costs for this config because otherwise it's
> > > > unclear why would one ever want to _not_ enable this option. If it
> > > > would only have positive effects, then it should be enabled all the
> > > > time and should not be a config option at all.
> > >
> > > Sorry, I don't get your full meaning.
> > > You think not to add the memory costs into the description of config ?
> > > or need to add it? or make it not be a config option(default enabled)?
> >
> > Yes, I think we need to include mention of additional cost into _this_
> > new config.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
