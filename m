Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 483E0D109C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 15:54:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ljMRbWYLFeBTtg2h0X1BklWCExdoQwOSR/6HlD41ZBM=; b=Uvh4xiOssO1g+K
	beIJGzjtDJRq8d/mn1bTI4H+sicSaXL/PJ9UwjfAefEQ3F/0LdrG8OxdXYj/p6jqspiTKuLmCdx42
	LxIq7ED51vJhSVr59IxL9jrWtQPDrKLrXqJHsq/onRo0m3/jIeb7o0DymZ8uqp6g4g5/aqsfLG6Ur
	LL5SJDofxjMX2R2RDVzdqzb9P6+7lhnGNg2QLPHftpAQ76Zhn7c01dG6HsbO8I6wvqh7JEJWvdPef
	Nhxsx1RDf/NpLA1xyEvnJN5QkxFKenHdVPHMW7yMMkDzlH4zzjb7eeOJYlB22YKr6TdbWPKXCuxp5
	Z7xlndOGjsubVKqBP7Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iICPc-0006PA-I7; Wed, 09 Oct 2019 13:53:56 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iICPS-0006O4-6f; Wed, 09 Oct 2019 13:53:48 +0000
X-UUID: 9641ad5ebd0646cd8cad0fb38942ac0b-20191009
X-UUID: 9641ad5ebd0646cd8cad0fb38942ac0b-20191009
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 371666275; Wed, 09 Oct 2019 05:53:43 -0800
Received: from MTKMBS32N2.mediatek.inc (172.27.4.72) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 9 Oct 2019 06:53:32 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS32N2.mediatek.inc
 (172.27.4.72) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Wed, 9 Oct 2019 21:38:24 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 9 Oct 2019 21:38:24 +0800
Message-ID: <1570628307.19130.53.camel@mhfsdcap03>
Subject: Re: [PATCH] iommu/mediatek: Move the tlb_sync into tlb_flush
From: Yong Wu <yong.wu@mediatek.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 9 Oct 2019 21:38:27 +0800
In-Reply-To: <CAAFQd5C3U7pZo4SSUJ52Q7E+0FaUoORQFbQC5RhCHBhi=NFYTw@mail.gmail.com>
References: <1569822142-14303-1-git-send-email-yong.wu@mediatek.com>
 <CAAFQd5C+FM3n-Ww4C+qDD1QZOGZrqEYw4EvYECfadGcDH0fmew@mail.gmail.com>
 <1570522162.19130.38.camel@mhfsdcap03>
 <CAAFQd5C3U7pZo4SSUJ52Q7E+0FaUoORQFbQC5RhCHBhi=NFYTw@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 9DC8DFD7C36EE50E1052EBAAB997ADF22F64BBEC2A1D9E8D110DA80EEC3D152C2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_065346_248462_F47C0EEB 
