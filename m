Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B73BE2B05
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 09:23:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=naJwCnxmQqpP+gV47JGdqnsjkZ0YQLo6zUdanZBI25o=; b=nuuxJF/gHYeGJW
	GYIpHbxfyT6zOtpmr6e9GNyH6+EQWeyVfkM/YbawpEIlA8pzgVMlEo/JVyPJRHLR/HVvh0QIR/UdN
	LvnNn7EhhHfASaV81byBwOJIFjQW1cNlWswQuw1zbLwNnmJimX5t87h33Tps96WTxng8ez0NTFNha
	7JlrRNdGIoldcGh09WVAizU47tjYX75yuv3MpakpPC7JqrbAE5k7GDCzQYvk03Rn9VKYjllTMloLe
	QOiAmQTGBFUACnBFqmCgTXTIneLQBxf5DXiUD3Ag8oDVZHQV4ZyGYkans8LRFzN0Erq3vS/60QNKx
	aiWH8wUGjtfte7UQCytQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNXSW-00060l-Tz; Thu, 24 Oct 2019 07:23:00 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNXSC-0005z4-L2; Thu, 24 Oct 2019 07:22:41 +0000
X-UUID: 682f58f137c4424eb93220f5c5509338-20191023
X-UUID: 682f58f137c4424eb93220f5c5509338-20191023
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1558509765; Wed, 23 Oct 2019 23:22:17 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 24 Oct 2019 00:22:31 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 24 Oct 2019 15:22:26 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 24 Oct 2019 15:22:25 +0800
Message-ID: <1571901746.19130.134.camel@mhfsdcap03>
Subject: Re: [PATCH v4 2/7] iommu/mediatek: Add a new tlb_lock for tlb_flush
From: Yong Wu <yong.wu@mediatek.com>
To: Will Deacon <will@kernel.org>
Date: Thu, 24 Oct 2019 15:22:26 +0800
In-Reply-To: <20191023165252.GA27471@willie-the-truck>
References: <1571196792-12382-1-git-send-email-yong.wu@mediatek.com>
 <1571196792-12382-3-git-send-email-yong.wu@mediatek.com>
 <20191023165252.GA27471@willie-the-truck>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: A424D45C3762AE65D19C9E0D6AC3052D0F4FDCA255F395DA386AC98B86DDEC702000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_002240_693567_B7CF0827 
X-CRM114-Status: GOOD (  17.45  )
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

On Wed, 2019-10-23 at 17:52 +0100, Will Deacon wrote:
> On Wed, Oct 16, 2019 at 11:33:07AM +0800, Yong Wu wrote:
> > The commit 4d689b619445 ("iommu/io-pgtable-arm-v7s: Convert to IOMMU API
> > TLB sync") help move the tlb_sync of unmap from v7s into the iommu
> > framework. It helps add a new function "mtk_iommu_iotlb_sync", But it
> > lacked the lock, then it will cause the variable "tlb_flush_active"
> > may be changed unexpectedly, we could see this warning log randomly:
> > 
> > mtk-iommu 10205000.iommu: Partial TLB flush timed out, falling back to
> > full flush
> > 
> > The HW requires tlb_flush/tlb_sync in pairs strictly, this patch adds
> > a new tlb_lock for tlb operations to fix this issue.
> > 
> > Fixes: 4d689b619445 ("iommu/io-pgtable-arm-v7s: Convert to IOMMU API TLB
> > sync")
> > Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> > ---
> >  drivers/iommu/mtk_iommu.c | 23 ++++++++++++++++++++++-
> >  drivers/iommu/mtk_iommu.h |  1 +
> >  2 files changed, 23 insertions(+), 1 deletion(-)
> 
> [...]
> 
> >  static void mtk_iommu_tlb_flush_page_nosync(struct iommu_iotlb_gather *gather,
> >  					    unsigned long iova, size_t granule,
> >  					    void *cookie)
> >  {
> > +	struct mtk_iommu_data *data = cookie;
> > +	unsigned long flags;
> > +
> > +	spin_lock_irqsave(&data->tlb_lock, flags);
> >  	mtk_iommu_tlb_add_flush_nosync(iova, granule, granule, true, cookie);
> > +	spin_unlock_irqrestore(&data->tlb_lock, flags);
> 
> Given that you release the lock here, what prevents another nosync()
> operation being issued before you've managed to do the sync()?

This patch can not guarantee each flush_nosync() always followed by a
sync().

The current mainline don't guarantee this too(Current v7s call
flush_nosync 16 times, then call tlb_sync 1 time in the
supersection/largepage case.). At this situation, it don't guarantee the
previous tlb_flushes are finished, But we never got the timeout
issue(Fortunately our HW always work well at that time. Maybe the HW
finish the previous tlb flush so quickly even though we don't polling
its finish flag).

We got the timeout issue only after this commit 4d689b619445. This patch
only fixes this issue via adding a new lock in iotlb_sync.(It don't
adjust the sequence of flush_nosync() and sync()).

> 
> Will



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
