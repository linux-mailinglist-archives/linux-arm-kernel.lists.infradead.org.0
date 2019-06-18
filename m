Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B4A4A079
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 14:13:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=douhHlikqZgzjQdNWP0MXLSRTPMmZ7iCktCZ7utx6Hk=; b=oj/y0xuwKZwcaV
	aLvD4UlUY32P+T0nhpBOue27z+urhTdPyqZELdPm6UrHt3s4S8t21Y6A4iUUyX0+fl+ZBOlJn6wfT
	gaDZpMvBCvwnIzjRMOdbwR/HJ7wRZHaDyXTBx63Z4vQss1VgNkP9Bw7Fs6AZHWG3BH36R1pTP5L1/
	x11uZG9FL92z5GIAgjznVYPZf3yIldjXN4h4Hfn/1Kgc3rWs1mgt+ciWR6tRF9I6i0a24X2oId7cz
	WMyevRBsezq0DMpbn9p7qZvxbDULrOqj8+rDj/LOA9f5onOJ7LZv2aL/TfqZeP0aIIkJ6wdrdtzqj
	gmRM/Sux+CX+jkOddr/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdCzi-0007ts-Mq; Tue, 18 Jun 2019 12:13:46 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdCvg-0003Zy-TG; Tue, 18 Jun 2019 12:09:39 +0000
X-UUID: 05fe0459355f47219826af3c015669db-20190618
X-UUID: 05fe0459355f47219826af3c015669db-20190618
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1820103004; Tue, 18 Jun 2019 04:09:08 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 18 Jun 2019 05:09:06 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 18 Jun 2019 20:09:04 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 18 Jun 2019 20:09:03 +0800
Message-ID: <1560859743.8082.23.camel@mhfsdcap03>
Subject: Re: [PATCH v7 14/21] iommu/mediatek: Add mmu1 support
From: Yong Wu <yong.wu@mediatek.com>
To: Tomasz Figa <tfiga@google.com>
Date: Tue, 18 Jun 2019 20:09:03 +0800
In-Reply-To: <CAAFQd5A5GUn1Zq1xF2_2V0MReNPd5bra2F=nquvodSAZUua5AQ@mail.gmail.com>
References: <1560169080-27134-1-git-send-email-yong.wu@mediatek.com>
 <1560169080-27134-15-git-send-email-yong.wu@mediatek.com>
 <CAAFQd5A5GUn1Zq1xF2_2V0MReNPd5bra2F=nquvodSAZUua5AQ@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_050937_423047_238B2B2D 
X-CRM114-Status: GOOD (  20.39  )
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
 Nicolas Boichat <drinkcat@chromium.org>,
 srv_heupstream <srv_heupstream@mediatek.com>, Joerg
 Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>, Linux Kernel
 Mailing List <linux-kernel@vger.kernel.org>, Evan Green <evgreen@chromium.org>,
 "list@263.net:IOMMU DRIVERS
 <iommu@lists.linux-foundation.org>, Joerg  Roedel <joro@8bytes.org>,
 " <iommu@lists.linux-foundation.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Yingjoe Chen =?UTF-8?Q?=28=E9=99=B3=E8=8B=B1=E6=B4=B2=29?=
 <yingjoe.chen@mediatek.com>, anan.sun@mediatek.com,
 Robin Murphy <robin.murphy@arm.com>, Matthias
 Kaehlcke <mka@chromium.org>, "list@263.net:IOMMU DRIVERS
 <iommu@lists.linux-foundation.org>, Joerg  Roedel <joro@8bytes.org>,
 " <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-06-18 at 15:19 +0900, Tomasz Figa wrote:
> On Mon, Jun 10, 2019 at 9:21 PM Yong Wu <yong.wu@mediatek.com> wrote:
> >
> > Normally the M4U HW connect EMI with smi. the diagram is like below:
> >               EMI
> >                |
> >               M4U
> >                |
> >             smi-common
> >                |
> >        -----------------
> >        |    |    |     |    ...
> >     larb0 larb1  larb2 larb3
> >
> > Actually there are 2 mmu cells in the M4U HW, like this diagram:
> >
> >               EMI
> >            ---------
> >             |     |
> >            mmu0  mmu1     <- M4U
> >             |     |
> >            ---------
> >                |
> >             smi-common
> >                |
> >        -----------------
> >        |    |    |     |    ...
> >     larb0 larb1  larb2 larb3
> >
> > This patch add support for mmu1. In order to get better performance,
> > we could adjust some larbs go to mmu1 while the others still go to
> > mmu0. This is controlled by a SMI COMMON register SMI_BUS_SEL(0x220).
> >
> > mt2712, mt8173 and mt8183 M4U HW all have 2 mmu cells. the default
> > value of that register is 0 which means all the larbs go to mmu0
> > defaultly.
> >
> > This is a preparing patch for adjusting SMI_BUS_SEL for mt8183.
> >
> > Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> > Reviewed-by: Evan Green <evgreen@chromium.org>
> > ---
> >  drivers/iommu/mtk_iommu.c | 46 +++++++++++++++++++++++++++++-----------------
> >  1 file changed, 29 insertions(+), 17 deletions(-)
> >
> > diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
> > index 3a14301..ec4ce74 100644
> > --- a/drivers/iommu/mtk_iommu.c
> > +++ b/drivers/iommu/mtk_iommu.c
> > @@ -72,26 +72,32 @@
> >  #define F_INT_CLR_BIT                          BIT(12)
> >
> >  #define REG_MMU_INT_MAIN_CONTROL               0x124
> > -#define F_INT_TRANSLATION_FAULT                        BIT(0)
> > -#define F_INT_MAIN_MULTI_HIT_FAULT             BIT(1)
> > -#define F_INT_INVALID_PA_FAULT                 BIT(2)
> > -#define F_INT_ENTRY_REPLACEMENT_FAULT          BIT(3)
> > -#define F_INT_TLB_MISS_FAULT                   BIT(4)
> > -#define F_INT_MISS_TRANSACTION_FIFO_FAULT      BIT(5)
> > -#define F_INT_PRETETCH_TRANSATION_FIFO_FAULT   BIT(6)
> > +                                               /* mmu0 | mmu1 */
> > +#define F_INT_TRANSLATION_FAULT                        (BIT(0) | BIT(7))
> > +#define F_INT_MAIN_MULTI_HIT_FAULT             (BIT(1) | BIT(8))
> > +#define F_INT_INVALID_PA_FAULT                 (BIT(2) | BIT(9))
> > +#define F_INT_ENTRY_REPLACEMENT_FAULT          (BIT(3) | BIT(10))
> > +#define F_INT_TLB_MISS_FAULT                   (BIT(4) | BIT(11))
> > +#define F_INT_MISS_TRANSACTION_FIFO_FAULT      (BIT(5) | BIT(12))
> > +#define F_INT_PRETETCH_TRANSATION_FIFO_FAULT   (BIT(6) | BIT(13))
> 
> If there are two IOMMUs, shouldn't we have two driver instances handle
> them, instead of making the driver combine them two internally?

Actually it means only one IOMMU(M4U) HW here. Each a M4U HW has two
small iommu cells which have independent MTLB. As the diagram above, M4U
contain mmu0 and mmu1.

MT8173 and MT8183 have only one M4U HW while MT2712 have 2 M4U HWs(two
driver instances).

> 
> And, what is even more important from security point of view actually,
> have two separate page tables (aka IOMMU groups) for them?

Each a IOMMU(M4U) have its own pagetable, thus, mt8183 have only one
pagetable while mt2712 have two.

> 
> Best regards,
> Tomasz
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
