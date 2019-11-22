Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 616871066FE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 08:21:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1IBR1kvWmQV4lkBaIBRNKy3ZffL9As/CPyG4dQZqYLo=; b=BfYRZs2RHTUCRU
	tFMyGEsGREYhWGCeCchPcTFaPF7BtOxRayt/zB5JR0zS/IrUd1aEB9ygh34CDQxTr3lrmDlHWSVIy
	o8eOzhU+WFuY/cwJUtnEu8e4/u1HZkfHI2/joxkKx9pg2QtBbgpFF4LL/G6z1X4peWvsP3JtIsbKv
	z4R40qOsw8cO3RpnOJQQQ/sNJY7pNcC92A8YPkJEuA2J88T6h12Ep2NTnLnp8gKS4dtqdO/l6Wq5G
	t3we+YCWWC0Rz1K0RwVhdtKTcDlBLnKOiEliF3LFFQ2VNue0q5UjBhQXx2hmD63ogjLjgycwx1kZJ
	lmXwtkAwXYL/nt1AgMag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY3Ft-0002a5-Kv; Fri, 22 Nov 2019 07:21:25 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY3Fe-0002Vh-8v; Fri, 22 Nov 2019 07:21:12 +0000
X-UUID: f1b2569af61642f19840780ea1dde4d0-20191121
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=Rn/XoDq5loIZaVO1pS6BYoAXB6sUp5RYn3/dfFUf7zc=; 
 b=gHxeAf5sG9N4OAiGULAd/71WH48OQvo7+wOUdGKXM2iC2ywkuZliaijlJNPHaxe4vfanFehwD/cR/NrEdfz/w7LXThLmOjYgKO/D56KKcmAazYezqNX2IUYqe6ITylL2dbXPxpsJ3lvfVT+YOIg1oRMY6ejkzBXvBS/U+j+RC5M=;
X-UUID: f1b2569af61642f19840780ea1dde4d0-20191121
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 866936884; Thu, 21 Nov 2019 23:21:06 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 21 Nov 2019 23:19:00 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 22 Nov 2019 15:18:30 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 22 Nov 2019 15:18:28 +0800
Message-ID: <1574407116.8338.10.camel@mtksdccf07>
Subject: Re: [PATCH v4 1/2] kasan: detect negative size in memory operation
 function
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Andrey Ryabinin <aryabinin@virtuozzo.com>
Date: Fri, 22 Nov 2019 15:18:36 +0800
In-Reply-To: <b2ba5228-dec0-9acf-49e9-d57f156814ef@virtuozzo.com>
References: <20191112065302.7015-1-walter-zh.wu@mediatek.com>
 <b2ba5228-dec0-9acf-49e9-d57f156814ef@virtuozzo.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_232110_319833_6B8AADD3 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: wsd_upstream <wsd_upstream@mediatek.com>, linux-kernel@vger.kernel.org,
 kasan-dev@googlegroups.com, linux-mm@kvack.org,
 Alexander Potapenko <glider@google.com>, linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Andrew Morton <akpm@linux-foundation.org>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-11-22 at 01:20 +0300, Andrey Ryabinin wrote:
> 
> On 11/12/19 9:53 AM, Walter Wu wrote:
> > KASAN missed detecting size is a negative number in memset(), memcpy(),
> > and memmove(), it will cause out-of-bounds bug. So needs to be detected
> > by KASAN.
> > 
> > If size is a negative number, then it has a reason to be defined as
> > out-of-bounds bug type.
> > Casting negative numbers to size_t would indeed turn up as
> > a large size_t and its value will be larger than ULONG_MAX/2,
> > so that this can qualify as out-of-bounds.
> > 
> > KASAN report is shown below:
> > 
> >  BUG: KASAN: out-of-bounds in kmalloc_memmove_invalid_size+0x70/0xa0
> >  Read of size 18446744073709551608 at addr ffffff8069660904 by task cat/72
> > 
> >  CPU: 2 PID: 72 Comm: cat Not tainted 5.4.0-rc1-next-20191004ajb-00001-gdb8af2f372b2-dirty #1
> >  Hardware name: linux,dummy-virt (DT)
> >  Call trace:
> >   dump_backtrace+0x0/0x288
> >   show_stack+0x14/0x20
> >   dump_stack+0x10c/0x164
> >   print_address_description.isra.9+0x68/0x378
> >   __kasan_report+0x164/0x1a0
> >   kasan_report+0xc/0x18
> >   check_memory_region+0x174/0x1d0
> >   memmove+0x34/0x88
> >   kmalloc_memmove_invalid_size+0x70/0xa0
> > 
> > [1] https://bugzilla.kernel.org/show_bug.cgi?id=199341
> > 
> > Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
> > Reported-by: Dmitry Vyukov <dvyukov@google.com>
> > Suggested-by: Dmitry Vyukov <dvyukov@google.com>
> > Reviewed-by: Dmitry Vyukov <dvyukov@google.com>
> > Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
> > Cc: Alexander Potapenko <glider@google.com>
> > Reported-by: kernel test robot <lkp@intel.com>
> > ---
> 
> Reviewed-by: Andrey Ryabinin <aryabinin@virtuozzo.com>

Hi Andrey, Dmitry,

Thanks for your review and suggestion.

Walter
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
