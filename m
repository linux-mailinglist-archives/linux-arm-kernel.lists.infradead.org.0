Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D31B161F79
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 04:19:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3mfYAIg+mXyx+2EmBzQGbrN/AifOL6QsggusHXZRfPs=; b=DSQNpv5Cvr849i
	cgtXjj6SrIQLYTZrf+czHPcENjqks4KGj/diaHQzXWL4rn1NY6bKTgGsbT1g9xqOM/PtWKAl0bzoJ
	ITsb8i3c2IKqT8DhgBFgURjYUbV20mfU6pyqAKxV8npZlelXWKRoFldSA4zuhuv9c38L1fIFOYk8u
	s12h7rrw5LlgZ52m3g7iVCvjmjimWQ+JrJ0ujePhvyJc1j8Xvx5GbeIOXtQO0HG3jrrmGBRDIm5Bc
	hdxTY7MWG4D4NtIWYCHJJ+2qkTlA/6E+qobCUyK/COTPoyu9mq+t/gzzGctBVuLodptNH+xzGC2t7
	O+TIaCYUm9UPlfhDSERg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3tPr-0000Pz-Q6; Tue, 18 Feb 2020 03:19:19 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3tPe-0000PO-9X
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 03:19:07 +0000
Received: by mail-pg1-x543.google.com with SMTP id d6so10222953pgn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 19:19:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=etQ+t/7VG4IZoH3WXAn4ZMXCgYAT/i/aklOkEa+e7rs=;
 b=fw+FONLXM7Xl96QAWK97Mk1ruN0YvCFZJDkljxglKntbqp01GReRVrGXQFsBYIyqa7
 +4D8QRUHpB4v4Jg9ZGhpAahj9g48CEbJwS13jX4tror7c4U/GKwnRObS1o5GR0Vlya41
 ooElUrb4yyVeFtqFIGiQ+f20JseSFdYSVwUVPhOiGQHlJjBatXm22cnS3NR4gdbAt/1T
 WzXBeUYkeWqj0x9oCD+C1RVUqPkDsc1ZKRaAbpC0WgFOIllZLVCfsdXm4MPjww0DTc+0
 FLoKyRazbRj7OHzC83kE3uvpoqGeuOGMfS+GgisCPB9tAXjPn9Nn81n0cbGN+T5oJYIr
 hCFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=etQ+t/7VG4IZoH3WXAn4ZMXCgYAT/i/aklOkEa+e7rs=;
 b=BeXkjkGuI0ykScx4ikXvvTEl4iGMv7tUa+u1yXaLWGsc/GhemrG0UrywQLOpcCaTJ7
 J+xSGxxwP0wqg7sDnKTnrWWIBV1f9wObsFwKHdtR/dRvOZLylfkDC4plyDRGUYDd+0pt
 R3KmMzmPmO6sf8loUdgzq81qn1w45yAyDPIv3QEh92/cvmHNNh0XplG1/XUy/XacuY1y
 41i7yoZUUshJVOnjutq/n+xvhofw8jTraI/IXFGTD70gHVUA4YIFzRiMbAVaXvzEtfSF
 SNp59NSIQMJFwk12bNOmxCAMQxsiU7qPuhw6aUc20h/3CirLH99iAJpeyYWjIGteZCWB
 Fw5A==
X-Gm-Message-State: APjAAAXGsbmxLiPZJeUP6jaYUSwgC/pT1rnqebjVcFeDwZsODgJcXfTW
 ey4Hi0wYgiGGETf1DkAn8nM=
X-Google-Smtp-Source: APXvYqziWd7nu/eWKo4sMrajO2Ujd/Gv+FWdUHMPQTkjk0MK4zdVhdbwPDw+tuAl2tUWwU4wpe1sDw==
X-Received: by 2002:a62:4e42:: with SMTP id c63mr19378401pfb.86.1581995944131; 
 Mon, 17 Feb 2020 19:19:04 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91 ([2620:10d:c090:180::ddbe])
 by smtp.gmail.com with ESMTPSA id c19sm1819713pfc.144.2020.02.17.19.19.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 17 Feb 2020 19:19:03 -0800 (PST)
Date: Mon, 17 Feb 2020 19:18:56 -0800
From: Tao Ren <rentao.bupt@gmail.com>
To: Andrew Jeffery <andrew@aj.id.au>
Subject: Re: [PATCH v2 1/5] usb: gadget: aspeed: read vhub properties from
 device tree
Message-ID: <20200218031855.GA646@taoren-ubuntu-R90MNF91>
References: <20200212215717.9474-1-rentao.bupt@gmail.com>
 <20200212215717.9474-2-rentao.bupt@gmail.com>
 <88f74fcd-537d-497d-bb39-346e56da34e2@www.fastmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <88f74fcd-537d-497d-bb39-346e56da34e2@www.fastmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_191906_361008_16EC0355 
