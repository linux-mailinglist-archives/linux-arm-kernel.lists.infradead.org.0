Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABB6F1EDBCF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 05:40:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PibVwxXEvGUIGbV36zyG8tQNuou09L/a9a7K38yDV1o=; b=lkRiDofAI1Vw3+
	brA1ht7gNiZTj3qRI6NIxK+ul2GpLO/Sog/9vX0SFKD7XlQgCxhyjCKEVZjXH4KFrDHE4BI1sKCU1
	sTxGF/7/qU1GdgwmqQtAcjSpjf6sfxILwoNi8zLmJfo7MnbcxhtyOu+jTuWvGT599qmYJVGwyDzpA
	wQLSuYzzA1GxXU652bbQ5iDnTFLixIoeQXQx6WhJzAjEF5iCson3miGU6Py4tuaQJmZEE/ENrwFjU
	+/5Rbg3B4uYP+OBlpQLiw095oAYdp8+krbiAvnTBVLq037TsLkHsQaZoO+NP3HQP8vbU31bKPRFZ4
	ZY0qqfdvcLhRYnICt2Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jggk4-0001jM-9o; Thu, 04 Jun 2020 03:40:32 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jggjY-0007Uo-4n; Thu, 04 Jun 2020 03:40:01 +0000
X-UUID: 15f3e13d276e44a4a115b99bb8677a82-20200603
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=9ohiaeGdFreb1r0AXs539unugde1ILARpYyi69vZq7M=; 
 b=FAAUMXegfjiNk7eBOMTYbUdzdoIslcIAQpe/Cb/PZllnABeI6orW1H/Fvpg4/HThRotVRYZ/RfLlbYXa6A+7xSTX8jThRyjIdY9Z3UYF1i6RV1v87eJBSWVsL1OnrtDWUtp3dnf7zTsTE0QRe1jXTRBVVGgU50XvOi2QqRDCBaU=;
X-UUID: 15f3e13d276e44a4a115b99bb8677a82-20200603
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <miles.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1706934061; Wed, 03 Jun 2020 19:39:55 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 3 Jun 2020 20:39:57 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 4 Jun 2020 11:39:47 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 4 Jun 2020 11:39:47 +0800
Message-ID: <1591241987.29475.19.camel@mtkswgap22>
Subject: Re: [PATCH] mm/memblock: export max_pfn for kernel modules
From: Miles Chen <miles.chen@mediatek.com>
To: David Hildenbrand <david@redhat.com>
Date: Thu, 4 Jun 2020 11:39:47 +0800
In-Reply-To: <23a9a2cc-3461-52bb-4285-b063a01bd7c6@redhat.com>
References: <20200603161132.2441-1-miles.chen@mediatek.com>
 <23a9a2cc-3461-52bb-4285-b063a01bd7c6@redhat.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: BBB609BC241D5D6326810E159D32C1FFD2E89757713B0F6749736E0F12BB7A882000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_204000_189466_1DD1F614 
X-CRM114-Status: GOOD (  18.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>, linux-mm@kvack.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-06-03 at 18:16 +0200, David Hildenbrand wrote:
> On 03.06.20 18:11, Miles Chen wrote:
> > max_pfn is uesd to get the highest pfn in the system. Drivers like
> > drivers/iommu/mtk_iommu.c checks max_pfn to see if it should enable
> > its "4GB mode".
> > 
> > This patch exports the max_pfn symbol, so we can build the driver as
> > a kernel module.
> 
> Please add that change to the respective user patch (and cc MM-people
> for that patch), so we have the actual user right along the change and
> can figure out if this is the right thing to do.
> 

Thanks for the comment.

Mike points out another alternative way to do this by totalram_pages().
I will use that approach so we don't have to export max_pfn here.

https://lkml.org/lkml/2020/6/3/771

Miles

> > 
> > Signed-off-by: Miles Chen <miles.chen@mediatek.com>
> > ---
> >  mm/memblock.c | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/mm/memblock.c b/mm/memblock.c
> > index c79ba6f9920c..3b2b21ecebb6 100644
> > --- a/mm/memblock.c
> > +++ b/mm/memblock.c
> > @@ -99,6 +99,7 @@ EXPORT_SYMBOL(contig_page_data);
> >  unsigned long max_low_pfn;
> >  unsigned long min_low_pfn;
> >  unsigned long max_pfn;
> > +EXPORT_SYMBOL(max_pfn);
> >  unsigned long long max_possible_pfn;
> >  
> >  static struct memblock_region memblock_memory_init_regions[INIT_MEMBLOCK_REGIONS] __initdata_memblock;
> > 
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
