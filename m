Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F1E7153FB7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 09:02:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+R7lWY0io21836SZQTJ6wSxrSxJZoh8EJkZAPp4vArQ=; b=OWlDQmGmG9XHgr
	GSbyzcF2n1/hL+A1AUjXD79nWj1V6Z/zcAutRvp2t7F5eKJHIxcl8U0nCPesM2ct5yDkdShg2EvdW
	ICiscTkjoe4jhGGMveWHE8FaXkAhC+6kczahp0IlgbWyGbuyYipDc96ACWklYmjcMfRDijX+fKb0K
	1HbryBmo4Nf1G6h0zi5Gi5JfBwQDNV6pa8fszyZd8OzDS8p1QbmXxGhFO6JTyFz4FLTokUO5NKTGT
	xsH2yPer7OUkroKzg/Uop82dqmSrYzCqUgK4jJh2NJrjNVsDyfAaNBAHUHIGFQvjfjAeOxMNTGfmD
	Jr4h5vBg4aPsWbpyM5xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izc7B-0002fK-4o; Thu, 06 Feb 2020 08:02:21 +0000
Received: from mail-mw2nam12on2048.outbound.protection.outlook.com
 ([40.107.244.48] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izc72-0002eu-Ne
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 08:02:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g0dxUtlKP0JAbYyGTN7i7TgI9I9dfj0ICrEyzevj+Li8hSfBi8PhyQqodEKFdj7uaqAsKNPEZk0cZBcl7iav9WBlF+mmcuQZyddnkG3qaIjrEAPXxy35SVtYiIdxmdl2BgeUvFDxE2je3XyeUnxvbiPeVUkjSpcnHIrb+kxxEQseFsZi97BD3YpeflmAyyiyZv2U+JWbeTKkyfgEJssUyVwS/fjFyPPjAqFkatvZsOusL+RIizbs5xSrFGgMxFr23SfHtHh6wLfDCNnHceoeQ/uzax8VQ0LSM5eBsLh6wkVyJlWLR87ZkZ6jfVfjnjQ1Evc4tiJpbQPCz6HBAJQ5Tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i8OUAuFAOAucX8qy8nzZYVRsWxTBqudY2ox4cd8IAvo=;
 b=oc47gxvZEPsY1F2X48NIekUFiMMRTr01exbb6xNhHVTrDLQaPXmkjE/j4r1kVDwBpta1q4MNKRBbDg6beiKQevU2+axr0e7YA48Wly7nVfwWrSbCPsGmwbvwwXwuOVwPwxJVI1nAxbt1tqgnoeYdcQ/hKVoBtDKCzXzhKaEqavWJ2qO++jCTifhl43Cu7onjPAMosASM7scDzRjYrOOWQmAab3+bl4iqJFyOFjsyM1Vp36GJRcn2XJk0xlLt1JKeDgXxx1oxOtTNQHLHNtn43SbNsFptCdyj7zQzqaxadFPeitNy2l1ubTfkSI9hnNkqeyWOT8y2E1J772SN/brxew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i8OUAuFAOAucX8qy8nzZYVRsWxTBqudY2ox4cd8IAvo=;
 b=sCaKkJvpeTcEYDV1U2bOBTYG2G7iVGLQrFWghJZdj9Qs4B0eT3O7DKthNH7+G1ZjO6aZmIuwV0bH5NOkw5Vb6Sd9QzA9iw17abYSKBAHXXqJKfosjvgGB+Xdgdl5vnWtKNsO+iwWvuwIrmeCViQjxu+XjPH7N0KkbiM8bb5KhjI=
Received: from MN2PR02MB5727.namprd02.prod.outlook.com (20.179.85.153) by
 MN2PR02MB5725.namprd02.prod.outlook.com (20.179.99.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.29; Thu, 6 Feb 2020 08:02:07 +0000
Received: from MN2PR02MB5727.namprd02.prod.outlook.com
 ([fe80::e09d:a160:5349:8ed0]) by MN2PR02MB5727.namprd02.prod.outlook.com
 ([fe80::e09d:a160:5349:8ed0%6]) with mapi id 15.20.2686.035; Thu, 6 Feb 2020
 08:02:07 +0000
From: Mubin Usman Sayyed <MUBINUSM@xilinx.com>
To: Michal Simek <michals@xilinx.com>, "tglx@linutronix.de"
 <tglx@linutronix.de>, "jason@lakedaemon.net" <jason@lakedaemon.net>,
 "maz@kernel.org" <maz@kernel.org>, Michal Simek <michals@xilinx.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH v2] irqchip: xilinx: Add support for multiple instances
Thread-Topic: [PATCH v2] irqchip: xilinx: Add support for multiple instances
Thread-Index: AQHV3C2hje5zExnZvkGSFN2foWGvfagMr68AgAEdlBA=
Date: Thu, 6 Feb 2020 08:02:07 +0000
Message-ID: <MN2PR02MB5727B2F70CCE900EFED67F4FA11D0@MN2PR02MB5727.namprd02.prod.outlook.com>
References: <1580911535-19415-1-git-send-email-mubin.usman.sayyed@xilinx.com>
 <ff04b046-6459-28ac-0fb7-16b124403f66@xilinx.com>
In-Reply-To: <ff04b046-6459-28ac-0fb7-16b124403f66@xilinx.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=MUBINUSM@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 988856e8-82bd-47d7-3c3f-08d7aadadca2
x-ms-traffictypediagnostic: MN2PR02MB5725:|MN2PR02MB5725:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR02MB5725617E168C684B4CF21942A11D0@MN2PR02MB5725.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0305463112
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(136003)(346002)(396003)(366004)(199004)(189003)(107886003)(54906003)(110136005)(316002)(5660300002)(76116006)(66556008)(55016002)(9686003)(33656002)(64756008)(66476007)(7696005)(66446008)(52536014)(66946007)(26005)(8676002)(81166006)(478600001)(8936002)(81156014)(4326008)(71200400001)(6506007)(53546011)(186003)(86362001)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB5725;
 H:MN2PR02MB5727.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: h9sxIDOmXrtKIFOkiRifBrceqDM6phpJtcth5o0qtIQf0+VnS3n0TKeE/7rBT3tPMavWdztlhv/hw7UXnFyqiN6+VhkFX6n3+qPPoidOcHb3IbeReHK6NsQZ1rvTAhmiUtDTfxaZxA5+ST95ZAGIC2RXnjHh0bmicS1PljDMta4uPXL4lhQtPeCfObwgVCpcQya3h9rsctOXjPuEuZ6LX1TXxP6TrSF9MXmENtdjtV2E7sqq2vn7nRbWUCM7ZvDO2GH7r3TAxifs8o6uTzZBun4YJtfaST5dmUK1gYuj0Mo+E6PEJpk0KKgyxznkH9BlExmzPIoTM85Rv2Z8WXZuTP4pjobX3qVoed4tjpUmiYTVEyekcRv2EhdOqacbx+/vWLRGhKjewyQklexVTw7vTa0otV0EZnQjA/wYukmEC98jddJgiXmfKJhgMI3K3g6h
x-ms-exchange-antispam-messagedata: HLU7Uk/9O4CN2RBODwKnHpB0Lz5baDnoLIcyfLpdL61lc2sS7CrZNz1NL+RyJceif+ynp09MOnwe7qP4aVB3umaHedoRneZrqg1gd0CLwN+mEmAW5Jo2PjNTx2hjRCZIXvRPc6R1+ogciJrY+VtkdA==
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 988856e8-82bd-47d7-3c3f-08d7aadadca2
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2020 08:02:07.6607 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8S7rjajkH6WcNmvZt28EFi9H93sdnoHyr3SpLUlXoxenEAPQR8ZTGEzOKY6rDI3VYyMWAdb2+lunMVf5cQVVOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB5725
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_000212_826080_EC59687E 
X-CRM114-Status: GOOD (  24.10  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.244.48 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Anirudha Sarangi <anirudh@xilinx.com>,
 Siva Durga Prasad Paladugu <sivadur@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Michal,

> -----Original Message-----
> From: Michal Simek <michal.simek@xilinx.com>
> Sent: Wednesday, February 5, 2020 8:23 PM
> To: Mubin Usman Sayyed <MUBINUSM@xilinx.com>; tglx@linutronix.de;
> jason@lakedaemon.net; maz@kernel.org; Michal Simek
> <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org; Siva Durga Prasad Paladugu
> <sivadur@xilinx.com>; Anirudha Sarangi <anirudh@xilinx.com>
> Subject: Re: [PATCH v2] irqchip: xilinx: Add support for multiple instances
> 
> Hi Mubin,
> 
> On 05. 02. 20 15:05, Mubin Usman Sayyed wrote:
> > From: Mubin Sayyed <mubin.usman.sayyed@xilinx.com>
> >
> > This patch adds support for multiple instances of xilinx interrupt
> > controller. Below configurations are supported by driver,
> >
> > - peripheral->xilinx-intc->xilinx-intc->gic
> > - peripheral->xilinx-intc->xilinx-intc
> >
> > Signed-off-by: Anirudha Sarangi <anirudha.sarangi@xilinx.com>
> > Signed-off-by: Mubin Sayyed <mubin.usman.sayyed@xilinx.com>
> > ---
> > Changes for v2:
> >         - Removed write_fn/read_fn hooks, used xintc_write/
> > 	  xintc_read directly
> >         - Moved primary_intc declaration after xintc_irq_chip
> > ---
> >  drivers/irqchip/irq-xilinx-intc.c | 121
> > +++++++++++++++++++++++---------------
> >  1 file changed, 73 insertions(+), 48 deletions(-)
> >
> > diff --git a/drivers/irqchip/irq-xilinx-intc.c
> > b/drivers/irqchip/irq-xilinx-intc.c
> > index e3043de..14cb630 100644
> > --- a/drivers/irqchip/irq-xilinx-intc.c
> > +++ b/drivers/irqchip/irq-xilinx-intc.c
> > @@ -38,29 +38,32 @@ struct xintc_irq_chip {
> >  	void		__iomem *base;
> >  	struct		irq_domain *root_domain;
> >  	u32		intr_mask;
> > +	struct			irq_chip *intc_dev;
> > +	u32				nr_irq;
> 
> indentation is weird.
[Mubin]: I will fix it in next version.
> 
> >  };
> >
> > -static struct xintc_irq_chip *xintc_irqc;
> > +static struct xintc_irq_chip *primary_intc;
> >
> > -static void xintc_write(int reg, u32 data)
> > +static void xintc_write(void __iomem *addr, u32 data)
> 
> The best would be if prototype is
> static void xintc_write(struct xintc_irq_chip *irqc, int reg, u32 data)
[Mubin]: Agreed, will change it in next version.
> 
> 
> >  {
> >  	if (static_branch_unlikely(&xintc_is_be))
> > -		iowrite32be(data, xintc_irqc->base + reg);
> > +		iowrite32be(data, addr);
> >  	else
> > -		iowrite32(data, xintc_irqc->base + reg);
> > +		iowrite32(data, addr);
> >  }
> >
> > -static unsigned int xintc_read(int reg)
> > +static unsigned int xintc_read(void __iomem *addr)
> 
> And the same here.
> static unsigned int xintc_read(struct xintc_irq_chip *irqc, int reg)
> 
[Mubin]: Sure
> >  {
> >  	if (static_branch_unlikely(&xintc_is_be))
> > -		return ioread32be(xintc_irqc->base + reg);
> > +		return ioread32be(addr);
> >  	else
> > -		return ioread32(xintc_irqc->base + reg);
> > +		return ioread32(addr);
> >  }
> >
> >  static void intc_enable_or_unmask(struct irq_data *d)  {
> >  	unsigned long mask = 1 << d->hwirq;
> > +	struct xintc_irq_chip *local_intc = irq_data_get_irq_chip_data(d);
> 
> code is using variable name as irqc below. I think that will be the best to use it
> in all functions. It means s/local_intc/irqc/g'
[Mubin]: Will fix it in next version	

Thanks,
Mubin
> 
> 
> >
> >  	pr_debug("irq-xilinx: enable_or_unmask: %ld\n", d->hwirq);
> >
> > @@ -69,47 +72,57 @@ static void intc_enable_or_unmask(struct irq_data
> *d)
> >  	 * acks the irq before calling the interrupt handler
> >  	 */
> >  	if (irqd_is_level_type(d))
> > -		xintc_write(IAR, mask);
> > +		xintc_write(local_intc->base + IAR, mask);
> >
> > -	xintc_write(SIE, mask);
> > +	xintc_write(local_intc->base + SIE, mask);
> >  }
> >
> >  static void intc_disable_or_mask(struct irq_data *d)  {
> > +	struct xintc_irq_chip *local_intc = irq_data_get_irq_chip_data(d);
> > +
> >  	pr_debug("irq-xilinx: disable: %ld\n", d->hwirq);
> > -	xintc_write(CIE, 1 << d->hwirq);
> > +	xintc_write(local_intc->base + CIE, 1 << d->hwirq);
> >  }
> >
> >  static void intc_ack(struct irq_data *d)  {
> > +	struct xintc_irq_chip *local_intc = irq_data_get_irq_chip_data(d);
> > +
> >  	pr_debug("irq-xilinx: ack: %ld\n", d->hwirq);
> > -	xintc_write(IAR, 1 << d->hwirq);
> > +	xintc_write(local_intc->base + IAR, 1 << d->hwirq);
> >  }
> >
> >  static void intc_mask_ack(struct irq_data *d)  {
> >  	unsigned long mask = 1 << d->hwirq;
> > +	struct xintc_irq_chip *local_intc = irq_data_get_irq_chip_data(d);
> >
> >  	pr_debug("irq-xilinx: disable_and_ack: %ld\n", d->hwirq);
> > -	xintc_write(CIE, mask);
> > -	xintc_write(IAR, mask);
> > +	xintc_write(local_intc->base + CIE, mask);
> > +	xintc_write(local_intc->base + IAR, mask);
> >  }
> >
> > -static struct irq_chip intc_dev = {
> > -	.name = "Xilinx INTC",
> > -	.irq_unmask = intc_enable_or_unmask,
> > -	.irq_mask = intc_disable_or_mask,
> > -	.irq_ack = intc_ack,
> > -	.irq_mask_ack = intc_mask_ack,
> > -};
> > +static unsigned int xintc_get_irq_local(struct xintc_irq_chip
> > +*local_intc) {
> > +	int hwirq, irq = -1;
> > +
> > +	hwirq = xintc_read(local_intc->base + IVR);
> > +	if (hwirq != -1U)
> > +		irq = irq_find_mapping(local_intc->root_domain, hwirq);
> > +
> > +	pr_debug("irq-xilinx: hwirq=%d, irq=%d\n", hwirq, irq);
> > +
> > +	return irq;
> > +}
> >
> >  unsigned int xintc_get_irq(void)
> >  {
> > -	unsigned int hwirq, irq = -1;
> > +	int hwirq, irq = -1;
> >
> > -	hwirq = xintc_read(IVR);
> > +	hwirq = xintc_read(primary_intc->base + IVR);
> >  	if (hwirq != -1U)
> > -		irq = irq_find_mapping(xintc_irqc->root_domain, hwirq);
> > +		irq = irq_find_mapping(primary_intc->root_domain, hwirq);
> >
> >  	pr_debug("irq-xilinx: hwirq=%d, irq=%d\n", hwirq, irq);
> >
> > @@ -118,15 +131,18 @@ unsigned int xintc_get_irq(void)
> >
> >  static int xintc_map(struct irq_domain *d, unsigned int irq,
> > irq_hw_number_t hw)  {
> > -	if (xintc_irqc->intr_mask & (1 << hw)) {
> > -		irq_set_chip_and_handler_name(irq, &intc_dev,
> > +	struct xintc_irq_chip *local_intc = d->host_data;
> > +
> > +	if (local_intc->intr_mask & (1 << hw)) {
> > +		irq_set_chip_and_handler_name(irq, local_intc->intc_dev,
> >  						handle_edge_irq, "edge");
> >  		irq_clear_status_flags(irq, IRQ_LEVEL);
> >  	} else {
> > -		irq_set_chip_and_handler_name(irq, &intc_dev,
> > +		irq_set_chip_and_handler_name(irq, local_intc->intc_dev,
> >  						handle_level_irq, "level");
> >  		irq_set_status_flags(irq, IRQ_LEVEL);
> >  	}
> > +	irq_set_chip_data(irq, local_intc);
> >  	return 0;
> >  }
> >
> > @@ -138,11 +154,13 @@ static const struct irq_domain_ops
> > xintc_irq_domain_ops = {  static void xil_intc_irq_handler(struct
> > irq_desc *desc)  {
> >  	struct irq_chip *chip = irq_desc_get_chip(desc);
> > +	struct xintc_irq_chip *local_intc =
> > +		irq_data_get_irq_handler_data(&desc->irq_data);
> >  	u32 pending;
> >
> >  	chained_irq_enter(chip, desc);
> >  	do {
> > -		pending = xintc_get_irq();
> > +		pending = xintc_get_irq_local(local_intc);
> >  		if (pending == -1U)
> >  			break;
> >  		generic_handle_irq(pending);
> > @@ -153,28 +171,20 @@ static void xil_intc_irq_handler(struct irq_desc
> > *desc)  static int __init xilinx_intc_of_init(struct device_node *intc,
> >  					     struct device_node *parent)  {
> > -	u32 nr_irq;
> >  	int ret, irq;
> >  	struct xintc_irq_chip *irqc;
> > -
> > -	if (xintc_irqc) {
> > -		pr_err("irq-xilinx: Multiple instances aren't supported\n");
> > -		return -EINVAL;
> > -	}
> > +	struct irq_chip *intc_dev;
> >
> >  	irqc = kzalloc(sizeof(*irqc), GFP_KERNEL);
> >  	if (!irqc)
> >  		return -ENOMEM;
> > -
> > -	xintc_irqc = irqc;
> > -
> >  	irqc->base = of_iomap(intc, 0);
> >  	BUG_ON(!irqc->base);
> >
> > -	ret = of_property_read_u32(intc, "xlnx,num-intr-inputs", &nr_irq);
> > +	ret = of_property_read_u32(intc, "xlnx,num-intr-inputs",
> > +&irqc->nr_irq);
> >  	if (ret < 0) {
> >  		pr_err("irq-xilinx: unable to read xlnx,num-intr-inputs\n");
> > -		goto err_alloc;
> > +		goto error;
> >  	}
> >
> >  	ret = of_property_read_u32(intc, "xlnx,kind-of-intr",
> > &irqc->intr_mask); @@ -183,30 +193,42 @@ static int __init
> xilinx_intc_of_init(struct device_node *intc,
> >  		irqc->intr_mask = 0;
> >  	}
> >
> > -	if (irqc->intr_mask >> nr_irq)
> > +	if (irqc->intr_mask >> irqc->nr_irq)
> >  		pr_warn("irq-xilinx: mismatch in kind-of-intr param\n");
> >
> >  	pr_info("irq-xilinx: %pOF: num_irq=%d, edge=0x%x\n",
> > -		intc, nr_irq, irqc->intr_mask);
> > +		intc, irqc->nr_irq, irqc->intr_mask);
> > +
> > +	intc_dev = kzalloc(sizeof(*intc_dev), GFP_KERNEL);
> > +	if (!intc_dev) {
> > +		ret = -ENOMEM;
> > +		goto error;
> > +	}
> >
> > +	intc_dev->name = intc->full_name;
> > +	intc_dev->irq_unmask = intc_enable_or_unmask,
> > +	intc_dev->irq_mask = intc_disable_or_mask,
> > +	intc_dev->irq_ack = intc_ack,
> > +	intc_dev->irq_mask_ack = intc_mask_ack,
> > +	irqc->intc_dev = intc_dev;
> >
> >  	/*
> >  	 * Disable all external interrupts until they are
> >  	 * explicity requested.
> >  	 */
> > -	xintc_write(IER, 0);
> > +	xintc_write(irqc->base + IER, 0);
> >
> >  	/* Acknowledge any pending interrupts just in case. */
> > -	xintc_write(IAR, 0xffffffff);
> > +	xintc_write(irqc->base + IAR, 0xffffffff);
> >
> >  	/* Turn on the Master Enable. */
> > -	xintc_write(MER, MER_HIE | MER_ME);
> > -	if (!(xintc_read(MER) & (MER_HIE | MER_ME))) {
> > +	xintc_write(irqc->base + MER, MER_HIE | MER_ME);
> > +	if (!(xintc_read(irqc->base + MER) & (MER_HIE | MER_ME))) {
> >  		static_branch_enable(&xintc_is_be);
> > -		xintc_write(MER, MER_HIE | MER_ME);
> > +		xintc_write(irqc->base + MER, MER_HIE | MER_ME);
> >  	}
> >
> > -	irqc->root_domain = irq_domain_add_linear(intc, nr_irq,
> > +	irqc->root_domain = irq_domain_add_linear(intc, irqc->nr_irq,
> >  						  &xintc_irq_domain_ops,
> irqc);
> >  	if (!irqc->root_domain) {
> >  		pr_err("irq-xilinx: Unable to create IRQ domain\n"); @@ -
> 225,13
> > +247,16 @@ static int __init xilinx_intc_of_init(struct device_node *intc,
> >  			goto err_alloc;
> >  		}
> >  	} else {
> > -		irq_set_default_host(irqc->root_domain);
> > +		primary_intc = irqc;
> > +		irq_set_default_host(primary_intc->root_domain);
> >  	}
> >
> >  	return 0;
> >
> >  err_alloc:
> > -	xintc_irqc = NULL;
> > +	kfree(intc_dev);
> > +error:
> > +	iounmap(irqc->base);
> >  	kfree(irqc);
> >  	return ret;
> >
> >
> 
> Thanks,
> Michal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
