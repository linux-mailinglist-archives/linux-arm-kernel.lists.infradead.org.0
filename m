Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D53F1D6F21
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 07:36:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QOQcZc1JcbtXtcrGXof/Nal0DLW3eSnPJSfsg3NUOUU=; b=mYV2VgakwVBWeo
	V6qfjinO7olFrdZGkDNJ1HFokJ/bSNv6oA9mf0XBUR7aW487FMvvK6XqSBHhXrxeDENACnetV7Uos
	bLExkb8zntVNHx7Zq3qqZb0QE705N2kusCwv9PElyrc5FTehD+vywaDmb2BjVACC7TzZ1vqtiEJbY
	GWhMnk6AyLcUuMefZcLmsZ3bZAzhzgTf+WSdMa6nFGwGaL4OlFq/fDvmJDfgyG/CasJH7mgVTlQPb
	RLEGM+4HlG0AioVaKY/DmQNiy+wg2g5KHMcMK6itEXPxmv8vOSqgGYXIfm6G4gpED2gCj2xkqa51Z
	o3UaIgTkXPL5q94/KwAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKFV2-0007Yl-9b; Tue, 15 Oct 2019 05:36:00 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKFUr-0007Xw-RS; Tue, 15 Oct 2019 05:35:51 +0000
X-UUID: ecba4a922c5a44b094e8fda556b601d8-20191014
X-UUID: ecba4a922c5a44b094e8fda556b601d8-20191014
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 825076850; Mon, 14 Oct 2019 21:35:38 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 14 Oct 2019 22:25:41 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 15 Oct 2019 13:25:39 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 15 Oct 2019 13:25:39 +0800
Message-ID: <1571117141.19130.82.camel@mhfsdcap03>
Subject: Re: [PATCH v3 6/7] iommu/mediatek: Use writel for TLB range
 invalidation
From: Yong Wu <yong.wu@mediatek.com>
To: Robin Murphy <robin.murphy@arm.com>
Date: Tue, 15 Oct 2019 13:25:41 +0800
In-Reply-To: <c87e2a9c-5ed3-e44c-3b17-067db173eae9@arm.com>
References: <1571035101-4213-1-git-send-email-yong.wu@mediatek.com>
 <1571035101-4213-7-git-send-email-yong.wu@mediatek.com>
 <c87e2a9c-5ed3-e44c-3b17-067db173eae9@arm.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: F7B169CFC27DA96FE703EAD572803384264DF78C3B40C94DC763E2363F6E10A82000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_223549_892000_9A7CEB79 
X-CRM114-Status: GOOD (  19.46  )
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
Cc: youlin.pei@mediatek.com, anan.sun@mediatek.com,
 Nicolas Boichat <drinkcat@chromium.org>, cui.zhang@mediatek.com,
 srv_heupstream@mediatek.com, edison.hsieh@mediatek.com,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Evan Green <evgreen@chromium.org>,
 chao.hao@mediatek.com, Tomasz
 Figa <tfiga@google.com>, iommu@lists.linux-foundation.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-10-14 at 15:04 +0100, Robin Murphy wrote:
> On 14/10/2019 07:38, Yong Wu wrote:
> > Use writel for the register F_MMU_INV_RANGE which is for triggering the
> > HW work. We expect all the setting(iova_start/iova_end...) have already
> > been finished before F_MMU_INV_RANGE.
> 
> For Arm CPUs, these registers should be mapped as Device memory, 
> therefore the same-peripheral rule should implicitly enforce that the 
> accesses are made in program order, hence you're unlikely to have seen a 
> problem in reality. However, the logical reasoning for the change seems 
> valid in general, so I'd argue that it's still worth making if only for 
> the sake of good practice:
> 
> Acked-by: Robin Murphy <robin.murphy@arm.com>

Thanks very much for the view. If this patch is not so necessary, I will
remove it this time.

> 
> > Signed-off-by: Anan.Sun <anan.sun@mediatek.com>
> > Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> > ---
> >   drivers/iommu/mtk_iommu.c | 3 +--
> >   1 file changed, 1 insertion(+), 2 deletions(-)
> > 
> > diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
> > index dbbacc3..d285457 100644
> > --- a/drivers/iommu/mtk_iommu.c
> > +++ b/drivers/iommu/mtk_iommu.c
> > @@ -187,8 +187,7 @@ static void mtk_iommu_tlb_flush_range_sync(unsigned long iova, size_t size,
> >   		writel_relaxed(iova, data->base + REG_MMU_INVLD_START_A);
> >   		writel_relaxed(iova + size - 1,
> >   			       data->base + REG_MMU_INVLD_END_A);
> > -		writel_relaxed(F_MMU_INV_RANGE,
> > -			       data->base + REG_MMU_INVALIDATE);
> > +		writel(F_MMU_INV_RANGE, data->base + REG_MMU_INVALIDATE);
> >   
> >   		/* tlb sync */
> >   		ret = readl_poll_timeout_atomic(data->base + REG_MMU_CPE_DONE,
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
