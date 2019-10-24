Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CBCFE2B06
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 09:23:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fR14jzCUVsEgEL9Y8TW3qy8QKXwbXibazmt68NeCRBs=; b=i473fIOPhC9U0N
	vxS9GNQmcoMHGf5BxrXn0fxCd6wTYIln6upiUb7ZTpQkfceDntdPyLTWnQ3u6VSdDFpyKeoyQc9Cr
	b698vp4VaD/60Z8EN3YunHf/Jz6isZZBhHuCC99/LFDl/Q5Ai7CR7sEeHzw8Aob3sDVgDiL5eygAF
	Q3ld66NZlkiIe5BzA5ZTyYuzf8ub2MolyXcOnooHfdvEFzP1+jfGi4SeDamE5TNL7AraeNZvTc/zZ
	/pblol4PBI9R7ugzCbf/k/EAgDu/3hGOWePNpMt6qE/dvpt6HGK0xsa93yOuTgaTGW8cbOKk1tq5b
	0E4M9WzXxqWguKM3odiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNXSp-0006UA-Qh; Thu, 24 Oct 2019 07:23:19 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNXSD-0005z6-AC; Thu, 24 Oct 2019 07:22:42 +0000
X-UUID: c3db00983a284a6d89a80c4adfa00a3d-20191023
X-UUID: c3db00983a284a6d89a80c4adfa00a3d-20191023
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 920150192; Wed, 23 Oct 2019 23:22:20 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 24 Oct 2019 00:22:33 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 24 Oct 2019 15:22:31 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 24 Oct 2019 15:22:30 +0800
Message-ID: <1571901752.19130.135.camel@mhfsdcap03>
Subject: Re: [PATCH v4 3/7] iommu/mediatek: Use gather to achieve the tlb
 range flush
From: Yong Wu <yong.wu@mediatek.com>
To: Will Deacon <will@kernel.org>
Date: Thu, 24 Oct 2019 15:22:32 +0800
In-Reply-To: <20191023165543.GB27471@willie-the-truck>
References: <1571196792-12382-1-git-send-email-yong.wu@mediatek.com>
 <1571196792-12382-4-git-send-email-yong.wu@mediatek.com>
 <20191023165543.GB27471@willie-the-truck>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: B3428B34711F9D4340351C5FBF71C7D9A7707DD264962EFF9A5C5A10E427B3F82000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_002241_358657_A06BBCE1 
X-CRM114-Status: GOOD (  16.80  )
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
Cc: youlin.pei@mediatek.com, anan.sun@mediatek.com, Nicolas
 Boichat <drinkcat@chromium.org>, cui.zhang@mediatek.com,
 srv_heupstream@mediatek.com, chao.hao@mediatek.com,
 Joerg Roedel <joro@8bytes.org>, edison.hsieh@mediatek.com,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, Tomasz Figa <tfiga@google.com>,
 iommu@lists.linux-foundation.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Robin
 Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-10-23 at 17:55 +0100, Will Deacon wrote:
> On Wed, Oct 16, 2019 at 11:33:08AM +0800, Yong Wu wrote:
> > Use the iommu_gather mechanism to achieve the tlb range flush.
> > Gather the iova range in the "tlb_add_page", then flush the merged iova
> > range in iotlb_sync.
> > 
> > Suggested-by: Tomasz Figa <tfiga@chromium.org>
> > Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> > ---
> >  drivers/iommu/mtk_iommu.c | 12 ++++++++----
> >  1 file changed, 8 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
> > index c2f6c78..81ac95f 100644
> > --- a/drivers/iommu/mtk_iommu.c
> > +++ b/drivers/iommu/mtk_iommu.c
> > @@ -245,11 +245,9 @@ static void mtk_iommu_tlb_flush_page_nosync(struct iommu_iotlb_gather *gather,
> >  					    void *cookie)
> >  {
> >  	struct mtk_iommu_data *data = cookie;
> > -	unsigned long flags;
> > +	struct iommu_domain *domain = &data->m4u_dom->domain;
> >  
> > -	spin_lock_irqsave(&data->tlb_lock, flags);
> > -	mtk_iommu_tlb_add_flush_nosync(iova, granule, granule, true, cookie);
> > -	spin_unlock_irqrestore(&data->tlb_lock, flags);
> > +	iommu_iotlb_gather_add_page(domain, gather, iova, granule);
> 
> You need to be careful here, because iommu_iotlb_gather_add_page() can
> call iommu_tlb_sync() in some situations and you don't hold the lock.

The mtk_iommu_iotlb_sync below already has the lock in it, so I delete
the lock here.

> 
> >  static const struct iommu_flush_ops mtk_iommu_flush_ops = {
> > @@ -469,9 +467,15 @@ static void mtk_iommu_iotlb_sync(struct iommu_domain *domain,
> >  				 struct iommu_iotlb_gather *gather)
> >  {
> >  	struct mtk_iommu_data *data = mtk_iommu_get_m4u_data();
> > +	size_t length = gather->end - gather->start;
> >  	unsigned long flags;
> >  
> > +	if (gather->start == ULONG_MAX)
> > +		return;
> > +
> >  	spin_lock_irqsave(&data->tlb_lock, flags);
> > +	mtk_iommu_tlb_add_flush_nosync(gather->start, length, gather->pgsize,
> > +				       false, data);
> >  	mtk_iommu_tlb_sync(data);
> >  	spin_unlock_irqrestore(&data->tlb_lock, flags);
> 
> Modulo my comment above, this fixes my previous comment. Given that mainline
> is already broken, I guess the runtime bisectability isn't a problem.

As the reply in [2/7]. the mainline is not broken after [2/7], it only
go to the previous status before commit(4d689b619445).

After using the iommu_gather, the iova will be the merged range in this
iotlb_sync, it is just fit to do the tlb-flush/tlb-sync. then it fixes
our potential issue(No tlb-sync for the previous tlb-flush range).

> 
> Will



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
