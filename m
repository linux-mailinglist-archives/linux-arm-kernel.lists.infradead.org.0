Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A01143236
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 04:30:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uaqLnUPACktq0k4tY+771gn1OOmPDR2snMBHIp+uK6U=; b=PE4keMw0oO2xYi
	s9nBvLgP4wZ8Jk/I66zy6T1Xh7/IOs1h4kysP5MMx2XbCAqDAkvsPXv73m7hQTpNT4gBpmSLUmlHN
	NL92WjwZuK/Yvb14iqpnljN0FpnUkzlvkzilggLEKQrXPmWvfdbhDSQD/eNnI8+qx9vDzG4ERUZKc
	qjxN+TWOYgBS/CCs2VrIAB/sBsoHNg2C5nDWLBEf4Vkt5RR8PfJWHYxk6BmSy7ZL6qB8Mlje/5Bt+
	JPCufFrTz3Htox38KYqsnwgGYBq2KyMAby3C2KOXV+wu0E3N1R6WLt+sEDdHXKcZYT2/EPOV0oJ0h
	5znYYIiLOPm2ryCCo1JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbFV1-0005xr-1a; Thu, 13 Jun 2019 02:29:59 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbFUh-0005uj-UX; Thu, 13 Jun 2019 02:29:43 +0000
X-UUID: 4cee5152e24e4304a66589aa8fbea6bc-20190612
X-UUID: 4cee5152e24e4304a66589aa8fbea6bc-20190612
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <qii.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1341577592; Wed, 12 Jun 2019 18:29:25 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 12 Jun 2019 19:29:24 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 13 Jun 2019 10:29:22 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 13 Jun 2019 10:29:21 +0800
Message-ID: <1560392961.12217.7.camel@mhfsdcap03>
Subject: Re: [PATCH 2/2] i3c: master: Add driver for MediaTek IP
From: Qii Wang <qii.wang@mediatek.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Date: Thu, 13 Jun 2019 10:29:21 +0800
In-Reply-To: <20190611142849.43f6d1e4@collabora.com>
References: <1559533863-10292-1-git-send-email-qii.wang@mediatek.com>
 <1559533863-10292-3-git-send-email-qii.wang@mediatek.com>
 <20190604095858.38ed9a28@collabora.com>
 <1559651200.5871.2.camel@mhfsdcap03> <1560255922.12217.3.camel@mhfsdcap03>
 <20190611142849.43f6d1e4@collabora.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_192939_993390_5B9A48AC 
X-CRM114-Status: GOOD (  16.89  )
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

On Tue, 2019-06-11 at 14:28 +0200, Boris Brezillon wrote:
> On Tue, 11 Jun 2019 20:25:22 +0800
> Qii Wang <qii.wang@mediatek.com> wrote:
> 
> > On Tue, 2019-06-04 at 20:26 +0800, Qii Wang wrote:
> > > On Tue, 2019-06-04 at 09:58 +0200, Boris Brezillon wrote:  
> > > > On Mon, 3 Jun 2019 11:51:03 +0800
> > > > Qii Wang <qii.wang@mediatek.com> wrote:
> > > > 
> > > >   
> > > > > +static int mtk_i3c_master_probe(struct platform_device *pdev)
> > > > > +{
> > > > > +	struct device *dev = &pdev->dev;
> > > > > +	struct mtk_i3c_master *master;
> > > > > +	struct resource *res;
> > > > > +	int ret, irqnr;
> > > > > +
> > > > > +	master = devm_kzalloc(dev, sizeof(*master), GFP_KERNEL);
> > > > > +	if (!master)
> > > > > +		return -ENOMEM;
> > > > > +
> > > > > +	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "main");
> > > > > +	master->regs = devm_ioremap_resource(dev, res);
> > > > > +	if (IS_ERR(master->regs))
> > > > > +		return PTR_ERR(master->regs);
> > > > > +
> > > > > +	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "dma");
> > > > > +	master->dma_regs = devm_ioremap_resource(dev, res);
> > > > > +	if (IS_ERR(master->dma_regs))
> > > > > +		return PTR_ERR(master->dma_regs);
> > > > > +
> > > > > +	irqnr = platform_get_irq(pdev, 0);
> > > > > +	if (irqnr < 0)
> > > > > +		return irqnr;
> > > > > +
> > > > > +	ret = devm_request_irq(dev, irqnr, mtk_i3c_master_irq,
> > > > > +			       IRQF_TRIGGER_NONE, DRV_NAME, master);
> > > > > +	if (ret < 0) {
> > > > > +		dev_err(dev, "Request I3C IRQ %d fail\n", irqnr);
> > > > > +		return ret;
> > > > > +	}
> > > > > +
> > > > > +	ret = of_property_read_u32(pdev->dev.of_node, "clock-div",
> > > > > +				   &master->clk_src_div);  
> > > > 
> > > > You say in one comment that this clock divider is fixed in HW but might
> > > > change on a per-SoC basis. If that's the case, you should get rid of
> > > > this clock-div prop and attach the divider to the compatible (using an
> > > > mtk_i3c_master_variant struct that contains a divider field).
> > > >   
> > > 
> > > ok, I will attach the divider to the compatible.
> > >   
> > I have rechecked your comment, maybe I have misunderstood what you mean.
> > "clock-div" changes according to i2c source clock, different project may
> > change i2c source clock, The previous dt-binding may be misleading, I
> > will modify it.
> 
> Is it fixed or configurable? Maybe it should be modeled as a clk
> driver. What's for sure is that we shouldn't have this divider defined
> in the DT.

ok, I have let the clk driver handle it, and remove it in DT and i3c
driver. Thanks!



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
