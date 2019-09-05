Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D51A982D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 03:54:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QtqfREnRC07Z1jXWXydQCHdhrw2SfQikEgvKck109cM=; b=CV/9Ifq5/vGmqK
	vAaBVxBU9UJgzcNhTOVUljPYOT4MyarB9yayFco4fj+cuGUzOBC5cc0hO43ge/V4dvrc7wqMVk+OU
	/Wj0bahq4y7HXaVGW6oNDXGAGd2ur+Rmul0dxFitZ4g42A+N8NMQ//Hx71WgRdIWdMjnxfuzDRe/3
	we/J9GZmLrXde6rPBCawiqkG8/v4h2Fo3sFtjz7Yr010CWfodv4V4kx+6Rm+bt7CUKffAoukf2aG0
	36AsAlE7dIYAn/gUFZEHxbzY6Odv31KIGSEkuIpvVQBcdxkSbMGGSyYShQOZBC6hNGvvgSXcKV4Eq
	/aNxy4nOG4INJg5Vrn3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5gz3-00065L-MA; Thu, 05 Sep 2019 01:54:49 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5gyv-00064w-A6; Thu, 05 Sep 2019 01:54:42 +0000
X-UUID: 5f531d2486e34728b40c1bb6e2b124ec-20190904
X-UUID: 5f531d2486e34728b40c1bb6e2b124ec-20190904
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1461892087; Wed, 04 Sep 2019 17:54:37 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 4 Sep 2019 18:54:36 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Sep 2019 09:54:34 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 5 Sep 2019 09:54:34 +0800
Message-ID: <1567648476.32522.36.camel@mtksdccf07>
Subject: Re: [PATCH 1/2] mm/kasan: dump alloc/free stack for page allocator
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Qian Cai <cai@lca.pw>
Date: Thu, 5 Sep 2019 09:54:36 +0800
In-Reply-To: <1567607824.5576.77.camel@lca.pw>
References: <20190904065133.20268-1-walter-zh.wu@mediatek.com>
 <CAAeHK+wyvLF8=DdEczHLzNXuP+oC0CEhoPmp_LHSKVNyAiRGLQ@mail.gmail.com>
 <1567606591.32522.21.camel@mtksdccf07> <1567607824.5576.77.camel@lca.pw>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_185441_359768_15DF59A7 
X-CRM114-Status: GOOD (  15.97  )
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
 Linux Memory Management List <linux-mm@kvack.org>,
 LKML <linux-kernel@vger.kernel.org>, kasan-dev <kasan-dev@googlegroups.com>,
 Martin
 Schwidefsky <schwidefsky@de.ibm.com>, linux-mediatek@lists.infradead.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Andrey
 Ryabinin <aryabinin@virtuozzo.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Alexander Potapenko <glider@google.com>,
 Andrew Morton <akpm@linux-foundation.org>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-09-04 at 10:37 -0400, Qian Cai wrote:
> On Wed, 2019-09-04 at 22:16 +0800, Walter Wu wrote:
> > On Wed, 2019-09-04 at 15:44 +0200, Andrey Konovalov wrote:
> > > On Wed, Sep 4, 2019 at 8:51 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> > > > +config KASAN_DUMP_PAGE
> > > > +       bool "Dump the page last stack information"
> > > > +       depends on KASAN && PAGE_OWNER
> > > > +       help
> > > > +         By default, KASAN doesn't record alloc/free stack for page
> > > > allocator.
> > > > +         It is difficult to fix up page use-after-free issue.
> > > > +         This feature depends on page owner to record the last stack of
> > > > page.
> > > > +         It is very helpful for solving the page use-after-free or out-
> > > > of-bound.
> > > 
> > > I'm not sure if we need a separate config for this. Is there any
> > > reason to not have this enabled by default?
> > 
> > PAGE_OWNER need some memory usage, it is not allowed to enable by
> > default in low RAM device. so I create new feature option and the person
> > who wants to use it to enable it.
> 
> Or you can try to look into reducing the memory footprint of PAGE_OWNER to fit
> your needs. It does not always need to be that way.

Thanks your suggestion. We can try to think what can be slimmed.

Thanks.
Walter


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
