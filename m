Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6304CFD6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 16:01:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sKBuFkRZom+sbBnwZy6gu5iv6/4Aigm0bpburNtxVXc=; b=gT0Vz/3y1I8vg0
	oLh2Qb5twnVPV9EEqdJdd8gsD5tR5AHbKBODsWAqa228um5wHK9nv9q2MyqGzvm4u+HJilfReT4Wv
	C+A6AkaaExWchT33u2Brl4nkrOPt0f65yEui5QVWW98eEOxvCILVxtQTMcrSM5LOltxqcxF4cobhJ
	LVve48d8gZDc8d/cNA8oATTXa3VLNPFTLPYWf3EmWWxBeqXTE7TdLXXoASIeHqKnX9dgpDmKAAqZF
	3ceByNEVigRFe7BZhKcUwC33FlqBaj4KOmr2VouMhT5hdPHCol39PIq/5k3efOFOOS85jvpJ5tsdB
	bfPRVeLLgW+ouN9f07gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdxd6-0002X0-6y; Thu, 20 Jun 2019 14:01:32 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdxck-0002Uu-9Y; Thu, 20 Jun 2019 14:01:11 +0000
X-UUID: 95cf9c99e87e48a7afb58ebe95053ee2-20190620
X-UUID: 95cf9c99e87e48a7afb58ebe95053ee2-20190620
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1199927130; Thu, 20 Jun 2019 06:00:56 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 20 Jun 2019 07:00:54 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 20 Jun 2019 22:00:52 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 20 Jun 2019 22:00:51 +0800
Message-ID: <1561039251.4021.24.camel@mhfsdcap03>
Subject: Re: [PATCH v7 20/21] iommu/mediatek: Fix iova_to_phys PA start for
 4GB mode
From: Yong Wu <yong.wu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Thu, 20 Jun 2019 22:00:51 +0800
In-Reply-To: <db9b3b2f-3206-01bf-f0f9-67251e5ff756@gmail.com>
References: <1560169080-27134-1-git-send-email-yong.wu@mediatek.com>
 <1560169080-27134-21-git-send-email-yong.wu@mediatek.com>
 <db9b3b2f-3206-01bf-f0f9-67251e5ff756@gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 9F3A6F19158ACBE29AA97F263B906A0DA454BBC7D4DEDC72D58952D01E5C29BA2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_070110_350155_FF0DF0BE 
X-CRM114-Status: GOOD (  26.84  )
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
Cc: youlin.pei@mediatek.com, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, srv_heupstream@mediatek.com,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Evan Green <evgreen@chromium.org>, Tomasz
 Figa <tfiga@google.com>, iommu@lists.linux-foundation.org, Rob
 Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 yingjoe.chen@mediatek.com, anan.sun@mediatek.com,
 Robin Murphy <robin.murphy@arm.com>, Matthias
 Kaehlcke <mka@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-06-18 at 18:35 +0200, Matthias Brugger wrote:
