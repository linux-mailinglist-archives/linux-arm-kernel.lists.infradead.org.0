Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C569819BF9B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 12:46:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qrr4m3+7aH4dB0eulA/ZgEbCQyjf/+j2KzQk65s1T/A=; b=JcTMYATddPGpGN
	JpvM4pg/bcWKtmI64em+hynxUS3dgXu9jclXjmpmP5Ft/PDIOmM/ku7zJ26kMzspdCFinQxMPCpyw
	2BvWbrwy16gSi5SZ/uRlFMiurM45zf6rvCpiFE8wJXCfwLU7W1zU8d2MuD1mielU+N+8vv3PFZ9qm
	2Ha+qGln40TirClUh2zpj2X5phjIXq1UC4jz1RUO1z/gUW4qA7ugyIZ4JcCNm/XVuaOczWHrBH3zx
	zbavOQN5Exdv3D9jQHndAipCCGZ0ezVr/olTR9n9uH0VzESXuOauBrlnk4byaGfe1Gf3lKbRja4rl
	pS6YPH55u0wtDDf2SpXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJxMR-0000V2-SV; Thu, 02 Apr 2020 10:46:11 +0000
Received: from kernel.crashing.org ([76.164.61.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJxMK-0000UJ-Mc
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 10:46:06 +0000
Received: from localhost (gate.crashing.org [63.228.1.57])
 (authenticated bits=0)
 by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id 032AjeXr028624
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Thu, 2 Apr 2020 05:45:44 -0500
Message-ID: <512d625e45ea953d722bb7ea73c3619730312284.camel@kernel.crashing.org>
Subject: Re: [PATCH v3] usb: gadget: aspeed: improve vhub port irq handling
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Tao Ren <rentao.bupt@gmail.com>, Felipe Balbi <balbi@kernel.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Stephen Boyd <swboyd@chromium.org>, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, openbmc@lists.ozlabs.org, taoren@fb.com
Date: Thu, 02 Apr 2020 21:45:38 +1100
In-Reply-To: <20200401215826.GA8248@taoren-ubuntu-R90MNF91>
References: <20200315191430.12379-1-rentao.bupt@gmail.com>
 <20200401215826.GA8248@taoren-ubuntu-R90MNF91>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_034604_932092_535C5AC4 
X-CRM114-Status: GOOD (  19.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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

On Wed, 2020-04-01 at 14:58 -0700, Tao Ren wrote:
> Hi Ben,
> 
> Any further comments on the patch?

Ah sorry, nope. Did you check the generated assembly to see if it
looked any better ? :-)

Otherwise,

Acked-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>

> 
> Cheers,
> 
> Tao
> 
> On Sun, Mar 15, 2020 at 12:14:30PM -0700, rentao.bupt@gmail.com
> wrote:
> > From: Tao Ren <rentao.bupt@gmail.com>
> > 
> > This patch evaluates vhub ports' irq mask before going through per-
> > port
> > irq handling one by one, which helps to speed up irq handling in
> > case
> > there is no port interrupt.
> > 
> > Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
> > ---
> >  Changes in v3:
> >    - assign istat to (unsigned long) bitmap before calling
> >      "for_each_set_bit_from".
> >  Changes in v2:
> >    - use "for_each_set_bit" to speed up port irq handling.
> > 
> >  drivers/usb/gadget/udc/aspeed-vhub/core.c | 12 +++++++++---
> >  drivers/usb/gadget/udc/aspeed-vhub/vhub.h |  8 +++-----
> >  2 files changed, 12 insertions(+), 8 deletions(-)
> > 
> > diff --git a/drivers/usb/gadget/udc/aspeed-vhub/core.c
> > b/drivers/usb/gadget/udc/aspeed-vhub/core.c
> > index f8d35dd60c34..555e8645fb1e 100644
> > --- a/drivers/usb/gadget/udc/aspeed-vhub/core.c
> > +++ b/drivers/usb/gadget/udc/aspeed-vhub/core.c
> > @@ -134,11 +134,15 @@ static irqreturn_t ast_vhub_irq(int irq, void
> > *data)
> >  	}
> >  
> >  	/* Handle device interrupts */
> > -	for (i = 0; i < vhub->max_ports; i++) {
> > -		u32 dev_mask = VHUB_IRQ_DEVICE1 << i;
> > +	if (istat & vhub->port_irq_mask) {
> > +		unsigned long bitmap = istat;
> > +		int offset = VHUB_IRQ_DEV1_BIT;
> > +		int size = VHUB_IRQ_DEV1_BIT + vhub->max_ports;
> >  
> > -		if (istat & dev_mask)
> > +		for_each_set_bit_from(offset, &bitmap, size) {
> > +			i = offset - VHUB_IRQ_DEV1_BIT;
> >  			ast_vhub_dev_irq(&vhub->ports[i].dev);
> > +		}
> >  	}
> >  
> >  	/* Handle top-level vHub EP0 interrupts */
> > @@ -332,6 +336,8 @@ static int ast_vhub_probe(struct
> > platform_device *pdev)
> >  
> >  	spin_lock_init(&vhub->lock);
> >  	vhub->pdev = pdev;
> > +	vhub->port_irq_mask = GENMASK(VHUB_IRQ_DEV1_BIT + vhub-
> > >max_ports - 1,
> > +				      VHUB_IRQ_DEV1_BIT);
> >  
> >  	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> >  	vhub->regs = devm_ioremap_resource(&pdev->dev, res);
> > diff --git a/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
> > b/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
> > index fac79ef6d669..23a1ac91f8d2 100644
> > --- a/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
> > +++ b/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
> > @@ -51,14 +51,11 @@
> >  #define VHUB_CTRL_UPSTREAM_CONNECT		(1 << 0)
> >  
> >  /* IER & ISR */
> > +#define VHUB_IRQ_DEV1_BIT			9
> >  #define VHUB_IRQ_USB_CMD_DEADLOCK		(1 << 18)
> >  #define VHUB_IRQ_EP_POOL_NAK			(1 << 17)
> >  #define VHUB_IRQ_EP_POOL_ACK_STALL		(1 << 16)
> > -#define VHUB_IRQ_DEVICE5			(1 << 13)
> > -#define VHUB_IRQ_DEVICE4			(1 << 12)
> > -#define VHUB_IRQ_DEVICE3			(1 << 11)
> > -#define VHUB_IRQ_DEVICE2			(1 << 10)
> > -#define VHUB_IRQ_DEVICE1			(1 << 9)
> > +#define VHUB_IRQ_DEVICE1			(1 <<
> > (VHUB_IRQ_DEV1_BIT))
> >  #define VHUB_IRQ_BUS_RESUME			(1 << 8)
> >  #define VHUB_IRQ_BUS_SUSPEND 			(1 << 7)
> >  #define VHUB_IRQ_BUS_RESET 			(1 << 6)
> > @@ -402,6 +399,7 @@ struct ast_vhub {
> >  	/* Per-port info */
> >  	struct ast_vhub_port		*ports;
> >  	u32				max_ports;
> > +	u32				port_irq_mask;
> >  
> >  	/* Generic EP data structures */
> >  	struct ast_vhub_ep		*epns;
> > -- 
> > 2.17.1
> > 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