X-CRM114-Status: GOOD (  27.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Felipe Balbi <balbi@kernel.org>,
 linux-aspeed@lists.ozlabs.org, devicetree@vger.kernel.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, openbmc@lists.ozlabs.org,
 linux-usb@vger.kernel.org, Tao Ren <taoren@fb.com>,
 linux-kernel@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin King <colin.king@canonical.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

On Mon, Feb 17, 2020 at 10:18:11AM +1030, Andrew Jeffery wrote:
> 
> 
> On Thu, 13 Feb 2020, at 08:27, rentao.bupt@gmail.com wrote:
> > From: Tao Ren <rentao.bupt@gmail.com>
> > 
> > The patch introduces 2 DT properties ("aspeed,vhub-downstream-ports" and
> > "aspeed,vhub-generic-endpoints") which replaces hardcoded port/endpoint
> > number. It is to make it more convenient to add support for newer vhub
> > revisions with different number of ports and endpoints.
> > 
> > Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
> > Reviewed-by: Joel Stanley <joel@jms.id.au>
> > ---
> >  Changes in v2:
> >    - removed ast_vhub_config structure and moved vhub port/endpoint
> >      number into device tree.
> > 
> >  drivers/usb/gadget/udc/aspeed-vhub/core.c | 68 ++++++++++++++---------
> >  drivers/usb/gadget/udc/aspeed-vhub/dev.c  | 30 +++++++---
> >  drivers/usb/gadget/udc/aspeed-vhub/epn.c  |  4 +-
> >  drivers/usb/gadget/udc/aspeed-vhub/hub.c  | 26 ++++++---
> >  drivers/usb/gadget/udc/aspeed-vhub/vhub.h | 23 +++-----
> >  5 files changed, 91 insertions(+), 60 deletions(-)
> > 
> > diff --git a/drivers/usb/gadget/udc/aspeed-vhub/core.c 
> > b/drivers/usb/gadget/udc/aspeed-vhub/core.c
> > index 90b134d5dca9..d6f737fac4e2 100644
> > --- a/drivers/usb/gadget/udc/aspeed-vhub/core.c
> > +++ b/drivers/usb/gadget/udc/aspeed-vhub/core.c
> > @@ -99,7 +99,7 @@ static irqreturn_t ast_vhub_irq(int irq, void *data)
> >  {
> >  	struct ast_vhub *vhub = data;
> >  	irqreturn_t iret = IRQ_NONE;
> > -	u32 istat;
> > +	u32 i, istat;
> >  
> >  	/* Stale interrupt while tearing down */
> >  	if (!vhub->ep0_bufs)
> > @@ -121,10 +121,10 @@ static irqreturn_t ast_vhub_irq(int irq, void *data)
> >  
> >  	/* Handle generic EPs first */
> >  	if (istat & VHUB_IRQ_EP_POOL_ACK_STALL) {
> > -		u32 i, ep_acks = readl(vhub->regs + AST_VHUB_EP_ACK_ISR);
> > +		u32 ep_acks = readl(vhub->regs + AST_VHUB_EP_ACK_ISR);
> >  		writel(ep_acks, vhub->regs + AST_VHUB_EP_ACK_ISR);
> >  
> > -		for (i = 0; ep_acks && i < AST_VHUB_NUM_GEN_EPs; i++) {
> > +		for (i = 0; ep_acks && i < vhub->max_epns; i++) {
> >  			u32 mask = VHUB_EP_IRQ(i);
> >  			if (ep_acks & mask) {
> >  				ast_vhub_epn_ack_irq(&vhub->epns[i]);
> > @@ -134,21 +134,11 @@ static irqreturn_t ast_vhub_irq(int irq, void *data)
> >  	}
> >  
> >  	/* Handle device interrupts */
> > -	if (istat & (VHUB_IRQ_DEVICE1 |
> > -		     VHUB_IRQ_DEVICE2 |
> > -		     VHUB_IRQ_DEVICE3 |
> > -		     VHUB_IRQ_DEVICE4 |
> > -		     VHUB_IRQ_DEVICE5)) {
> > -		if (istat & VHUB_IRQ_DEVICE1)
> > -			ast_vhub_dev_irq(&vhub->ports[0].dev);
> > -		if (istat & VHUB_IRQ_DEVICE2)
> > -			ast_vhub_dev_irq(&vhub->ports[1].dev);
> > -		if (istat & VHUB_IRQ_DEVICE3)
> > -			ast_vhub_dev_irq(&vhub->ports[2].dev);
> > -		if (istat & VHUB_IRQ_DEVICE4)
> > -			ast_vhub_dev_irq(&vhub->ports[3].dev);
> > -		if (istat & VHUB_IRQ_DEVICE5)
> > -			ast_vhub_dev_irq(&vhub->ports[4].dev);
> > +	for (i = 0; i < vhub->max_ports; i++) {
> > +		u32 dev_mask = VHUB_IRQ_DEVICE1 << i;
> > +
> > +		if (istat & dev_mask)
> > +			ast_vhub_dev_irq(&vhub->ports[i].dev);
> >  	}
> >  
> >  	/* Handle top-level vHub EP0 interrupts */
> > @@ -182,7 +172,7 @@ static irqreturn_t ast_vhub_irq(int irq, void *data)
> >  
> >  void ast_vhub_init_hw(struct ast_vhub *vhub)
> >  {
> > -	u32 ctrl;
> > +	u32 ctrl, port_mask, epn_mask;
> >  
> >  	UDCDBG(vhub,"(Re)Starting HW ...\n");
> >  
> > @@ -222,15 +212,20 @@ void ast_vhub_init_hw(struct ast_vhub *vhub)
> >  	}
> >  
> >  	/* Reset all devices */
> > -	writel(VHUB_SW_RESET_ALL, vhub->regs + AST_VHUB_SW_RESET);
> > +	port_mask = GENMASK(vhub->max_ports, 1);
> > +	writel(VHUB_SW_RESET_ROOT_HUB |
> > +	       VHUB_SW_RESET_DMA_CONTROLLER |
> > +	       VHUB_SW_RESET_EP_POOL |
> > +	       port_mask, vhub->regs + AST_VHUB_SW_RESET);
> >  	udelay(1);
> >  	writel(0, vhub->regs + AST_VHUB_SW_RESET);
> >  
> >  	/* Disable and cleanup EP ACK/NACK interrupts */
> > +	epn_mask = GENMASK(vhub->max_epns - 1, 0);
> >  	writel(0, vhub->regs + AST_VHUB_EP_ACK_IER);
> >  	writel(0, vhub->regs + AST_VHUB_EP_NACK_IER);
> > -	writel(VHUB_EP_IRQ_ALL, vhub->regs + AST_VHUB_EP_ACK_ISR);
> > -	writel(VHUB_EP_IRQ_ALL, vhub->regs + AST_VHUB_EP_NACK_ISR);
> > +	writel(epn_mask, vhub->regs + AST_VHUB_EP_ACK_ISR);
> > +	writel(epn_mask, vhub->regs + AST_VHUB_EP_NACK_ISR);
> >  
> >  	/* Default settings for EP0, enable HW hub EP1 */
> >  	writel(0, vhub->regs + AST_VHUB_EP0_CTRL);
> > @@ -273,7 +268,7 @@ static int ast_vhub_remove(struct platform_device *pdev)
> >  		return 0;
> >  
> >  	/* Remove devices */
> > -	for (i = 0; i < AST_VHUB_NUM_PORTS; i++)
> > +	for (i = 0; i < vhub->max_ports; i++)
> >  		ast_vhub_del_dev(&vhub->ports[i].dev);
> >  
> >  	spin_lock_irqsave(&vhub->lock, flags);
> > @@ -295,7 +290,7 @@ static int ast_vhub_remove(struct platform_device *pdev)
> >  	if (vhub->ep0_bufs)
> >  		dma_free_coherent(&pdev->dev,
> >  				  AST_VHUB_EP0_MAX_PACKET *
> > -				  (AST_VHUB_NUM_PORTS + 1),
> > +				  (vhub->max_ports + 1),
> >  				  vhub->ep0_bufs,
> >  				  vhub->ep0_bufs_dma);
> >  	vhub->ep0_bufs = NULL;
> > @@ -309,11 +304,32 @@ static int ast_vhub_probe(struct platform_device *pdev)
> >  	struct ast_vhub *vhub;
> >  	struct resource *res;
> >  	int i, rc = 0;
> > +	const struct device_node *np = pdev->dev.of_node;
> >  
> >  	vhub = devm_kzalloc(&pdev->dev, sizeof(*vhub), GFP_KERNEL);
> >  	if (!vhub)
> >  		return -ENOMEM;
> >  
> > +	rc = of_property_read_u32(np, "aspeed,vhub-downstream-ports",
> > +				  &vhub->max_ports);
> > +	if (rc < 0)
> > +		return -ENODEV;
> 
> This breaks the driver for old devicetrees, or at the very least,
> devicetrees without your subsequent two patches in the series.
> 
> I feel we shouldn't drop the built-in values for the 2400 and 2500, that
> way we can fall back to them if the devicetree properties aren't present.
> 
> For the 2600 we can have a clean break and require the properties be
> present (i.e. not hardcode the values in the driver for fallback) as there
> aren't yet any devicetrees describing the device.
> 
> Andrew

I understand it. I was also hesitating whether we should make the DT
properties mandatory.. I've sent out patch v3 which falls back to
"default" number of ports and endpoints in case the DT properties are
not present.


Cheers,

Tao

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
