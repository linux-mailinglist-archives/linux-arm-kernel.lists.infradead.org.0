Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD461156FD5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 08:28:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pOq7pDaTtDHi0tednz9LltBdQDh/dg1nYfi1eBMebZA=; b=uOGTsR7UUR5xT7
	fk4waBXfXmeEx7bu2WQhtwaq0j2dMgXmVGyF/2qjrh8CWNKeHQGF11q1xhBf62NTaq7+/E8+yLmHH
	nHg90RDNPSjxPUTk82ixSptGJtTZU+NPBBLabOGtVL34G18HowPZ15zB3JpI+eO05c+zlVmq0Q+Wl
	/za0DUdCTQLrtj/eTiZf6tRDh708DEMTPWHTJj27prrkVV4CEqxLc/fqN3vIqS+9PwKATyXswK2e4
	xb5aOnKXh/Qs6uqM5OlM5opRaydCV/bOxRbxb60641NnoMLYNMW6cdzcuBcL8vWQQBVFBnpnrNVzu
	Lit+dDppXNp6dOWaUBrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j13UJ-0001vx-AJ; Mon, 10 Feb 2020 07:28:11 +0000
Received: from kernel.crashing.org ([76.164.61.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j13UA-0001vS-3Y
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 07:28:05 +0000
Received: from localhost (gate.crashing.org [63.228.1.57])
 (authenticated bits=0)
 by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id 01A7RKqK010967
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Mon, 10 Feb 2020 01:27:24 -0600
Message-ID: <386e905fb705266efcac0c1b3a10053889c7fead.camel@kernel.crashing.org>
Subject: Re: [PATCH 1/3] usb: gadget: aspeed: read vhub config from
 of_device_id
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Joel Stanley <joel@jms.id.au>, Tao Ren <rentao.bupt@gmail.com>
Date: Mon, 10 Feb 2020 08:27:20 +0100
In-Reply-To: <CACPK8Xe0b+zVNqf8v5YXOLkzqDeb4JHqec-bqFpaVFGTwHThhA@mail.gmail.com>
References: <20200131222157.20849-1-rentao.bupt@gmail.com>
 <20200131222157.20849-2-rentao.bupt@gmail.com>
 <CACPK8Xe0b+zVNqf8v5YXOLkzqDeb4JHqec-bqFpaVFGTwHThhA@mail.gmail.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_232802_770644_2776BFAF 
X-CRM114-Status: GOOD (  27.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Felipe Balbi <balbi@kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 devicetree <devicetree@vger.kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>, linux-usb@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2020-02-10 at 02:47 +0000, Joel Stanley wrote:
> On Fri, 31 Jan 2020 at 22:22, <rentao.bupt@gmail.com> wrote:
> > 
> > From: Tao Ren <rentao.bupt@gmail.com>
> > 
> > The patch moves hardcoded vhub attributes (maximum downstream ports
> > and
> > generic endpoints) to "ast_vhub_config" structure which is attached
> > to
> > struct of_device_id. The major purpose is to add AST2600 vhub
> > support
> > because AST2600 vhub provides more downstream ports and endpoints.
> > 
> > Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
> 
> This looks generally okay. We should wait for Ben's ack before
> applying.

Shouldn't we instead have DT fields indicating those values ?

Also we should add a DT representation for the various ID/strings of
the hub itself so manufacturers can customize them.

> Reviewed-by: Joel Stanley <joel@jms.id.au>
> 
> > ---
> >  drivers/usb/gadget/udc/aspeed-vhub/core.c | 100 ++++++++++++++--
> > ------
> >  drivers/usb/gadget/udc/aspeed-vhub/dev.c  |  30 +++++--
> >  drivers/usb/gadget/udc/aspeed-vhub/epn.c  |   4 +-
> >  drivers/usb/gadget/udc/aspeed-vhub/hub.c  |  26 ++++--
> >  drivers/usb/gadget/udc/aspeed-vhub/vhub.h |  23 ++---
> >  5 files changed, 112 insertions(+), 71 deletions(-)
> > 
> > diff --git a/drivers/usb/gadget/udc/aspeed-vhub/core.c
> > b/drivers/usb/gadget/udc/aspeed-vhub/core.c
> > index 90b134d5dca9..94081cc04113 100644
> > --- a/drivers/usb/gadget/udc/aspeed-vhub/core.c
> > +++ b/drivers/usb/gadget/udc/aspeed-vhub/core.c
> > @@ -32,6 +32,29 @@
> > 
> >  #include "vhub.h"
> > 
> > +struct ast_vhub_config {
> > +       u32 max_ports;  /* max number of downstream ports */
> > +       u32 max_epns;   /* max number of generic endpoints */
> > +};
> > +
> > +static const struct ast_vhub_config ast2400_config = {
> > +       .max_ports = 5,
> > +       .max_epns = 15,
> > +};
> > +
> > +static const struct of_device_id ast_vhub_dt_ids[] = {
> > +       {
> > +               .compatible = "aspeed,ast2400-usb-vhub",
> > +               .data = &ast2400_config,
> > +       },
> > +       {
> > +               .compatible = "aspeed,ast2500-usb-vhub",
> > +               .data = &ast2400_config,
> > +       },
> > +       { }
> > +};
> > +MODULE_DEVICE_TABLE(of, ast_vhub_dt_ids);
> > +
> >  void ast_vhub_done(struct ast_vhub_ep *ep, struct ast_vhub_req
> > *req,
> >                    int status)
> >  {
> > @@ -99,7 +122,7 @@ static irqreturn_t ast_vhub_irq(int irq, void
> > *data)
> >  {
> >         struct ast_vhub *vhub = data;
> >         irqreturn_t iret = IRQ_NONE;
> > -       u32 istat;
> > +       u32 i, istat;
> > 
> >         /* Stale interrupt while tearing down */
> >         if (!vhub->ep0_bufs)
> > @@ -121,10 +144,10 @@ static irqreturn_t ast_vhub_irq(int irq, void
> > *data)
> > 
> >         /* Handle generic EPs first */
> >         if (istat & VHUB_IRQ_EP_POOL_ACK_STALL) {
> > -               u32 i, ep_acks = readl(vhub->regs +
> > AST_VHUB_EP_ACK_ISR);
> > +               u32 ep_acks = readl(vhub->regs +
> > AST_VHUB_EP_ACK_ISR);
> >                 writel(ep_acks, vhub->regs + AST_VHUB_EP_ACK_ISR);
> > 
> > -               for (i = 0; ep_acks && i < AST_VHUB_NUM_GEN_EPs;
> > i++) {
> > +               for (i = 0; ep_acks && i < vhub->max_epns; i++) {
> >                         u32 mask = VHUB_EP_IRQ(i);
> >                         if (ep_acks & mask) {
> >                                 ast_vhub_epn_ack_irq(&vhub-
> > >epns[i]);
> > @@ -134,21 +157,11 @@ static irqreturn_t ast_vhub_irq(int irq, void
> > *data)
> >         }
> > 
> >         /* Handle device interrupts */
> > -       if (istat & (VHUB_IRQ_DEVICE1 |
> > -                    VHUB_IRQ_DEVICE2 |
> > -                    VHUB_IRQ_DEVICE3 |
> > -                    VHUB_IRQ_DEVICE4 |
> > -                    VHUB_IRQ_DEVICE5)) {
> > -               if (istat & VHUB_IRQ_DEVICE1)
> > -                       ast_vhub_dev_irq(&vhub->ports[0].dev);
> > -               if (istat & VHUB_IRQ_DEVICE2)
> > -                       ast_vhub_dev_irq(&vhub->ports[1].dev);
> > -               if (istat & VHUB_IRQ_DEVICE3)
> > -                       ast_vhub_dev_irq(&vhub->ports[2].dev);
> > -               if (istat & VHUB_IRQ_DEVICE4)
> > -                       ast_vhub_dev_irq(&vhub->ports[3].dev);
> > -               if (istat & VHUB_IRQ_DEVICE5)
> > -                       ast_vhub_dev_irq(&vhub->ports[4].dev);
> > +       for (i = 0; i < vhub->max_ports; i++) {
> > +               u32 dev_mask = VHUB_IRQ_DEVICE1 << i;
> > +
> > +               if (istat & dev_mask)
> > +                       ast_vhub_dev_irq(&vhub->ports[i].dev);
> >         }
> > 
> >         /* Handle top-level vHub EP0 interrupts */
> > @@ -182,7 +195,7 @@ static irqreturn_t ast_vhub_irq(int irq, void
> > *data)
> > 
> >  void ast_vhub_init_hw(struct ast_vhub *vhub)
> >  {
> > -       u32 ctrl;
> > +       u32 ctrl, port_mask, epn_mask;
> > 
> >         UDCDBG(vhub,"(Re)Starting HW ...\n");
> > 
> > @@ -222,15 +235,20 @@ void ast_vhub_init_hw(struct ast_vhub *vhub)
> >         }
> > 
> >         /* Reset all devices */
> > -       writel(VHUB_SW_RESET_ALL, vhub->regs + AST_VHUB_SW_RESET);
> > +       port_mask = GENMASK(vhub->max_ports, 1);
> > +       writel(VHUB_SW_RESET_ROOT_HUB |
> > +              VHUB_SW_RESET_DMA_CONTROLLER |
> > +              VHUB_SW_RESET_EP_POOL |
> > +              port_mask, vhub->regs + AST_VHUB_SW_RESET);
> >         udelay(1);
> >         writel(0, vhub->regs + AST_VHUB_SW_RESET);
> > 
> >         /* Disable and cleanup EP ACK/NACK interrupts */
> > +       epn_mask = GENMASK(vhub->max_epns - 1, 0);
> >         writel(0, vhub->regs + AST_VHUB_EP_ACK_IER);
> >         writel(0, vhub->regs + AST_VHUB_EP_NACK_IER);
> > -       writel(VHUB_EP_IRQ_ALL, vhub->regs + AST_VHUB_EP_ACK_ISR);
> > -       writel(VHUB_EP_IRQ_ALL, vhub->regs + AST_VHUB_EP_NACK_ISR);
> > +       writel(epn_mask, vhub->regs + AST_VHUB_EP_ACK_ISR);
> > +       writel(epn_mask, vhub->regs + AST_VHUB_EP_NACK_ISR);
> > 
> >         /* Default settings for EP0, enable HW hub EP1 */
> >         writel(0, vhub->regs + AST_VHUB_EP0_CTRL);
> > @@ -273,7 +291,7 @@ static int ast_vhub_remove(struct
> > platform_device *pdev)
> >                 return 0;
> > 
> >         /* Remove devices */
> > -       for (i = 0; i < AST_VHUB_NUM_PORTS; i++)
> > +       for (i = 0; i < vhub->max_ports; i++)
> >                 ast_vhub_del_dev(&vhub->ports[i].dev);
> > 
> >         spin_lock_irqsave(&vhub->lock, flags);
> > @@ -295,7 +313,7 @@ static int ast_vhub_remove(struct
> > platform_device *pdev)
> >         if (vhub->ep0_bufs)
> >                 dma_free_coherent(&pdev->dev,
> >                                   AST_VHUB_EP0_MAX_PACKET *
> > -                                 (AST_VHUB_NUM_PORTS + 1),
> > +                                 (vhub->max_ports + 1),
> >                                   vhub->ep0_bufs,
> >                                   vhub->ep0_bufs_dma);
> >         vhub->ep0_bufs = NULL;
> > @@ -309,11 +327,30 @@ static int ast_vhub_probe(struct
> > platform_device *pdev)
> >         struct ast_vhub *vhub;
> >         struct resource *res;
> >         int i, rc = 0;
> > +       const struct of_device_id *ofdid;
> > +       const struct ast_vhub_config *config;
> > 
> >         vhub = devm_kzalloc(&pdev->dev, sizeof(*vhub), GFP_KERNEL);
> >         if (!vhub)
> >                 return -ENOMEM;
> > 
> > +       ofdid = of_match_node(ast_vhub_dt_ids, pdev->dev.of_node);
> > +       if (!ofdid)
> > +               return -EINVAL;
> > +       config = ofdid->data;
> > +
> > +       vhub->max_ports = config->max_ports;
> > +       vhub->ports = devm_kcalloc(&pdev->dev, vhub->max_ports,
> > +                                  sizeof(*vhub->ports),
> > GFP_KERNEL);
> > +       if (!vhub->ports)
> > +               return -ENOMEM;
> > +
> > +       vhub->max_epns = config->max_epns;
> > +       vhub->epns = devm_kcalloc(&pdev->dev, vhub->max_epns,
> > +                                 sizeof(*vhub->epns), GFP_KERNEL);
> > +       if (!vhub->epns)
> > +               return -ENOMEM;
> > +
> >         spin_lock_init(&vhub->lock);
> >         vhub->pdev = pdev;
> > 
> > @@ -366,7 +403,7 @@ static int ast_vhub_probe(struct
> > platform_device *pdev)
> >          */
> >         vhub->ep0_bufs = dma_alloc_coherent(&pdev->dev,
> >                                             AST_VHUB_EP0_MAX_PACKET
> > *
> > -                                           (AST_VHUB_NUM_PORTS +
> > 1),
> > +                                           (vhub->max_ports + 1),
> >                                             &vhub->ep0_bufs_dma,
> > GFP_KERNEL);
> >         if (!vhub->ep0_bufs) {
> >                 dev_err(&pdev->dev, "Failed to allocate EP0 DMA
> > buffers\n");
> > @@ -380,7 +417,7 @@ static int ast_vhub_probe(struct
> > platform_device *pdev)
> >         ast_vhub_init_ep0(vhub, &vhub->ep0, NULL);
> > 
> >         /* Init devices */
> > -       for (i = 0; i < AST_VHUB_NUM_PORTS && rc == 0; i++)
> > +       for (i = 0; i < vhub->max_ports && rc == 0; i++)
> >                 rc = ast_vhub_init_dev(vhub, i);
> >         if (rc)
> >                 goto err;
> > @@ -400,17 +437,6 @@ static int ast_vhub_probe(struct
> > platform_device *pdev)
> >         return rc;
> >  }
> > 
> > -static const struct of_device_id ast_vhub_dt_ids[] = {
> > -       {
> > -               .compatible = "aspeed,ast2400-usb-vhub",
> > -       },
> > -       {
> > -               .compatible = "aspeed,ast2500-usb-vhub",
> > -       },
> > -       { }
> > -};
> > -MODULE_DEVICE_TABLE(of, ast_vhub_dt_ids);
> > -
> >  static struct platform_driver ast_vhub_driver = {
> >         .probe          = ast_vhub_probe,
> >         .remove         = ast_vhub_remove,
> > diff --git a/drivers/usb/gadget/udc/aspeed-vhub/dev.c
> > b/drivers/usb/gadget/udc/aspeed-vhub/dev.c
> > index 4008e7a51188..d268306a7bfe 100644
> > --- a/drivers/usb/gadget/udc/aspeed-vhub/dev.c
> > +++ b/drivers/usb/gadget/udc/aspeed-vhub/dev.c
> > @@ -77,7 +77,7 @@ static void ast_vhub_dev_enable(struct
> > ast_vhub_dev *d)
> >         writel(d->ep0.buf_dma, d->regs + AST_VHUB_DEV_EP0_DATA);
> > 
> >         /* Clear stall on all EPs */
> > -       for (i = 0; i < AST_VHUB_NUM_GEN_EPs; i++) {
> > +       for (i = 0; i < d->max_epns; i++) {
> >                 struct ast_vhub_ep *ep = d->epns[i];
> > 
> >                 if (ep && (ep->epn.stalled || ep->epn.wedged)) {
> > @@ -137,7 +137,7 @@ static int ast_vhub_ep_feature(struct
> > ast_vhub_dev *d,
> >              is_set ? "SET" : "CLEAR", ep_num, wValue);
> >         if (ep_num == 0)
> >                 return std_req_complete;
> > -       if (ep_num >= AST_VHUB_NUM_GEN_EPs || !d->epns[ep_num - 1])
> > +       if (ep_num >= d->max_epns || !d->epns[ep_num - 1])
> >                 return std_req_stall;
> >         if (wValue != USB_ENDPOINT_HALT)
> >                 return std_req_driver;
> > @@ -181,7 +181,7 @@ static int ast_vhub_ep_status(struct
> > ast_vhub_dev *d,
> > 
> >         DDBG(d, "GET_STATUS(ep%d)\n", ep_num);
> > 
> > -       if (ep_num >= AST_VHUB_NUM_GEN_EPs)
> > +       if (ep_num >= d->max_epns)
> >                 return std_req_stall;
> >         if (ep_num != 0) {
> >                 ep = d->epns[ep_num - 1];
> > @@ -299,7 +299,7 @@ static void ast_vhub_dev_nuke(struct
> > ast_vhub_dev *d)
> >  {
> >         unsigned int i;
> > 
> > -       for (i = 0; i < AST_VHUB_NUM_GEN_EPs; i++) {
> > +       for (i = 0; i < d->max_epns; i++) {
> >                 if (!d->epns[i])
> >                         continue;
> >                 ast_vhub_nuke(d->epns[i], -ESHUTDOWN);
> > @@ -416,10 +416,10 @@ static struct usb_ep
> > *ast_vhub_udc_match_ep(struct usb_gadget *gadget,
> >          * that will allow the generic code to use our
> >          * assigned address.
> >          */
> > -       for (i = 0; i < AST_VHUB_NUM_GEN_EPs; i++)
> > +       for (i = 0; i < d->max_epns; i++)
> >                 if (d->epns[i] == NULL)
> >                         break;
> > -       if (i >= AST_VHUB_NUM_GEN_EPs)
> > +       if (i >= d->max_epns)
> >                 return NULL;
> >         addr = i + 1;
> > 
> > @@ -526,6 +526,7 @@ void ast_vhub_del_dev(struct ast_vhub_dev *d)
> > 
> >         usb_del_gadget_udc(&d->gadget);
> >         device_unregister(d->port_dev);
> > +       kfree(d->epns);
> >  }
> > 
> >  static void ast_vhub_dev_release(struct device *dev)
> > @@ -546,14 +547,25 @@ int ast_vhub_init_dev(struct ast_vhub *vhub,
> > unsigned int idx)
> > 
> >         ast_vhub_init_ep0(vhub, &d->ep0, d);
> > 
> > +       /*
> > +        * A USB device can have up to 30 endpoints besides control
> > +        * endpoint 0.
> > +        */
> > +       d->max_epns = min_t(u32, vhub->max_epns, 30);
> > +       d->epns = kcalloc(d->max_epns, sizeof(*d->epns),
> > GFP_KERNEL);
> > +       if (!d->epns)
> > +               return -ENOMEM;
> > +
> >         /*
> >          * The UDC core really needs us to have separate and
> > uniquely
> >          * named "parent" devices for each port so we create a sub
> > device
> >          * here for that purpose
> >          */
> >         d->port_dev = kzalloc(sizeof(struct device), GFP_KERNEL);
> > -       if (!d->port_dev)
> > -               return -ENOMEM;
> > +       if (!d->port_dev) {
> > +               rc = -ENOMEM;
> > +               goto fail_alloc;
> > +       }
> >         device_initialize(d->port_dev);
> >         d->port_dev->release = ast_vhub_dev_release;
> >         d->port_dev->parent = parent;
> > @@ -584,6 +596,8 @@ int ast_vhub_init_dev(struct ast_vhub *vhub,
> > unsigned int idx)
> >         device_del(d->port_dev);
> >   fail_add:
> >         put_device(d->port_dev);
> > + fail_alloc:
> > +       kfree(d->epns);
> > 
> >         return rc;
> >  }
> > diff --git a/drivers/usb/gadget/udc/aspeed-vhub/epn.c
> > b/drivers/usb/gadget/udc/aspeed-vhub/epn.c
> > index 7475c74aa5c5..0bd6b20435b8 100644
> > --- a/drivers/usb/gadget/udc/aspeed-vhub/epn.c
> > +++ b/drivers/usb/gadget/udc/aspeed-vhub/epn.c
> > @@ -800,10 +800,10 @@ struct ast_vhub_ep *ast_vhub_alloc_epn(struct
> > ast_vhub_dev *d, u8 addr)
> > 
> >         /* Find a free one (no device) */
> >         spin_lock_irqsave(&vhub->lock, flags);
> > -       for (i = 0; i < AST_VHUB_NUM_GEN_EPs; i++)
> > +       for (i = 0; i < vhub->max_epns; i++)
> >                 if (vhub->epns[i].dev == NULL)
> >                         break;
> > -       if (i >= AST_VHUB_NUM_GEN_EPs) {
> > +       if (i >= vhub->max_epns) {
> >                 spin_unlock_irqrestore(&vhub->lock, flags);
> >                 return NULL;
> >         }
> > diff --git a/drivers/usb/gadget/udc/aspeed-vhub/hub.c
> > b/drivers/usb/gadget/udc/aspeed-vhub/hub.c
> > index 19b3517e04c0..9c7e57fbd8ef 100644
> > --- a/drivers/usb/gadget/udc/aspeed-vhub/hub.c
> > +++ b/drivers/usb/gadget/udc/aspeed-vhub/hub.c
> > @@ -133,10 +133,13 @@ static const struct ast_vhub_full_cdesc {
> > 
> >  #define AST_VHUB_HUB_DESC_SIZE (USB_DT_HUB_NONVAR_SIZE + 2)
> > 
> > -static const struct usb_hub_descriptor ast_vhub_hub_desc = {
> > +/*
> > + * "bNbrPorts" field is updated in "ast_vhub_init_hub" function
> > based on
> > + * "max_ports" of the vhub.
> > + */
> > +static struct usb_hub_descriptor ast_vhub_hub_desc = {
> >         .bDescLength                    = AST_VHUB_HUB_DESC_SIZE,
> >         .bDescriptorType                = USB_DT_HUB,
> > -       .bNbrPorts                      = AST_VHUB_NUM_PORTS,
> >         .wHubCharacteristics            =
> > cpu_to_le16(HUB_CHAR_NO_LPSM),
> >         .bPwrOn2PwrGood                 = 10,
> >         .bHubContrCurrent               = 0,
> > @@ -504,7 +507,7 @@ static void ast_vhub_wake_work(struct
> > work_struct *work)
> >          * we let the normal host wake path deal with it later.
> >          */
> >         spin_lock_irqsave(&vhub->lock, flags);
> > -       for (i = 0; i < AST_VHUB_NUM_PORTS; i++) {
> > +       for (i = 0; i < vhub->max_ports; i++) {
> >                 struct ast_vhub_port *p = &vhub->ports[i];
> > 
> >                 if (!(p->status & USB_PORT_STAT_SUSPEND))
> > @@ -587,7 +590,7 @@ static enum std_req_rc
> > ast_vhub_set_port_feature(struct ast_vhub_ep *ep,
> >         struct ast_vhub *vhub = ep->vhub;
> >         struct ast_vhub_port *p;
> > 
> > -       if (port == 0 || port > AST_VHUB_NUM_PORTS)
> > +       if (port == 0 || port > vhub->max_ports)
> >                 return std_req_stall;
> >         port--;
> >         p = &vhub->ports[port];
> > @@ -630,7 +633,7 @@ static enum std_req_rc
> > ast_vhub_clr_port_feature(struct ast_vhub_ep *ep,
> >         struct ast_vhub *vhub = ep->vhub;
> >         struct ast_vhub_port *p;
> > 
> > -       if (port == 0 || port > AST_VHUB_NUM_PORTS)
> > +       if (port == 0 || port > vhub->max_ports)
> >                 return std_req_stall;
> >         port--;
> >         p = &vhub->ports[port];
> > @@ -676,7 +679,7 @@ static enum std_req_rc
> > ast_vhub_get_port_stat(struct ast_vhub_ep *ep,
> >         struct ast_vhub *vhub = ep->vhub;
> >         u16 stat, chg;
> > 
> > -       if (port == 0 || port > AST_VHUB_NUM_PORTS)
> > +       if (port == 0 || port > vhub->max_ports)
> >                 return std_req_stall;
> >         port--;
> > 
> > @@ -757,7 +760,7 @@ void ast_vhub_hub_suspend(struct ast_vhub
> > *vhub)
> >          * Forward to unsuspended ports without changing
> >          * their connection status.
> >          */
> > -       for (i = 0; i < AST_VHUB_NUM_PORTS; i++) {
> > +       for (i = 0; i < vhub->max_ports; i++) {
> >                 struct ast_vhub_port *p = &vhub->ports[i];
> > 
> >                 if (!(p->status & USB_PORT_STAT_SUSPEND))
> > @@ -780,7 +783,7 @@ void ast_vhub_hub_resume(struct ast_vhub *vhub)
> >          * Forward to unsuspended ports without changing
> >          * their connection status.
> >          */
> > -       for (i = 0; i < AST_VHUB_NUM_PORTS; i++) {
> > +       for (i = 0; i < vhub->max_ports; i++) {
> >                 struct ast_vhub_port *p = &vhub->ports[i];
> > 
> >                 if (!(p->status & USB_PORT_STAT_SUSPEND))
> > @@ -814,7 +817,7 @@ void ast_vhub_hub_reset(struct ast_vhub *vhub)
> >          * Clear all port status, disable gadgets and "suspend"
> >          * them. They will be woken up by a port reset.
> >          */
> > -       for (i = 0; i < AST_VHUB_NUM_PORTS; i++) {
> > +       for (i = 0; i < vhub->max_ports; i++) {
> >                 struct ast_vhub_port *p = &vhub->ports[i];
> > 
> >                 /* Only keep the connected flag */
> > @@ -838,5 +841,10 @@ void ast_vhub_init_hub(struct ast_vhub *vhub)
> >  {
> >         vhub->speed = USB_SPEED_UNKNOWN;
> >         INIT_WORK(&vhub->wake_work, ast_vhub_wake_work);
> > +
> > +       /*
> > +        * Fixup number of ports in hub descriptor.
> > +        */
> > +       ast_vhub_hub_desc.bNbrPorts = vhub->max_ports;
> >  }
> > 
> > diff --git a/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
> > b/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
> > index 761919e220d3..e46980fe66f2 100644
> > --- a/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
> > +++ b/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
> > @@ -76,17 +76,9 @@
> >  #define VHUB_SW_RESET_DEVICE2                  (1 << 2)
> >  #define VHUB_SW_RESET_DEVICE1                  (1 << 1)
> >  #define VHUB_SW_RESET_ROOT_HUB                 (1 << 0)
> > -#define
> > VHUB_SW_RESET_ALL                      (VHUB_SW_RESET_EP_POOL | \
> > -                                                VHUB_SW_RESET_DMA_
> > CONTROLLER | \
> > -                                                VHUB_SW_RESET_DEVI
> > CE5 | \
> > -                                                VHUB_SW_RESET_DEVI
> > CE4 | \
> > -                                                VHUB_SW_RESET_DEVI
> > CE3 | \
> > -                                                VHUB_SW_RESET_DEVI
> > CE2 | \
> > -                                                VHUB_SW_RESET_DEVI
> > CE1 | \
> > -                                                VHUB_SW_RESET_ROOT
> > _HUB)
> > +
> >  /* EP ACK/NACK IRQ masks */
> >  #define VHUB_EP_IRQ(n)                         (1 << (n))
> > -#define VHUB_EP_IRQ_ALL                                0x7fff  /*
> > 15 EPs */
> > 
> >  /* USB status reg */
> >  #define VHUB_USBSTS_HISPEED                    (1 << 27)
> > @@ -210,8 +202,6 @@
> >   *                                      *
> >   ****************************************/
> > 
> > -#define AST_VHUB_NUM_GEN_EPs   15      /* Generic non-0 EPs */
> > -#define AST_VHUB_NUM_PORTS     5       /* vHub ports */
> >  #define AST_VHUB_EP0_MAX_PACKET        64      /* EP0's max packet
> > size */
> >  #define AST_VHUB_EPn_MAX_PACKET        1024    /* Generic EPs max
> > packet size */
> >  #define AST_VHUB_DESCS_COUNT   256     /* Use 256 descriptor mode
> > (valid
> > @@ -342,7 +332,7 @@ struct ast_vhub_dev {
> >         struct ast_vhub                 *vhub;
> >         void __iomem                    *regs;
> > 
> > -       /* Device index (0...4) and name string */
> > +       /* Device index (zero-based) and name string */
> >         unsigned int                    index;
> >         const char                      *name;
> > 
> > @@ -358,7 +348,8 @@ struct ast_vhub_dev {
> > 
> >         /* Endpoint structures */
> >         struct ast_vhub_ep              ep0;
> > -       struct
> > ast_vhub_ep              *epns[AST_VHUB_NUM_GEN_EPs];
> > +       struct ast_vhub_ep              **epns;
> > +       u32                             max_epns;
> > 
> >  };
> >  #define to_ast_dev(__g) container_of(__g, struct ast_vhub_dev,
> > gadget)
> > @@ -393,10 +384,12 @@ struct ast_vhub {
> >         bool                            ep1_stalled : 1;
> > 
> >         /* Per-port info */
> > -       struct ast_vhub_port            ports[AST_VHUB_NUM_PORTS];
> > +       struct ast_vhub_port            *ports;
> > +       u32                             max_ports;
> > 
> >         /* Generic EP data structures */
> > -       struct ast_vhub_ep              epns[AST_VHUB_NUM_GEN_EPs];
> > +       struct ast_vhub_ep              *epns;
> > +       u32                             max_epns;
> > 
> >         /* Upstream bus is suspended ? */
> >         bool                            suspended : 1;
> > --
> > 2.17.1
> > 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
