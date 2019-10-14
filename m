Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F6CD6B16
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 23:11:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XBJNy37baccDo/ir/4wdYrFVYVUkHbY68pRRnGjB4wc=; b=nndRw937s95abx
	dhQf6ft8aOP3PdyAcpSfe3bQrt2A8ffvZ+6KpfwrZpJq2MBE9Ly/vF2RnwarpbPfXqPDnIHDuHv30
	WlP9BTjlfYmYwO28ldSEiGXWYcEiMwl+/z9gcgX6yGR1SRzCTCKuMkWTDSD7YRZ2akCtTEc564yns
	w5mwLhWbD72mg6vTYgjZ4vZwa3stmTgL5L6JgIEgaG+lLN2Tz0s0kCohFWCyIF7IkpWKMney4T+YA
	PfHSGhGMXnGuhSDwb7v9/GAmiseRSSrqbBhZ94ogRv/wjVqGfnoX3yAW/MIr1r9XnE35PWKz8rtE3
	DLkztXxDnIBTQuUObstA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK7cp-0007cT-9l; Mon, 14 Oct 2019 21:11:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK7cf-0007by-Cj; Mon, 14 Oct 2019 21:11:23 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BC78421835;
 Mon, 14 Oct 2019 21:11:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571087480;
 bh=JgFZzVhxDxKCkbGmPDJ8Nrc3QpdnihzJLD4tr532a8U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=msRqZ/oggpCbPZDM2Tpesp6lTEm+uQxjNWlJ242zMDjrXfeJ00daTlfKGBgKoFTkM
 A+H3h/i6o2FcH9H8FXOzYHLkBfp5gGPo1cuUY8sQHD6llRwnlv3FFRuTeiU2//dBnz
 5k8Yimuf7yQuul1dB+h/BgTF8xIG3JWeT6skUOxc=
Date: Mon, 14 Oct 2019 22:11:14 +0100
From: Will Deacon <will@kernel.org>
To: Yong Wu <yong.wu@mediatek.com>
Subject: Re: [PATCH v2 3/4] iommu/mediatek: Use writel for TLB range
 invalidation
Message-ID: <20191014211113.jq5qwe5pfonyocr3@willie-the-truck>
References: <1570627143-29441-1-git-send-email-yong.wu@mediatek.com>
 <1570627143-29441-3-git-send-email-yong.wu@mediatek.com>
 <20191011162950.yg4o77mlaicacne5@willie-the-truck>
 <1570861427.19130.65.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570861427.19130.65.camel@mhfsdcap03>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_141121_473141_26901CF4 
X-CRM114-Status: GOOD (  21.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 srv_heupstream@mediatek.com, chao.hao@mediatek.com,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Evan Green <evgreen@chromium.org>,
 Tomasz Figa <tfiga@google.com>, iommu@lists.linux-foundation.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Oct 12, 2019 at 02:23:47PM +0800, Yong Wu wrote:
> On Fri, 2019-10-11 at 17:29 +0100, Will Deacon wrote:
> > On Wed, Oct 09, 2019 at 09:19:02PM +0800, Yong Wu wrote:
> > > Use writel for the register F_MMU_INV_RANGE which is for triggering the
> > > HW work. We expect all the setting(iova_start/iova_end...) have already
> > > been finished before F_MMU_INV_RANGE.
> > > 
> > > Signed-off-by: Anan.Sun <anan.sun@mediatek.com>
> > > Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> > > ---
> > > This is a improvement rather than fixing a issue.
> > > ---
> > >  drivers/iommu/mtk_iommu.c | 3 +--
> > >  1 file changed, 1 insertion(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
> > > index 24a13a6..607f92c 100644
> > > --- a/drivers/iommu/mtk_iommu.c
> > > +++ b/drivers/iommu/mtk_iommu.c
> > > @@ -187,8 +187,7 @@ static void mtk_iommu_tlb_add_flush(unsigned long iova, size_t size,
> > >  		writel_relaxed(iova, data->base + REG_MMU_INVLD_START_A);
> > >  		writel_relaxed(iova + size - 1,
> > >  			       data->base + REG_MMU_INVLD_END_A);
> > > -		writel_relaxed(F_MMU_INV_RANGE,
> > > -			       data->base + REG_MMU_INVALIDATE);
> > > +		writel(F_MMU_INV_RANGE, data->base + REG_MMU_INVALIDATE);
> > 
> > I don't understand this change.
> > 
> > Why is it an "improvement" and which accesses are you ordering with the
> > writel?
> 
> The register(F_MMU_INV_RANGE) will trigger HW to begin flush range. HW
> expect the other register iova_start/end/flush_type always is ready
> before trigger. thus I'd like use writel to guarantee the previous
> register has been finished.

Given that these are all MMIO writes to the same device, then
writel_relaxed() should give you the ordering you need. If you look at
memory_barriers.txt, it says:

  | they [readX_relaxed() and writeX_relaxed()] are still guaranteed to
  | be ordered with respect to other accesses from the same CPU thread
  | to the same peripheral when operating on __iomem pointers mapped
  | with the default I/O attributes.

> I didn't see the writel_relaxed cause some error in practice, we only
> think writel is necessary here in theory. so call it "improvement".

Ok, but I don't think it's needed in this case.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
