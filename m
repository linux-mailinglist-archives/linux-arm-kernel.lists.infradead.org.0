Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB43B78F64
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 17:34:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WRr2T5wxHmUZ9Ce+F1oNdBijEVS79/RmqfDtmsHyOBA=; b=InzmAMoTdr8lJ8
	wiKau6fgCWPRxVT1gQPtWL1zYqcmtDsPVVE0QwOBxDj8EKEn8U85UCX1wggonrKp/5epoXokXkhnq
	MQWWa0HS8ZNdqv75Rxstl1le2G0FokippwM6gJgYKVfye1DhAnTRt2K9MT8S0xartx42pKFpfw92Z
	5poVhXhQ9sOsEzNGPLPoEyzn1JdhVhxq48qHhOOe6uqnwnZRJaQgUBaw06z1E9ayg8FXrGLVQBwNj
	CucG66EFwtbMkYx7yMuC+zEQu/kj7swh0SfBoVWITv7UC9+jh+NoS0JXxvWOAgdqp8+3t7ZaBqHYs
	MQi1i58QNR75Wn5rz7HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs7f0-0007OP-VD; Mon, 29 Jul 2019 15:34:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hs7en-0007Ns-AV; Mon, 29 Jul 2019 15:33:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AEAE3337;
 Mon, 29 Jul 2019 08:33:48 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1D6103F694;
 Mon, 29 Jul 2019 08:33:46 -0700 (PDT)
Date: Mon, 29 Jul 2019 16:33:41 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Jianjun Wang <jianjun.wang@mediatek.com>
Subject: Re: [v2,2/2] PCI: mediatek: Add controller support for MT7629
Message-ID: <20190729153341.GA23266@e121166-lin.cambridge.arm.com>
References: <20190628073425.25165-1-jianjun.wang@mediatek.com>
 <20190628073425.25165-3-jianjun.wang@mediatek.com>
 <1564385918.17211.6.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1564385918.17211.6.camel@mhfsdcap03>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_083349_446689_C0D93C51 
X-CRM114-Status: GOOD (  21.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ryder Lee <ryder.lee@mediatek.com>, linux-pci@vger.kernel.org,
 youlin.pei@mediatek.com, linux-kernel@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 03:38:38PM +0800, Jianjun Wang wrote:
> On Fri, 2019-06-28 at 15:34 +0800, Jianjun Wang wrote:
> > MT7629 is an ARM platform SoC which has the same PCIe IP with MT7622.
> > 
> > The HW default value of its Device ID is invalid, fix its Device ID to
> > match the hardware implementation.
> > 
> > Acked-by: Ryder Lee <ryder.lee@mediatek.com>
> > Signed-off-by: Jianjun Wang <jianjun.wang@mediatek.com>
> > ---
> >  drivers/pci/controller/pcie-mediatek.c | 18 ++++++++++++++++++
> >  include/linux/pci_ids.h                |  1 +
> >  2 files changed, 19 insertions(+)
> > 
> > diff --git a/drivers/pci/controller/pcie-mediatek.c b/drivers/pci/controller/pcie-mediatek.c
> > index 80601e1b939e..e5e6740b635d 100644
> > --- a/drivers/pci/controller/pcie-mediatek.c
> > +++ b/drivers/pci/controller/pcie-mediatek.c
> > @@ -73,6 +73,7 @@
> >  #define PCIE_MSI_VECTOR		0x0c0
> >  
> >  #define PCIE_CONF_VEND_ID	0x100
> > +#define PCIE_CONF_DEVICE_ID	0x102
> >  #define PCIE_CONF_CLASS_ID	0x106
> >  
> >  #define PCIE_INT_MASK		0x420
> > @@ -141,12 +142,16 @@ struct mtk_pcie_port;
> >  /**
> >   * struct mtk_pcie_soc - differentiate between host generations
> >   * @need_fix_class_id: whether this host's class ID needed to be fixed or not
> > + * @need_fix_device_id: whether this host's Device ID needed to be fixed or not
> > + * @device_id: Device ID which this host need to be fixed
> >   * @ops: pointer to configuration access functions
> >   * @startup: pointer to controller setting functions
> >   * @setup_irq: pointer to initialize IRQ functions
> >   */
> >  struct mtk_pcie_soc {
> >  	bool need_fix_class_id;
> > +	bool need_fix_device_id;
> > +	unsigned int device_id;
> >  	struct pci_ops *ops;
> >  	int (*startup)(struct mtk_pcie_port *port);
> >  	int (*setup_irq)(struct mtk_pcie_port *port, struct device_node *node);
> > @@ -696,6 +701,9 @@ static int mtk_pcie_startup_port_v2(struct mtk_pcie_port *port)
> >  		writew(val, port->base + PCIE_CONF_CLASS_ID);
> >  	}
> >  
> > +	if (soc->need_fix_device_id)
> > +		writew(soc->device_id, port->base + PCIE_CONF_DEVICE_ID);
> > +
> >  	/* 100ms timeout value should be enough for Gen1/2 training */
> >  	err = readl_poll_timeout(port->base + PCIE_LINK_STATUS_V2, val,
> >  				 !!(val & PCIE_PORT_LINKUP_V2), 20,
> > @@ -1216,11 +1224,21 @@ static const struct mtk_pcie_soc mtk_pcie_soc_mt7622 = {
> >  	.setup_irq = mtk_pcie_setup_irq,
> >  };
> >  
> > +static const struct mtk_pcie_soc mtk_pcie_soc_mt7629 = {
> > +	.need_fix_class_id = true,
> > +	.need_fix_device_id = true,
> > +	.device_id = PCI_DEVICE_ID_MEDIATEK_7629,
> > +	.ops = &mtk_pcie_ops_v2,
> > +	.startup = mtk_pcie_startup_port_v2,
> > +	.setup_irq = mtk_pcie_setup_irq,
> > +};
> > +
> >  static const struct of_device_id mtk_pcie_ids[] = {
> >  	{ .compatible = "mediatek,mt2701-pcie", .data = &mtk_pcie_soc_v1 },
> >  	{ .compatible = "mediatek,mt7623-pcie", .data = &mtk_pcie_soc_v1 },
> >  	{ .compatible = "mediatek,mt2712-pcie", .data = &mtk_pcie_soc_mt2712 },
> >  	{ .compatible = "mediatek,mt7622-pcie", .data = &mtk_pcie_soc_mt7622 },
> > +	{ .compatible = "mediatek,mt7629-pcie", .data = &mtk_pcie_soc_mt7629 },
> >  	{},
> >  };
> >  
> > diff --git a/include/linux/pci_ids.h b/include/linux/pci_ids.h
> > index 70e86148cb1e..aa32962759b2 100644
> > --- a/include/linux/pci_ids.h
> > +++ b/include/linux/pci_ids.h
> > @@ -2131,6 +2131,7 @@
> >  #define PCI_VENDOR_ID_MYRICOM		0x14c1
> >  
> >  #define PCI_VENDOR_ID_MEDIATEK		0x14c3
> > +#define PCI_DEVICE_ID_MEDIATEK_7629	0x7629
> >  
> >  #define PCI_VENDOR_ID_TITAN		0x14D2
> >  #define PCI_DEVICE_ID_TITAN_010L	0x8001
> 
> Hi Bjorn & Lorenzo,
> 
> Is this patch ok or is there anything I need to fixed?

We are getting to it shortly, thanks for your patience.

Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
