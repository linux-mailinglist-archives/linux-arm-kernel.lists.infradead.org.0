Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE585A857D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 16:17:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B+NkVG4wxAWdysMRRRZ2hAul/1r73HmOLPDIZcSbpg0=; b=irKMrayWtjff4F
	MFk8cWZ813x66FUu4BUtD3xDcds7iNSK5AErG1IwEMgoeRBVRbJ9GGyJmL9QNPdKPDdqG6pNwQt7h
	xv/lBtEL/APBc0l22BkDOPOHbccQHSxUe1A043DCiIuiT1niLSkVMhzyqwPt6Wyqygh48s/HWB0Cj
	eADrlGJsyP3T65ZXLnsgPjJ5v2YEf1ECosC/ywVsMLyVD5bmRM6eONwgCr13rLc8ZQnHXrqBXax7f
	JzVB/07Bx+zWY21kXfHK9Np5sdS8Yzea/bue+zGpjJThxLIsanOuJz6lO3y+CCnKinP3q3kuG5ysR
	n8wNqDGGHnzaZQYJ8dsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5W5f-0000bY-CM; Wed, 04 Sep 2019 14:16:55 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5W5V-0000ZC-Dc; Wed, 04 Sep 2019 14:16:46 +0000
X-UUID: 02821038e83e4a5eb2d3a1d6bbd2757e-20190904
X-UUID: 02821038e83e4a5eb2d3a1d6bbd2757e-20190904
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1552694937; Wed, 04 Sep 2019 06:16:40 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 4 Sep 2019 07:16:39 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 4 Sep 2019 22:16:38 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 4 Sep 2019 22:16:30 +0800
Message-ID: <1567606591.32522.21.camel@mtksdccf07>
Subject: Re: [PATCH 1/2] mm/kasan: dump alloc/free stack for page allocator
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Andrey Konovalov <andreyknvl@google.com>
Date: Wed, 4 Sep 2019 22:16:31 +0800
In-Reply-To: <CAAeHK+wyvLF8=DdEczHLzNXuP+oC0CEhoPmp_LHSKVNyAiRGLQ@mail.gmail.com>
References: <20190904065133.20268-1-walter-zh.wu@mediatek.com>
 <CAAeHK+wyvLF8=DdEczHLzNXuP+oC0CEhoPmp_LHSKVNyAiRGLQ@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_071645_465614_22FA2BD9 
X-CRM114-Status: GOOD (  13.27  )
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
 Linux Memory Management List <linux-mm@kvack.org>,
 linux-mediatek@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 kasan-dev <kasan-dev@googlegroups.com>, Martin
 Schwidefsky <schwidefsky@de.ibm.com>, Alexander Potapenko <glider@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Andrew Morton <akpm@linux-foundation.org>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-09-04 at 15:44 +0200, Andrey Konovalov wrote:
> On Wed, Sep 4, 2019 at 8:51 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> > +config KASAN_DUMP_PAGE
> > +       bool "Dump the page last stack information"
> > +       depends on KASAN && PAGE_OWNER
> > +       help
> > +         By default, KASAN doesn't record alloc/free stack for page allocator.
> > +         It is difficult to fix up page use-after-free issue.
> > +         This feature depends on page owner to record the last stack of page.
> > +         It is very helpful for solving the page use-after-free or out-of-bound.
> 
> I'm not sure if we need a separate config for this. Is there any
> reason to not have this enabled by default?

PAGE_OWNER need some memory usage, it is not allowed to enable by
default in low RAM device. so I create new feature option and the person
who wants to use it to enable it.

Thanks.
Walter


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
