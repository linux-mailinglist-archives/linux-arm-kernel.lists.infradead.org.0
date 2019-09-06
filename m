Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD7A6AB0E2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 05:16:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YnAYIHkyvzsY/FvzCSwNcBqxNX7igcKFpGP5K4ejp8U=; b=P3OC5Vjpawaazm
	ichIvMkAzcXs2T79IIYlO78QHzTyx9HbeqONN8fv8V0L4MtUxPEk5nqSsNQrx7PgE2XN6Pgm7YY/t
	hXicQWDnb8PyIruBrWoL0ajL+TKUO6H4iFbPWa+AwedGg918uNkLoCDR2VZxdcYftciSEyNzgPAaA
	q45+n+V0LYNOrx0wx2h9jKs4afqx11wRPx4nMkqgfECTA+eCM873TnFlRsXLLf3TUmvAtj1UTa4HB
	fRhZkN7GoOgYUJSsWN/NKaQLHWGNvog0xP75wQjBxUTFJEbK8I2wS7/c98O50mCcTqQXo4DQhO1oZ
	Dnr+Ltf9IEcOyylDLldw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i64jC-0006Le-8g; Fri, 06 Sep 2019 03:16:02 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i64iz-0006K2-44; Fri, 06 Sep 2019 03:15:51 +0000
X-UUID: a5dd2dac813441cbae60d8f4dbe77513-20190905
X-UUID: a5dd2dac813441cbae60d8f4dbe77513-20190905
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1409498161; Thu, 05 Sep 2019 19:15:34 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Sep 2019 20:15:32 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 6 Sep 2019 11:15:31 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 6 Sep 2019 11:15:31 +0800
Message-ID: <1567739734.32522.67.camel@mtksdccf07>
Subject: Re: [PATCH 1/2] mm/kasan: dump alloc/free stack for page allocator
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Vlastimil Babka <vbabka@suse.cz>
Date: Fri, 6 Sep 2019 11:15:34 +0800
In-Reply-To: <99913463-0e2c-7dab-c1eb-8b9e149b3ee3@suse.cz>
References: <20190904065133.20268-1-walter-zh.wu@mediatek.com>
 <401064ae-279d-bef3-a8d5-0fe155d0886d@suse.cz>
 <1567605965.32522.14.camel@mtksdccf07>
 <7998e8f1-e5e2-da84-ea1f-33e696015dce@suse.cz>
 <1567607063.32522.24.camel@mtksdccf07>
 <99913463-0e2c-7dab-c1eb-8b9e149b3ee3@suse.cz>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_201549_168014_D8F2F66C 
X-CRM114-Status: GOOD (  16.57  )
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
Cc: wsd_upstream@mediatek.com, Arnd Bergmann <arnd@arndb.de>,
 linux-mm@kvack.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, kasan-dev@googlegroups.com, Martin
 Schwidefsky <schwidefsky@de.ibm.com>, Alexander Potapenko <glider@google.com>,
 linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Andrew Morton <akpm@linux-foundation.org>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-09-05 at 10:03 +0200, Vlastimil Babka wrote:
> On 9/4/19 4:24 PM, Walter Wu wrote:
> > On Wed, 2019-09-04 at 16:13 +0200, Vlastimil Babka wrote:
> >> On 9/4/19 4:06 PM, Walter Wu wrote:
> >>
> >> The THP fix is not required for the rest of the series, it was even merged to
> >> mainline separately.
> >>
> >>> And It looks like something is different, because we only need last
> >>> stack of page, so it can decrease memory overhead.
> >>
> >> That would save you depot_stack_handle_t (which is u32) per page. I guess that's
> >> nothing compared to KASAN overhead?
> >>
> > If we can use less memory, we can achieve what we want. Why not?
> 
> In my experience to solve some UAFs, it's important to know not only the
> freeing stack, but also the allocating stack. Do they make sense together,
> or not? In some cases, even longer history of alloc/free would be nice :)
> 
We think it only has free stack to find out the root cause. Maybe we can
refer to other people's experience and ideas.


> Also by simply recording the free stack in the existing depot handle,
> you might confuse existing page_owner file consumers, who won't know
> that this is a freeing stack.
> 
Don't worry it.
1. Our feature option has this description about last stack of page.
when consumer enable our feature, they should know the changing.
2. We add to print text message for alloc or free stack before dump the
stack of page. so consumers should know what is it.

> All that just doesn't seem to justify saving an u32 per page.

Actually, We want to slim memory usage instead of increasing the memory
usage at another mail discussion. Maybe, maintainer or reviewer can
provide some ideas. That will be great.

> > 
> > 
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
