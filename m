Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0363CB4C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 14:26:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BnsQBjRndbFsjvFf8QhMnqSwFiqoFBx/2hMcwjRriS8=; b=iapz+ChtDwVUQJ
	VZ+1KuylQleIPnM6l4cgR6raU9w+XfP1t9Ll+IFw5uJfoxdFSqqLXOXAM5EXoeR778c4ezYWhU5j3
	N4SF2/rG27P/tOROSOPyqWI8HDm3/nAci+56WT4Lj+L7vhpkCwElU+UF7zB3u+wTkAmBGmDtvr8Hz
	maqhMVWdMs7/BQo1/Om2ke7jAaE9UOYObgd5i5SmYdBIMps7M7AR5LJud0SQCXWESLA4lw8tZeSL2
	kWV9BT0OdjeEmV1NspEcHtr7GZ1hB2ex+vTbUaK+8Z5/ucEFyY2Bi1kXjQK0hnRAr/j6++ERYTSxa
	o5aTF/XKn9ser3YufzZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hafr0-00022m-Ir; Tue, 11 Jun 2019 12:26:18 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hafqE-0001m5-V4; Tue, 11 Jun 2019 12:25:32 +0000
X-UUID: ae53fd09794f40e28f359636efee4d59-20190611
X-UUID: ae53fd09794f40e28f359636efee4d59-20190611
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <qii.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1358946353; Tue, 11 Jun 2019 04:25:27 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 11 Jun 2019 05:25:25 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 11 Jun 2019 20:25:23 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 11 Jun 2019 20:25:22 +0800
Message-ID: <1560255922.12217.3.camel@mhfsdcap03>
Subject: Re: [PATCH 2/2] i3c: master: Add driver for MediaTek IP
From: Qii Wang <qii.wang@mediatek.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Date: Tue, 11 Jun 2019 20:25:22 +0800
In-Reply-To: <1559651200.5871.2.camel@mhfsdcap03>
References: <1559533863-10292-1-git-send-email-qii.wang@mediatek.com>
 <1559533863-10292-3-git-send-email-qii.wang@mediatek.com>
 <20190604095858.38ed9a28@collabora.com>
 <1559651200.5871.2.camel@mhfsdcap03>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_052531_017221_03568423 
X-CRM114-Status: GOOD (  13.68  )
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

On Tue, 2019-06-04 at 20:26 +0800, Qii Wang wrote:
> On Tue, 2019-06-04 at 09:58 +0200, Boris Brezillon wrote:
> > On Mon, 3 Jun 2019 11:51:03 +0800
> > Qii Wang <qii.wang@mediatek.com> wrote:
> > 
> > 
> > > +static int mtk_i3c_master_probe(struct platform_device *pdev)
> > > +{
> > > +	struct device *dev = &pdev->dev;
> > > +	struct mtk_i3c_master *master;
> > > +	struct resource *res;
> > > +	int ret, irqnr;
> > > +
> > > +	master = devm_kzalloc(dev, sizeof(*master), GFP_KERNEL);
> > > +	if (!master)
> > > +		return -ENOMEM;
> > > +
> > > +	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "main");
> > > +	master->regs = devm_ioremap_resource(dev, res);
> > > +	if (IS_ERR(master->regs))
> > > +		return PTR_ERR(master->regs);
> > > +
> > > +	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "dma");
> > > +	master->dma_regs = devm_ioremap_resource(dev, res);
> > > +	if (IS_ERR(master->dma_regs))
> > > +		return PTR_ERR(master->dma_regs);
> > > +
> > > +	irqnr = platform_get_irq(pdev, 0);
> > > +	if (irqnr < 0)
> > > +		return irqnr;
> > > +
> > > +	ret = devm_request_irq(dev, irqnr, mtk_i3c_master_irq,
> > > +			       IRQF_TRIGGER_NONE, DRV_NAME, master);
> > > +	if (ret < 0) {
> > > +		dev_err(dev, "Request I3C IRQ %d fail\n", irqnr);
> > > +		return ret;
> > > +	}
> > > +
> > > +	ret = of_property_read_u32(pdev->dev.of_node, "clock-div",
> > > +				   &master->clk_src_div);
> > 
> > You say in one comment that this clock divider is fixed in HW but might
> > change on a per-SoC basis. If that's the case, you should get rid of
> > this clock-div prop and attach the divider to the compatible (using an
> > mtk_i3c_master_variant struct that contains a divider field).
> > 
> 
> ok, I will attach the divider to the compatible.
> 
I have rechecked your comment, maybe I have misunderstood what you mean.
"clock-div" changes according to i2c source clock, different project may
change i2c source clock, The previous dt-binding may be misleading, I
will modify it.

> > > +	if (ret < 0)
> > > +		return -EINVAL;
> > > +
> > > +	spin_lock_init(&master->xferqueue.lock);
> > > +	INIT_LIST_HEAD(&master->xferqueue.list);
> > > +
> > > +	if (dma_set_mask(dev, DMA_BIT_MASK(33))) {
> > > +		dev_err(dev, "dma_set_mask return error.\n");
> > > +		return -EINVAL;
> > > +	}
> > > +
> > > +	master->clk_main = devm_clk_get(dev, "main");
> > > +	if (IS_ERR(master->clk_main)) {
> > > +		dev_err(dev, "cannot get main clock\n");
> > > +		return PTR_ERR(master->clk_main);
> > > +	}
> > > +	master->clk_dma = devm_clk_get(dev, "dma");
> > > +	if (IS_ERR(master->clk_dma)) {
> > > +		dev_err(dev, "cannot get dma clock\n");
> > > +		return PTR_ERR(master->clk_dma);
> > > +	}
> > > +
> > > +	master->clk_arb = devm_clk_get_optional(dev, "arb");
> > > +	if (IS_ERR(master->clk_arb))
> > > +		return PTR_ERR(master->clk_arb);
> > > +
> > > +	ret = mtk_i3c_master_clock_enable(master);
> > > +	if (ret) {
> > > +		dev_err(dev, "clock enable failed!\n");
> > > +		return ret;
> > > +	}
> > > +
> > > +	master->dev = dev;
> > > +	platform_set_drvdata(pdev, master);
> > > +
> > > +	ret = i3c_master_register(&master->mas_ctrler, dev,
> > > +				  &mtk_i3c_master_ops, false);
> > > +	if (ret) {
> > > +		dev_err(dev, "Failed to add i3c bus to i3c core\n");
> > > +		mtk_i3c_master_clock_disable(master);
> > > +		return ret;
> > > +	}
> > > +
> > > +	return 0;
> > > +}
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