> 
> On 10/06/2019 14:17, Yong Wu wrote:
> > In the 4GB mode, the physical address is remapped,
> > 
> > Here is the detailed remap relationship.
> > CPU PA         ->    HW PA
> > 0x4000_0000          0x1_4000_0000 (Add bit32)
> > 0x8000_0000          0x1_8000_0000 ...
> > 0xc000_0000          0x1_c000_0000 ...
> > 0x1_0000_0000        0x1_0000_0000 (No change)
> > 
> > Thus, we always add bit32 for PA when entering mtk_iommu_map.
> > But in the iova_to_phys, the CPU don't need this bit32 if the
> > PA is from 0x1_4000_0000 to 0x1_ffff_ffff.
> > This patch discards the bit32 in this iova_to_phys in the 4GB mode.
> > 
> > Fixes: 30e2fccf9512 ("iommu/mediatek: Enlarge the validate PA range
> > for 4GB mode")
> > Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> > ---
> >  drivers/iommu/mtk_iommu.c | 18 ++++++++++++++++++
> >  1 file changed, 18 insertions(+)
> > 
> > diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
> > index 67cab2d..34f2e40 100644
> > --- a/drivers/iommu/mtk_iommu.c
> > +++ b/drivers/iommu/mtk_iommu.c
> > @@ -119,6 +119,19 @@ struct mtk_iommu_domain {
> >  
> >  static const struct iommu_ops mtk_iommu_ops;
> >  
> > +/*
> > + * In M4U 4GB mode, the physical address is remapped as below:
> > + *  CPU PA         ->   M4U HW PA
> > + *  0x4000_0000         0x1_4000_0000 (Add bit32)
> > + *  0x8000_0000         0x1_8000_0000 ...
> > + *  0xc000_0000         0x1_c000_0000 ...
> > + *  0x1_0000_0000       0x1_0000_0000 (No change)
> > + *
> > + * Thus, We always add BIT32 in the iommu_map and disable BIT32 if PA is >=
> > + * 0x1_4000_0000 in the iova_to_phys.
> > + */
> > +#define MTK_IOMMU_4GB_MODE_PA_140000000     0x140000000UL
> > +
> >  static LIST_HEAD(m4ulist);	/* List all the M4U HWs */
> >  
> >  #define for_each_m4u(data)	list_for_each_entry(data, &m4ulist, list)
> > @@ -415,6 +428,7 @@ static phys_addr_t mtk_iommu_iova_to_phys(struct iommu_domain *domain,
> >  					  dma_addr_t iova)
> >  {
> >  	struct mtk_iommu_domain *dom = to_mtk_domain(domain);
> > +	struct mtk_iommu_data *data = mtk_iommu_get_m4u_data();
> >  	unsigned long flags;
> >  	phys_addr_t pa;
> >  
> > @@ -422,6 +436,10 @@ static phys_addr_t mtk_iommu_iova_to_phys(struct iommu_domain *domain,
> >  	pa = dom->iop->iova_to_phys(dom->iop, iova);
> >  	spin_unlock_irqrestore(&dom->pgtlock, flags);
> >  
> > +	if (data->plat_data->has_4gb_mode && data->dram_is_4gb &&
> > +	    pa >= MTK_IOMMU_4GB_MODE_PA_140000000)
> > +		pa &= ~BIT_ULL(32);
> > +
> 
> Hm, I wonder if we could fix this as first patch in the series, especially before:
> "[PATCH 06/21] iommu/io-pgtable-arm-v7s: Extend MediaTek 4GB Mode"

OK.

> 
> This would make it easier for the stable maintainer to cherry-pick the fix.
> Without 100% understanding the code, it seems suspicious to me, that you first
> move the setting of the bit32 and bit33 into v7s and later explicitly clean the
> bits here.
> 
> So my take on this is, that patch 6/21 introduced the regression you are trying
> to fix here. As said that is speculation as I don't understand the code in its
> whole.
> 
> Any clarification would be useful.

I guess the commit message in [06/21] will be helpful.

In the previous mt8173 and mt2712, the M4U HW support "4GB mode" in
which the range of dram is from 0x4000_0000 to 0x1_3fff_ffff and it was
remapped to 0x1_0000_0000 ~0x1_ffff_ffff(For readable, I have wrote the
re-map relationship into the code in this patch.). but mt8183 don't need
remap the dram address(0x4000_0000 ~ 0x3_ffff_ffff).

In order to unify the code, we add bit32 for "4GB mode". But actually
the PA doesn't always have bit32, thus, I have to remove bit32 when PA >
0x1_4000_0000.

So sorry that the "4GB mode" is a little unreadable and special, And the
4GB patch(30e2fccf9512 ("iommu/mediatek: Enlarge the validate PA range
for 4GB mode") has introduced several fix patches.

> 
> Regards,
> Matthias
> 
> >  	return pa;
> >  }
> >  
> > 
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
