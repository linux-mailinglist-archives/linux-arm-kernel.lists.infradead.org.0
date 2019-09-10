Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E6B6AE741
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 11:44:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=McxCXCeu0Op+/8veaMRnwEoOXIyrOl4uXoM6Rk19WS8=; b=pxlzSHzjvs5WQx
	iCExo7Xo4g9Q6qTWh9r8EFEXmsxlwquyC05EDK3Snq8OR6EObkK7fUubXw1eLP4YBGBzurT6Ud/sO
	QXKn5X39Etc8NsfhwYyiQ+8jGgq7d9rVHLKwiE0QO+XJq/6MBVn8yqKrxb56nAAdDfQJnlc3rm2ZE
	BB7dm+UZZxoC8V0GgHcjH2C2UBm7Fho2MBPAcG7YOUurK5Yc0/o1ggDsnMgVFH9J2kcQRhdhq8El8
	/31PJQieAGHzGZKSjAy9AgBUbz7dmlFP7OPn9fNfa98jz9leVcQm8dqwAEzCoSJotx8zPsUi9D79V
	BlfVXib67ntKavKSxxWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7chF-00018D-7w; Tue, 10 Sep 2019 09:44:25 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7ch0-00016g-5f; Tue, 10 Sep 2019 09:44:11 +0000
X-UUID: 5cdb99cdf2104538aaf216cc49e2ba73-20190910
X-UUID: 5cdb99cdf2104538aaf216cc49e2ba73-20190910
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2069902611; Tue, 10 Sep 2019 01:44:00 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 10 Sep 2019 02:43:59 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 10 Sep 2019 17:43:58 +0800
Received: from [172.21.84.99] (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 10 Sep 2019 17:43:58 +0800
Message-ID: <1568108638.24886.7.camel@mtksdccf07>
Subject: Re: [PATCH v2 1/2] mm/page_ext: support to record the last stack of
 page
From: Walter Wu <walter-zh.wu@mediatek.com>
To: "Kirill A. Shutemov" <kirill@shutemov.name>
Date: Tue, 10 Sep 2019 17:43:58 +0800
In-Reply-To: <20190910093103.4cmqk4semlhgpmle@box.shutemov.name>
References: <20190909085339.25350-1-walter-zh.wu@mediatek.com>
 <36b5a8e0-2783-4c0e-4fc7-78ea652ba475@redhat.com>
 <1568077669.24886.3.camel@mtksdccf07>
 <20190910093103.4cmqk4semlhgpmle@box.shutemov.name>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_024410_221143_E089DE6C 
X-CRM114-Status: GOOD (  19.52  )
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
Cc: Qian Cai <cai@lca.pw>, wsd_upstream@mediatek.com,
 Arnd Bergmann <arnd@arndb.de>, David Hildenbrand <david@redhat.com>,
 Andrey Konovalov <andreyknvl@google.com>, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, kasan-dev@googlegroups.com,
 Michal Hocko <mhocko@kernel.org>, linux-mm@kvack.org,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Alexander Potapenko <glider@google.com>, linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-09-10 at 12:31 +0300, Kirill A. Shutemov wrote:
> On Tue, Sep 10, 2019 at 09:07:49AM +0800, Walter Wu wrote:
> > On Mon, 2019-09-09 at 12:57 +0200, David Hildenbrand wrote:
> > > On 09.09.19 10:53, Walter Wu wrote:
> > > > KASAN will record last stack of page in order to help programmer
> > > > to see memory corruption caused by page.
> > > > 
> > > > What is difference between page_owner and our patch?
> > > > page_owner records alloc stack of page, but our patch is to record
> > > > last stack(it may be alloc or free stack of page).
> > > > 
> > > > Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
> > > > ---
> > > >  mm/page_ext.c | 3 +++
> > > >  1 file changed, 3 insertions(+)
> > > > 
> > > > diff --git a/mm/page_ext.c b/mm/page_ext.c
> > > > index 5f5769c7db3b..7ca33dcd9ffa 100644
> > > > --- a/mm/page_ext.c
> > > > +++ b/mm/page_ext.c
> > > > @@ -65,6 +65,9 @@ static struct page_ext_operations *page_ext_ops[] = {
> > > >  #if defined(CONFIG_IDLE_PAGE_TRACKING) && !defined(CONFIG_64BIT)
> > > >  	&page_idle_ops,
> > > >  #endif
> > > > +#ifdef CONFIG_KASAN
> > > > +	&page_stack_ops,
> > > > +#endif
> > > >  };
> > > >  
> > > >  static unsigned long total_usage;
> > > > 
> > > 
> > > Are you sure this patch compiles?
> > > 
> > This is patchsets, it need another patch2.
> > We have verified it by running KASAN UT on Qemu.
> 
> Any patchset must be bisectable: do not break anything in the middle of
> patchset.
> 

Thanks your reminder.
I should explain complete message at commit log.
Our patchsets is below:
https://lkml.org/lkml/2019/9/9/104
https://lkml.org/lkml/2019/9/9/123



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
