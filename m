Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1A978672
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 09:39:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qVjIKsigDCwUStgOALxPzljJgnvmy3ORb+TzDH4Pp2I=; b=INWPBE2PH17JNZ
	8S7TjerPZzY6jAXE3oLMj8U+6Yequkh6sz6s4k0DLIUJ3PCJeEs5NwYoJT+w1jtVsRHKYxr00lRxe
	RocafwtGGbGlvphs1BHRFhEqxQEgKrIv1FTykD1KKprNurd2n9//HBPCGxqrgcvBjS9J5NdQnBdr1
	+xU0b8nr55dOZuVS3IEPJ36hznhNHnfj+IyRJzyy9SzERbZ+189yzW9o069Oa0ADRiWblw2ssURAr
	janDL4rXmvDjj5+FE74UjgoTYXLxWubzox5i7ns3NevLmKWrLnMlfM4E6USHa0R2kdZC7BgSHA+Tu
	I6fWVTDYoU0Z8cwpqvfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs0FN-0005sC-FE; Mon, 29 Jul 2019 07:39:05 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs0F9-0005qv-Fd; Mon, 29 Jul 2019 07:38:52 +0000
X-UUID: 2edfaf70772e48d9b5e7718cded00c69-20190728
X-UUID: 2edfaf70772e48d9b5e7718cded00c69-20190728
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <jianjun.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1528663838; Sun, 28 Jul 2019 23:38:46 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 29 Jul 2019 00:38:45 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Mon, 29 Jul 2019 15:38:39 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 29 Jul 2019 15:38:38 +0800
Message-ID: <1564385918.17211.6.camel@mhfsdcap03>
Subject: Re: [v2,2/2] PCI: mediatek: Add controller support for MT7629
From: Jianjun Wang <jianjun.wang@mediatek.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, Ryder Lee <ryder.lee@mediatek.com>
Date: Mon, 29 Jul 2019 15:38:38 +0800
In-Reply-To: <20190628073425.25165-3-jianjun.wang@mediatek.com>
References: <20190628073425.25165-1-jianjun.wang@mediatek.com>
 <20190628073425.25165-3-jianjun.wang@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 736AECADBE0E85D306CDAE61C7316ECFE7F8B270E6112EAB74CF5017161808C82000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_003851_530416_3FFC0246 
X-CRM114-Status: GOOD (  16.80  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-pci@vger.kernel.org, youlin.pei@mediatek.com,
 linux-kernel@vger.kernel.org, jianjun.wang@mediatek.com,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-06-28 at 15:34 +0800, Jianjun Wang wrote:
> MT7629 is an ARM platform SoC which has the same PCIe IP with MT7622.
> 
> The HW default value of its Device ID is invalid, fix its Device ID to
> match the hardware implementation.
> 
> Acked-by: Ryder Lee <ryder.lee@mediatek.com>
> Signed-off-by: Jianjun Wang <jianjun.wang@mediatek.com>
> ---
>  drivers/pci/controller/pcie-mediatek.c | 18 ++++++++++++++++++
>  include/linux/pci_ids.h                |  1 +
>  2 files changed, 19 insertions(+)
> 
> diff --git a/drivers/pci/controller/pcie-mediatek.c b/drivers/pci/controller/pcie-mediatek.c
> index 80601e1b939e..e5e6740b635d 100644
> --- a/drivers/pci/controller/pcie-mediatek.c
> +++ b/drivers/pci/controller/pcie-mediatek.c
> @@ -73,6 +73,7 @@
>  #define PCIE_MSI_VECTOR		0x0c0
>  
>  #define PCIE_CONF_VEND_ID	0x100
> +#define PCIE_CONF_DEVICE_ID	0x102
>  #define PCIE_CONF_CLASS_ID	0x106
>  
>  #define PCIE_INT_MASK		0x420
> @@ -141,12 +142,16 @@ struct mtk_pcie_port;
>  /**
>   * struct mtk_pcie_soc - differentiate between host generations
>   * @need_fix_class_id: whether this host's class ID needed to be fixed or not
> + * @need_fix_device_id: whether this host's Device ID needed to be fixed or not
> + * @device_id: Device ID which this host need to be fixed
>   * @ops: pointer to configuration access functions
>   * @startup: pointer to controller setting functions
>   * @setup_irq: pointer to initialize IRQ functions
>   */
>  struct mtk_pcie_soc {
>  	bool need_fix_class_id;
> +	bool need_fix_device_id;
> +	unsigned int device_id;
>  	struct pci_ops *ops;
>  	int (*startup)(struct mtk_pcie_port *port);
>  	int (*setup_irq)(struct mtk_pcie_port *port, struct device_node *node);
> @@ -696,6 +701,9 @@ static int mtk_pcie_startup_port_v2(struct mtk_pcie_port *port)
>  		writew(val, port->base + PCIE_CONF_CLASS_ID);
>  	}
>  
> +	if (soc->need_fix_device_id)
> +		writew(soc->device_id, port->base + PCIE_CONF_DEVICE_ID);
> +
>  	/* 100ms timeout value should be enough for Gen1/2 training */
>  	err = readl_poll_timeout(port->base + PCIE_LINK_STATUS_V2, val,
>  				 !!(val & PCIE_PORT_LINKUP_V2), 20,
> @@ -1216,11 +1224,21 @@ static const struct mtk_pcie_soc mtk_pcie_soc_mt7622 = {
>  	.setup_irq = mtk_pcie_setup_irq,
>  };
>  
> +static const struct mtk_pcie_soc mtk_pcie_soc_mt7629 = {
> +	.need_fix_class_id = true,
> +	.need_fix_device_id = true,
> +	.device_id = PCI_DEVICE_ID_MEDIATEK_7629,
> +	.ops = &mtk_pcie_ops_v2,
> +	.startup = mtk_pcie_startup_port_v2,
> +	.setup_irq = mtk_pcie_setup_irq,
> +};
> +
>  static const struct of_device_id mtk_pcie_ids[] = {
>  	{ .compatible = "mediatek,mt2701-pcie", .data = &mtk_pcie_soc_v1 },
>  	{ .compatible = "mediatek,mt7623-pcie", .data = &mtk_pcie_soc_v1 },
>  	{ .compatible = "mediatek,mt2712-pcie", .data = &mtk_pcie_soc_mt2712 },
>  	{ .compatible = "mediatek,mt7622-pcie", .data = &mtk_pcie_soc_mt7622 },
> +	{ .compatible = "mediatek,mt7629-pcie", .data = &mtk_pcie_soc_mt7629 },
>  	{},
>  };
>  
> diff --git a/include/linux/pci_ids.h b/include/linux/pci_ids.h
> index 70e86148cb1e..aa32962759b2 100644
> --- a/include/linux/pci_ids.h
> +++ b/include/linux/pci_ids.h
> @@ -2131,6 +2131,7 @@
>  #define PCI_VENDOR_ID_MYRICOM		0x14c1
>  
>  #define PCI_VENDOR_ID_MEDIATEK		0x14c3
> +#define PCI_DEVICE_ID_MEDIATEK_7629	0x7629
>  
>  #define PCI_VENDOR_ID_TITAN		0x14D2
>  #define PCI_DEVICE_ID_TITAN_010L	0x8001

Hi Bjorn & Lorenzo,

Is this patch ok or is there anything I need to fixed?

Thanks.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
