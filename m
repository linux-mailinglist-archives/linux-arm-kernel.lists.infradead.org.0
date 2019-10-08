Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE086CF4FB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 10:24:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rc7bXBkZXRbqHBE+zfipZr7MEvmLDnSWkHqq043PVQo=; b=KldPZKDqYelZZ1
	TCUdup+VluO/lMy0kc98oAEplRK+s1LD3/iaX2LwQ4TurrPyAyfnuFgsBZHLynaHTHPwNHiY7h9My
	RobKe9K169PWMW4sj/KnE8P6Z0PbWYCRLE3pjOt4KdAUaQxPfOa15gcDbewIG8qjx/BVPQCXmR0OG
	HCl4QOgE3cS/PToXTq7W7x13H/IqS874NZrxP7tokAfIRvV0EN6L6bHEANEIS6ipg13Ai8Bfv1dci
	Jx0g8SRHAKxg2nay38hlClOHBd5mYShx0AjZTslv8zJaTPZCqqHJuWalrAPUSFL+yi731VuDt25yp
	4s5+FWrEyEztLe/ITDuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHknZ-0001PS-A5; Tue, 08 Oct 2019 08:24:49 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHknP-0001Ox-P2; Tue, 08 Oct 2019 08:24:42 +0000
X-UUID: d75ebf5fa54b444d8c195b78977668c1-20191008
X-UUID: d75ebf5fa54b444d8c195b78977668c1-20191008
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 905765810; Tue, 08 Oct 2019 00:24:36 -0800
Received: from MTKMBS32DR.mediatek.inc (172.27.6.104) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 8 Oct 2019 01:24:34 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS32DR.mediatek.inc
 (172.27.6.104) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 8 Oct 2019 16:09:28 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 8 Oct 2019 16:09:27 +0800
Message-ID: <1570522168.19130.39.camel@mhfsdcap03>
Subject: Re: [PATCH] iommu/mediatek: Move the tlb_sync into tlb_flush
From: Yong Wu <yong.wu@mediatek.com>
To: Robin Murphy <robin.murphy@arm.com>
Date: Tue, 8 Oct 2019 16:09:28 +0800
In-Reply-To: <366b0bda-d874-9109-5c83-ff27301f3486@arm.com>
References: <1569822142-14303-1-git-send-email-yong.wu@mediatek.com>
 <CAAFQd5C+FM3n-Ww4C+qDD1QZOGZrqEYw4EvYECfadGcDH0fmew@mail.gmail.com>
 <366b0bda-d874-9109-5c83-ff27301f3486@arm.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 3E9F2367AB2AA294B0B502AA0BA1AABDAC92BE66BC543487A09D89709BFE290B2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_012439_820799_E6E8953A 
X-CRM114-Status: GOOD (  30.46  )
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
Cc: youlin.pei@mediatek.com, anan.sun@mediatek.com,
 Nicolas Boichat <drinkcat@chromium.org>, cui.zhang@mediatek.com,
 srv_heupstream <srv_heupstream@mediatek.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will.deacon@arm.com>, Linux Kernel
 Mailing List <linux-kernel@vger.kernel.org>, Evan Green <evgreen@chromium.org>,
 Tomasz Figa <tfiga@chromium.org>, chao.hao@mediatek.com,
 "list@263.net:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-10-02 at 11:35 +0100, Robin Murphy wrote:
> On 02/10/2019 06:18, Tomasz Figa wrote:
> > Hi Yong,
> > 
> > On Mon, Sep 30, 2019 at 2:42 PM Yong Wu <yong.wu@mediatek.com> wrote:
> >>
> >> The commit 4d689b619445 ("iommu/io-pgtable-arm-v7s: Convert to IOMMU API
> >> TLB sync") help move the tlb_sync of unmap from v7s into the iommu
> >> framework. It helps add a new function "mtk_iommu_iotlb_sync", But it
> >> lacked the dom->pgtlock, then it will cause the variable
> >> "tlb_flush_active" may be changed unexpectedly, we could see this warning
> >> log randomly:
> >>
> > 
> > Thanks for the patch! Please see my comments inline.
> > 
> >> mtk-iommu 10205000.iommu: Partial TLB flush timed out, falling back to
> >> full flush
> >>
> >> To fix this issue, we can add dom->pgtlock in the "mtk_iommu_iotlb_sync".
> >> And when checking this issue, we find that __arm_v7s_unmap call
> >> io_pgtable_tlb_add_flush consecutively when it is supersection/largepage,
> >> this also is potential unsafe for us. There is no tlb flush queue in the
> >> MediaTek M4U HW. The HW always expect the tlb_flush/tlb_sync one by one.
> >> If v7s don't always gurarantee the sequence, Thus, In this patch I move
> >> the tlb_sync into tlb_flush(also rename the function deleting "_nosync").
> >> and we don't care if it is leaf, rearrange the callback functions. Also,
> >> the tlb flush/sync was already finished in v7s, then iotlb_sync and
> >> iotlb_sync_all is unnecessary.
> > 
> > Performance-wise, we could do much better. Instead of synchronously
> > syncing at the end of mtk_iommu_tlb_add_flush(), we could sync at the
> > beginning, if there was any previous flush still pending. We would
> > also have to keep the .iotlb_sync() callback, to take care of waiting
> > for the last flush. That would allow better pipelining with CPU in
> > cases like this:
> > 
> > for (all pages in range) {
> >     change page table();
> >     flush();
> > }
> > 
> > "change page table()" could execute while the IOMMU is flushing the
> > previous change.
> 
> FWIW, given that the underlying invalidation mechanism is range-based, 
> this driver would be an ideal candidate for making use of the new 
> iommu_gather mechanism. As a fix for stable, though, simply ensuring 
> that add_flush syncs any pending invalidation before issuing a new one 
> sounds like a good idea (and probably a simpler patch too).

Thanks very much for the confirmation.

> 
> [...]
> >> @@ -574,8 +539,7 @@ static int mtk_iommu_of_xlate(struct device *dev, struct of_phandle_args *args)
> >>          .detach_dev     = mtk_iommu_detach_device,
> >>          .map            = mtk_iommu_map,
> >>          .unmap          = mtk_iommu_unmap,
> >> -       .flush_iotlb_all = mtk_iommu_flush_iotlb_all,
> > 
> > Don't we still want .flush_iotlb_all()? I think it should be more
> > efficient in some cases than doing a big number of single flushes.
> > (That said, the previous implementation didn't do any flush at all. It
> > just waited for previously queued flushes to happen. Was that
> > expected?)
> 
> Commit 07fdef34d2be ("iommu/arm-smmu-v3: Implement flush_iotlb_all 
> hook") has an explanation of what the deal was there - similarly, it's 
> probably worth this driver implementing it properly as well now (but 
> that's really a separate patch).

Thanks the hint, At the beginning, I noticed that we don't have
DOMAIN_ATTR_DMA_USE_FLUSH_QUEUE, thus I thought flush_iotlb_all is
unnecessary.

After grep, iommu_flush_tlb_all also is called in the x_direct_mapping,
then we still need this.

If putting it in a new patch(switch flush_iotlb_all to
mtk_iommu_tlb_flush_all), then the Fixes tag(commit id: 4d689b619445) is
needed?

> 
> Robin.
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
