Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D221F751B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 10:14:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WWsuJtM/v6fMW+cQrTbABQLu/7Vok9EWNNAhtRZ40qQ=; b=Np6dTlZNB9j3/P
	4xDR3JE8Y3GH84g/iihmVHQhsls1ZFyvdd1cIugZ6wBI6UDzGGr+PD1LzbFhMVqvimEbuXQ9VeeK4
	TO1VgYb1oB9yZZohBfaEboiPmAzPAi2EOcyM1kmBmDYLpSk/i2rQdvTBHRKkvDdsrdr7zNIPVsPw5
	d9n6nxwaBHVGzIrVjO0AVfmii7/FRBxaVrocLIwhmvErh24vjP7OAMVPX+NJvYCP8+0I2caYNK/ZN
	qh6XMPjj0F+21y/vhLTcCy5KKbvf4t+IeopB96Dqor2Y0HAsKwu1AsZ2QHjMMSFF0jmC0WDGuX51e
	b74rBnyBpuDu1bAis0+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjepI-0001xw-7H; Fri, 12 Jun 2020 08:14:12 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjepB-0001x6-7o; Fri, 12 Jun 2020 08:14:06 +0000
X-UUID: 819cc0c09c9948d4884a6de2e721a687-20200612
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=0GUyHvRF9VSyT75UO1lemvQzocW+/xKvL/7X1JD+e3c=; 
 b=kyvH0EUBv92HPX2ACqV0iGmIsriy/5p9EwSAR3r4T1xcSU5vwKwEtzt9COkq0ShUR8M9thPr/QQ9I5d26rbTQtS7gHAh7GNGONyzcGjpBUtQ/Hluusz7r4KZYYDlIFvp1q+oJolP3loCoYOKwriwq0zoG8DWbE7y64Jmbkg3FZg=;
X-UUID: 819cc0c09c9948d4884a6de2e721a687-20200612
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <eastl.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1315875167; Fri, 12 Jun 2020 00:13:54 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 12 Jun 2020 01:13:55 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 12 Jun 2020 16:13:54 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 12 Jun 2020 16:13:53 +0800
Message-ID: <1591949635.23595.9.camel@mtkswgap22>
Subject: Re: [PATCH v4 4/4] dmaengine: mediatek-cqdma: add dma mask for
 capability
From: EastL <EastL.Lee@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Fri, 12 Jun 2020 16:13:55 +0800
In-Reply-To: <ea26fb2c-aec0-c031-ac30-9e5099943d9c@gmail.com>
References: <1590659832-31476-1-git-send-email-EastL.Lee@mediatek.com>
 <1590659832-31476-5-git-send-email-EastL.Lee@mediatek.com>
 <ea26fb2c-aec0-c031-ac30-9e5099943d9c@gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_011405_283552_D067F96E 
X-CRM114-Status: GOOD (  17.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 Sean Wang <sean.wang@mediatek.com>, linux-kernel@vger.kernel.org,
 vkoul@kernel.org, robh+dt@kernel.org, linux-mediatek@lists.infradead.org,
 dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2020-05-28 at 16:10 +0200, Matthias Brugger wrote:
> 
> On 28/05/2020 11:57, EastL wrote:
> > This patch add dma mask for capability.
> > 
> > Change-Id: I31f4622f9541d769702029532e5f5f185815dda2
> 
> No Change-Id in the commit message please.
> 
> > Signed-off-by: EastL <EastL.Lee@mediatek.com>
> > ---
> >  drivers/dma/mediatek/mtk-cqdma.c | 13 +++++++++++++
> >  1 file changed, 13 insertions(+)
> > 
> > diff --git a/drivers/dma/mediatek/mtk-cqdma.c b/drivers/dma/mediatek/mtk-cqdma.c
> > index bca7118..1805a76 100644
> > --- a/drivers/dma/mediatek/mtk-cqdma.c
> > +++ b/drivers/dma/mediatek/mtk-cqdma.c
> > @@ -117,6 +117,7 @@ struct mtk_cqdma_vchan {
> >   * @clk:                    The clock that device internal is using
> >   * @dma_requests:           The number of VCs the device supports to
> >   * @dma_channels:           The number of PCs the device supports to
> > + * @dma_mask:               A mask for DMA capability
> >   * @vc:                     The pointer to all available VCs
> >   * @pc:                     The pointer to all the underlying PCs
> >   */
> > @@ -126,6 +127,7 @@ struct mtk_cqdma_device {
> >  
> >  	u32 dma_requests;
> >  	u32 dma_channels;
> > +	u32 dma_mask;
> >  	struct mtk_cqdma_vchan *vc;
> >  	struct mtk_cqdma_pchan **pc;
> >  };
> > @@ -549,6 +551,7 @@ static void mtk_cqdma_hw_deinit(struct mtk_cqdma_device *cqdma)
> >  };
> >  MODULE_DEVICE_TABLE(of, mtk_cqdma_match);
> >  
> > +static u64 cqdma_dmamask;
> >  static int mtk_cqdma_probe(struct platform_device *pdev)
> >  {
> >  	struct mtk_cqdma_device *cqdma;
> > @@ -607,6 +610,16 @@ static int mtk_cqdma_probe(struct platform_device *pdev)
> >  		cqdma->dma_channels = MTK_CQDMA_NR_PCHANS;
> >  	}
> >  
> > +	if (pdev->dev.of_node && of_property_read_u32(pdev->dev.of_node,
> > +						      "dma-channel-mask",
> > +						      &cqdma->dma_mask)) {
> 
> I'd prefer:
> 
> if (pdev->dev.of_node)
>     ret = of_property_read_u32(pdev->dev.of_node,
>                                "dma-channel-mask",
>                                &cqdma->dma_mask))
> if (ret) {
>     dev_warn(&pdev->dev,
>              "Using 0 as missing dma-channel-mask
>               property\n");
>     cqdma->dma_mask = 0;
> }
> 
> > +		dev_info(&pdev->dev,
> > +			 "Using 0 as missing dma-channel-mask property\n");
> 
> dev_warn should be OK.
> 
> > +	} else {
> > +		cqdma_dmamask = DMA_BIT_MASK(cqdma->dma_mask);
> > +		pdev->dev.dma_mask = &cqdma_dmamask;
> 
> if (dma_set_mask(&pdev->dev,
>     DMA_BIT_MASK(cqdma->dma_mask)) {
>          /* error out */
> }
> 
OK, I'll fix it on next version.

> > +	}
> > +
> >  	cqdma->pc = devm_kcalloc(&pdev->dev, cqdma->dma_channels,
> >  				 sizeof(*cqdma->pc), GFP_KERNEL);
> >  	if (!cqdma->pc)
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
