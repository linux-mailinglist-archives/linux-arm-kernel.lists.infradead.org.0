Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC59170F68
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 05:10:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lKoBV2B877/HF+1tKgZNTzRPOU7taJ4wXxpxCEjYkcE=; b=YOuXJjUQsSlQAZ
	8upxm7gGEO2LaKixRf4NvADbFTC6Ib9/CKrRYv8zgwdHNJkVbbgHR0ZULjmgkzTd7+/W2wDXIukrQ
	PJNeu3m11KSRpUek+JItU7G3Yfqx8KiQTEw9IALTHkiyfpYAutN1Fe4pEQyh6AxSnSHvxM56SFzx/
	/3HqAS/2YU31sQtKGvxANQCcqiIroKIVULiXdAikOxxxV8IULos8uqeS7TFiHh4vnWzsxdN6imKW0
	5ABm/4got+GjoGcSUQgmGdADh8wINwNRqBTUGAvaDM8bVsCvxoZXcstzdY9pcumz571bBLdmjst/p
	Bw1fwbXcH49PP0HTmyoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7AUj-0003cI-BW; Thu, 27 Feb 2020 04:09:53 +0000
Received: from kernel.crashing.org ([76.164.61.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7AUa-0003bs-1l
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 04:09:47 +0000
Received: from localhost (gate.crashing.org [63.228.1.57])
 (authenticated bits=0)
 by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id 01R493nB022459
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 26 Feb 2020 22:09:06 -0600
Message-ID: <b9b8977ae185ca944e703721d93b8d8464d1475f.camel@kernel.crashing.org>
Subject: Re: [PATCH v4 2/7] usb: gadget: aspeed: read vhub properties from
 device tree
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: rentao.bupt@gmail.com, Felipe Balbi <balbi@kernel.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>, Stephen Boyd
 <swboyd@chromium.org>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 openbmc@lists.ozlabs.org, taoren@fb.com
Date: Thu, 27 Feb 2020 15:09:01 +1100
In-Reply-To: <20200226230346.672-3-rentao.bupt@gmail.com>
References: <20200226230346.672-1-rentao.bupt@gmail.com>
 <20200226230346.672-3-rentao.bupt@gmail.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_200944_380923_2F278926 
X-CRM114-Status: GOOD (  28.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-02-26 at 15:03 -0800, rentao.bupt@gmail.com wrote:
> From: Tao Ren <rentao.bupt@gmail.com>
> 
> The patch introduces 2 DT properties ("aspeed,vhub-downstream-ports" and
> "aspeed,vhub-generic-endpoints") which replaces hardcoded port/endpoint
> number. It is to make it more convenient to add support for newer vhub
> revisions with different number of ports and endpoints.
> 
> Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
> Reviewed-by: Joel Stanley <joel@jms.id.au>

With one minor nit that can be addressed in a subsequent patch (see
below)

Acked-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>

> ---
>  Changes in v4:
>    - use NUM_PORTS/NUM_GEN_EPs defined in vhub.h instead of introducing
>      new constants (in v3).
>  Changes in v3:
>    - fall back to "default" number of ports and endpoints to avoid
>      breaking existing ast2400/ast2500 platforms when according device
>      tree properties are not defined.
>  Changes in v2:
>    - removed ast_vhub_config structure and moved vhub port/endpoint
>      number into device tree.
> 
>  drivers/usb/gadget/udc/aspeed-vhub/core.c | 68 ++++++++++++++---------
>  drivers/usb/gadget/udc/aspeed-vhub/dev.c  | 30 +++++++---
>  drivers/usb/gadget/udc/aspeed-vhub/epn.c  |  4 +-
>  drivers/usb/gadget/udc/aspeed-vhub/hub.c  | 15 ++---
>  drivers/usb/gadget/udc/aspeed-vhub/vhub.h | 28 +++++-----
>  5 files changed, 88 insertions(+), 57 deletions(-)
> 
> diff --git a/drivers/usb/gadget/udc/aspeed-vhub/core.c b/drivers/usb/gadget/udc/aspeed-vhub/core.c
> index 90b134d5dca9..f8ab8e012f34 100644
> --- a/drivers/usb/gadget/udc/aspeed-vhub/core.c
> +++ b/drivers/usb/gadget/udc/aspeed-vhub/core.c
> @@ -99,7 +99,7 @@ static irqreturn_t ast_vhub_irq(int irq, void *data)
>  {
>  	struct ast_vhub *vhub = data;
>  	irqreturn_t iret = IRQ_NONE;
> -	u32 istat;
> +	u32 i, istat;
>  
>  	/* Stale interrupt while tearing down */
>  	if (!vhub->ep0_bufs)
> @@ -121,10 +121,10 @@ static irqreturn_t ast_vhub_irq(int irq, void *data)
>  
>  	/* Handle generic EPs first */
>  	if (istat & VHUB_IRQ_EP_POOL_ACK_STALL) {
> -		u32 i, ep_acks = readl(vhub->regs + AST_VHUB_EP_ACK_ISR);
> +		u32 ep_acks = readl(vhub->regs + AST_VHUB_EP_ACK_ISR);
>  		writel(ep_acks, vhub->regs + AST_VHUB_EP_ACK_ISR);
>  
> -		for (i = 0; ep_acks && i < AST_VHUB_NUM_GEN_EPs; i++) {
> +		for (i = 0; ep_acks && i < vhub->max_epns; i++) {
>  			u32 mask = VHUB_EP_IRQ(i);
>  			if (ep_acks & mask) {
>  				ast_vhub_epn_ack_irq(&vhub->epns[i]);
> @@ -134,21 +134,11 @@ static irqreturn_t ast_vhub_irq(int irq, void *data)
>  	}
>  
>  	/* Handle device interrupts */
> -	if (istat & (VHUB_IRQ_DEVICE1 |
> -		     VHUB_IRQ_DEVICE2 |
> -		     VHUB_IRQ_DEVICE3 |
> -		     VHUB_IRQ_DEVICE4 |
> -		     VHUB_IRQ_DEVICE5)) {
> -		if (istat & VHUB_IRQ_DEVICE1)
> -			ast_vhub_dev_irq(&vhub->ports[0].dev);
> -		if (istat & VHUB_IRQ_DEVICE2)
> -			ast_vhub_dev_irq(&vhub->ports[1].dev);On Wed,
> 2020-02-26 at 15:03 -0800, rentao.bupt@gmail.com wrote:> From: Tao
> Ren <rentao.bupt@gmail.com>> 
> > The patch introduces 2 DT properties ("aspeed,vhub-downstream-
> ports" and> "aspeed,vhub-generic-endpoints") which replaces hardcoded
> port/endpoint> number. It is to make it more convenient to add
> support for newer vhub> revisions with different number of ports and
> endpoints.> 
> > Signed-off-by: Tao Ren <rentao.bupt@gmail.com>> Reviewed-by: Joel
> Stanley <joel@jms.id.au>> --->  Changes in v4:>    - use
> NUM_PORTS/NUM_GEN_EPs defined in vhub.h instead of introducing>
>      new constants (in v3).>  Changes in v3:>    - fall back to
> "default" number of ports and endpoints to avoid>      breaking
> existing ast2400/ast2500 platforms when according device>      tree
> properties are not defined.>  Changes in v2:>    - removed
> ast_vhub_config structure and moved vhub port/endpoint>      number
> into device tree.> 
> >  drivers/usb/gadget/udc/aspeed-vhub/core.c | 68 ++++++++++++++-----
> ---->  drivers/usb/gadget/udc/aspeed-vhub/dev.c  | 30 +++++++--->
>  drivers/usb/gadget/udc/aspeed-vhub/epn.c  |  4 +->
>  drivers/usb/gadget/udc/aspeed-vhub/hub.c  | 15 ++--->
>  drivers/usb/gadget/udc/aspeed-vhub/vhub.h | 28 +++++----->  5 files
> changed, 88 insertions(+), 57 deletions(-)> 
> > diff --git a/drivers/usb/gadget/udc/aspeed-vhub/core.c
> b/drivers/usb/gadget/udc/aspeed-vhub/core.c> index
> 90b134d5dca9..f8ab8e012f34 100644> ---
> a/drivers/usb/gadget/udc/aspeed-vhub/core.c> +++
> b/drivers/usb/gadget/udc/aspeed-vhub/core.c> @@ -99,7 +99,7 @@ static
> irqreturn_t ast_vhub_irq(int irq, void *data)>  {>  	struct ast_vhub
> *vhub = data;>  	irqreturn_t iret = IRQ_NONE;> -	u32 istat;> +
> 	u32 i, istat;>  >  	/* Stale interrupt while tearing down
> */>  	if (!vhub->ep0_bufs)> @@ -121,10 +121,10 @@ static irqreturn_t
> ast_vhub_irq(int irq, void *data)>  >  	/* Handle generic EPs
> first */>  	if (istat & VHUB_IRQ_EP_POOL_ACK_STALL) {> -		
> u32 i, ep_acks = readl(vhub->regs + AST_VHUB_EP_ACK_ISR);> +		
> u32 ep_acks = readl(vhub->regs + AST_VHUB_EP_ACK_ISR);>  		
> writel(ep_acks, vhub->regs + AST_VHUB_EP_ACK_ISR);>  > -		
> for (i = 0; ep_acks && i < AST_VHUB_NUM_GEN_EPs; i++) {> +		
> for (i = 0; ep_acks && i < vhub->max_epns; i++) {>  			
> u32 mask = VHUB_EP_IRQ(i);>  			if (ep_acks & mask) {>
>  				ast_vhub_epn_ack_irq(&vhub->epns[i]);>
> @@ -134,21 +134,11 @@ static irqreturn_t ast_vhub_irq(int irq, void
> *data)>  	}>  >  	/* Handle device interrupts */> -	if
> (istat & (VHUB_IRQ_DEVICE1 |> -		     VHUB_IRQ_DEVICE2
> |> -		     VHUB_IRQ_DEVICE3 |> -		     VHUB_IRQ
> _DEVICE4 |> -		     VHUB_IRQ_DEVICE5)) {> -		if
> (istat & VHUB_IRQ_DEVICE1)> -			ast_vhub_dev_irq(&vhub-
> >ports[0].dev);> -		if (istat & VHUB_IRQ_DEVICE2)> -		
> 	ast_vhub_dev_irq(&vhub->ports[1].dev);> -		if (istat &
> VHUB_IRQ_DEVICE3)> -			ast_vhub_dev_irq(&vhub-
> >ports[2].dev);> -		if (istat & VHUB_IRQ_DEVICE4)> -		
> 	ast_vhub_dev_irq(&vhub->ports[3].dev);> -		if (istat &
> VHUB_IRQ_DEVICE5)> -			ast_vhub_dev_irq(&vhub-
> >ports[4].dev);> +	for (i = 0; i < vhub->max_ports; i++) {> +	
> 	u32 dev_mask = VHUB_IRQ_DEVICE1 << i;> +> +		if
> (istat & dev_mask)> +			ast_vhub_dev_irq(&vhub-
> >ports[i].dev);>  	}>  >  	/* Handle top-level vHub EP0
> interrupts */> @@ -182,7 +172,7 @@ static irqreturn_t
> ast_vhub_irq(int irq, void *data)>  >  void ast_vhub_init_hw(struct
> ast_vhub *vhub)>  {> -	u32 ctrl;> +	u32 ctrl, port_mask,
> epn_mask;>  >  	UDCDBG(vhub,"(Re)Starting HW ...\n");>  > @@
> -222,15 +212,20 @@ void ast_vhub_init_hw(struct ast_vhub *vhub)>  	
> }>  >  	/* Reset all devices */> -	writel(VHUB_SW_RESET_
> ALL, vhub->regs + AST_VHUB_SW_RESET);> +	port_mask =
> GENMASK(vhub->max_ports, 1);> +	writel(VHUB_SW_RESET_ROOT_HUB
> |> +	       VHUB_SW_RESET_DMA_CONTROLLER |> +	       VHUB_SW_RESET_
> EP_POOL |> +	       port_mask, vhub->regs + AST_VHUB_SW_RESET);>  	
> udelay(1);>  	writel(0, vhub->regs + AST_VHUB_SW_RESET);>  >  	/*
> Disable and cleanup EP ACK/NACK interrupts */> +	epn_mask =
> GENMASK(vhub->max_epns - 1, 0);>  	writel(0, vhub->regs +
> AST_VHUB_EP_ACK_IER);>  	writel(0, vhub->regs +
> AST_VHUB_EP_NACK_IER);> -	writel(VHUB_EP_IRQ_ALL, vhub->regs +
> AST_VHUB_EP_ACK_ISR);> -	writel(VHUB_EP_IRQ_ALL, vhub->regs +
> AST_VHUB_EP_NACK_ISR);> +	writel(epn_mask, vhub->regs +
> AST_VHUB_EP_ACK_ISR);> +	writel(epn_mask, vhub->regs +
> AST_VHUB_EP_NACK_ISR);>  >  	/* Default settings for EP0, enable HW
> hub EP1 */>  	writel(0, vhub->regs + AST_VHUB_EP0_CTRL);> @@ -273,7
> +268,7 @@ static int ast_vhub_remove(struct platform_device *pdev)>  	
> 	return 0;>  >  	/* Remove devices */> -	for (i = 0; i <
> AST_VHUB_NUM_PORTS; i++)> +	for (i = 0; i < vhub->max_ports; i++)>
>  		ast_vhub_del_dev(&vhub->ports[i].dev);>  >  	spin_
> lock_irqsave(&vhub->lock, flags);> @@ -295,7 +290,7 @@ static int
> ast_vhub_remove(struct platform_device *pdev)>  	if (vhub-
> >ep0_bufs)>  		dma_free_coherent(&pdev->dev,>  			
> 	  AST_VHUB_EP0_MAX_PACKET *> -				  (AS
> T_VHUB_NUM_PORTS + 1),> +				  (vhub-
> >max_ports + 1),>  				  vhub->ep0_bufs,>  	
> 			  vhub->ep0_bufs_dma);>  	vhub->ep0_bufs =
> NULL;> @@ -309,11 +304,32 @@ static int ast_vhub_probe(struct
> platform_device *pdev)>  	struct ast_vhub *vhub;>  	struct
> resource *res;>  	int i, rc = 0;> +	const struct device_node *np
> = pdev->dev.of_node;>  >  	vhub = devm_kzalloc(&pdev->dev,
> sizeof(*vhub), GFP_KERNEL);>  	if (!vhub)>  		retur
> n -ENOMEM;>  > +	rc = of_property_read_u32(np, "aspeed,vhub-
> downstream-ports",> +				  &vhub->max_ports);> +
> 	if (rc < 0)> +		vhub->max_ports =
> AST_VHUB_NUM_PORTS;> +> +	vhub->ports = devm_kcalloc(&pdev->dev,
> vhub->max_ports,> +				   sizeof(*vhub-
> >ports), GFP_KERNEL);> +	if (!vhub->ports)> +		retur
> n -ENOMEM;> +> +	rc = of_property_read_u32(np, "aspeed,vhub-
> generic-endpoints",> +				  &vhub-
> >max_epns);> +	if (rc < 0)> +		vhub->max_epns =
> AST_VHUB_NUM_GEN_EPs;> +> +	vhub->epns = devm_kcalloc(&pdev->dev,
> vhub->max_epns,> +				  sizeof(*vhub->epns),
> GFP_KERNEL);> +	if (!vhub->epns)> +		return
> -ENOMEM;> +>  	spin_lock_init(&vhub->lock);>  	vhub->pdev =
> pdev;>  > @@ -366,7 +382,7 @@ static int ast_vhub_probe(struct
> platform_device *pdev)>  	 */>  	vhub->ep0_bufs =
> dma_alloc_coherent(&pdev->dev,>  					
>     AST_VHUB_EP0_MAX_PACKET *> -					
>     (AST_VHUB_NUM_PORTS + 1),> +					
>     (vhub->max_ports + 1),>  					    &vh
> ub->ep0_bufs_dma, GFP_KERNEL);>  	if (!vhub->ep0_bufs) {>  		
> dev_err(&pdev->dev, "Failed to allocate EP0 DMA buffers\n");> @@
> -380,7 +396,7 @@ static int ast_vhub_probe(struct platform_device
> *pdev)>  	ast_vhub_init_ep0(vhub, &vhub->ep0, NULL);>  >  	/*
> Init devices */> -	for (i = 0; i < AST_VHUB_NUM_PORTS && rc == 0;
> i++)> +	for (i = 0; i < vhub->max_ports && rc == 0; i++)>  	
> 	rc = ast_vhub_init_dev(vhub, i);>  	if (rc)>  		
> goto err;> diff --git a/drivers/usb/gadget/udc/aspeed-vhub/dev.c
> b/drivers/usb/gadget/udc/aspeed-vhub/dev.c> index
> 4008e7a51188..d268306a7bfe 100644> ---
> a/drivers/usb/gadget/udc/aspeed-vhub/dev.c> +++
> b/drivers/usb/gadget/udc/aspeed-vhub/dev.c> @@ -77,7 +77,7 @@ static
> void ast_vhub_dev_enable(struct ast_vhub_dev *d)>  	writel(d-
> >ep0.buf_dma, d->regs + AST_VHUB_DEV_EP0_DATA);>  >  	/* Clear stall
> on all EPs */> -	for (i = 0; i < AST_VHUB_NUM_GEN_EPs; i++) {> +
> 	for (i = 0; i < d->max_epns; i++) {>  		struct
> ast_vhub_ep *ep = d->epns[i];>  >  		if (ep && (ep-
> >epn.stalled || ep->epn.wedged)) {> @@ -137,7 +137,7 @@ static int
> ast_vhub_ep_feature(struct ast_vhub_dev *d,>  	     is_set ?
> "SET" : "CLEAR", ep_num, wValue);>  	if (ep_num == 0)>  		
> return std_req_complete;> -	if (ep_num >= AST_VHUB_NUM_GEN_EPs ||
> !d->epns[ep_num - 1])> +	if (ep_num >= d->max_epns || !d-
> >epns[ep_num - 1])>  		return std_req_stall;>  	if (wValue !=
> USB_ENDPOINT_HALT)>  		return std_req_driver;> @@ -181,7
> +181,7 @@ static int ast_vhub_ep_status(struct ast_vhub_dev *d,>  >  	
> DDBG(d, "GET_STATUS(ep%d)\n", ep_num);>  > -	if (ep_num >=
> AST_VHUB_NUM_GEN_EPs)> +	if (ep_num >= d->max_epns)>  		
> return std_req_stall;>  	if (ep_num != 0) {>  		ep =
> d->epns[ep_num - 1];> @@ -299,7 +299,7 @@ static void
> ast_vhub_dev_nuke(struct ast_vhub_dev *d)>  {>  	unsigned int
> i;>  > -	for (i = 0; i < AST_VHUB_NUM_GEN_EPs; i++) {> +	for
> (i = 0; i < d->max_epns; i++) {>  		if (!d->epns[i])>  	
> 		continue;>  		ast_vhub_nuke(d->epns[i],
> -ESHUTDOWN);> @@ -416,10 +416,10 @@ static struct usb_ep
> *ast_vhub_udc_match_ep(struct usb_gadget *gadget,>  	 * that will
> allow the generic code to use our>  	 * assigned address.>  	 */>
> -	for (i = 0; i < AST_VHUB_NUM_GEN_EPs; i++)> +	for (i = 0; i
> < d->max_epns; i++)>  		if (d->epns[i] == NULL)>  	
> 		break;> -	if (i >= AST_VHUB_NUM_GEN_EPs)> +	if (i
> >= d->max_epns)>  		return NULL;>  	addr = i + 1;>  > @@
> -526,6 +526,7 @@ void ast_vhub_del_dev(struct ast_vhub_dev *d)>  >  	
> usb_del_gadget_udc(&d->gadget);>  	device_unregister(d-
> >port_dev);> +	kfree(d->epns);>  }>  >  static void
> ast_vhub_dev_release(struct device *dev)> @@ -546,14 +547,25 @@ int
> ast_vhub_init_dev(struct ast_vhub *vhub, unsigned int idx)>  >  	
> ast_vhub_init_ep0(vhub, &d->ep0, d);>  > +	/*> +	 * A USB
> device can have up to 30 endpoints besides control> +	 * endpoint 0.>
> +	 */> +	d->max_epns = min_t(u32, vhub->max_epns, 30);> +	
> d->epns = kcalloc(d->max_epns, sizeof(*d->epns), GFP_KERNEL);> +	
> if (!d->epns)> +		return -ENOMEM;> +>  	/*>  	 *
> The UDC core really needs us to have separate and uniquely>  	 *
> named "parent" devices for each port so we create a sub device>  	
>  * here for that purpose>  	 */>  	d->port_dev =
> kzalloc(sizeof(struct device), GFP_KERNEL);> -	if (!d-
> >port_dev)> -		return -ENOMEM;> +	if (!d->port_dev) {>
> +		rc = -ENOMEM;> +		goto fail_alloc;> +	}>  	
> device_initialize(d->port_dev);>  	d->port_dev->release =
> ast_vhub_dev_release;>  	d->port_dev->parent = parent;> @@
> -584,6 +596,8 @@ int ast_vhub_init_dev(struct ast_vhub *vhub,
> unsigned int idx)>  	device_del(d->port_dev);>   fail_add:>  	put_d
> evice(d->port_dev);> + fail_alloc:> +	kfree(d->epns);>  >  	retur
> n rc;>  }> diff --git a/drivers/usb/gadget/udc/aspeed-vhub/epn.c
> b/drivers/usb/gadget/udc/aspeed-vhub/epn.c> index
> 7475c74aa5c5..0bd6b20435b8 100644> ---
> a/drivers/usb/gadget/udc/aspeed-vhub/epn.c> +++
> b/drivers/usb/gadget/udc/aspeed-vhub/epn.c> @@ -800,10 +800,10 @@
> struct ast_vhub_ep *ast_vhub_alloc_epn(struct ast_vhub_dev *d, u8
> addr)>  >  	/* Find a free one (no device) */>  	spin_lock_irq
> save(&vhub->lock, flags);> -	for (i = 0; i < AST_VHUB_NUM_GEN_EPs;
> i++)> +	for (i = 0; i < vhub->max_epns; i++)>  		if
> (vhub->epns[i].dev == NULL)>  			break;> -	if (i
> >= AST_VHUB_NUM_GEN_EPs) {> +	if (i >= vhub->max_epns) {>  		
> spin_unlock_irqrestore(&vhub->lock, flags);>  		return
> NULL;>  	}> diff --git a/drivers/usb/gadget/udc/aspeed-
> vhub/hub.c b/drivers/usb/gadget/udc/aspeed-vhub/hub.c> index
> 9c3027306b15..6e565c3dbb5b 100644> ---
> a/drivers/usb/gadget/udc/aspeed-vhub/hub.c> +++
> b/drivers/usb/gadget/udc/aspeed-vhub/hub.c> @@ -502,7 +502,7 @@
> static void ast_vhub_wake_work(struct work_struct *work)>  	 * we
> let the normal host wake path deal with it later.>  	 */>  	spin_
> lock_irqsave(&vhub->lock, flags);> -	for (i = 0; i <
> AST_VHUB_NUM_PORTS; i++) {> +	for (i = 0; i < vhub->max_ports; i++)
> {>  		struct ast_vhub_port *p = &vhub->ports[i];>  >  		
> if (!(p->status & USB_PORT_STAT_SUSPEND))> @@ -585,7 +585,7 @@ static
> enum std_req_rc ast_vhub_set_port_feature(struct ast_vhub_ep *ep,>  	
> struct ast_vhub *vhub = ep->vhub;>  	struct ast_vhub_port *p;>  > -	
> if (port == 0 || port > AST_VHUB_NUM_PORTS)> +	if (port == 0
> || port > vhub->max_ports)>  		return std_req_stall;>  	port-
> -;>  	p = &vhub->ports[port];> @@ -628,7 +628,7 @@ static enum
> std_req_rc ast_vhub_clr_port_feature(struct ast_vhub_ep *ep,>  	
> struct ast_vhub *vhub = ep->vhub;>  	struct ast_vhub_port *p;>  > -	
> if (port == 0 || port > AST_VHUB_NUM_PORTS)> +	if (port == 0
> || port > vhub->max_ports)>  		return std_req_stall;>  	port-
> -;>  	p = &vhub->ports[port];> @@ -674,7 +674,7 @@ static enum
> std_req_rc ast_vhub_get_port_stat(struct ast_vhub_ep *ep,>  	struct
> ast_vhub *vhub = ep->vhub;>  	u16 stat, chg;>  > -	if (port == 0
> || port > AST_VHUB_NUM_PORTS)> +	if (port == 0 || port > vhub-
> >max_ports)>  		return std_req_stall;>  	port--;>  >
> @@ -755,7 +755,7 @@ void ast_vhub_hub_suspend(struct ast_vhub *vhub)>
>  	 * Forward to unsuspended ports without changing>  	 *
> their connection status.>  	 */> -	for (i = 0; i <
> AST_VHUB_NUM_PORTS; i++) {> +	for (i = 0; i < vhub->max_ports; i++)
> {>  		struct ast_vhub_port *p = &vhub->ports[i];>  >  		
> if (!(p->status & USB_PORT_STAT_SUSPEND))> @@ -778,7 +778,7 @@ void
> ast_vhub_hub_resume(struct ast_vhub *vhub)>  	 * Forward to
> unsuspended ports without changing>  	 * their connection status.>  	
>  */> -	for (i = 0; i < AST_VHUB_NUM_PORTS; i++) {> +	for
> (i = 0; i < vhub->max_ports; i++) {>  		struct
> ast_vhub_port *p = &vhub->ports[i];>  >  		if (!(p->status 
> & USB_PORT_STAT_SUSPEND))> @@ -812,7 +812,7 @@ void
> ast_vhub_hub_reset(struct ast_vhub *vhub)>  	 * Clear all port
> status, disable gadgets and "suspend">  	 * them. They will be
> woken up by a port reset.>  	 */> -	for (i = 0; i <
> AST_VHUB_NUM_PORTS; i++) {> +	for (i = 0; i < vhub->max_ports; i++)
> {>  		struct ast_vhub_port *p = &vhub->ports[i];>  >  		
> /* Only keep the connected flag */> @@ -845,6 +845,7 @@ static void
> ast_vhub_init_desc(struct ast_vhub *vhub)>  	/* Initialize vhub Hub
> Descriptor. */>  	memcpy(&vhub->vhub_hub_desc,
> &ast_vhub_hub_desc,>  		sizeof(vhub->vhub_hub_desc));>
> +	vhub->vhub_hub_desc.bNbrPorts = vhub->max_ports;>  >  	/*
> Initialize vhub String Descriptors. */>  	memcpy(&vhub-
> >vhub_str_desc, &ast_vhub_strings,> diff --git
> a/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
> b/drivers/usb/gadget/udc/aspeed-vhub/vhub.h> index
> 191f9fae7420..fac79ef6d669 100644> ---
> a/drivers/usb/gadget/udc/aspeed-vhub/vhub.h> +++
> b/drivers/usb/gadget/udc/aspeed-vhub/vhub.h> @@ -79,17 +79,9 @@>
>  #define VHUB_SW_RESET_DEVICE2			(1 << 2)>
>  #define VHUB_SW_RESET_DEVICE1			(1 << 1)>
>  #define VHUB_SW_RESET_ROOT_HUB			(1 << 0)>
> -#define VHUB_SW_RESET_ALL			(VHUB_SW_RESET_EP_POOL
> | \> -						 VHUB_SW_RESET_
> DMA_CONTROLLER | \> -						 VHUB_S
> W_RESET_DEVICE5 | \> -						
>  VHUB_SW_RESET_DEVICE4 | \> -						
>  VHUB_SW_RESET_DEVICE3 | \> -						
>  VHUB_SW_RESET_DEVICE2 | \> -						
>  VHUB_SW_RESET_DEVICE1 | \> -						
>  VHUB_SW_RESET_ROOT_HUB)> +>  /* EP ACK/NACK IRQ masks */>  #define
> VHUB_EP_IRQ(n)				(1 << (n))> -#define
> VHUB_EP_IRQ_ALL				0x7fff	/* 15 EPs */>
>  >  /* USB status reg */>  #define VHUB_USBSTS_HISPEED		
> 	(1 << 27)> @@ -213,6 +205,11 @@>  
> *                                      *>  
> ****************************************/>  > +/*> + *
> AST_VHUB_NUM_GEN_EPs and AST_VHUB_NUM_PORTS are kept to avoid
> breaking> + * existing AST2400/AST2500 platforms. AST2600 and future
> vhub revisions> + * should define number of downstream ports and
> endpoints in device tree.> + */>  #define AST_VHUB_NUM_GEN_EPs	
> 15	/* Generic non-0 EPs */>  #define AST_VHUB_NUM_PORTS	5	
> /* vHub ports */>  #define AST_VHUB_EP0_MAX_PACKET	64	/*
> EP0's max packet size */> @@ -315,7 +312,7 @@ struct ast_vhub_ep {>  	
> 		/* Registers */>  			void
> __iomem   		*regs;>  > -			/* Index in
> global pool (0..14) */> +			/* Index in global pool
> (zero-based) */>  			unsigned int		g_idx
> ;>  >  			/* DMA Descriptors */> @@ -345,7 +342,7
> @@ struct ast_vhub_dev {>  	struct ast_vhub			*vhub
> ;>  	void __iomem			*regs;>  > -	/* Device
> index (0...4) and name string */> +	/* Device index (zero-based)
> and name string */>  	unsigned int			index;>  	
> const char			*name;>  > @@ -361,7 +358,8 @@ struct
> ast_vhub_dev {>  >  	/* Endpoint structures */>  	struct
> ast_vhub_ep		ep0;> -	struct ast_vhub_ep		*epns
> [AST_VHUB_NUM_GEN_EPs];> +	struct ast_vhub_ep		**epn
> s;> +	u32				max_epns;>  >  };>  #define
> to_ast_dev(__g) container_of(__g, struct ast_vhub_dev, gadget)> @@
> -402,10 +400,12 @@ struct ast_vhub {>  	bool			
> 	ep1_stalled : 1;>  >  	/* Per-port info */> -	struct
> ast_vhub_port		ports[AST_VHUB_NUM_PORTS];> +	struct
> ast_vhub_port		*ports;> +	u32				
> max_ports;>  >  	/* Generic EP data structures */> -	struc
> t ast_vhub_ep		epns[AST_VHUB_NUM_GEN_EPs];> +	struct
> ast_vhub_ep		*epns;> +	u32				max_e
> pns;>  >  	/* Upstream bus is suspended ? */>  	bool		
> 		suspended : 1;
> -		if (istat & VHUB_IRQ_DEVICE3)
> -			ast_vhub_dev_irq(&vhub->ports[2].dev);
> -		if (istat & VHUB_IRQ_DEVICE4)
> -			ast_vhub_dev_irq(&vhub->ports[3].dev);
> -		if (istat & VHUB_IRQ_DEVICE5)
> -			ast_vhub_dev_irq(&vhub->ports[4].dev);
> +	for (i = 0; i < vhub->max_ports; i++) {
> +		u32 dev_mask = VHUB_IRQ_DEVICE1 << i;
> +
> +		if (istat & dev_mask)
> +			ast_vhub_dev_irq(&vhub->ports[i].dev);
>  	}

The 2400 and 2500 have very slow cores and every cycle counts in that
interrupt handler from my experience. I would sugggest you generate a
"mask" of all the device interrupts for enabled ports in struct vhub
and AND istat with that mask before going through the loop. Either that
or use find_next_zero_bit...

I wouldn't gate merging this patch on this, it can be a subsequent
refinement.

>  	/* Handle top-level vHub EP0 interrupts */
> @@ -182,7 +172,7 @@ static irqreturn_t ast_vhub_irq(int irq, void *data)
>  
>  void ast_vhub_init_hw(struct ast_vhub *vhub)
>  {
> -	u32 ctrl;
> +	u32 ctrl, port_mask, epn_mask;
>  
>  	UDCDBG(vhub,"(Re)Starting HW ...\n");
>  
> @@ -222,15 +212,20 @@ void ast_vhub_init_hw(struct ast_vhub *vhub)
>  	}
>  
>  	/* Reset all devices */
> -	writel(VHUB_SW_RESET_ALL, vhub->regs + AST_VHUB_SW_RESET);
> +	port_mask = GENMASK(vhub->max_ports, 1);
> +	writel(VHUB_SW_RESET_ROOT_HUB |
> +	       VHUB_SW_RESET_DMA_CONTROLLER |
> +	       VHUB_SW_RESET_EP_POOL |
> +	       port_mask, vhub->regs + AST_VHUB_SW_RESET);
>  	udelay(1);
>  	writel(0, vhub->regs + AST_VHUB_SW_RESET);
>  
>  	/* Disable and cleanup EP ACK/NACK interrupts */
> +	epn_mask = GENMASK(vhub->max_epns - 1, 0);
>  	writel(0, vhub->regs + AST_VHUB_EP_ACK_IER);
>  	writel(0, vhub->regs + AST_VHUB_EP_NACK_IER);
> -	writel(VHUB_EP_IRQ_ALL, vhub->regs + AST_VHUB_EP_ACK_ISR);
> -	writel(VHUB_EP_IRQ_ALL, vhub->regs + AST_VHUB_EP_NACK_ISR);
> +	writel(epn_mask, vhub->regs + AST_VHUB_EP_ACK_ISR);
> +	writel(epn_mask, vhub->regs + AST_VHUB_EP_NACK_ISR);
>  
>  	/* Default settings for EP0, enable HW hub EP1 */
>  	writel(0, vhub->regs + AST_VHUB_EP0_CTRL);
> @@ -273,7 +268,7 @@ static int ast_vhub_remove(struct platform_device *pdev)
>  		return 0;
>  
>  	/* Remove devices */
> -	for (i = 0; i < AST_VHUB_NUM_PORTS; i++)
> +	for (i = 0; i < vhub->max_ports; i++)
>  		ast_vhub_del_dev(&vhub->ports[i].dev);
>  
>  	spin_lock_irqsave(&vhub->lock, flags);
> @@ -295,7 +290,7 @@ static int ast_vhub_remove(struct platform_device *pdev)
>  	if (vhub->ep0_bufs)
>  		dma_free_coherent(&pdev->dev,
>  				  AST_VHUB_EP0_MAX_PACKET *
> -				  (AST_VHUB_NUM_PORTS + 1),
> +				  (vhub->max_ports + 1),
>  				  vhub->ep0_bufs,
>  				  vhub->ep0_bufs_dma);
>  	vhub->ep0_bufs = NULL;
> @@ -309,11 +304,32 @@ static int ast_vhub_probe(struct platform_device *pdev)
>  	struct ast_vhub *vhub;
>  	struct resource *res;
>  	int i, rc = 0;
> +	const struct device_node *np = pdev->dev.of_node;
>  
>  	vhub = devm_kzalloc(&pdev->dev, sizeof(*vhub), GFP_KERNEL);
>  	if (!vhub)
>  		return -ENOMEM;
>  
> +	rc = of_property_read_u32(np, "aspeed,vhub-downstream-ports",
> +				  &vhub->max_ports);
> +	if (rc < 0)
> +		vhub->max_ports = AST_VHUB_NUM_PORTS;
> +
> +	vhub->ports = devm_kcalloc(&pdev->dev, vhub->max_ports,
> +				   sizeof(*vhub->ports), GFP_KERNEL);
> +	if (!vhub->ports)
> +		return -ENOMEM;
> +
> +	rc = of_property_read_u32(np, "aspeed,vhub-generic-endpoints",
> +				  &vhub->max_epns);
> +	if (rc < 0)
> +		vhub->max_epns = AST_VHUB_NUM_GEN_EPs;
> +
> +	vhub->epns = devm_kcalloc(&pdev->dev, vhub->max_epns,
> +				  sizeof(*vhub->epns), GFP_KERNEL);
> +	if (!vhub->epns)
> +		return -ENOMEM;
> +
>  	spin_lock_init(&vhub->lock);
>  	vhub->pdev = pdev;
>  
> @@ -366,7 +382,7 @@ static int ast_vhub_probe(struct platform_device *pdev)
>  	 */
>  	vhub->ep0_bufs = dma_alloc_coherent(&pdev->dev,
>  					    AST_VHUB_EP0_MAX_PACKET *
> -					    (AST_VHUB_NUM_PORTS + 1),
> +					    (vhub->max_ports + 1),
>  					    &vhub->ep0_bufs_dma, GFP_KERNEL);
>  	if (!vhub->ep0_bufs) {
>  		dev_err(&pdev->dev, "Failed to allocate EP0 DMA buffers\n");
> @@ -380,7 +396,7 @@ static int ast_vhub_probe(struct platform_device *pdev)
>  	ast_vhub_init_ep0(vhub, &vhub->ep0, NULL);
>  
>  	/* Init devices */
> -	for (i = 0; i < AST_VHUB_NUM_PORTS && rc == 0; i++)
> +	for (i = 0; i < vhub->max_ports && rc == 0; i++)
>  		rc = ast_vhub_init_dev(vhub, i);
>  	if (rc)
>  		goto err;
> diff --git a/drivers/usb/gadget/udc/aspeed-vhub/dev.c b/drivers/usb/gadget/udc/aspeed-vhub/dev.c
> index 4008e7a51188..d268306a7bfe 100644
> --- a/drivers/usb/gadget/udc/aspeed-vhub/dev.c
> +++ b/drivers/usb/gadget/udc/aspeed-vhub/dev.c
> @@ -77,7 +77,7 @@ static void ast_vhub_dev_enable(struct ast_vhub_dev *d)
>  	writel(d->ep0.buf_dma, d->regs + AST_VHUB_DEV_EP0_DATA);
>  
>  	/* Clear stall on all EPs */
> -	for (i = 0; i < AST_VHUB_NUM_GEN_EPs; i++) {
> +	for (i = 0; i < d->max_epns; i++) {
>  		struct ast_vhub_ep *ep = d->epns[i];
>  
>  		if (ep && (ep->epn.stalled || ep->epn.wedged)) {
> @@ -137,7 +137,7 @@ static int ast_vhub_ep_feature(struct ast_vhub_dev *d,
>  	     is_set ? "SET" : "CLEAR", ep_num, wValue);
>  	if (ep_num == 0)
>  		return std_req_complete;
> -	if (ep_num >= AST_VHUB_NUM_GEN_EPs || !d->epns[ep_num - 1])
> +	if (ep_num >= d->max_epns || !d->epns[ep_num - 1])
>  		return std_req_stall;
>  	if (wValue != USB_ENDPOINT_HALT)
>  		return std_req_driver;
> @@ -181,7 +181,7 @@ static int ast_vhub_ep_status(struct ast_vhub_dev *d,
>  
>  	DDBG(d, "GET_STATUS(ep%d)\n", ep_num);
>  
> -	if (ep_num >= AST_VHUB_NUM_GEN_EPs)
> +	if (ep_num >= d->max_epns)
>  		return std_req_stall;
>  	if (ep_num != 0) {
>  		ep = d->epns[ep_num - 1];
> @@ -299,7 +299,7 @@ static void ast_vhub_dev_nuke(struct ast_vhub_dev *d)
>  {
>  	unsigned int i;
>  
> -	for (i = 0; i < AST_VHUB_NUM_GEN_EPs; i++) {
> +	for (i = 0; i < d->max_epns; i++) {
>  		if (!d->epns[i])
>  			continue;
>  		ast_vhub_nuke(d->epns[i], -ESHUTDOWN);
> @@ -416,10 +416,10 @@ static struct usb_ep *ast_vhub_udc_match_ep(struct usb_gadget *gadget,
>  	 * that will allow the generic code to use our
>  	 * assigned address.
>  	 */
> -	for (i = 0; i < AST_VHUB_NUM_GEN_EPs; i++)
> +	for (i = 0; i < d->max_epns; i++)
>  		if (d->epns[i] == NULL)
>  			break;
> -	if (i >= AST_VHUB_NUM_GEN_EPs)
> +	if (i >= d->max_epns)
>  		return NULL;
>  	addr = i + 1;
>  
> @@ -526,6 +526,7 @@ void ast_vhub_del_dev(struct ast_vhub_dev *d)
>  
>  	usb_del_gadget_udc(&d->gadget);
>  	device_unregister(d->port_dev);
> +	kfree(d->epns);
>  }
>  
>  static void ast_vhub_dev_release(struct device *dev)
> @@ -546,14 +547,25 @@ int ast_vhub_init_dev(struct ast_vhub *vhub, unsigned int idx)
>  
>  	ast_vhub_init_ep0(vhub, &d->ep0, d);
>  
> +	/*
> +	 * A USB device can have up to 30 endpoints besides control
> +	 * endpoint 0.
> +	 */
> +	d->max_epns = min_t(u32, vhub->max_epns, 30);
> +	d->epns = kcalloc(d->max_epns, sizeof(*d->epns), GFP_KERNEL);
> +	if (!d->epns)
> +		return -ENOMEM;
> +
>  	/*
>  	 * The UDC core really needs us to have separate and uniquely
>  	 * named "parent" devices for each port so we create a sub device
>  	 * here for that purpose
>  	 */
>  	d->port_dev = kzalloc(sizeof(struct device), GFP_KERNEL);
> -	if (!d->port_dev)
> -		return -ENOMEM;
> +	if (!d->port_dev) {
> +		rc = -ENOMEM;
> +		goto fail_alloc;
> +	}
>  	device_initialize(d->port_dev);
>  	d->port_dev->release = ast_vhub_dev_release;
>  	d->port_dev->parent = parent;
> @@ -584,6 +596,8 @@ int ast_vhub_init_dev(struct ast_vhub *vhub, unsigned int idx)
>  	device_del(d->port_dev);
>   fail_add:
>  	put_device(d->port_dev);
> + fail_alloc:
> +	kfree(d->epns);
>  
>  	return rc;
>  }
> diff --git a/drivers/usb/gadget/udc/aspeed-vhub/epn.c b/drivers/usb/gadget/udc/aspeed-vhub/epn.c
> index 7475c74aa5c5..0bd6b20435b8 100644
> --- a/drivers/usb/gadget/udc/aspeed-vhub/epn.c
> +++ b/drivers/usb/gadget/udc/aspeed-vhub/epn.c
> @@ -800,10 +800,10 @@ struct ast_vhub_ep *ast_vhub_alloc_epn(struct ast_vhub_dev *d, u8 addr)
>  
>  	/* Find a free one (no device) */
>  	spin_lock_irqsave(&vhub->lock, flags);
> -	for (i = 0; i < AST_VHUB_NUM_GEN_EPs; i++)
> +	for (i = 0; i < vhub->max_epns; i++)
>  		if (vhub->epns[i].dev == NULL)
>  			break;
> -	if (i >= AST_VHUB_NUM_GEN_EPs) {
> +	if (i >= vhub->max_epns) {
>  		spin_unlock_irqrestore(&vhub->lock, flags);
>  		return NULL;
>  	}
> diff --git a/drivers/usb/gadget/udc/aspeed-vhub/hub.c b/drivers/usb/gadget/udc/aspeed-vhub/hub.c
> index 9c3027306b15..6e565c3dbb5b 100644
> --- a/drivers/usb/gadget/udc/aspeed-vhub/hub.c
> +++ b/drivers/usb/gadget/udc/aspeed-vhub/hub.c
> @@ -502,7 +502,7 @@ static void ast_vhub_wake_work(struct work_struct *work)
>  	 * we let the normal host wake path deal with it later.
>  	 */
>  	spin_lock_irqsave(&vhub->lock, flags);
> -	for (i = 0; i < AST_VHUB_NUM_PORTS; i++) {
> +	for (i = 0; i < vhub->max_ports; i++) {
>  		struct ast_vhub_port *p = &vhub->ports[i];
>  
>  		if (!(p->status & USB_PORT_STAT_SUSPEND))
> @@ -585,7 +585,7 @@ static enum std_req_rc ast_vhub_set_port_feature(struct ast_vhub_ep *ep,
>  	struct ast_vhub *vhub = ep->vhub;
>  	struct ast_vhub_port *p;
>  
> -	if (port == 0 || port > AST_VHUB_NUM_PORTS)
> +	if (port == 0 || port > vhub->max_ports)
>  		return std_req_stall;
>  	port--;
>  	p = &vhub->ports[port];
> @@ -628,7 +628,7 @@ static enum std_req_rc ast_vhub_clr_port_feature(struct ast_vhub_ep *ep,
>  	struct ast_vhub *vhub = ep->vhub;
>  	struct ast_vhub_port *p;
>  
> -	if (port == 0 || port > AST_VHUB_NUM_PORTS)
> +	if (port == 0 || port > vhub->max_ports)
>  		return std_req_stall;
>  	port--;
>  	p = &vhub->ports[port];
> @@ -674,7 +674,7 @@ static enum std_req_rc ast_vhub_get_port_stat(struct ast_vhub_ep *ep,
>  	struct ast_vhub *vhub = ep->vhub;
>  	u16 stat, chg;
>  
> -	if (port == 0 || port > AST_VHUB_NUM_PORTS)
> +	if (port == 0 || port > vhub->max_ports)
>  		return std_req_stall;
>  	port--;
>  
> @@ -755,7 +755,7 @@ void ast_vhub_hub_suspend(struct ast_vhub *vhub)
>  	 * Forward to unsuspended ports without changing
>  	 * their connection status.
>  	 */
> -	for (i = 0; i < AST_VHUB_NUM_PORTS; i++) {
> +	for (i = 0; i < vhub->max_ports; i++) {
>  		struct ast_vhub_port *p = &vhub->ports[i];
>  
>  		if (!(p->status & USB_PORT_STAT_SUSPEND))
> @@ -778,7 +778,7 @@ void ast_vhub_hub_resume(struct ast_vhub *vhub)
>  	 * Forward to unsuspended ports without changing
>  	 * their connection status.
>  	 */
> -	for (i = 0; i < AST_VHUB_NUM_PORTS; i++) {
> +	for (i = 0; i < vhub->max_ports; i++) {
>  		struct ast_vhub_port *p = &vhub->ports[i];
>  
>  		if (!(p->status & USB_PORT_STAT_SUSPEND))
> @@ -812,7 +812,7 @@ void ast_vhub_hub_reset(struct ast_vhub *vhub)
>  	 * Clear all port status, disable gadgets and "suspend"
>  	 * them. They will be woken up by a port reset.
>  	 */
> -	for (i = 0; i < AST_VHUB_NUM_PORTS; i++) {
> +	for (i = 0; i < vhub->max_ports; i++) {
>  		struct ast_vhub_port *p = &vhub->ports[i];
>  
>  		/* Only keep the connected flag */
> @@ -845,6 +845,7 @@ static void ast_vhub_init_desc(struct ast_vhub *vhub)
>  	/* Initialize vhub Hub Descriptor. */
>  	memcpy(&vhub->vhub_hub_desc, &ast_vhub_hub_desc,
>  		sizeof(vhub->vhub_hub_desc));
> +	vhub->vhub_hub_desc.bNbrPorts = vhub->max_ports;
>  
>  	/* Initialize vhub String Descriptors. */
>  	memcpy(&vhub->vhub_str_desc, &ast_vhub_strings,
> diff --git a/drivers/usb/gadget/udc/aspeed-vhub/vhub.h b/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
> index 191f9fae7420..fac79ef6d669 100644
> --- a/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
> +++ b/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
> @@ -79,17 +79,9 @@
>  #define VHUB_SW_RESET_DEVICE2			(1 << 2)
>  #define VHUB_SW_RESET_DEVICE1			(1 << 1)
>  #define VHUB_SW_RESET_ROOT_HUB			(1 << 0)
> -#define VHUB_SW_RESET_ALL			(VHUB_SW_RESET_EP_POOL | \
> -						 VHUB_SW_RESET_DMA_CONTROLLER | \
> -						 VHUB_SW_RESET_DEVICE5 | \
> -						 VHUB_SW_RESET_DEVICE4 | \
> -						 VHUB_SW_RESET_DEVICE3 | \
> -						 VHUB_SW_RESET_DEVICE2 | \
> -						 VHUB_SW_RESET_DEVICE1 | \
> -						 VHUB_SW_RESET_ROOT_HUB)
> +
>  /* EP ACK/NACK IRQ masks */
>  #define VHUB_EP_IRQ(n)				(1 << (n))
> -#define VHUB_EP_IRQ_ALL				0x7fff	/* 15 EPs */
>  
>  /* USB status reg */
>  #define VHUB_USBSTS_HISPEED			(1 << 27)
> @@ -213,6 +205,11 @@
>   *                                      *
>   ****************************************/
>  
> +/*
> + * AST_VHUB_NUM_GEN_EPs and AST_VHUB_NUM_PORTS are kept to avoid breaking
> + * existing AST2400/AST2500 platforms. AST2600 and future vhub revisions
> + * should define number of downstream ports and endpoints in device tree.
> + */
>  #define AST_VHUB_NUM_GEN_EPs	15	/* Generic non-0 EPs */
>  #define AST_VHUB_NUM_PORTS	5	/* vHub ports */
>  #define AST_VHUB_EP0_MAX_PACKET	64	/* EP0's max packet size */
> @@ -315,7 +312,7 @@ struct ast_vhub_ep {
>  			/* Registers */
>  			void __iomem   		*regs;
>  
> -			/* Index in global pool (0..14) */
> +			/* Index in global pool (zero-based) */
>  			unsigned int		g_idx;
>  
>  			/* DMA Descriptors */
> @@ -345,7 +342,7 @@ struct ast_vhub_dev {
>  	struct ast_vhub			*vhub;
>  	void __iomem			*regs;
>  
> -	/* Device index (0...4) and name string */
> +	/* Device index (zero-based) and name string */
>  	unsigned int			index;
>  	const char			*name;
>  
> @@ -361,7 +358,8 @@ struct ast_vhub_dev {
>  
>  	/* Endpoint structures */
>  	struct ast_vhub_ep		ep0;
> -	struct ast_vhub_ep		*epns[AST_VHUB_NUM_GEN_EPs];
> +	struct ast_vhub_ep		**epns;
> +	u32				max_epns;
>  
>  };
>  #define to_ast_dev(__g) container_of(__g, struct ast_vhub_dev, gadget)
> @@ -402,10 +400,12 @@ struct ast_vhub {
>  	bool				ep1_stalled : 1;
>  
>  	/* Per-port info */
> -	struct ast_vhub_port		ports[AST_VHUB_NUM_PORTS];
> +	struct ast_vhub_port		*ports;
> +	u32				max_ports;
>  
>  	/* Generic EP data structures */
> -	struct ast_vhub_ep		epns[AST_VHUB_NUM_GEN_EPs];
> +	struct ast_vhub_ep		*epns;
> +	u32				max_epns;
>  
>  	/* Upstream bus is suspended ? */
>  	bool				suspended : 1;


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
