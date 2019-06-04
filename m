Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B8C346A2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 14:27:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=scUDNuI585lCD3l/xm6JhK+9FjtEQf3xSXkFQjhGwSs=; b=soYODZ+KYJ1Hic
	kOJBJZ9vtqSzXWFFRg6JLNfqzYGiJAE++DrxNnmWu+W/GLX7hU0+XpXuyoiRsseoa5ZxyGgBZQ2GR
	1DSPMQoGP2GRvR+z16MMZk6x5gibpC/rF+XxaQT4mr+FvNrT5H9DkFfoFmrGeapd5jQvDZ4/hvz4i
	fkk9kX0H08kGPY6J9G5+J/KZ8TdGDx4LzNDN5ejSuLkt2gDTzTJifWY9lKPcq8Ow5+fC1gjJjLqJD
	Le1W/k7tsED/lVyMl2d/oK8UIXQqi0E1dXcjx1cNdAp+XMHncmtPi9fTmipt2tCkUO2xoRTNxKwf9
	TvGOO6YM//yLhTq0yc1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY8Wo-0004MG-FK; Tue, 04 Jun 2019 12:26:58 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY8Wg-0004LS-52; Tue, 04 Jun 2019 12:26:51 +0000
X-UUID: e6779d9676684e4f85401e7848fa697e-20190604
X-UUID: e6779d9676684e4f85401e7848fa697e-20190604
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <qii.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1980184098; Tue, 04 Jun 2019 04:26:44 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 4 Jun 2019 05:26:43 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 4 Jun 2019 20:26:41 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 4 Jun 2019 20:26:40 +0800
Message-ID: <1559651200.5871.2.camel@mhfsdcap03>
Subject: Re: [PATCH 2/2] i3c: master: Add driver for MediaTek IP
From: Qii Wang <qii.wang@mediatek.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Date: Tue, 4 Jun 2019 20:26:40 +0800
In-Reply-To: <20190604095858.38ed9a28@collabora.com>
References: <1559533863-10292-1-git-send-email-qii.wang@mediatek.com>
 <1559533863-10292-3-git-send-email-qii.wang@mediatek.com>
 <20190604095858.38ed9a28@collabora.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_052650_202108_4602523A 
X-CRM114-Status: GOOD (  13.24  )
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 bbrezillon@kernel.org, leilk.liu@mediatek.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, liguo.zhang@mediatek.com,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 matthias.bgg@gmail.com, linux-i3c@lists.infradead.org,
 xinping.qian@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-06-04 at 09:58 +0200, Boris Brezillon wrote:
> On Mon, 3 Jun 2019 11:51:03 +0800
> Qii Wang <qii.wang@mediatek.com> wrote:
> 
> 
> > +static int mtk_i3c_master_probe(struct platform_device *pdev)
> > +{
> > +	struct device *dev = &pdev->dev;
> > +	struct mtk_i3c_master *master;
> > +	struct resource *res;
> > +	int ret, irqnr;
> > +
> > +	master = devm_kzalloc(dev, sizeof(*master), GFP_KERNEL);
> > +	if (!master)
> > +		return -ENOMEM;
> > +
> > +	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "main");
> > +	master->regs = devm_ioremap_resource(dev, res);
> > +	if (IS_ERR(master->regs))
> > +		return PTR_ERR(master->regs);
> > +
> > +	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "dma");
> > +	master->dma_regs = devm_ioremap_resource(dev, res);
> > +	if (IS_ERR(master->dma_regs))
> > +		return PTR_ERR(master->dma_regs);
> > +
> > +	irqnr = platform_get_irq(pdev, 0);
> > +	if (irqnr < 0)
> > +		return irqnr;
> > +
> > +	ret = devm_request_irq(dev, irqnr, mtk_i3c_master_irq,
> > +			       IRQF_TRIGGER_NONE, DRV_NAME, master);
> > +	if (ret < 0) {
> > +		dev_err(dev, "Request I3C IRQ %d fail\n", irqnr);
> > +		return ret;
> > +	}
> > +
> > +	ret = of_property_read_u32(pdev->dev.of_node, "clock-div",
> > +				   &master->clk_src_div);
> 
> You say in one comment that this clock divider is fixed in HW but might
> change on a per-SoC basis. If that's the case, you should get rid of
> this clock-div prop and attach the divider to the compatible (using an
> mtk_i3c_master_variant struct that contains a divider field).
> 

ok, I will attach the divider to the compatible.

> > +	if (ret < 0)
> > +		return -EINVAL;
> > +
> > +	spin_lock_init(&master->xferqueue.lock);
> > +	INIT_LIST_HEAD(&master->xferqueue.list);
> > +
> > +	if (dma_set_mask(dev, DMA_BIT_MASK(33))) {
> > +		dev_err(dev, "dma_set_mask return error.\n");
> > +		return -EINVAL;
> > +	}
> > +
> > +	master->clk_main = devm_clk_get(dev, "main");
> > +	if (IS_ERR(master->clk_main)) {
> > +		dev_err(dev, "cannot get main clock\n");
> > +		return PTR_ERR(master->clk_main);
> > +	}
> > +	master->clk_dma = devm_clk_get(dev, "dma");
> > +	if (IS_ERR(master->clk_dma)) {
> > +		dev_err(dev, "cannot get dma clock\n");
> > +		return PTR_ERR(master->clk_dma);
> > +	}
> > +
> > +	master->clk_arb = devm_clk_get_optional(dev, "arb");
> > +	if (IS_ERR(master->clk_arb))
> > +		return PTR_ERR(master->clk_arb);
> > +
> > +	ret = mtk_i3c_master_clock_enable(master);
> > +	if (ret) {
> > +		dev_err(dev, "clock enable failed!\n");
> > +		return ret;
> > +	}
> > +
> > +	master->dev = dev;
> > +	platform_set_drvdata(pdev, master);
> > +
> > +	ret = i3c_master_register(&master->mas_ctrler, dev,
> > +				  &mtk_i3c_master_ops, false);
> > +	if (ret) {
> > +		dev_err(dev, "Failed to add i3c bus to i3c core\n");
> > +		mtk_i3c_master_clock_disable(master);
> > +		return ret;
> > +	}
> > +
> > +	return 0;
> > +}



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
