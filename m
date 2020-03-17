Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9699C187B10
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 09:18:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MU0Xctvt4HwKaz65QvmYOFLD6IXJolBAZEuZ93v0E+Q=; b=GS7FnptoobIQE9
	VDL6OYnm21oFPnlBsNj9jSRjE3YIMJj0Css4JLhDuLxTyAeCynA/dO0BjnNpC7yFOjhs7sCsbeVB1
	uEdzoNCG4HrdkaxA0+rRaswGJxwiTpzWO02Ci1jAzxUT5Cm1LPe5wtYBeB2XEdxV6oegMV2XS21sP
	AzALS20YvqtKbIB+Y+eUF3A6SLcnF2WS/3h/qnIDE9nhOjjOwMHSBfAyM+Xn/WEnp4zf68+8KC4sR
	5YxNsWn0EZ3W1o89Sm5gydWOuglcEaSPeey0vOfAtWGMz80EO/ShEXJcEyrGGMMHRnBHTqn0PgnL4
	TEB0o1R5WWryrhpDXsqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE7QY-0006jC-Ae; Tue, 17 Mar 2020 08:18:18 +0000
Received: from mail-dm6nam12on2080.outbound.protection.outlook.com
 ([40.107.243.80] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE7QP-0006ee-Ds
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 08:18:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LKRzwZMUIQtA7g59Zp6bj8AKclExoitQBfc56k3TF4QOb0onFDXjGuajGdlSW5u2S7URP4oUHW2GnyOFrWnZXu9/qnv2WS1VWffnZENxr+gNG2EU9OzmkV5xXFFJ4UmGXPpQL18d72IwWmKSKiewBLeL8B60IgvAl/7jItWVHu9W+NOuEatT3N1DzsQn52NH+56caMq1BJM6m+wL4BeoKHvccpqnT1nfGDIZNkZ1PfCLpI0NXqo0SPkjnkBkAbYm2OTFeXjqnZlCed2x+HPxucJjkONcA6T3CNjPXpkBhzhKLy/7LHOSw6EFErknuVQOao6zB9mjuDDPip9hjzYj2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VV/Vh2LiAS0kElbgw8A0BEczvIVTRedbpCnP7UYPM+M=;
 b=c7OmAeTlfTJFveRNh/71qK722o5tizHOAaAXOdm/D1KrxBKBdqkNHRVmMVcuWJGubWfRoEkTc5hnp6eAUuu6EpUIJZz27gVlo7Ru75oUGb20q0YdCDv7PDHlmPrZfAj95vhpli+GPtfuu6WUCnMu0q/lkxW1FvvO+dm6xMxYeXwIG+f14QnKfT98cIP+0FXdmLkv+bfW0ZFKiaG+aU/ZO8WKVV0zwoKo0FnBsY3VKVj57tfQWgHRrhMGWK8NYgt+f5CTJCUlwkUdsU52mbTDTV7gLD0P4qUwVzcJHt60RcN3Adjaxa/k3JRuFyjaayhpCtMfhV1VScoGNu2qUAHzPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VV/Vh2LiAS0kElbgw8A0BEczvIVTRedbpCnP7UYPM+M=;
 b=nVDqLy1g6qP926ay+y1L22Rr25K4p4C98eBh7Xpjco79JaQdnDdxzDOaSJPMqqgBcPGvciPROJ+3vrPBDwUwMFSup4780i6QU5PcTrn9LWXTwPIpWfV9IRzK1z1lxj4gUcxoQZGm7opo6jvKBKZVgz41QSRfGRo9Kq8EqkHPLHU=
Received: from DM6PR02MB5819.namprd02.prod.outlook.com (2603:10b6:5:17d::25)
 by DM6PR02MB6811.namprd02.prod.outlook.com (2603:10b6:5:21a::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.21; Tue, 17 Mar
 2020 08:18:06 +0000
Received: from DM6PR02MB5819.namprd02.prod.outlook.com
 ([fe80::88bf:6a72:fe27:4870]) by DM6PR02MB5819.namprd02.prod.outlook.com
 ([fe80::88bf:6a72:fe27:4870%7]) with mapi id 15.20.2814.021; Tue, 17 Mar 2020
 08:18:06 +0000
From: Mubin Usman Sayyed <MUBINUSM@xilinx.com>
To: Marc Zyngier <maz@kernel.org>
Subject: RE: [PATCH v4 1/3] irqchip: xilinx: Add support for multiple instances
Thread-Topic: [PATCH v4 1/3] irqchip: xilinx: Add support for multiple
 instances
Thread-Index: AQHV+5qaKfIvQZIUyk+H7chI/zqyoahLSKoAgAEoIAA=
Date: Tue, 17 Mar 2020 08:18:05 +0000
Message-ID: <DM6PR02MB58194D2E4A5D987555423FEFA1F60@DM6PR02MB5819.namprd02.prod.outlook.com>
References: <20200316135447.30162-1-mubin.usman.sayyed@xilinx.com>
 <20200316135447.30162-2-mubin.usman.sayyed@xilinx.com>
 <be19cec70f79e10483bd8da592b5a924@kernel.org>
In-Reply-To: <be19cec70f79e10483bd8da592b5a924@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=MUBINUSM@xilinx.com; 
x-originating-ip: [149.199.50.130]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a724e2af-a840-4d08-511c-08d7ca4bb8b7
x-ms-traffictypediagnostic: DM6PR02MB6811:|DM6PR02MB6811:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR02MB68119316E541334905948571A1F60@DM6PR02MB6811.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:243;
x-forefront-prvs: 0345CFD558
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(366004)(396003)(39860400002)(376002)(199004)(52536014)(4326008)(186003)(26005)(71200400001)(2906002)(33656002)(81156014)(7696005)(30864003)(81166006)(66946007)(86362001)(5660300002)(316002)(8676002)(53546011)(54906003)(6506007)(9686003)(76116006)(55016002)(478600001)(107886003)(6916009)(8936002)(66476007)(66556008)(66446008)(64756008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB6811;
 H:DM6PR02MB5819.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4LTdP7MXZPX0PuBpLZ5ljEvzIxh9qdyuJS9oUwzaa1TGeY4tfz8itHOpgF2FIE2qqu5dHZuPhtd60tqA5dBgs0Tpkzri9bTBNe/d71sk6CJs3TpphZatc44aRHyYRLlibYRzZGkadeQ1DEJ50yVBqTt/xYQU1k5zMCf+y0neKGdvouf0EtYGhVdlt5JdTPjR7/1DOrOp6Y2UY6bFHmL9DfMfECxlj0ZLIYwUZj8BqWCFHkOnxBI8Yh5xF1JO0j5FK+HYlls1St0Or/6zzLhHn1yIuuQTuJjmozZTHdQVjjJkt4UHvB9o0Ike3wQO0L9UhXqE02WnGIwlkrpCuu4JNsjqfB6w0e85558c8b+gWUxmCY1HQrscY/3qF3s2runNkbffGNWpqSZeY9+V7/v6ShQqlKxTAMTytv4DNCzJkYwtey3UmbgT/GI6oVVuZ3Vh
x-ms-exchange-antispam-messagedata: /GWkDAKUnm1qEQrHpUkQFub9zrAi3guTra7P5FQByMdOHEr7Ocdxr8pdE0fzx04iAUWMW8/3y/UlvWwNvZsX482P0fydY2VFukS3xRlN/K6qMO931WZ8T9QmWGqWH9ADUbW7QbswRhWH85ikLCD0uw==
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a724e2af-a840-4d08-511c-08d7ca4bb8b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2020 08:18:05.8748 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: it+nTXb+tw/fQSxzqA0yP3vLutGEAkmPJwjMm7ymgp1hX2oTVZnzh9ZS0NMyJVWpBHIZnX6Xs7MJMcc0/9ZehQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB6811
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_011809_529157_4528655E 
X-CRM114-Status: GOOD (  27.20  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.243.80 listed in list.dnswl.org]
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
Cc: "jason@lakedaemon.net" <jason@lakedaemon.net>,
 Siva Durga Prasad Paladugu <sivadur@xilinx.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Michal Simek <michals@xilinx.com>, Anirudha Sarangi <anirudh@xilinx.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

> -----Original Message-----
> From: Marc Zyngier <maz@kernel.org>
> Sent: Monday, March 16, 2020 8:04 PM
> To: Mubin Usman Sayyed <MUBINUSM@xilinx.com>
> Cc: tglx@linutronix.de; jason@lakedaemon.net; Michal Simek
> <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org; linux-
> kernel@vger.kernel.org; Siva Durga Prasad Paladugu <sivadur@xilinx.com>;
> Anirudha Sarangi <anirudh@xilinx.com>; Anirudha Sarangi
> <anirudh@xilinx.com>
> Subject: Re: [PATCH v4 1/3] irqchip: xilinx: Add support for multiple instances
> 
> On 2020-03-16 13:54, Mubin Usman Sayyed wrote:
> > From: Mubin Sayyed <mubin.usman.sayyed@xilinx.com>
> >
> > Added support for cascaded interrupt controllers.
> >
> > Following cascaded configurations have been tested,
> >
> > - peripheral->xilinx-intc->xilinx-intc->gic->Cortexa53 processor
> >   on zcu102 board
> > - peripheral->xilinx-intc->xilinx-intc->microblaze processor
> >   on kcu105 board
> >
> > Signed-off-by: Mubin Sayyed <mubin.usman.sayyed@xilinx.com>
> > Signed-off-by: Anirudha Sarangi <anirudha.sarangi@xilinx.com>
> > ---
> > Changes for v4:
> > 	- Fixed review comments from Thomas - updated commit
> > 	  message, variable declarations changed to reverse
> > 	  fir tree and cleaned up some code.
> >
> > Changes for v3:
> > 	- Modified prototype of xintc_write/xintc_read
> > 	- Fixed review comments regarding indentation/variable
> > 	  names, used BIT
> > 	- Modified xintc_get_irq_local to return 0
> > 	  in case of failure/no pending interrupts
> > 	- Fixed return type of xintc_read
> > 	- Reverted changes related to device name and
> > 	  kept intc_dev as static
> >
> > Changes for v2:
> >         - Removed write_fn/read_fn hooks, used xintc_write/
> > 	  xintc_read directly
> >         - Moved primary_intc declaration after xintc_irq_chip
> > ---
> >  drivers/irqchip/irq-xilinx-intc.c | 121
> > ++++++++++++++++++------------
> >  1 file changed, 71 insertions(+), 50 deletions(-)
> >
> > diff --git a/drivers/irqchip/irq-xilinx-intc.c
> > b/drivers/irqchip/irq-xilinx-intc.c
> > index e3043ded8973..65b77720ef2e 100644
> > --- a/drivers/irqchip/irq-xilinx-intc.c
> > +++ b/drivers/irqchip/irq-xilinx-intc.c
> > @@ -38,29 +38,32 @@ struct xintc_irq_chip {
> >  	void		__iomem *base;
> >  	struct		irq_domain *root_domain;
> >  	u32		intr_mask;
> > +	struct		irq_chip *intc_dev;
> 
> What is the need for this pointer? As far as I can see, all the interrupts have
> the same callbacks, and even then, there should be no need to keep a
> pointer to that.
[Mubin]: Agreed, I will fix it in next version.
> 
> > +	u32		nr_irq;
> >  };
> >
> > -static struct xintc_irq_chip *xintc_irqc;
> > +static struct xintc_irq_chip *primary_intc;
> >
> > -static void xintc_write(int reg, u32 data)
> > +static void xintc_write(struct xintc_irq_chip *irqc, int reg, u32
> > data)
> >  {
> >  	if (static_branch_unlikely(&xintc_is_be))
> > -		iowrite32be(data, xintc_irqc->base + reg);
> > +		iowrite32be(data, irqc->base + reg);
> >  	else
> > -		iowrite32(data, xintc_irqc->base + reg);
> > +		iowrite32(data, irqc->base + reg);
> >  }
> >
> > -static unsigned int xintc_read(int reg)
> > +static u32 xintc_read(struct xintc_irq_chip *irqc, int reg)
> >  {
> >  	if (static_branch_unlikely(&xintc_is_be))
> > -		return ioread32be(xintc_irqc->base + reg);
> > +		return ioread32be(irqc->base + reg);
> >  	else
> > -		return ioread32(xintc_irqc->base + reg);
> > +		return ioread32(irqc->base + reg);
> >  }
> >
> >  static void intc_enable_or_unmask(struct irq_data *d)  {
> > -	unsigned long mask = 1 << d->hwirq;
> > +	struct xintc_irq_chip *irqc = irq_data_get_irq_chip_data(d);
> > +	unsigned long mask = BIT(d->hwirq);
> >
> >  	pr_debug("irq-xilinx: enable_or_unmask: %ld\n", d->hwirq);
> >
> > @@ -69,30 +72,35 @@ static void intc_enable_or_unmask(struct irq_data
> > *d)
> >  	 * acks the irq before calling the interrupt handler
> >  	 */
> >  	if (irqd_is_level_type(d))
> > -		xintc_write(IAR, mask);
> > +		xintc_write(irqc, IAR, mask);
> >
> > -	xintc_write(SIE, mask);
> > +	xintc_write(irqc, SIE, mask);
> >  }
> >
> >  static void intc_disable_or_mask(struct irq_data *d)  {
> > +	struct xintc_irq_chip *irqc = irq_data_get_irq_chip_data(d);
> > +
> >  	pr_debug("irq-xilinx: disable: %ld\n", d->hwirq);
> > -	xintc_write(CIE, 1 << d->hwirq);
> > +	xintc_write(irqc, CIE, BIT(d->hwirq));
> >  }
> >
> >  static void intc_ack(struct irq_data *d)  {
> > +	struct xintc_irq_chip *irqc = irq_data_get_irq_chip_data(d);
> > +
> >  	pr_debug("irq-xilinx: ack: %ld\n", d->hwirq);
> > -	xintc_write(IAR, 1 << d->hwirq);
> > +	xintc_write(irqc, IAR, BIT(d->hwirq));
> >  }
> >
> >  static void intc_mask_ack(struct irq_data *d)  {
> > -	unsigned long mask = 1 << d->hwirq;
> > +	struct xintc_irq_chip *irqc = irq_data_get_irq_chip_data(d);
> > +	unsigned long mask = BIT(d->hwirq);
> >
> >  	pr_debug("irq-xilinx: disable_and_ack: %ld\n", d->hwirq);
> > -	xintc_write(CIE, mask);
> > -	xintc_write(IAR, mask);
> > +	xintc_write(irqc, CIE, mask);
> > +	xintc_write(irqc, IAR, mask);
> >  }
> >
> >  static struct irq_chip intc_dev = {
> > @@ -103,13 +111,28 @@ static struct irq_chip intc_dev = {
> >  	.irq_mask_ack = intc_mask_ack,
> >  };
> >
> > +static unsigned int xintc_get_irq_local(struct xintc_irq_chip *irqc)
> > +{
> > +	unsigned int irq = 0;
> > +	u32 hwirq;
> > +
> > +	hwirq = xintc_read(irqc, IVR);
> > +	if (hwirq != -1U)
> > +		irq = irq_find_mapping(irqc->root_domain, hwirq);
> > +
> > +	pr_debug("irq-xilinx: hwirq=%d, irq=%d\n", hwirq, irq);
> > +
> > +	return irq;
> > +}
> > +
> >  unsigned int xintc_get_irq(void)
> >  {
> > -	unsigned int hwirq, irq = -1;
> > +	unsigned int irq = -1;
> > +	u32 hwirq;
> >
> > -	hwirq = xintc_read(IVR);
> > +	hwirq = xintc_read(primary_intc, IVR);
> >  	if (hwirq != -1U)
> > -		irq = irq_find_mapping(xintc_irqc->root_domain, hwirq);
> > +		irq = irq_find_mapping(primary_intc->root_domain, hwirq);
> >
> >  	pr_debug("irq-xilinx: hwirq=%d, irq=%d\n", hwirq, irq);
> >
> > @@ -118,15 +141,18 @@ unsigned int xintc_get_irq(void)
> >
> >  static int xintc_map(struct irq_domain *d, unsigned int irq,
> > irq_hw_number_t hw)  {
> > -	if (xintc_irqc->intr_mask & (1 << hw)) {
> > -		irq_set_chip_and_handler_name(irq, &intc_dev,
> > -						handle_edge_irq, "edge");
> > +	struct xintc_irq_chip *irqc = d->host_data;
> > +
> > +	if (irqc->intr_mask & BIT(hw)) {
> > +		irq_set_chip_and_handler_name(irq, irqc->intc_dev,
> > +					      handle_edge_irq, "edge");
> >  		irq_clear_status_flags(irq, IRQ_LEVEL);
> >  	} else {
> > -		irq_set_chip_and_handler_name(irq, &intc_dev,
> > -						handle_level_irq, "level");
> > +		irq_set_chip_and_handler_name(irq, irqc->intc_dev,
> > +					      handle_level_irq, "level");
> >  		irq_set_status_flags(irq, IRQ_LEVEL);
> >  	}
> > +	irq_set_chip_data(irq, irqc);
> >  	return 0;
> >  }
> >
> > @@ -138,12 +164,14 @@ static const struct irq_domain_ops
> > xintc_irq_domain_ops = {  static void xil_intc_irq_handler(struct
> > irq_desc *desc)  {
> >  	struct irq_chip *chip = irq_desc_get_chip(desc);
> > +	struct xintc_irq_chip *irqc;
> >  	u32 pending;
> >
> > +	irqc = irq_data_get_irq_handler_data(&desc->irq_data);
> >  	chained_irq_enter(chip, desc);
> >  	do {
> > -		pending = xintc_get_irq();
> > -		if (pending == -1U)
> > +		pending = xintc_get_irq_local(irqc);
> > +		if (pending == 0U)
> 
> nit: I don't think we need to consider the sign of zero.
[Mubin]: I will fix it in next version.
> 
> >  			break;
> >  		generic_handle_irq(pending);
> >  	} while (true);
> > @@ -153,28 +181,19 @@ static void xil_intc_irq_handler(struct irq_desc
> > *desc)
> >  static int __init xilinx_intc_of_init(struct device_node *intc,
> >  					     struct device_node *parent)  {
> > -	u32 nr_irq;
> > -	int ret, irq;
> >  	struct xintc_irq_chip *irqc;
> > -
> > -	if (xintc_irqc) {
> > -		pr_err("irq-xilinx: Multiple instances aren't supported\n");
> > -		return -EINVAL;
> > -	}
> > +	int ret, irq;
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
> > &irqc->nr_irq);
> >  	if (ret < 0) {
> >  		pr_err("irq-xilinx: unable to read xlnx,num-intr-inputs\n");
> > -		goto err_alloc;
> > +		goto error;
> >  	}
> >
> >  	ret = of_property_read_u32(intc, "xlnx,kind-of-intr",
> > &irqc->intr_mask);
> > @@ -183,34 +202,35 @@ static int __init xilinx_intc_of_init(struct
> > device_node *intc,
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
> >
> > +	irqc->intc_dev = &intc_dev;
> 
> Based on the above, this should go.
[Mubin]: will do it in next version
> 
> >
> >  	/*
> >  	 * Disable all external interrupts until they are
> >  	 * explicity requested.
> >  	 */
> > -	xintc_write(IER, 0);
> > +	xintc_write(irqc, IER, 0);
> >
> >  	/* Acknowledge any pending interrupts just in case. */
> > -	xintc_write(IAR, 0xffffffff);
> > +	xintc_write(irqc, IAR, 0xffffffff);
> >
> >  	/* Turn on the Master Enable. */
> > -	xintc_write(MER, MER_HIE | MER_ME);
> > -	if (!(xintc_read(MER) & (MER_HIE | MER_ME))) {
> > +	xintc_write(irqc, MER, MER_HIE | MER_ME);
> > +	if (xintc_read(irqc, MER) != (MER_HIE | MER_ME)) {
> >  		static_branch_enable(&xintc_is_be);
> > -		xintc_write(MER, MER_HIE | MER_ME);
> > +		xintc_write(irqc, MER, MER_HIE | MER_ME);
> >  	}
> >
> > -	irqc->root_domain = irq_domain_add_linear(intc, nr_irq,
> > +	irqc->root_domain = irq_domain_add_linear(intc, irqc->nr_irq,
> >  						  &xintc_irq_domain_ops,
> irqc);
> >  	if (!irqc->root_domain) {
> >  		pr_err("irq-xilinx: Unable to create IRQ domain\n");
> > -		goto err_alloc;
> > +		goto error;
> >  	}
> >
> >  	if (parent) {
> > @@ -222,16 +242,17 @@ static int __init xilinx_intc_of_init(struct
> > device_node *intc,
> >  		} else {
> >  			pr_err("irq-xilinx: interrupts property not in DT\n");
> >  			ret = -EINVAL;
> > -			goto err_alloc;
> > +			goto error;
> >  		}
> >  	} else {
> > -		irq_set_default_host(irqc->root_domain);
> > +		primary_intc = irqc;
> > +		irq_set_default_host(primary_intc->root_domain);
> 
> Do you still need this irq_set_default_host() horror? I thought
> microblaze
> was fully DT-ified and didn't need this. The use of a non-legacy domain
> tends
> to confirm this.
[Mubin]: I will add  patch in next version to remove it.

Thanks,
Mubin
> 
> >  	}
> >
> >  	return 0;
> >
> > -err_alloc:
> > -	xintc_irqc = NULL;
> > +error:
> > +	iounmap(irqc->base);
> >  	kfree(irqc);
> >  	return ret;
> 
> Thanks,
> 
>          M.
> --
> Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
