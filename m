Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA0311FF100
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 13:50:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NnQua98Z/pvCjrMMVVFYAeWQSIJ9OHmk4k45wGMhKNU=; b=AJYDC0/J1MUbyP
	MSv3zz+FD8XW4uGJ9FOdJ4KALrxRt4v7IYmtWdBa7EhygrbKgwdwenQDsOWIV0GKbO11uvmbwcJYo
	f0y0XhZsKpEHyieL8OSUNXUMSZ4thjyRHG/4RudC//BmlMy7C9W1ly0L4YsgjocOEHFDskmsdKFMo
	+NF5yLW4/SNUvTcF7rOP9H0UgV+0ZgJWfmDjB9xS4vqPpoCD4yDhZw9fFuAqwTVXya6ZklOyPGhwd
	Jvi2xy/FBLWX+HXGV1/pOax9DZvhLC/jqoatZm/wYJBBQrIO5VlsVKcRipIzxyGxnxykbzMesr8e4
	e8jKwLkkf5KQlBrbtRzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlt3k-0004H6-HC; Thu, 18 Jun 2020 11:50:20 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlt3L-0004Fm-1E; Thu, 18 Jun 2020 11:49:56 +0000
X-UUID: dfdc5d381caf4421babf42ef64865548-20200618
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=BezqSJANb6qgtOc2Spryl5/bYO+3fAr4t48HhEcwp3w=; 
 b=QDCb+AFsC8iwjS8oolB/6LS9fcteaHYJ6uJjtdVrRkl8WD4UfOCAjva/DKHPsSXEubP5XZADt0DfSTci3NiFUZ0xpk7CIaoVPP7iYb2S0zgklbqUGOd3cX8FRTWAyMrtd+R3sQiLhU4fuKfN6pzHHB3+wMJkku3Gvg9P/zmiGqY=;
X-UUID: dfdc5d381caf4421babf42ef64865548-20200618
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <chao.hao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1692435372; Thu, 18 Jun 2020 03:49:39 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 18 Jun 2020 04:49:48 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 18 Jun 2020 19:49:47 +0800
Received: from [10.15.20.246] (10.15.20.246) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 18 Jun 2020 19:49:45 +0800
Message-ID: <1592480963.12647.5.camel@mbjsdccf07>
Subject: Re: [PATCH v4 3/7] iommu/mediatek: Set MISC_CTRL register
From: chao hao <Chao.Hao@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Thu, 18 Jun 2020 19:49:23 +0800
In-Reply-To: <aaf422f5-2ac8-252d-a064-0c1246e09acc@gmail.com>
References: <20200617030029.4082-1-chao.hao@mediatek.com>
 <20200617030029.4082-4-chao.hao@mediatek.com>
 <aaf422f5-2ac8-252d-a064-0c1246e09acc@gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_044955_083110_C7675062 
X-CRM114-Status: GOOD (  18.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, FY Yang <fy.yang@mediatek.com>,
 wsd_upstream@mediatek.com, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, Chao Hao <chao.hao@mediatek.com>,
 iommu@lists.linux-foundation.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Yong Wu <yong.wu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-06-17 at 11:34 +0200, Matthias Brugger wrote:
> 
> On 17/06/2020 05:00, Chao Hao wrote:
> > Add F_MMU_IN_ORDER_WR_EN definition in MISC_CTRL.
> > In order to improve performance, we always disable STANDARD_AXI_MODE
> > and IN_ORDER_WR_EN in MISC_CTRL.
> > 
> > Change since v3:
> 
> The changelog should go below the '---' as we don't want this in the git history
> once the patch get's accepted.
> 
okok, thanks

> > 1. Rename Disable STANDARD_AXI_MODE in MISC_CTRL to Set MISC_CTRL register
> > 2. Add F_MMU_IN_DRDER_WR_EN definition in MISC_CTRL
> >        We need to disable in_order_write to improve performance
> > 
> > Cc: Yong Wu <yong.wu@mediatek.com>
> > Signed-off-by: Chao Hao <chao.hao@mediatek.com>
> > ---
> >  drivers/iommu/mtk_iommu.c | 11 +++++++++++
> >  drivers/iommu/mtk_iommu.h |  1 +
> >  2 files changed, 12 insertions(+)
> > 
> > diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
> > index 88d3df5b91c2..239d2cdbbc9f 100644
> > --- a/drivers/iommu/mtk_iommu.c
> > +++ b/drivers/iommu/mtk_iommu.c
> > @@ -42,6 +42,9 @@
> >  #define F_INVLD_EN1				BIT(1)
> >  
> >  #define REG_MMU_MISC_CTRL			0x048
> > +#define F_MMU_IN_ORDER_WR_EN			(BIT(1) | BIT(17))
> > +#define F_MMU_STANDARD_AXI_MODE_BIT		(BIT(3) | BIT(19))
> > +
> >  #define REG_MMU_DCM_DIS				0x050
> >  
> >  #define REG_MMU_CTRL_REG			0x110
> > @@ -578,6 +581,14 @@ static int mtk_iommu_hw_init(const struct mtk_iommu_data *data)
> >  		writel_relaxed(0, data->base + REG_MMU_MISC_CTRL);
> >  	}
> >  
> > +	if (data->plat_data->has_misc_ctrl) {
> 
> That's confusing. We renamed the register to misc_ctrl, but it's present in all
> SoCs. We should find a better name for this flag to describe what the hardware
> supports.
> 

ok, thanks for you advice, I will rename it in next version.
ex:has_perf_req(has performance requirement)


> Regards,
> Matthias
> 
> > +		/* For mm_iommu, it can improve performance by the setting */
> > +		regval = readl_relaxed(data->base + REG_MMU_MISC_CTRL);
> > +		regval &= ~F_MMU_STANDARD_AXI_MODE_BIT;
> > +		regval &= ~F_MMU_IN_ORDER_WR_EN;
> > +		writel_relaxed(regval, data->base + REG_MMU_MISC_CTRL);
> > +	}
> > +
> >  	if (devm_request_irq(data->dev, data->irq, mtk_iommu_isr, 0,
> >  			     dev_name(data->dev), (void *)data)) {
> >  		writel_relaxed(0, data->base + REG_MMU_PT_BASE_ADDR);
> > diff --git a/drivers/iommu/mtk_iommu.h b/drivers/iommu/mtk_iommu.h
> > index 1b6ea839b92c..d711ac630037 100644
> > --- a/drivers/iommu/mtk_iommu.h
> > +++ b/drivers/iommu/mtk_iommu.h
> > @@ -40,6 +40,7 @@ struct mtk_iommu_plat_data {
> >  
> >  	/* HW will use the EMI clock if there isn't the "bclk". */
> >  	bool                has_bclk;
> > +	bool		    has_misc_ctrl;
> >  	bool                has_vld_pa_rng;
> >  	bool                reset_axi;
> >  	unsigned char       larbid_remap[MTK_LARB_NR_MAX];
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