X-CRM114-Status: GOOD (  40.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: youlin.pei@mediatek.com, anan.sun@mediatek.com, Nicolas
 Boichat <drinkcat@chromium.org>, cui.zhang@mediatek.com,
 srv_heupstream <srv_heupstream@mediatek.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Evan Green <evgreen@chromium.org>, chao.hao@mediatek.com,
 "list@263.net:IOMMU DRIVERS
 <iommu@lists.linux-foundation.org>, Joerg  Roedel <joro@8bytes.org>,
 " <iommu@lists.linux-foundation.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Robin
 Murphy <robin.murphy@arm.com>, "list@263.net:IOMMU DRIVERS
 <iommu@lists.linux-foundation.org>, Joerg  Roedel <joro@8bytes.org>,
 " <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-10-09 at 16:56 +0900, Tomasz Figa wrote:
> On Tue, Oct 8, 2019 at 5:09 PM Yong Wu <yong.wu@mediatek.com> wrote:
> >
> > Hi Tomasz,
> >
> > Sorry for reply late.
> >
> > On Wed, 2019-10-02 at 14:18 +0900, Tomasz Figa wrote:
> > > Hi Yong,
> > >
> > > On Mon, Sep 30, 2019 at 2:42 PM Yong Wu <yong.wu@mediatek.com> wrote:
> > > >
> > > > The commit 4d689b619445 ("iommu/io-pgtable-arm-v7s: Convert to IOMMU API
> > > > TLB sync") help move the tlb_sync of unmap from v7s into the iommu
> > > > framework. It helps add a new function "mtk_iommu_iotlb_sync", But it
> > > > lacked the dom->pgtlock, then it will cause the variable
> > > > "tlb_flush_active" may be changed unexpectedly, we could see this warning
> > > > log randomly:
> > > >
> > >
> > > Thanks for the patch! Please see my comments inline.
> > >
> > > > mtk-iommu 10205000.iommu: Partial TLB flush timed out, falling back to
> > > > full flush
> > > >
> > > > To fix this issue, we can add dom->pgtlock in the "mtk_iommu_iotlb_sync".
> > > > And when checking this issue, we find that __arm_v7s_unmap call
> > > > io_pgtable_tlb_add_flush consecutively when it is supersection/largepage,
> > > > this also is potential unsafe for us. There is no tlb flush queue in the
> > > > MediaTek M4U HW. The HW always expect the tlb_flush/tlb_sync one by one.
> > > > If v7s don't always gurarantee the sequence, Thus, In this patch I move
> > > > the tlb_sync into tlb_flush(also rename the function deleting "_nosync").
> > > > and we don't care if it is leaf, rearrange the callback functions. Also,
> > > > the tlb flush/sync was already finished in v7s, then iotlb_sync and
> > > > iotlb_sync_all is unnecessary.
> > >
> > > Performance-wise, we could do much better. Instead of synchronously
> > > syncing at the end of mtk_iommu_tlb_add_flush(), we could sync at the
> > > beginning, if there was any previous flush still pending. We would
> > > also have to keep the .iotlb_sync() callback, to take care of waiting
> > > for the last flush. That would allow better pipelining with CPU in
> > > cases like this:
> > >
> > > for (all pages in range) {
> > >    change page table();
> > >    flush();
> > > }
> > >
> > > "change page table()" could execute while the IOMMU is flushing the
> > > previous change.
> >
> > Do you mean adding a new tlb_sync before tlb_flush_no_sync, like below:
> >
> > mtk_iommu_tlb_add_flush_nosync {
> >    + mtk_iommu_tlb_sync();
> >    tlb_flush_no_sync();
> >    data->tlb_flush_active = true;
> > }
> >
> > mtk_iommu_tlb_sync {
> >         if (!data->tlb_flush_active)
> >                 return;
> >         tlb_sync();
> >         data->tlb_flush_active = false;
> > }
> >
> > This way look improve the flow, But adjusting the flow is not the root
> > cause of this issue. the problem is "data->tlb_flush_active" may be
> > changed from mtk_iommu_iotlb_sync which don't have a dom->pglock.
> 
> That was not the only problem with existing code. Existing code also
> assumed that add_flush and sync always go in pairs, but that's not
> true.

Yes. Thus I put the tlb_flush always followed by tlb_sync to make sure
they always go in pairs.

> 
> My suggestion is to fix the locking in the driver and keep the sync
> deferred as much as possible, so that performance is not degraded. I

I really didn't get this timeout warning log in previous kernel(Many
tlb_flush followed by one tlb_sync), But deferring the sync is not
suggested by our DE, thus I still would like to fix the sequence in this
patch with putting them together.

> changed my mind, though. I think we would need to make more changes to
> the driver to make it implement the flushing efficiently, so let's go
> with the current simple approach for now and improve incrementally.
> 
> >
> > Currently the synchronisation of the tlb_flush/tlb_sync flow are
> > controlled by the variable "data->tlb_flush_active".
> >
> > In this patch putting the tlb_flush/tlb_sync together looks make
> > the flow simpler:
> > a) Don't need the sensitive variable "tlb_flush_active".
> > b) Remove mtk_iommu_iotlb_sync, Don't need add lock in it.
> > c) Simplify the tlb_flush_walk/tlb_flush_leaf.
> > is it ok?
> >
> 
> Okay, let's do so as a first step to fix the issue. Then we can
> optimize in follow up patches.

Thanks the confirm, I have sent a quick v2.

> 
> > >
> > > >
> > > > Besides, there are two minor changes:
> > > > a) Use writel for the register F_MMU_INV_RANGE which is for triggering the
> > > > HW work. We expect all the setting(iova_start/iova_end...) have already
> > > > been finished before F_MMU_INV_RANGE.
> > > > b) Reduce the tlb timeout value from 100000us to 1000us. the original value
> > > > is so long that affect the multimedia performance.
> > >
> > > By definition, timeout is something that should not normally happen.
> > > Too long timeout affecting multimedia performance would suggest that
> > > the timeout was actually happening, which is the core problem, not the
> > > length of the timeout. Could you provide more details on this?
> >
> > As description above, this issue is because there is no dom->pgtlock in
> > the mtk_iommu_iotlb_sync. I have tried that the issue will disappear
> > after adding lock in it.
> >
> > Although the issue is fixed after this patch, I still would like to
> > reduce the timeout value for somehow error happen in the future. 100ms
> > is unnecessary for us. It looks a minor improvement rather than fixing
> > the issue. I will use a new patch for it.
> >
> 
> Okay, makes sense.
> 
> Best regards,
> Tomasz



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
